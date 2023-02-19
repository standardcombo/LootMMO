---@type Folder
local ROOT = script:GetCustomProperty("ROOT"):WaitForObject()

---@type string
local AHS = require(ROOT:GetCustomProperty("API_HarvestingSystem"))
---@type Folder
local NODES = ROOT:GetCustomProperty("NODES"):WaitForObject()
---@type string
local HARVESTING_NODES = require(ROOT:GetCustomProperty("HarvestingNodes"))
local HARVESTING_TOOLS = require(ROOT:GetCustomProperty("HarvestingTools"))

--CUSTOM VARS OF THE HARVESTING SYSTEM
local RESPAWN_NODES_INTERVAL = ROOT:GetCustomProperty("RespawnNodesInterval")
local RESPAWN_BY_TYPE_ONLY = ROOT:GetCustomProperty("RespawnByTypeOnly")
local INIT_NODES_SPAWNED_PER_CENT = ROOT:GetCustomProperty("InitNodesSpawnedPerCent")
local INIT_SPAWN_EVEN_BY_TYPE = ROOT:GetCustomProperty("InitSpawnEvenByType")
local REMOVE_PARTIALLY_MINED_NODES_AFTER = ROOT:GetCustomProperty("RemovePartiallyMinedNodesAfter")
local SPAWN_ONLY_FULL_NODES = ROOT:GetCustomProperty("SpawnOnlyFullNodes")

--respawn timer limits, both x and y greater than 0 and x less or equal y
if RESPAWN_NODES_INTERVAL.x < 0 then RESPAWN_NODES_INTERVAL.x = 0 end
if RESPAWN_NODES_INTERVAL.y < 0 then RESPAWN_NODES_INTERVAL.y = 0 end
if RESPAWN_NODES_INTERVAL.x > RESPAWN_NODES_INTERVAL.y then
    local temp = RESPAWN_NODES_INTERVAL.x
    RESPAWN_NODES_INTERVAL.x = RESPAWN_NODES_INTERVAL.y
    RESPAWN_NODES_INTERVAL.y = temp
end
local RESPAWN_ALLOWED = (RESPAWN_NODES_INTERVAL ~= Vector2.ZERO)

local NodesById = {}
local TotalNodesAvailable = 0
local handles = {}
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
    --print("tool equipped",spawnedToolsOnPlayers[player])
    --TODO set invisible unless used
end

