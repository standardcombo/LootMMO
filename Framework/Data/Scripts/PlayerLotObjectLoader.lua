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

-- Internal Properties
local COMPONENT_ROOT = script:GetCustomProperty("ComponentRoot"):WaitForObject()
local STATIC_ROOT = script:GetCustomProperty("StaticRoot"):WaitForObject()

-- User Exposed Properties
local REQUIRES_OWNER_TO_LOAD = COMPONENT_ROOT:GetCustomProperty("RequiresOwnerToLoad")
local REQUIRES_NO_OWNER_TO_LOAD = COMPONENT_ROOT:GetCustomProperty("RequiresNoOwnerToLoad")
local SERVER_ASSET = COMPONENT_ROOT:GetCustomProperty("ServerAsset")
local CLIENT_ASSET = COMPONENT_ROOT:GetCustomProperty("ClientAsset")
local STATIC_ASSET = COMPONENT_ROOT:GetCustomProperty("StaticAsset")

-- Required APIs
---@type APIAreas
local AREAS = require(script:GetCustomProperty("APIAreas"))
---@type APIPlayerLots
local PLAYER_LOTS = require(script:GetCustomProperty("APIPlayerLots"))

-- Wait for Player Lots to register
Task.Wait()

-- Private Variables
local lotId = PLAYER_LOTS.FindLotByAncestors(COMPONENT_ROOT)
local areaId = AREAS.FindAreaByAncestors(COMPONENT_ROOT)
local object
local staticObject
local isActive = not areaId or AREAS.GetAreaState(areaId).isLoaded
local handlers

-- Use a flag because checking for staticObject won't work if checked twice quickly since staticObject doesn't exist for a couple frames
local hasLoaded = false

function FindExistingTemplate()
    local asset
    if Environment.IsServer() then
        if SERVER_ASSET and SERVER_ASSET ~= "" then
            asset = SERVER_ASSET
        end
    elseif Environment.IsClient() then
        if CLIENT_ASSET and CLIENT_ASSET ~= "" then
            asset = CLIENT_ASSET
        end
    end

    if asset then
        for _, child in ipairs(script.parent:GetChildren()) do
            if DoesTemplateIdMatch(child.sourceTemplateId, asset) then
                object = child
                hasLoaded = true
                break
            end
        end
    end

    if STATIC_ASSET and STATIC_ASSET ~= "" then
        for _, child in ipairs(STATIC_ROOT:GetChildren()) do
            if DoesTemplateIdMatch(child.sourceTemplateId, asset) then
                staticObject = child
                hasLoaded = true
                break
            end
        end
    end
end

function UpdateTemplates()
    local isOwned = PLAYER_LOTS.GetLotState(lotId).ownerId ~= nil
    if isActive and (REQUIRES_OWNER_TO_LOAD == false or isOwned) and (REQUIRES_NO_OWNER_TO_LOAD == false or not isOwned) then
        if hasLoaded then
            return
        end

        if Environment.IsServer() then
            if SERVER_ASSET and SERVER_ASSET ~= "" then
                object = World.SpawnAsset(SERVER_ASSET, { parent = script.parent })
            end
        elseif Environment.IsClient() then
            if CLIENT_ASSET and CLIENT_ASSET ~= "" then
                object = World.SpawnAsset(CLIENT_ASSET, { parent = script.parent })
            end
        end

        if STATIC_ASSET and STATIC_ASSET ~= "" then
            staticObject = World.SpawnAsset(STATIC_ASSET, { parent = STATIC_ROOT, networkContext = NetworkContextType.STATIC_CONTEXT })
        end

        hasLoaded = true
    elseif not isActive or (REQUIRES_NO_OWNER_TO_LOAD and isOwned) then
        if not hasLoaded then
            return
        end

        if Object.IsValid(object) then
            object:Destroy()
            object = nil
        end

        if Object.IsValid(staticObject) then
            staticObject:Destroy()
            staticObject = nil
        end

        hasLoaded = false
    end
end

function OnPlayerLotReset(resetLotId)
    if resetLotId ~= lotId then return end

    UpdateTemplates()
end

function OnPlayerLotAssigned(assignedLotId, playerId)
    if assignedLotId ~= lotId then return end

    UpdateTemplates()
end

function OnPlayerLotActive(activeLotId)
    if activeLotId ~= lotId then return end

    isActive = true

    UpdateTemplates()
end

function OnPlayerLotInactive(inactiveLotId)
    if inactiveLotId ~= lotId then return end

    isActive = false
    UpdateTemplates()
end

function OnAreaFinishedLoading(loadedAreaId)
    if loadedAreaId ~= areaId then return end

    isActive = true

    UpdateTemplates()
end

function OnAreaFinishedUnloading(unloadedAreaId)
    if unloadedAreaId ~= areaId then return end

    isActive = false
    UpdateTemplates()
end

function OnPlayerLeft(player)
    if PLAYER_LOTS.GetLotState(lotId).ownerId == player.id then
        Task.Wait()
        UpdateTemplates()
    end
end

function OnDestroyed()
    for _, handler in ipairs(handlers) do
        handler:Disconnect()
    end
    handlers = {}
end

function DoesTemplateIdMatch(id1, id2)
    -- Strip everything after the first part of the ids
    id1 = CoreString.Split(id1, ":")
    id2 = CoreString.Split(id2, ":")

    return id1 == id2
end

FindExistingTemplate()
UpdateTemplates()

handlers = {
    Events.Connect(PLAYER_LOTS.Events.PlayerLotReset, OnPlayerLotReset),
    Events.Connect(PLAYER_LOTS.Events.PlayerLotAssigned, OnPlayerLotAssigned),
    Events.Connect(PLAYER_LOTS.Events.PlayerLotActive, OnPlayerLotActive),
    Events.Connect(PLAYER_LOTS.Events.PlayerLotInactive, OnPlayerLotInactive),
    Events.Connect(AREAS.Events.AreaFinishedLoading, OnAreaFinishedLoading),
    Events.Connect(AREAS.Events.AreaFinishedUnloading, OnAreaFinishedUnloading),
    Game.playerLeftEvent:Connect(OnPlayerLeft)
}

script.destroyEvent:Connect(OnDestroyed)