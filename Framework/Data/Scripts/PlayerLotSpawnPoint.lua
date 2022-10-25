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
local TARGET = script:GetCustomProperty("Target"):WaitForObject()

-- User Exposed Properties
local PLAYER_LOT = COMPONENT_ROOT:GetCustomProperty("PlayerLot"):WaitForObject()
local SPAWN_POINT_KEY = COMPONENT_ROOT:GetCustomProperty("SpawnPointKey")

-- Required APIs
---@type APISpawnPoints
local SPAWN_POINTS = require(script:GetCustomProperty("APISpawnPoints"))
---@type APIPlayerLots
local PLAYER_LOTS = require(script:GetCustomProperty("APIPlayerLots"))

-- Private Variables
local lotId = nil

if Object.IsValid(PLAYER_LOT) then
    lotId = PLAYER_LOT.id
else
    -- Wait for lots to register
    Task.Wait()

    local playerLotId = PLAYER_LOTS.FindLotByAncestors(COMPONENT_ROOT)
    if playerLotId == nil then
        error(COMPONENT_ROOT.name .. " needs to be inside a Player Lot")
    end

    lotId = playerLotId
end

function GetState()
    ---@class PlayerLotSpawnPointState
    local result = {}
    result.targetPosition = TARGET:GetWorldPosition()
    result.targetRotation = TARGET:GetWorldRotation()
    result.key = SPAWN_POINT_KEY
    result.id = lotId
    return result
end

local functionTable = {}
functionTable.GetState = GetState

SPAWN_POINTS.RegisterSpawnPoint(COMPONENT_ROOT.id, functionTable)

COMPONENT_ROOT.destroyEvent:Connect(function()
    SPAWN_POINTS.UnregisterSpawnPoint(COMPONENT_ROOT.id)
end)