---@type Folder
local ROOT = script:GetCustomProperty("ROOT"):WaitForObject()

---@type string
local AHS = require(ROOT:GetCustomProperty("API_HarvestingSystem"))
---@type Folder
local NODES = ROOT:GetCustomProperty("NODES"):WaitForObject()
---@type string
local HARVESTING_NODES = require(ROOT:GetCustomProperty("HarvestingNodes"))


local HARVESTING_INTERACTION_PANEL = script:GetCustomProperty("HarvestingInteractionPanel"):WaitForObject()
local HARVEST_NODE_LABEL = HARVESTING_INTERACTION_PANEL:GetCustomProperty("HarvestNodeLabel"):WaitForObject()
local LabelPanelDefWidth = HARVESTING_INTERACTION_PANEL.width

---@type UIPanel
local HARVESTING_PROGRESSION_PANEL = script:GetCustomProperty("HarvestingProgressionPanel"):WaitForObject()
---@type UIText
local HARVESTING_NOW = HARVESTING_PROGRESSION_PANEL:GetCustomProperty("HarvestingNow"):WaitForObject()
---@type UIProgressBar
local UI_PROGRESS_BAR = HARVESTING_PROGRESSION_PANEL:GetCustomProperty("UI Progress Bar"):WaitForObject()


local LOCAL_PLAYER = Game.GetLocalPlayer()
local nodeInteractionStack = {}
local handles = {}
local harvestRequestSent = false

local NodeHarvest_CancelActions = {
    Move = true,
    Shoot = true,
    Aim = true,
    Jump = true
}

--this is handled on tool ability scripts
LOCAL_PLAYER.clientUserData.isHarvesting = false
LOCAL_PLAYER.clientUserData.myNode = nil
local LocalUserData = LOCAL_PLAYER.clientUserData

--LocalPreview delay, for server to set up
if Environment.IsSinglePlayerPreview() then Task.Wait(.1) end


------------------------------------
--LOCAL PLAYER INTERACTION AND HANDLES 
------------------------------------

function UpdateInteractionLabel()
    --TODO check if the proper tool is owned
    if #nodeInteractionStack == 0 then
        HARVESTING_INTERACTION_PANEL.visibility = Visibility.FORCE_OFF
    else
        local currentNode = nodeInteractionStack[#nodeInteractionStack]
        local originRow = currentNode:GetCustomProperty("OriginRow")
        HARVEST_NODE_LABEL.text = HARVESTING_NODES[originRow].FriendlyName
        local sizeApprox = HARVEST_NODE_LABEL:ComputeApproximateSize()
        if sizeApprox then
            HARVESTING_INTERACTION_PANEL.width = sizeApprox.x + 80
        else
            HARVESTING_INTERACTION_PANEL.width = LabelPanelDefWidth
        end
        HARVESTING_INTERACTION_PANEL.visibility = Visibility.INHERIT
    end
end

function AddNodeToInteractionStack(node)
    table.insert(nodeInteractionStack, node)
    UpdateInteractionLabel()
end

function RemoveNodeFromInteractionStack(node)
    local toRemove = 0
    for i,n in ipairs(nodeInteractionStack)do
        if n == node then toRemove = i end
    end
    --if the node was not hooked on client
    if toRemove == 0 then return end
    table.remove(nodeInteractionStack,toRemove)
    --update label
    UpdateInteractionLabel()
end

function OnActionPressed(player,action,values)
    if NodeHarvest_CancelActions[action] == true and LocalUserData.isHarvesting == true then
        Events.BroadcastToServer("Harvest.Cancel")
        return end
    if action ~= "Interact" then return end
    if LocalUserData.isHarvesting == true then return end
    if harvestRequestSent == true then return end
    if #nodeInteractionStack < 1 then print("node interaction stack is empty") return end
    harvestRequestSent = true
    --send harvest request of the last node in stack
    local lastNode = nodeInteractionStack[#nodeInteractionStack]
    Events.BroadcastToServer("Harvest",lastNode.id)
    --reconnect flag
    Task.Wait(.1)
    harvestRequestSent = false
end

Input.actionPressedEvent:Connect(OnActionPressed)

------------------------------------
--NODE HANDLES 
------------------------------------
function SafelySpawnRichnessGeometryForNode(node)
    --in singleplayer preview, the local context would be spawned twice, that is not good
    if Environment.IsSinglePlayerPreview() then return end
    AHS.SpawnProperRichnessGeometryForNode(node)
end

function OnNodePropChanged(node,propName)
    if propName == "Owner" then
        local currentOwner = node:GetCustomProperty(propName)
        if currentOwner == LOCAL_PLAYER.id then
            --server is responsible for one node per player at a time
            --node is locked for us, the server has spoken
            LocalUserData.myNode = node
            LocalUserData.isHarvesting = true
            --TODO show progress
        elseif LocalUserData.myNode == node then
            --my node was just released
            print("node released")
            LocalUserData.myNode = nil
            LocalUserData.isHarvesting = false
        end
    end
    if propName ~= "Richness" then return end
    --print("richness changed on client",node)
    SafelySpawnRichnessGeometryForNode(node)
end

function CleanupNodeHandles(node)
    --remove node from interaction stacks
    RemoveNodeFromInteractionStack(node)
    --disconnect node handles
    if handles[node] == nil then warn("unknown node handles??") return end
    for _,h in ipairs(handles[node]) do
        h:Disconnect()
    end
    handles[node] = nil
end

function OnNodeProximityEntered(node,other)
    if other ~= LOCAL_PLAYER then return end
    --add to interaction labels stack
    AddNodeToInteractionStack(node)
end

function OnNodeProximityExit(node,other)
    if other ~= LOCAL_PLAYER then return end
    --remove from interaction labels stack
    RemoveNodeFromInteractionStack(node)
end

function HookNode(node)
    --print("node registered on client",node)
    AHS.RegisterNodeOnClient(node)
    --print("node hooked on client")
    handles[node] = {}
    table.insert(handles[node],node.customPropertyChangedEvent:Connect(OnNodePropChanged))
    table.insert(handles[node],node.destroyEvent:Connect(CleanupNodeHandles))

    local PROXIMITY_TRIGGER = node:GetCustomProperty("ProximityTrigger"):WaitForObject()
    table.insert(handles[node],PROXIMITY_TRIGGER.beginOverlapEvent:Connect(function(trig,other) OnNodeProximityEntered(node,other) end))
    table.insert(handles[node],PROXIMITY_TRIGGER.endOverlapEvent:Connect(function(trig,other) OnNodeProximityExit(node,other) end))

    SafelySpawnRichnessGeometryForNode(node)
    --if the node is spawned in player proximity, add it to stack
    if PROXIMITY_TRIGGER:IsOverlapping(LOCAL_PLAYER) then
        AddNodeToInteractionStack(node)
    end
end

function OnNodeAdded(_,newNode)
    HookNode(newNode)
end

--init current nodes
for _,node in ipairs(NODES:GetChildren())do
    HookNode(node)
end

--connect events
NODES.childAddedEvent:Connect(OnNodeAdded)