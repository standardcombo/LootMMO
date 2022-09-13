-- Original Author: Chris - (https://www.coregames.com/user/d97586e1f850481da13ee26d5cbddc02)
-- Modified by: Ooccoo - (https://www.coregames.com/user/a136c0d1d9454d539c9932354198fc29)
-- Modified by: standardcombo (https://www.coregames.com/user/b4c6e32137e54571814b5e8f27aa2fcd)
-- Date: 04/15/2021
-- Version: 0.1.1
--===========================================================================================

local FALLBACK_PREVIEW = script:GetCustomProperty('FallbackPreview')

local LOCAL_PLAYER = Game.GetLocalPlayer()
local confirmString = 'Confirm'
local cancelString = 'Cancel'
local DEFAULT_VFX = script:GetCustomProperty('DefaultVFX')

local isPreviewing = false
local PlayerVFX = nil
local AllHalograms = {}
local objectHalogram = nil
local EventListeners = {}
local lastValidPlacement = {position = nil, rotation = nil}

local DEFAULT_Range = 300
local DefaultValues = {
    previewObject = DEFAULT_VFX,
    alignToNormal = true,
    alignToRotation = true,
    range = DEFAULT_Range,
    radius = 100
}
local currentSettings = DefaultValues

local currentAbility = nil
local currentEquipment = nil

local function Cancel()
    isPreviewing = false
    currentAbility = nil
    currentEquipment = nil
    currentSettings = DefaultValues

    for _, listener in ipairs(EventListeners) do
        listener:Disconnect()
    end

    if objectHalogram and Object.IsValid(objectHalogram) then
        AllHalograms[objectHalogram.id] = nil
        objectHalogram:Destroy()
        objectHalogram = nil
    end
end

function SetPreviewing(value)
    isPreviewing = value
    currentAbility.clientUserData.isPreviewing = value -- for UI
    if value then
        currentEquipment.clientUserData.isPreviewing = currentAbility
    elseif currentEquipment.clientUserData.isPreviewing == currentAbility then
        currentEquipment.clientUserData.isPreviewing = nil
    end

    if isPreviewing then
        local previewScale = Vector3.ONE
        previewScale = Vector3.New(CoreMath.Round(currentSettings.radius / 50, 3))

        lastValidPlacement.position = currentAbility.owner:GetWorldPosition() - Vector3.New(0, 0, -50)
        lastValidPlacement.rotation = currentAbility.owner:GetWorldRotation()
        local ObjectTemplate = currentSettings.previewObject
        local newObject = World.SpawnAsset(ObjectTemplate, {scale = previewScale})
        objectHalogram = newObject
        AllHalograms[objectHalogram.id] = objectHalogram
    else
        Cancel()
    end
end

function OncurrentAbilityCast()
    -- Get the target data, to modify it before it's sent over the network
    local targetData = currentAbility:GetTargetData()
    -- Position
    --print(">> Placement: "..tostring(lastValidPlacement.position))
    targetData:SetHitPosition(lastValidPlacement.position)
    -- Rotation
    local r = lastValidPlacement.rotation
    targetData:SetAimPosition(Vector3.New(r.x, r.y, r.z))
    -- Set the target data back
    currentAbility:SetTargetData(targetData)
    Cancel()
end

function OnUnequip(equipment, player)
    if player ~= LOCAL_PLAYER then
        return
    end
    Cancel()
end

function CalculatePlacement()
    local playerViewRotation = LOCAL_PLAYER:GetViewWorldRotation()

    -- Projection of the player's position onto the camera's vector, as starting point for the raycast
    local playerViewPosition = LOCAL_PLAYER:GetViewWorldPosition()
    local playerViewDirection = Quaternion.New(playerViewRotation):GetForwardVector()
    local playerPosition = LOCAL_PLAYER:GetWorldPosition()
    local AP = playerPosition - playerViewPosition
    local AB = playerViewDirection
    playerViewPosition = playerViewPosition + (AP .. AB) / (AB .. AB) * AB

    local PlacementRange = currentSettings.range

    local forwardVector = playerViewRotation * Vector3.FORWARD

    local edgeOfRange = playerViewPosition + forwardVector * PlacementRange
    local hr = World.Raycast(playerViewPosition, edgeOfRange, {ignorePlayers = true})

    local resultPosition, resultNormal, resultIsVisibleInHierarchy
    if hr ~= nil and hr.other ~= nil then
        resultPosition = hr:GetImpactPosition()
        resultNormal = hr:GetImpactNormal()
        resultIsVisibleInHierarchy = hr.other:IsVisibleInHierarchy()
    else
        -- Couldn't find a legal spot nearby, so we're probably out of range.  Try
        -- to find a spot at the edge of the range:
        hr = World.Raycast(edgeOfRange, edgeOfRange - Vector3.New(0, 0, 100000), {ignorePlayers = true})
        if hr ~= nil and hr.other ~= nil then
            resultPosition = hr:GetImpactPosition()
            resultNormal = hr:GetImpactNormal()
            resultIsVisibleInHierarchy = hr.other:IsVisibleInHierarchy()
        elseif currentAbility.owner and Object.IsValid(currentAbility.owner) then
            --hr = World.Raycast(currentAbility.owner:GetWorldPosition(), currentAbility.owner:GetWorldPosition() - Vector3.New(0,0,10000), {ignorePlayers = true})
            resultPosition = currentAbility.owner:GetWorldPosition()
            resultNormal = Vector3.UP
            resultIsVisibleInHierarchy = true
        end
    end
    -- Now, do a final raycast from the player to the target point, to check for walls
    local secondHit = World.Raycast(playerPosition, resultPosition, {ignorePlayers = true})
    if
        secondHit ~= nil and secondHit.other ~= hr.other and secondHit.other and
            not secondHit.other:IsVisibleInHierarchy()
     then -- OR SOME OTHER METHOD OF DETERMINING IT'S A WALL
        resultPosition = secondHit:GetImpactPosition()
        resultNormal = secondHit:GetImpactNormal()
        resultIsVisibleInHierarchy = secondHit.other:IsVisibleInHierarchy()
    end
    return resultPosition, resultNormal, resultIsVisibleInHierarchy
end

function Tick(deltaTime)
    if Object.IsValid(currentAbility) and not currentAbility.isEnabled then 
        Cancel()
    end 
    for id, halogram in pairs(AllHalograms) do
        if halogram ~= objectHalogram and Object.IsValid(halogram) then
            halogram:Destroy()
            AllHalograms[id] = nil
        end
    end

    if objectHalogram and Object.IsValid(objectHalogram) then
        if currentAbility.owner == nil or LOCAL_PLAYER.isDead then
            objectHalogram:Destroy()
            objectHalogram = nil
            return
        end

        local playerViewRotation = LOCAL_PLAYER:GetViewWorldRotation()
        if currentSettings.alignToRotation then
            objectHalogram:SetWorldRotation(playerViewRotation)
        else
            objectHalogram:SetWorldRotation(Rotation.New(0, 0, playerViewRotation.z))
        end

        -- calculate placement:
        local impactPosition, impactNormal, targetIsVisible = CalculatePlacement()
        if impactPosition ~= nil and targetIsVisible then
            objectHalogram:SetWorldPosition(impactPosition)
            objectHalogram.visibility = Visibility.INHERIT

            --CoreDebug.DrawLine(impactPosition, impactPosition + (impactNormal * 200))
            if currentSettings.alignToNormal then
                local quat = Quaternion.New(Vector3.UP, impactNormal)
                objectHalogram:SetWorldRotation(
                    Rotation.New(quat * Quaternion.New(Rotation.New(0, 0, playerViewRotation.z)))
                )
            end

            lastValidPlacement.position = impactPosition
            lastValidPlacement.rotation = objectHalogram:GetWorldRotation()
        else
            objectHalogram.visibility = Visibility.FORCE_OFF
        end
    end
end

local function ValueFound(value)
    if value then
        return true
    end
    if type(value) ~= 'nil' then
        return true
    end
    return false
end

local function StartPreview(root, ability, optionalValues)
    Cancel()
    if not Object.IsValid(ability) then
        return
    end
    for key, value in pairs(DefaultValues) do
        if not ValueFound(optionalValues[key]) then
            optionalValues[key] = value
        end
    end

    currentAbility = ability
    currentEquipment = root
    currentSettings = optionalValues
    SetPreviewing(true)
    table.insert(EventListeners, ability.castEvent:Connect(OncurrentAbilityCast))
end

function Confirm(player, binding, value)
    if binding == confirmString then
        if isPreviewing and currentAbility then
            if currentAbility:GetCurrentPhase() == AbilityPhase.READY then
                currentAbility:Activate()
            end
        end
        return
    end

    if binding == cancelString then
        if isPreviewing then
            Cancel()
        end
    end
end

Input.actionPressedEvent:Connect(Confirm)

Events.Connect('Placeable_Object', StartPreview)
