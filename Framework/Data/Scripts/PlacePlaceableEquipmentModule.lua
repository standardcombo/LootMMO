--[[
Copyright 2021 Manticore Games, Inc. 

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated
documentation files (the "Software"), to deal in the Software without restriction, including without limitation the
rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit
persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the
Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE
WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR
COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR
OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
--]]

--[[
    This script can be added to any Equipment to make that Equipment work with targets that have been registered to
    APIEquipment. These targets can be interacted with in ways specific to their needs without this script needing to
    know anything about them.

    This script also allows Equipment to place and remove Placeables.
--]]

---@type APIEquipment
local EQUIPMENT = require(script:GetCustomProperty("APIEquipment"))
---@type APIReplicator
local REPLICATOR = require(script:GetCustomProperty("APIReplicator"))
---@type APIPlayerLots
local PLAYER_LOTS = require(script:GetCustomProperty("APIPlayerLots"))
---@type APIPlacementAreas
local PLACEMENT_AREAS = require(script:GetCustomProperty("APIPlacementAreas"))
---@type APIInventory
local INVENTORY = require(script:GetCustomProperty("APIInventory"))
---@type APICurrency
local CURRENCY = require(script:GetCustomProperty("APICurrency"))
---@type APIDatabase
local DATABASE = require(script:GetCustomProperty("APIDatabase"))
---@type APIInteractionManager
local INTERACTION = require(script:GetCustomProperty("APIInteractionManager"))
---@type APIPlaceables
local PLACEABLES = require(script:GetCustomProperty("APIPlaceables"))

-- For single player preview mode to get the server version
if Environment.IsLocalGame() and not Environment.IsMultiplayerPreview() then
    _G.StaticContext.Call(function()
        PLACEMENT_AREAS = require(script:GetCustomProperty("APIPlacementAreas"))
    end)
end

-- Constants
local LOCAL_PLAYER = Game.GetLocalPlayer()
local CAST_DOWN_DISTANCE = 180

local API = {}