function HandlePlayerNodesStack(player)
    local latestNode = PlayerActiveNodesStack[player][#PlayerActiveNodesStack[player]]
    --print("latestNode",latestNode)
    --check if there is another tool in place, in case of nodes overlap and remove it
    UnequipToolForPlayer(player)
    if latestNode == nil then return end
    --check if the player owns the proper tool
    local nodeToolType = latestNode:GetCustomProperty("ToolReq")
    local toolLevel = PLAYER_TOOLS[player][nodeToolType]
    --print("checking tool for player",nodeToolType,toolLevel)
    if toolLevel == nil then return end
    if toolLevel < 1 then return end
    --spawn appropriate tool
    --print("spawning tool for player",nodeToolType,toolLevel)
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
    --lock node if there is no other lock associated with the player
    print("player harvest request on server, for ",player.name,node)
    if LockNode(node,player) == false then print("forfeit the harvesting request") return end
    --save the node being mined
    CurrentlyMiningNodeForPlayer[player] = node
    local harvestCount = node:GetCustomProperty("SwingsToHarvest") or 3
    --activate ability
    Events.Broadcast("Harvest.Start",player,harvestCount)
    --look at the node, when you do want to harvest
    local dir = (node:GetWorldPosition() - player:GetWorldPosition()):GetNormalized()
    local rotToNode = Rotation.New(dir,Vector3.UP)
    rotToNode.x = 0
    rotToNode.y = 0
    player:SetWorldRotation(rotToNode)
    --append node to be respawned if a partially mined nodes do reswpawn
    if REMOVE_PARTIALLY_MINED_NODES_AFTER <= 0 then return end
    Task.Spawn(function ()
        if Object.IsValid(node) ~= true then return end
        AHS.RemoveNode(node)
    end,REMOVE_PARTIALLY_MINED_NODES_AFTER)
end

function OnHarvestCompleted(player) --this comes from server script on tool ability
    --find the node being mined by the player
    local node = CurrentlyMiningNodeForPlayer[player]
    if Object.IsValid(node) ~= true then warn("currently mining node is not valid? Quit") return end
    --TODO check if the player is in the proximity
    print("node ",node," is about to be mined by "..player.name)
    --mine node
    AHS.MineNode(node,player)
    --release node
    UnlockNode(node)
end

function OnHarvestFailed(player)
    print("node failed request arrived on server",LockedNodeByPlayer[player])
    if LockedNodeByPlayer[player] == nil then print('ignored, no unlocks') return end
    UnlockNode(LockedNodeByPlayer[player])
    print("node unlocked")
end

------------------------
--Respawn Logic
------------------------


------------------------
--Nodes Handling
------------------------

function LockNode(node,player)
    --check if the player is in proximity
    --check if the proper tool is owned
    --check if the node is free to be locked
    print("Locking node",node,"on server for "..player.name)
    if node:GetCustomProperty("Owner") ~= "" then
        warn("node is locked for harvest by "..node:GetCustomProperty("Owner"))
        return false
    end
    --only one node can be locked per player, ballancing reasons
    if LockedNodeByPlayer[player] ~= nil then warn("one node per player violation") return false end
    node:SetCustomProperty("Owner", player.id)
    node:ForceReplication()
    LockedNodeByPlayer[player] = node
    print("locked node",LockedNodeByPlayer[player])
    return true
end

function UnlockNode(node)
    if Object.IsValid(node) ~= true then return end
    local lastOwnerId = node:GetCustomProperty("Owner")
    local ownerPlayer = Game.FindPlayer(lastOwnerId)
    if ownerPlayer then
        if LockedNodeByPlayer[ownerPlayer] == node then
            LockedNodeByPlayer[ownerPlayer] = nil
        end
    end
    node:SetCustomProperty("Owner", "")
    node:ForceReplication()
    print("node unlocked on server")
end

function UpdateFreeNodesTotalCount()
    TotalNodesAvailable = AHS.GetFreeNodesCount()
end

function OnNodePropChanged(node,propName)
    if propName ~= "Richness" then return end
    --keep the node geo in line for colliders
    print("spawning richness on SERVER, is new == false")
    AHS.SpawnProperRichnessGeometryForNode(node)
end

function CleanupNodeHandles(node)
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

function OnNodeProximityEntered(node,other)
    if other:IsA("Player") ~= true then return end
    local player = other

    --check if the player owns the proper tool
    if PLAYER_TOOLS[player] == nil then return end

    local nodeToolType = node:GetCustomProperty("ToolReq")
    local toolLevel = PLAYER_TOOLS[player][nodeToolType]
    if toolLevel < 1 then return end

    --add current node to stack
    AddNodeToPlayersNodesStack(player,node)
end

function OnNodeProximityExit(node,other)
    if other:IsA("Player") ~= true then return end
    local player = other
    OnHarvestFailed(player)
    RemoveNodeFromPlayersNodesStack(player,node)
end

function HookNode(node)
    print("spawning richness on SERVER, is new == true")
    AHS.SpawnProperRichnessGeometryForNode(node,true)

    handles[node] = {}
    NodesById[node.id] = node --for faster search

    table.insert(handles[node],node.customPropertyChangedEvent:Connect(OnNodePropChanged))
    table.insert(handles[node],node.destroyEvent:Connect(CleanupNodeHandles))

    local PROXIMITY_TRIGGER = node:GetCustomProperty("ProximityTrigger"):WaitForObject()
    table.insert(handles[node],PROXIMITY_TRIGGER.beginOverlapEvent:Connect(function(trig,other) OnNodeProximityEntered(node,other) end))
    table.insert(handles[node],PROXIMITY_TRIGGER.endOverlapEvent:Connect(function(trig,other) OnNodeProximityExit(node,other) end))

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

function OnNodeRemoved(_,deadNode)
    print("node removed, allow for respawn",RESPAWN_ALLOWED)
    if RESPAWN_ALLOWED == false then return end
    local randomTime = math.random(RESPAWN_NODES_INTERVAL.x,RESPAWN_NODES_INTERVAL.y)
    local nodeType = nil
    if RESPAWN_BY_TYPE_ONLY == true then nodeType = deadNode:GetCustomProperty("Type") end
    local richnessPerCent = 100
    if SPAWN_ONLY_FULL_NODES ~= true then richnessPerCent = math.random(1,100) end
    --spawn task to respawn a node. This assumes, that it is always allowed to spawn a node
    Task.Spawn(function ()
        AHS.SpawnRandomNode(nodeType,richnessPerCent)
    end, randomTime)
end

function OnPlayerJoined(player)
    --prepare the node stack for player
    PlayerActiveNodesStack[player] = {}
    --temp test
    --TODO proper tools save and load
    PLAYER_TOOLS[player] = {axe = 1, pick = 1}
    player:SetPrivateNetworkedData("Tools",PLAYER_TOOLS[player])
end

function OnPlayerLeft(player)
    PlayerActiveNodesStack[player] = nil
end

--connect events
NODES.childAddedEvent:Connect(OnNodeAdded)
Game.playerJoinedEvent:Connect(OnPlayerJoined)
Game.playerLeftEvent:Connect(OnPlayerLeft)
--handles for player events
Events.ConnectForPlayer("Harvest",OnPlayerHarvestRequest)
Events.Connect("Harvest.Complete",OnHarvestCompleted) --this connects from player ability on harvesting tool
Events.ConnectForPlayer("Harvest.Cancel",OnHarvestFailed)

--init nodes for use during runtime
AHS.InitNodesData()

--get the count of free nodes
local freeCount = AHS.GetFreeNodesCount()

--init the active nodes at instance start
AHS.SpawnInitialNodes(INIT_NODES_SPAWNED_PER_CENT, INIT_SPAWN_EVEN_BY_TYPE, SPAWN_ONLY_FULL_NODES)

--connect the nodes removal for respawn timer
NODES.childRemovedEvent:Connect(OnNodeRemoved)

--[[TESTTESTTEST
AHS.SpawnRandomNode("tree",100)
AHS.SpawnRandomNode("tree",60)
AHS.SpawnRandomNode("tree",30)
AHS.SpawnRandomNode("vein",30)
AHS.SpawnRandomNode("vein",90)
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