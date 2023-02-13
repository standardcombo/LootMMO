---@type Folder
local ROOT = script:GetCustomProperty("ROOT"):WaitForObject()

---@type string
local AHS = require(ROOT:GetCustomProperty("API_HarvestingSystem"))
---@type Folder
local NODES = ROOT:GetCustomProperty("NODES"):WaitForObject()
---@type string
local HARVESTING_NODES = require(ROOT:GetCustomProperty("HarvestingNodes"))
local HARVESTING_TOOLS = require(ROOT:GetCustomProperty("HarvestingTools"))

local NodesById = {}
local TotalNodesAvailable = 0
local handles = {}
local playerHandlesOnNode = {}
local spawnedToolsOnPlayers = {}
local PlayerActiveNodesStack = {}
local LockedNodeByPlayer = {}
local CurrentlyMiningNodeForPlayer =  {}

local PLAYER_TOOLS = {}

------------------------
--Player Logic
------------------------

function UnequipToolForPlayer(player)
    if Object.IsValid(spawnedToolsOnPlayers[player]) == true then
        spawnedToolsOnPlayers[player]:Detach()
        spawnedToolsOnPlayers[player]:Destroy()
    end
end

function EquipToolForPlayer(player,nodeToolType,toolLevel)
    local toolTemplate = AHS.GetProperToolTemplate(nodeToolType,toolLevel)
    if not toolTemplate then warn("unknown definition for tool level "..nodeToolType..", "..tostring(toolLevel)) return end
    spawnedToolsOnPlayers[player] = World.SpawnAsset(toolTemplate, {networkContext = NetworkContextType.NETWORKED})
    spawnedToolsOnPlayers[player]:Equip(player)
    print("tool equipped",spawnedToolsOnPlayers[player])
    --TODO set invisible unless used
end