function API.New()

    -- Private Variables
    local componentRoot = nil ---@type CoreObject
    local triggerTemplate = nil
    local triggerGroup = nil ---@type Trigger
    local triggers = nil ---@type Trigger[]
    local rotateClockwiseBinding ---@type string
    local rotateCounterClockwiseBinding ---@type string
    local rotationSpeed ---@type number
    local interactionModule
    local interactionDistance
    local hologramMaterial
    local canPlaceColor
    local cannotPlaceColor
    local placeableId
    local isActive = false

    local currentPlaceableId
    local placementTarget
    local toolType
    local equipmentSettings = nil
    local placeablePreview
    local placeablePreviewTemplate = nil
    local previewMeshes = {}
    local rotationOffset = Rotation.ZERO
    local equipment
    local interactionError

    -- Private local functions
    local Setup
    local PlaceItem
    local Update
    local TryPlaceItem
    local UpdateState
    local RefreshPreviewTemplate
    local SetPreviewColor
    local DestroyPreview
    local OnBindingReleased
    local HasPermission
    local FindReplicator
    local IsValidPlacementArea
    local HasHitLimit
    local CanAffordToPlace
    local RemovePlacementCosts
    local CheckForObstruction
    local Activate
    local Deactivate
    local IsLocalEquipment
    local OnDestroy
    local HandleInteractionHitResults
    local RefreshOverlapTestTrigger
    local DestroyOverlapTestTrigger
    local HidePreview

    function IsLocalEquipment()
        if equipment and equipment.owner == LOCAL_PLAYER then
            return true
        else
            return false
        end
    end

    function Setup(equipmentRoot, inEquipmentSettings)
        equipmentSettings = inEquipmentSettings
        componentRoot = equipmentRoot

        if componentRoot:IsA("Equipment") then
            equipment = componentRoot
        else
            equipment = componentRoot:FindAncestorByType("Equipment")
        end

        local equipmentId = componentRoot:GetCustomProperty("EquipmentId")
        if equipmentId and equipmentId ~= "" then
            if DATABASE.Equipment then
                local equipmentData = DATABASE.Equipment[equipmentId]
                if equipmentData then
                    toolType = equipmentData.ToolType
                    rotateClockwiseBinding = equipmentData.RotateCWBinding
                    rotateCounterClockwiseBinding = equipmentData.RotateCCWBinding
                    rotationSpeed = equipmentData.RotationSpeed
                    interactionDistance = equipmentData.InteractionDistance
                    hologramMaterial = equipmentData.HologramMaterial
                    canPlaceColor = equipmentData.CanPlaceColor
                    cannotPlaceColor = equipmentData.CannotPlaceColor
                    placeableId = equipmentData.PlaceableId

                    if equipmentData.APIInteractionModule and equipmentData.APIInteractionModule ~= "" then
                        interactionModule = require(equipmentData.APIInteractionModule)
                    else
                        warn(string.format("\"APIInteractionModule\" is required for Equipment id: %s. Please assign \"APILookInteractionModule\" or \"APIPointerInteractionModule\"", equipmentId))
                        return
                    end
                else
                    warn(string.format("Could not find data in Database for Equipment id: %s. \"Database/Equipment/%s\" is missing", equipmentId, equipmentId))
                    return
                end
            else
                warn(string.format("Could not find data in Database for Equipment id: %s. \"Database/Equipment\" is missing", equipmentId))
                return
            end
        else
            toolType = componentRoot:GetCustomProperty("ToolType")
            rotateClockwiseBinding = componentRoot:GetCustomProperty("RotateCWBinding")
            rotateCounterClockwiseBinding = componentRoot:GetCustomProperty("RotateCCWBinding")
            rotationSpeed = componentRoot:GetCustomProperty("RotationSpeed")
            interactionDistance = componentRoot:GetCustomProperty("InteractionDistance")
            hologramMaterial = componentRoot:GetCustomProperty("HologramMaterial")
            canPlaceColor = componentRoot:GetCustomProperty("CanPlaceColor")
            cannotPlaceColor = componentRoot:GetCustomProperty("CannotPlaceColor")
            placeableId = componentRoot:GetCustomProperty("PlaceableId")
            interactionModule = componentRoot:GetCustomProperty("APIInteractionModule")

            if interactionModule and interactionModule ~= "" then
                interactionModule = require(interactionModule)
            else
                warn(string.format("\"APIInteractionModule\" is required for Equipment id: %s. Please assign \"APILookInteractionModule\" or \"APIPointerInteractionModule\"", equipmentId))
                return
            end
        end
    end

    function PlaceItem()
        local errorMessage
        if currentPlaceableId and placementTarget then
            local placeableReplicatorId, replicatorIdentifier = FindReplicator(placementTarget)
            if placeableReplicatorId == nil then
                return false
            end

            local canPlace
            if HasHitLimit(placeableReplicatorId, replicatorIdentifier) then
                canPlace = false
                errorMessage = "You can't place any more of these"
            else
                canPlace, errorMessage = CanAffordToPlace()
            end

            if canPlace and placeablePreview then
                -- Remove items / Currency
                local unequip = RemovePlacementCosts()

                local placeableId = currentPlaceableId --equipmentSettings.ItemId
                local placeableData = DATABASE.Placeables[placeableId] or {}
                local spawnRoot = REPLICATOR.GetReplicatorSpawnParent(placeableReplicatorId)
                local rootTransform = spawnRoot:GetWorldTransform()
                local position = rootTransform:GetInverse():TransformPosition(placeablePreview:GetWorldPosition())
                local rotation = -spawnRoot:GetWorldRotation() * placeablePreview:GetWorldRotation()

                local newInstance = REPLICATOR.CreateInstance(placeableReplicatorId, { placeableId = placeableId, position = position, rotation = rotation, state = equipmentSettings.State })
                REPLICATOR.AddInstance(newInstance)

                if placeableData.PlaceEffects and placeableData.PlaceEffects ~= "" then
                    local params = { position = placeablePreview:GetWorldPosition() + placeableData.PlaceEffectsOffset }
                    local effects = World.SpawnAsset(placeableData.PlaceEffects, params)
                    -- Ensure these don't stack up
                    if effects.lifeSpan == 0 then
                        effects.lifeSpan = 5
                    end
                end

                if unequip then
                    EQUIPMENT.Unequip(LOCAL_PLAYER, placeableId)
                    Events.Broadcast(INVENTORY.Events.SlotUnequipped, equipmentSettings.InventoryId, equipmentSettings.SlotIndex)
                end

                Events.Broadcast(PLACEABLES.Events.PlaceablePlaced, placeableId, newInstance)

                return true, nil
            end
        end

        return false, errorMessage or interactionError
    end

    function Update(deltaTime)
        if isActive == false then
            return
        end

        interactionError = nil
        placementTarget = nil

        local interactionTargets = interactionModule.GetPotentialTargets()
        local canPlace = false

        canPlace, interactionError = TryPlaceItem(interactionTargets, deltaTime)
        if not canPlace then
            Events.Broadcast("TryPlacePlaceableUpdate", currentPlaceableId, nil, toolType, equipmentSettings)
            HidePreview()
        end
    end

    function HandleInteractionHitResults(hitResults, startPosition, endPosition)
        if (not hitResults or #hitResults == 0) and currentPlaceableId then
            -- Cast Down to hit the ground
            local rayStart = endPosition
            local rayEnd = rayStart + Vector3.UP * -CAST_DOWN_DISTANCE
            local groundHitResults = World.RaycastAll(rayStart, rayEnd, { ignorePlayers = true })

            hitResults = {}
            for _, hitResult in ipairs(groundHitResults) do
                table.insert(hitResults, hitResult)
            end
        end
        return hitResults
    end

    function TryPlaceItem(interactionTargets, deltaTime)
        deltaTime = deltaTime or 1/60
        if currentPlaceableId then
            if #interactionTargets > 0 then
                local position
                for _, interactionTarget in ipairs(interactionTargets) do
                    if interactionTarget.CoreObject and IsValidPlacementArea(interactionTarget.CoreObject) and HasPermission(interactionTarget.CoreObject) then
                        position = interactionTarget.Position
                        placementTarget = interactionTarget.CoreObject
                        break
                    end
                end

                if not placementTarget or not position then
                    placementTarget = nil
                    return false
                end

                -- Find the replicator from the hit target
                local replicatorId, replicatorIdentifier = FindReplicator(placementTarget)
                if replicatorId == nil then
                    placementTarget = nil
                    return false
                end

                -- See if limits have been hit
                if HasHitLimit(replicatorId, replicatorIdentifier) then
                    placementTarget = nil
                    return false, "You can't place any more of these"
                end

                local canAfford, errorMessage = CanAffordToPlace()
                if not canAfford then
                    placementTarget = nil
                    return false, errorMessage
                end

                local spawnParent = REPLICATOR.GetReplicatorSpawnParent(replicatorId)
                local rootTransform = spawnParent:GetWorldTransform()

                if equipmentSettings.SnapToGrid then
                    -- Make our position be in local space to the root for the grid
                    position = rootTransform:GetInverse():TransformPosition(position)

                    -- Snap to the grid
                    position.x = CoreMath.Round(position.x / equipmentSettings.GridSize.x) * equipmentSettings.GridSize.x
                    position.y = CoreMath.Round(position.y / equipmentSettings.GridSize.y) * equipmentSettings.GridSize.y

                    -- Convert back to world space
                    position = rootTransform:TransformPosition(position)
                end

                -- We need to use the root rotation because we're in world space
                local rotation = rootTransform:GetRotation()

                if DATABASE.Placeables then
                    local placeableData = DATABASE.Placeables[currentPlaceableId]
                    if placeableData then
                        if placeableData.CanRotate then
                            local lookOffset = 0
                            if placeableData.RotateWithLook then
                                lookOffset = LOCAL_PLAYER:GetLookWorldRotation().z-90-rotation.z
                            end
                            if placeableData.SnapRotation then
                                local newRotation = Rotation.New(rotationOffset)
                                newRotation.z = CoreMath.Round(newRotation.z / placeableData.RotationSnapAngle) * placeableData.RotationSnapAngle
                                lookOffset = CoreMath.Round(lookOffset / placeableData.RotationSnapAngle) * placeableData.RotationSnapAngle
                                local lookRotation = Rotation.New(0, 0, lookOffset)
                                rotation = rotation * newRotation * lookRotation
                            else
                                if rotateClockwiseBinding and rotateClockwiseBinding ~= "" and LOCAL_PLAYER:IsBindingPressed(rotateClockwiseBinding) then
                                    rotationOffset = rotationOffset * Rotation.New(0, 0, rotationSpeed * deltaTime)
                                elseif rotateCounterClockwiseBinding and rotateCounterClockwiseBinding ~= "" and LOCAL_PLAYER:IsBindingPressed(rotateCounterClockwiseBinding) then
                                    rotationOffset = rotationOffset * Rotation.New(0, 0, -rotationSpeed * deltaTime)
                                end
                                local lookRotation = Rotation.New(0, 0, lookOffset)
                                rotation = rotation * rotationOffset * lookRotation
                            end
                        end
                    end
                end

                RefreshPreviewTemplate()
                RefreshOverlapTestTrigger()

                if triggerGroup then
                    triggerGroup:SetWorldPosition(position)
                    triggerGroup:SetWorldRotation(rotation)
                end

                if placeablePreview then
                    placeablePreview:SetWorldPosition(position)
                    placeablePreview:SetWorldRotation(rotation)
                    placeablePreview.visibility = Visibility.INHERIT
                end

                if CheckForObstruction() then
                    placementTarget = nil
                    SetPreviewColor(cannotPlaceColor)
                else
                    SetPreviewColor(canPlaceColor)
                end

                Events.Broadcast("TryPlacePlaceableUpdate", currentPlaceableId, position, toolType, equipmentSettings)

                return true
            end
        end
        return false
    end

    function UpdateState()
        -- Check for a specific Placeable
        currentPlaceableId = nil

        local placeableData
        if placeableId and placeableId ~= "" then
            currentPlaceableId = placeableId
            placeableData = DATABASE.Placeables[placeableId]
            if placeableData then
                equipmentSettings.InventoryId = nil
                equipmentSettings.ItemType = 0
                equipmentSettings.ItemId = placeableId
                equipmentSettings.SlotIndex = 0
                equipmentSettings.State = ""
            else
                warn(string.format("Invalid PlaceableId on tool: %s", componentRoot.name))
            end
        else
            placeableData = DATABASE.Placeables[equipmentSettings.ItemId]
            if placeableData then
                currentPlaceableId = equipmentSettings.ItemId
            end
        end

        if placeableData then
            equipmentSettings.SnapToGrid = placeableData.SnapToGrid
            equipmentSettings.GridSize = placeableData.GridSize
            local areaTypes = placeableData.PlacementAreaTypes
            equipmentSettings.PlacementAreaTypes = {}
            for _, areaType in pairs( { CoreString.Split(areaTypes, ",", { removeEmptyResults = true }) }) do
                table.insert(equipmentSettings.PlacementAreaTypes, CoreString.Trim(areaType))
            end

            if IsLocalEquipment() then
                RefreshPreviewTemplate()
                RefreshOverlapTestTrigger()
            end
        else
            if IsLocalEquipment() then
                DestroyOverlapTestTrigger()
                DestroyPreview()
            end
        end
    end

    function RefreshOverlapTestTrigger()
        local placeableData = DATABASE.Placeables[currentPlaceableId]
        if placeableData then
            local newTriggerTemplate = placeableData.PlacementOverlapCheckTrigger
            if newTriggerTemplate then
                if triggerTemplate ~= newTriggerTemplate then
                    triggerTemplate = newTriggerTemplate
                    DestroyOverlapTestTrigger()
                    triggerGroup = World.SpawnAsset(placeableData.PlacementOverlapCheckTrigger)
                    triggers = triggerGroup:FindDescendantsByType("Trigger")
                end
                return
            end
        end
        DestroyOverlapTestTrigger()
    end

    function DestroyOverlapTestTrigger()
        if Object.IsValid(triggerGroup) then
            triggerGroup:Destroy()
            triggerGroup = nil
            triggers = nil
            triggerTemplate = nil
        end
    end

    function RefreshPreviewTemplate()
        local placeableData = DATABASE.Placeables[currentPlaceableId]
        if placeableData then
            local template = placeableData.PlacementPreview
            if template then
                if template ~= placeablePreviewTemplate then
                    placeablePreviewTemplate = template
                    DestroyPreview()
                    placeablePreview = World.SpawnAsset(template, { parent = World.GetRootObject() })
                    placeablePreview.visibility = Visibility.FORCE_OFF
                    if hologramMaterial then
                        previewMeshes = {}
                        for _, mesh in pairs(placeablePreview:FindDescendantsByType("StaticMesh")) do
                            for _, materialSlot in pairs(mesh:GetMaterialSlots()) do
                                if materialSlot.slotName then
                                    mesh:SetMaterialForSlot(hologramMaterial, materialSlot.slotName)
                                    table.insert(previewMeshes, mesh)
                                end
                            end
                        end
                    end
                end
                return
            end
        end
        DestroyPreview()
    end

    function SetPreviewColor(color)
        for _, mesh in pairs(previewMeshes) do
            mesh:SetColor(color)
        end
    end

    function HidePreview()
        if Object.IsValid(placeablePreview) then
            placeablePreview.visibility = Visibility.FORCE_OFF
        end
    end

    function DestroyPreview()
        if Object.IsValid(placeablePreview) then
            placeablePreview:Destroy()
            placeablePreview = nil
            previewMeshes = {}
            placeablePreviewTemplate = nil
        end
    end

     function OnBindingReleased(player, binding)
        if DATABASE.Placeables and equipmentSettings.ItemId and equipmentSettings.ItemId ~= "" then
            local placeableData = DATABASE.Placeables[equipmentSettings.ItemId]
            if placeableData and placeableData.CanRotate and placeableData.SnapRotation then
                if binding == rotateClockwiseBinding then
                    rotationOffset = rotationOffset * Rotation.New(0, 0, placeableData.RotationSnapAngle)
                elseif binding == rotateCounterClockwiseBinding then
                    rotationOffset = rotationOffset * Rotation.New(0, 0, -placeableData.RotationSnapAngle)
                end
            end
        end
    end

    function HasPermission(coreObject)
        if coreObject == nil then return false end
        local playerLot = PLAYER_LOTS.FindLotByAncestors(coreObject)
        if playerLot then
            if PLAYER_LOTS.IsOwnerOnly(playerLot) and PLAYER_LOTS.GetOwner(playerLot) ~= LOCAL_PLAYER then
                return false
            end
        end
        return true
    end

    function FindReplicator(coreObject)
        local placeableData = DATABASE.Placeables[currentPlaceableId]
        if placeableData then
            local validReplicatorIds = { CoreString.Split(placeableData.ValidReplicatorIdentifiers, ",") }
            for index, value in ipairs(validReplicatorIds) do
                validReplicatorIds[index] = CoreString.Trim(value)
            end

            -- Check lot
            local playerLotId = PLAYER_LOTS.FindLotByAncestors(coreObject)
            if playerLotId ~= nil then
                if not PLAYER_LOTS.IsOwnerOnly(playerLotId) or (PLAYER_LOTS.IsOwnerOnly(playerLotId) and PLAYER_LOTS.GetOwner(playerLotId) == LOCAL_PLAYER) then
                    for _, validReplicatorId in ipairs(validReplicatorIds) do
                        local replicatorId = PLAYER_LOTS.FindLotReplicatorByIdentifier(playerLotId, validReplicatorId)
                        if replicatorId then
                            return replicatorId, validReplicatorId
                        end
                    end
                end
            end

            -- Find the best replicator based on the hierarchy
            local groupReplicators = {}
            for _, replicatorId in pairs(REPLICATOR.GetReplicators()) do
                local parent = REPLICATOR.GetReplicatorSpawnParent(replicatorId)
                while parent do
                    groupReplicators[parent] = groupReplicators[parent] or {}
                    groupReplicators[parent][replicatorId] = true
                    parent = parent.parent
                end
            end

            local parent = coreObject
            while parent do
                local replicators = groupReplicators[parent] or {}
                for replicatorId in pairs(replicators) do
                    -- todo. Check the identifier
                    return replicatorId, validReplicatorIds[1]
                end
                parent = parent.parent
            end

            -- Check ancestors
            local replicatorId = REPLICATOR.FindReplicatorIdByAncestors(coreObject)
            if replicatorId then
                return replicatorId, validReplicatorIds[1]
            end
        end

        return nil, nil
    end

    -- Returns true if the core object is a collider used for placing plots on top
    function IsValidPlacementArea(coreObject)
        if coreObject == nil then
            return false
        end

        if equipmentSettings.PlacementAreaTypes and #equipmentSettings.PlacementAreaTypes > 0 then
            local placementAreaId = PLACEMENT_AREAS.FindPlacementAreaByAncestors(coreObject)
            if placementAreaId then
                local areaType = PLACEMENT_AREAS.GetPlacementAreaState(placementAreaId).areaType
                for _, allowedAreaType in ipairs(equipmentSettings.PlacementAreaTypes) do
                    if allowedAreaType == areaType then
                        return true
                    end
                end
                return false
            end
        else
            return true
        end

        return false
    end

    function HasHitLimit(replicatorId, replicatorIdentifier)
        if DATABASE.PlaceableLimits then
            local placeableLimitsData = DATABASE.PlaceableLimits[replicatorIdentifier]
            local placeableLimitDatas = {}

            if placeableLimitsData then
                placeableLimitDatas = DATABASE.PlaceableLimits[replicatorIdentifier]:Find(function(key, value)
                    if value and value.PlaceableId and value.PlaceableId == currentPlaceableId then
                        return true
                    end
                end)
            end

            local placeableLimitData
            for _, value in pairs(placeableLimitDatas) do
                placeableLimitData = value
                break
            end

            if placeableLimitsData then
                local totalAmount = 0
                local currentAmount = 0
                for _, instance in pairs(REPLICATOR.GetInstances(replicatorId)) do
                    if instance.placeableId == currentPlaceableId then
                        currentAmount = currentAmount + 1
                    end
                    totalAmount = totalAmount + 1
                end

                if placeableLimitsData.MaxAmount and placeableLimitsData.MaxAmount > 0 then
                    if totalAmount >= placeableLimitsData.MaxAmount then
                        return true
                    end
                end

                if placeableLimitData then
                    if placeableLimitData.MaxAmount and placeableLimitData.MaxAmount > 0 and currentAmount >= placeableLimitData.MaxAmount then
                        return true
                    end
                end
            end
        end
        return false
    end

    function CanAffordToPlace()
        local placeableData = DATABASE.Placeables[currentPlaceableId]
        local itemData = DATABASE.Items[currentPlaceableId]
        if placeableData and itemData then
            local itemId = currentPlaceableId
            if itemData.IsInventory then
                itemId = equipmentSettings.State
            end

            if placeableData.RemoveItemWhenPlaced then
                if not INVENTORY.HasAmountInInventory(LOCAL_PLAYER, equipmentSettings.InventoryId, equipmentSettings.ItemType, itemId, 1, equipmentSettings.SlotIndex) then
                    return false, string.format("You don't have a %s equipped", itemData.Name)
                end
            end

            if placeableData.Costs then
                for _, costData in pairs(placeableData.Costs) do
                    local amount = costData.Amount
                    if amount < 0 then
                        amount = 0
                    end

                    if amount > 0 then
                        if costData.ItemId and costData.ItemId ~= "" then
                            if not INVENTORY.HasAmountInInventory(LOCAL_PLAYER, nil, INVENTORY.ItemType.Item, costData.ItemId, amount) then
                                local costItemData = DATABASE.Items[costData.ItemId]
                                if costItemData then
                                    return false, string.format("You don't have enough %s to afford placing %s", costItemData.Name, itemData.Name)
                                else
                                    warn(string.format("Could not find a Database.Items entry for %s", costData.ItemId))
                                end
                            end
                        elseif costData.CurrencyId and costData.CurrencyId ~= "" then
                            if CURRENCY.GetCurrencyAmount(LOCAL_PLAYER, costData.CurrencyId) < amount then
                                local costCurrencyData = DATABASE.Currencies[costData.CurrencyId]
                                if costCurrencyData then
                                    return false, string.format("You don't have enough %s to afford placing %s", costCurrencyData.Name, itemData.Name)
                                else
                                    warn(string.format("Could not find a Currency Settings for %s", costData.CurrencyId))
                                end
                            end
                        end
                    end
                end
            end
        end
        return true
    end

    function RemovePlacementCosts()
        local placeableData = DATABASE.Placeables[currentPlaceableId]
        local itemData = DATABASE.Items[currentPlaceableId]
        local unequip = false

        if placeableData and itemData then
            local itemId = currentPlaceableId
            if itemData.IsInventory then
                itemId = equipmentSettings.State
            end

            if placeableData.RemoveItemWhenPlaced then
                INVENTORY.RemoveFromInventory(LOCAL_PLAYER, equipmentSettings.InventoryId, equipmentSettings.ItemType, itemId, 1, equipmentSettings.SlotIndex)
                unequip = INVENTORY.GetAmountInInventory(LOCAL_PLAYER, equipmentSettings.InventoryId, equipmentSettings.ItemType, itemId, equipmentSettings.SlotIndex) == 0
            end

            if placeableData.Costs then
                for _, costData in pairs(placeableData.Costs) do
                    local amount = costData.Amount
                    if amount < 0 then
                        amount = 0
                    end
                    if amount > 0 then
                        if costData.ItemId and costData.ItemId ~= "" then
                            INVENTORY.RemoveFromInventory(LOCAL_PLAYER, nil, INVENTORY.ItemType.Item, costData.ItemId, amount, 0, false)
                        elseif costData.CurrencyId and costData.CurrencyId ~= "" then
                            CURRENCY.RemoveCurrencyAmount(LOCAL_PLAYER, costData.CurrencyId, amount)
                        end
                    end
                end
            end
        end
        return unequip
    end

    -- Checks if the trigger overlaps anything that would obstruct us placing the object
    function CheckForObstruction()
        if Object.IsValid(triggerGroup) then
            for _, trigger in ipairs(triggers) do
                local overlappingObjects = trigger:GetOverlappingObjects()
                for _, other in pairs(overlappingObjects) do
                    if other:IsA("Trigger") then
                        if other:GetCustomProperty("BlockPlacement") then
                            return true
                        end
                    else
                        return true
                    end
                end
            end
        end
        return false
    end

    function Activate()
        if not IsLocalEquipment() then
            return
        end
        if isActive then
            return
        end
        isActive = true
        RefreshPreviewTemplate()
        RefreshOverlapTestTrigger()
        interactionModule.OverrideSettings({
            [INTERACTION.Setting.LookDistance] = interactionDistance,
            [INTERACTION.Setting.LookSize] = 0,
            [INTERACTION.Setting.CameraDistance] = interactionDistance,
            [INTERACTION.Setting.CameraSize] = 0,
            [INTERACTION.Setting.HitResultsPredicate] = HandleInteractionHitResults
        })
    end

    local tickListener = nil

    function OnDestroy()
        Deactivate()
        DestroyPreview()
        DestroyOverlapTestTrigger()
        if tickListener then
            tickListener:Disconnect()
        end
    end

    function Deactivate()
        if not isActive then
            return
        end
        isActive = false
        interactionModule.ClearOverrideSettings()

        if Object.IsValid(placeablePreview) then
            placeablePreview.visibility = Visibility.FORCE_OFF
        end
    end

    tickListener = Events.Connect(INTERACTION.Events.PostModuleUpdate, Update)

    local MODULE = {
        Setup = Setup,
        Update = Update,
        Activate = Activate,
        Deactivate = Deactivate,
        Execute = PlaceItem,
        UpdateState = UpdateState,
        OnBindingReleased = OnBindingReleased,
        OnDestroy = OnDestroy
    }

    return MODULE
end

return API