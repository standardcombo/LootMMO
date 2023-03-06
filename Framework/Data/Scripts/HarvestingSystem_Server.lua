-----------------------------------------
-- HARVESTING SYSTEM FOR LootMMO
-- By Morituri_SK, v 1.0
-----------------------------------------
-- Harvesting control SERVER script
--
-- Server logic for harvesting system
-----------------------------------------

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
local handles = {}
local spawnedToolsOnPlayers = {}
local PlayerActiveNodesStack = {}
local LockedNodeByPlayer = {}
local CurrentlyMiningNodeForPlayer =  {}
local NodeDespawnTask = {}

--local PLAYER_TOOLS = {}

------------------------------------
--LOOT MMO STUFF
------------------------------------
local EquipAPI = _G["Character.EquipAPI"]
for i=1,20 do
    if EquipAPI ~= nil then break end
    EquipAPI = _G["Character.EquipAPI"]
    Task.Wait(.1)
end

local function GetInventory(player)
	local Character = EquipAPI.GetCurrentCharacter(player)
	if not Character then return end
	local inventory = Character:GetComponent("Inventory")
	local CoreInv = inventory:GetInventory()
	return CoreInv
end

--TODO_Harvesting tool upgrades:
-- New Item ID (and new icon) or just upgrade greatness ?
local function GetItemGreatness(item)
	local greatness = item:GetCustomProperty("Greatness")
	local playerOwnsBag = item:GetCustomProperty("PlayerOwnsBag")
	return greatness, playerOwnsBag
end

function HasRequredTool(player,toolName)
    local inv = GetInventory(player)
    local hasItem = false
    if inv then
        local reqToolTable = {}
        reqToolTable[toolName] = 1
        hasItem = inv:HasRequiredItems(reqToolTable)
    end
    return hasItem
end

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
    spawnedToolsOnPlayers[player] = World.SpawnAsset(toolTemplate, {name = "HarvestingTool", networkContext = NetworkContextType.NETWORKED})
    spawnedToolsOnPlayers[player]:Equip(player)
    --set invisible unless used (HarvestAbility_Server controlled)
    spawnedToolsOnPlayers[player].visibility = Visibility.FORCE_OFF
end

function HandlePlayerNodesStack(player)
    local latestNode = PlayerActiveNodesStack[player][#PlayerActiveNodesStack[player]]
    --check if there is another tool in place, in case of nodes overlap and remove it
    UnequipToolForPlayer(player)
    if latestNode == nil then return end
    --check if the player owns the proper tool
    local ToolReq = latestNode:GetCustomProperty("ToolReq")
    --[[local toolLevel = PLAYER_TOOLS[player][nodeToolType]
    if toolLevel == nil then return end
    if toolLevel < 1 then return end]]
    --TODO tool levels and upgrades
    local toolLevel = 1
    if HasRequredTool(player,ToolReq) ~= true then return end
    --spawn appropriate tool
    EquipToolForPlayer(player,ToolReq,toolLevel)
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
    if LockNode(node,player) == false then return end
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
    if NodeDespawnTask[node] then NodeDespawnTask[node]:Cancel() end
    NodeDespawnTask[node] = Task.Spawn(function ()
        if Object.IsValid(node) ~= true then return end
        AHS.RemoveNode(node)
    end,REMOVE_PARTIALLY_MINED_NODES_AFTER)
end

--this function connects to server script on harvesting tool equipped
function OnHarvestCompleted(player)
    --find the node being mined by the player
    local node = CurrentlyMiningNodeForPlayer[player]
    if Object.IsValid(node) ~= true then warn("currently mining node is not valid? Quit") return end
    --check if the player is in the proximity
    if AHS.IsPlayerInPoximity(node,player) ~= true then warn("player is not in the requested node proximity") return end
    --mine node
    AHS.MineNode(node,player)
    --release node
    UnlockNode(node)
end

function OnHarvestFailed(player)
    if LockedNodeByPlayer[player] == nil then return end
    UnlockNode(LockedNodeByPlayer[player])
end

------------------------
--Nodes Handling
------------------------

function LockNode(node,player)
    --check if the player is in proximity
    if AHS.IsPlayerInPoximity(node,player) ~= true then warn("player is not in the requested node proximity") return end
    --check if the proper tool is owned
    local reqTool = node:GetCustomProperty("ToolReq")
    if HasRequredTool(player,reqTool) ~= true then
    --if PLAYER_TOOLS[player][reqTool] == nil or PLAYER_TOOLS[player][reqTool] == 0 then
        warn("Player is requesting to mine a node without a proper tool?? "..player.name.." is trying to cheat?")
        return
    end
    --check if the node is free to be locked
    if node:GetCustomProperty("Owner") ~= "" then
        warn("node is locked for harvest by "..node:GetCustomProperty("Owner"))
        return false
    end
    --only one node can be locked per player, ballancing reasons
    if LockedNodeByPlayer[player] ~= nil then warn("one node per player violation") return false end
    node:SetCustomProperty("Owner", player.id)
    node:ForceReplication()
    LockedNodeByPlayer[player] = node
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
    if handles[node] == nil then warn("unknown node handles??") return end
    for _,h in ipairs(handles[node]) do
        h:Disconnect()
    end
    handles[node] = nil
    --remove node from stack for all player
    for _,p in ipairs(Game.GetPlayers())do
        RemoveNodeFromPlayersNodesStack(p,node)
    end
    --clear out node despawn task
    NodeDespawnTask[node] = nil
    --remove node id from table
    NodesById[node.id] = nil
end

function OnNodeProximityEntered(node,other)
    if other:IsA("Player") ~= true then return end
    local player = other

    --check if player has tools unlocked
    --if PLAYER_TOOLS[player] == nil then return end

    --check if player does have a proper tool
    local reqTool = node:GetCustomProperty("ToolReq")
    --local toolLevel = PLAYER_TOOLS[player][reqTool]
    --if toolLevel < 1 then return end
    if HasRequredTool(player,reqTool) ~= true then return end

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
    --PLAYER_TOOLS[player] = {axe = 1, pick = 1, shovel = 1}
    --player:SetPrivateNetworkedData("Tools",PLAYER_TOOLS[player])
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
--all nodes do follow the origin transform for variability
AHS.InitNodesData()

--get the count of free nodes
local freeCount = AHS.GetFreeNodesCount()

--init the active nodes at instance start
AHS.SpawnInitialNodes(INIT_NODES_SPAWNED_PER_CENT, INIT_SPAWN_EVEN_BY_TYPE, SPAWN_ONLY_FULL_NODES)

--connect the nodes removal for respawn timer
NODES.childRemovedEvent:Connect(OnNodeRemoved)