function HandlePlayerNodesStack(player)
    local latestNode = PlayerActiveNodesStack[player][#PlayerActiveNodesStack[player]]
    print("latestNode",latestNode)
    --check if there is another tool in place, in case of nodes overlap and remove it
    UnequipToolForPlayer(player)
    if latestNode == nil then return end
    --check if the player owns the proper tool
    local nodeToolType = latestNode:GetCustomProperty("ToolReq")
    local toolLevel = PLAYER_TOOLS[player][nodeToolType]
    print("checking tool for player",nodeToolType,toolLevel)
    if toolLevel == nil then return end
    if toolLevel < 1 then return end
    --spawn appropriate tool
    print("spawning tool for player",nodeToolType,toolLevel)
    EquipToolForPlayer(player,nodeToolType,toolLevel)
end

function AddNodeToPlayersNodesStack(player,node)
    table.insert(PlayerActiveNodesStack[player],node)
    --update player tool in hand
    HandlePlayerNodesStack(player)
end

function RemoveNodeFromPlayersNodesStack(player,node)
    local toRemove = 0
    for i,n in ipairs(PlayerActiveNodesStack[player])do
        if n == node then toRemove = i end
    end
    --if the node was not hooked on client
    if toRemove == 0 then return end
    table.remove(PlayerActiveNodesStack[player],toRemove)
    --update player tool in hand
    HandlePlayerNodesStack(player)
end

function OnPlayerHarvestRequest(player, nodeId)
    local node = NodesById[nodeId]
    if Object.IsValid(node) ~= true then return end
    --check if the node is free to use
    --check if the player is in the proximity
    --check if the proper tool is owned
    --lock node if there is no other lock associated with the player
    if LockNode(node,player) == false then return end
    --save the node being mined
    CurrentlyMiningNodeForPlayer[player] = node
    --activate ability
    Events.Broadcast("Harvest.Start",player,3)
end

function OnHarvestCompleted(player)
    --find the node being mined by the player
    local node = CurrentlyMiningNodeForPlayer[player]
    if Object.IsValid(node) ~= true then warn("currently mining node is not valid?") end
    --check if the player is in the proximity
    --mine node
    AHS.MineNode(node,player)
    --release node
    UnlockNode(node)
end

function OnHarvestFailed(player)
    --release node
end

------------------------
--Nodes Handling
------------------------

function LockNode(node,player)
    if node:GetCustomProperty("Owner") ~= "" then
        warn("node is locked for harvest by "..node:GetCustomProperty("Owner"))
        return false
    end
    node:SetCustomProperty("Owner", player.id)
    node:ForceReplication()
    LockedNodeByPlayer[player] = node
    return true
end

function UnlockNode(node)
    local lastOwnerId = node:GetCustomProperty("Owner")
    local ownerPlayer = Game.FindPlayer(lastOwnerId)
    if ownerPlayer then
        if LockedNodeByPlayer[ownerPlayer] then
            LockedNodeByPlayer[ownerPlayer] = nil
        end
    end
    node:SetCustomProperty("Owner", "")
    node:ForceReplication()
end

function UpdateFreeNodesTotalCount()
    TotalNodesAvailable = AHS.GetFreeNodesCount()
end

function OnNodePropChanged(node,propName)
    if propName ~= "Richness" then return end
    --keep the node geo in line for colliders
    AHS.SpawnProperRichnessGeometryForNode(node)
end

function CleanupNodeHandles(node)
    DisconnectAllPlayerHandlesOnNode(node)
    if handles[node] == nil then warn("unknown node handles??") return end
    for _,h in ipairs(handles[node]) do
        h:Disconnect()
    end
    handles[node] = nil
    --remove node from stack for all player
    for _,p in ipairs(Game.GetPlayers())do
        RemoveNodeFromPlayersNodesStack(p,node)
    end
    --remove node id from table
    NodesById[node.id] = nil
end

function DisconnectPlayerHandlesOnNode(node, player)
    if playerHandlesOnNode[node] == nil then return end
    if playerHandlesOnNode[node][player] == nil then return end
    for _,h in ipairs(playerHandlesOnNode[node][player])do
       h:Disconnect()
    end
    playerHandlesOnNode[node][player] = nil
end

function DisconnectAllPlayerHandlesOnNode(node)
    for _,p in pairs(playerHandlesOnNode[node])do
        DisconnectPlayerHandlesOnNode(node, p)
    end
    playerHandlesOnNode[node] = nil
end

function OnNodeProximityEntered(node,other)
    if other:IsA("Player") ~= true then return end
    local player = other

    --check if the player owns the proper tool
    local nodeToolType = node:GetCustomProperty("ToolReq")
    local toolLevel = PLAYER_TOOLS[player][nodeToolType]
    if toolLevel == nil then return end
    if toolLevel < 1 then return end

    --connect hadles
    if playerHandlesOnNode[node][player] ~= nil then DisconnectPlayerHandlesOnNode(node, player) end
    playerHandlesOnNode[node][player] = {}
    table.insert(playerHandlesOnNode[node][player], Events.ConnectForPlayer("Harvest",OnPlayerHarvestRequest))
    table.insert(playerHandlesOnNode[node][player], Events.Connect("Harvest.Complete",OnHarvestCompleted))
    table.insert(playerHandlesOnNode[node][player], Events.Connect("Harvest.Failed",OnHarvestFailed))

    --add current node to stack
    AddNodeToPlayersNodesStack(player,node)
end

function OnNodeProximityExit(node,other)
    if other:IsA("Player") ~= true then return end
    local player = other
    DisconnectPlayerHandlesOnNode(node, player)
    RemoveNodeFromPlayersNodesStack(player,node)
end

function HookNode(node)
    handles[node] = {}
    playerHandlesOnNode[node] = {}
    NodesById[node.id] = node --for faster search

    table.insert(handles[node],node.customPropertyChangedEvent:Connect(OnNodePropChanged))
    table.insert(handles[node],node.destroyEvent:Connect(CleanupNodeHandles))

    local PROXIMITY_TRIGGER = node:GetCustomProperty("ProximityTrigger"):WaitForObject()
    table.insert(handles[node],PROXIMITY_TRIGGER.beginOverlapEvent:Connect(function(trig,other) OnNodeProximityEntered(node,other) end))
    table.insert(handles[node],PROXIMITY_TRIGGER.endOverlapEvent:Connect(function(trig,other) OnNodeProximityExit(node,other) end))

    AHS.SpawnProperRichnessGeometryForNode(node)
    --check for player proximity on spawn, add to interaction stack
    for _,p in ipairs(Game.GetPlayers())do
        if PROXIMITY_TRIGGER:IsOverlapping(p) then
            --add current node to stack
            AddNodeToPlayersNodesStack(p,node)
        end
    end
end

function OnNodeAdded(_,newNode)
    HookNode(newNode)
end

function OnPlayerJoined(player)
    --prepare the node stack for player
    PlayerActiveNodesStack[player] = {}
    --temp test
    --TODO proper tools save and load
    PLAYER_TOOLS[player] = {axe = 1, pick = 1}
end

function OnPlayerLeft(player)
    PlayerActiveNodesStack[player] = nil
end

--connect events
NODES.childAddedEvent:Connect(OnNodeAdded)
Game.playerJoinedEvent:Connect(OnPlayerJoined)
Game.playerLeftEvent:Connect(OnPlayerLeft)

--init nodes for use during runtime
AHS.InitNodesData()





--TESTTESTTEST
AHS.SpawnRandomNode("tree")
AHS.SpawnRandomNode("vein")
AHS.SpawnRandomNode()
--[[
print("node spawned")

AHS.GetFreeNodesCount()
for i=1,4 do
    Task.Wait(5)
    AHS.MineNode(NewNode,_)
end
Task.Wait(10)
AHS.RemoveNode(NewNode)
print("node removed")
AHS.GetFreeNodesCount()

Task.Wait(10)

AHS.GetFreeNodesCount()

NewNode = AHS.SpawnRandomNode("tree")
print("node spawned")

AHS.GetFreeNodesCount()
for i=1,2 do
    Task.Wait(5)
    AHS.MineNode(NewNode,_)
end
Task.Wait(10)
AHS.RemoveNode(NewNode)
print("node removed")
AHS.GetFreeNodesCount()]]