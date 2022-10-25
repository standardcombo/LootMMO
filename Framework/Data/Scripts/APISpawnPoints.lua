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

---@class APISpawnPoints
local API = {}

---@type table<string, table>
local spawnPoints = {}

---Registers a spawn point to the system.
---@param id string
---@param functionTable table
function API.RegisterSpawnPoint(id, functionTable)
    if spawnPoints[id] ~= nil then
        warn("Multiple spawn points with the same id were registered")
    end

    spawnPoints[id] = functionTable
end

---Gets a table of information about a Spawn Point.
---@param id string
---@return SpawnPointState
function API.GetSpawnPointState(id)
    local spawnPoint = spawnPoints[id]
    if spawnPoint == nil then
        return nil
    end
    return spawnPoint.GetState()
end

---Find the target position of a specific Spawn Point.
---@param id string
---@return Vector3
function API.GetSpawnPointTargetPosition(id)
    local state = API.GetSpawnPointState(id)
    if state then
        return state.targetPosition
    end
end

---Find the target rotation of a specific Spawn Point.
---@param id string
---@return Rotation
function API.GetSpawnPointTargetRotation(id)
    local state = API.GetSpawnPointState(id)
    if state then
        return state.targetRotation
    end
end

---Removes a Spawn Point.
---@param id string
function API.UnregisterSpawnPoint(id)
    spawnPoints[id] = nil
end

---Finds all the Spawn Points for an id, with an optional key for further filtering.
---@param id string
---@param key string|nil
---@return string[]
function API.GetSpawnPoints(id, key)
    local result = {}
    for spawnPointId, spawnPoint in pairs(spawnPoints) do
        ---@type SpawnPointState
        local state = spawnPoint.GetState()
        if state.id == id then
            if key == nil or key == "" or state.key == key then
                table.insert(result, spawnPointId)
            end
        end
    end
    return result
end

return API