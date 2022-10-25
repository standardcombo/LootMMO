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

-- Required APIs
---@type APIReplicator
local REPLICATOR = require(script:GetCustomProperty("APIReplicator"))

-- Constants
local MAX_WAIT_SECONDS = 1.0

-- Wait for Loading screen to register listeners
Task.Wait()

-- Show Loading Screen
Events.Broadcast("ShowLoadingScreen", "Calculating Objects...")

-- Wait for replicators to register and pending spawns to be found
local objectsToSpawn = 0
local waitSeconds = 0
while waitSeconds < MAX_WAIT_SECONDS do
    local currentObjectsToSpawn = 0
    for _, replicatorId in ipairs(REPLICATOR.GetReplicators()) do
        currentObjectsToSpawn = currentObjectsToSpawn + REPLICATOR.CountPendingClientInstancesToSpawn(replicatorId)
    end

    if currentObjectsToSpawn < objectsToSpawn then
        objectsToSpawn = currentObjectsToSpawn
        break
    end

    objectsToSpawn = currentObjectsToSpawn
    waitSeconds = waitSeconds + 0.1

    Task.Wait(0.1)
end

Events.Broadcast("ShowLoadingScreen", "Loading Objects...")

local remainingObjectsToSpawn = objectsToSpawn
while remainingObjectsToSpawn > 0 do
    remainingObjectsToSpawn = 0
    for _, replicatorId in ipairs(REPLICATOR.GetReplicators()) do
        remainingObjectsToSpawn = remainingObjectsToSpawn + REPLICATOR.CountPendingClientInstancesToSpawn(replicatorId)
    end

    Events.Broadcast("UpdateLoadingScreenProgress", 1 - remainingObjectsToSpawn / objectsToSpawn)

    Task.Wait()
end

Events.Broadcast("HideLoadingScreen")