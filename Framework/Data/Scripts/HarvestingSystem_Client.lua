-----------------------------------------
-- HARVESTING SYSTEM FOR LootMMO
-- By Morituri_SK, v 1.0
-----------------------------------------
-- Harvesting control CLIENT script
--
-- Client logic for harvesting system
-----------------------------------------
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
local HARVEST_NODE_HOTKEY = HARVESTING_INTERACTION_PANEL:GetCustomProperty("HarvestNodeHotkey"):WaitForObject()
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
local HarvestingNodeTTL = 0
local HarvestingNodeTimePassed = 0
local LastTimeTaken = 0
local HarvestingProgressBarTask = nil
local isHarvestingAvailable = true

local PreventNodeHarvestingAction = {
    Move = true,
    Jump = true,
    Crouch = true,
    Attack = true,
    Cancel = true,
    z = true,
    x = true,
    c = true,
    Shift = true,
    Target = true,
    Throw = true,
    Drink = true,
    Block = true,
    Mount = true,
    Shoot = true,
    Aim = true,
    Reload = true,
    OpenBars = true,
    OpenAbility = true,
    OpenInventory = true,
    OpenShop = true,
    OpenQUests = true,
    BackToTavern  = true
}
PreventNodeHarvestingAction["Attack Secondary"] = true
PreventNodeHarvestingAction["1"] = true
PreventNodeHarvestingAction["2"] = true
PreventNodeHarvestingAction["3"] = true
PreventNodeHarvestingAction["4"] = true
PreventNodeHarvestingAction["5"] = true

--this is handled on tool ability scripts
LOCAL_PLAYER.clientUserData.isHarvesting = false
LOCAL_PLAYER.clientUserData.myNode = nil
local LocalUserData = LOCAL_PLAYER.clientUserData

--LocalPreview delay, simulate that server starts first
if Environment.IsSinglePlayerPreview() then Task.Wait(.1) end


------------------------------------
--LOOT MMO STUFF
------------------------------------
local EquipAPI = _G["Character.EquipAPI"]
for i=1,20 do
    if EquipAPI ~= nil and _G.AppState ~= nil then break end
    EquipAPI = _G["Character.EquipAPI"]
    Task.Wait(.1)
    if i == 20 then error("unable to locate the Character.EquipAPI global or _G.AppState") end
end

local events, CURRENT_INVENTORY

local function dataUpdated(character)
	if character then
		if events then
			events:Disconnect()
		end
		events = nil
		local inventory = character:GetComponent("Inventory")
		local newInventory = inventory:GetInventory()
		if not newInventory then
			return
		end

        CURRENT_INVENTORY = newInventory
        AHS.UpdateAllNodesCallouts()
		events = newInventory.changedEvent:Connect(AHS.UpdateAllNodesCallouts)
	end
end

local function CharacterEquipped(character, player)
	if player == LOCAL_PLAYER then
		if character then
			character.dataloadedEvent:Connect(dataUpdated)
			dataUpdated(character)
		end
	end
end

local function CharacterUnequip(character, player)
	if player == LOCAL_PLAYER then
        CURRENT_INVENTORY = nil

		if events then
			events:Disconnect()
			events = nil
		end
	end
end

EquipAPI.playerEquippedEvent:Connect(CharacterEquipped)
EquipAPI.playerUnequippedEvent:Connect(CharacterUnequip)

------------------------------------
--LOCAL PLAYER INTERACTION AND HANDLES 
------------------------------------
function CleanupHarvestingProgress()
    HARVESTING_PROGRESSION_PANEL.visibility = Visibility.FORCE_OFF
    UpdateInteractionLabel()
end

function IsPlayerAllowedToHarvest()
    return (_G.AppState.GetLocalState() == _G.AppState.Adventure and LOCAL_PLAYER.isGrounded == true)
end

function UpdateMiningProgressBar()
    --cancel the harvesting if the local state does not allow harvest
    if IsPlayerAllowedToHarvest() == false then
        Events.BroadcastToServer("Harvest.Cancel")
        CleanupHarvestingProgress()
        return
    end
    --calculate dt
    local curTime = time()
    local dt = curTime - LastTimeTaken
    LastTimeTaken = curTime
    HarvestingNodeTimePassed = HarvestingNodeTimePassed + dt
    --update progressbar
    local progress = HarvestingNodeTimePassed / HarvestingNodeTTL
    UI_PROGRESS_BAR.progress = progress
    if HarvestingNodeTTL <= HarvestingNodeTimePassed then
        CleanupHarvestingProgress()
        return end
    HarvestingProgressBarTask = Task.Spawn(UpdateMiningProgressBar)
end

function UpdateInteractionLabel()
    --note that if currentNodeOwner == LOCAL_PLAYER ->
    --then the node is being harvested by us and this function is not called at all
    if #nodeInteractionStack == 0 or (_G.AppState.GetLocalState() ~= _G.AppState.Adventure) then
        HARVESTING_INTERACTION_PANEL.visibility = Visibility.FORCE_OFF
    else
        local currentNode = nodeInteractionStack[#nodeInteractionStack]
        local currentNodeOwner = currentNode:GetCustomProperty("Owner")
        local originRow = currentNode:GetCustomProperty("OriginRow")
        local toolNeeded = currentNode:GetCustomProperty("ToolReq")
        local greatnessRequired = currentNode:GetCustomProperty("GreatnessRequired") or 0
        --testetst
        --print("Player has "..toolNeeded.." =",HasRequredTool(toolNeeded))
        local requiredToolIsAvailable = AHS.HasRequredTool(LOCAL_PLAYER,toolNeeded)
        --if tools were not unlocked yet, no label
        --[[if LocalUserData.Tools == nil then
            HARVESTING_INTERACTION_PANEL.visibility = Visibility.FORCE_OFF
            return
        end]]
        --check it the player owns the tool needed
        if requiredToolIsAvailable == nil then
            HARVEST_NODE_LABEL.text = "Required "..toolNeeded
            HARVEST_NODE_HOTKEY.text = "[  ]"
            isHarvestingAvailable = false
        elseif requiredToolIsAvailable < greatnessRequired then --LocalUserData.Tools[toolNeeded] == 0 then
            HARVEST_NODE_LABEL.text = toolNeeded.." of Greatness >= "..tostring(greatnessRequired).." required."
            HARVEST_NODE_HOTKEY.text = "[  ]"
            isHarvestingAvailable = false
        elseif currentNodeOwner == "" then
            HARVEST_NODE_LABEL.text = HARVESTING_NODES[originRow].FriendlyName
            local label = Input.GetActionInputLabel("Interact")
            HARVEST_NODE_HOTKEY.text = "["..label.."]"
            isHarvestingAvailable = true
        elseif currentNodeOwner ~= LOCAL_PLAYER.id then
            HARVEST_NODE_LABEL.text = "OCCUPIED"
            HARVEST_NODE_HOTKEY.text = "[  ]"
            isHarvestingAvailable = false
        end
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
    if ((PreventNodeHarvestingAction[action] == true) or LOCAL_PLAYER.isGrounded ~= true)
                and (LocalUserData.isHarvesting == true)
                    then
        Events.BroadcastToServer("Harvest.Cancel")
        if HarvestingProgressBarTask then HarvestingProgressBarTask:Cancel() end
        CleanupHarvestingProgress()
        return end
    if action ~= "Interact" then return end
    if isHarvestingAvailable ~= true then return end
    if LocalUserData.isHarvesting == true then return end
    if harvestRequestSent == true then return end
    if #nodeInteractionStack < 1 then --[[warn("node interaction stack is empty")]] return end
    --do not allow harvest in wrong state
    if IsPlayerAllowedToHarvest() == false then return end
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
function SafelySpawnRichnessGeometryForNode(node,isNew)
    --in singleplayer preview, the local context would be spawned twice, and we do not want that
    if Environment.IsSinglePlayerPreview() then return end
    AHS.SpawnProperRichnessGeometryForNode(node,isNew)
end

function OnNodePropChanged(node,propName)
    if propName == "Owner" then
        local currentOwner = node:GetCustomProperty(propName)
        if currentOwner == LOCAL_PLAYER.id then
            --server is responsible for one node per player at a time
            --if a node is locked for us, the server is right, period.
            LocalUserData.myNode = node
            LocalUserData.isHarvesting = true
        elseif LocalUserData.myNode == node then
            --my node was just released and is ready for harvest request
            LocalUserData.myNode = nil
            LocalUserData.isHarvesting = false
        end
        --update label if the node is the last in stack and not being harvested by us
        if node == nodeInteractionStack[#nodeInteractionStack] then
            if currentOwner ~= LOCAL_PLAYER.id then UpdateInteractionLabel() end
        end
    end
    if propName ~= "Richness" then return end
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
    AHS.RegisterNodeOnClient(node)
    handles[node] = {}
    table.insert(handles[node],node.customPropertyChangedEvent:Connect(OnNodePropChanged))
    table.insert(handles[node],node.destroyEvent:Connect(CleanupNodeHandles))

    local PROXIMITY_TRIGGER = node:GetCustomProperty("ProximityTrigger"):WaitForObject()
    table.insert(handles[node],PROXIMITY_TRIGGER.beginOverlapEvent:Connect(function(trig,other) OnNodeProximityEntered(node,other) end))
    table.insert(handles[node],PROXIMITY_TRIGGER.endOverlapEvent:Connect(function(trig,other) OnNodeProximityExit(node,other) end))

    SafelySpawnRichnessGeometryForNode(node,true)
    --if the node is spawned in player proximity, add it to stack
    if PROXIMITY_TRIGGER:IsOverlapping(LOCAL_PLAYER) then
        AddNodeToInteractionStack(node)
    end
end

function OnFinishTimeUpdated(timeStamp)
    --overall informational, about if a local player has started harvesting,
    --           assuming that the server knows for sure, no checks on client is needed
    --wait for the node to lock on current player, as a broadcast is faster than networked property change
    local ticks = 0
    while LocalUserData.myNode == nil do
        Task.Wait(.1)
        ticks = ticks + 1
        if ticks > 10 then return end
    end
    local originRow = LocalUserData.myNode:GetCustomProperty("OriginRow")
    HARVESTING_NOW.text = HARVESTING_NODES[originRow].FriendlyName
    local sizeApprox = HARVESTING_NOW:ComputeApproximateSize()
    if sizeApprox then
        HARVESTING_PROGRESSION_PANEL.width = sizeApprox.x + 80
    else
        HARVESTING_PROGRESSION_PANEL.width = LabelPanelDefWidth
    end
    LastTimeTaken = time()
    local ttlTest = timeStamp - LastTimeTaken
    if ttlTest <= 0 then warn("bad timestamp from server for progress bar") return end
    --prevent any previous task to handle the progress bar
    if HarvestingProgressBarTask then HarvestingProgressBarTask:Cancel() end
    HarvestingNodeTTL = ttlTest
    HarvestingNodeTimePassed = 0
    HARVESTING_INTERACTION_PANEL.visibility = Visibility.FORCE_OFF
    HARVESTING_PROGRESSION_PANEL.visibility = Visibility.INHERIT
    HarvestingProgressBarTask = Task.Spawn(UpdateMiningProgressBar)
end

function OnNodeAdded(_,newNode)
    HookNode(newNode)
end

function OnNodeRemoved(_,nodeGone)
    AHS.NodeDestroyedOnClient(nodeGone)
end

--init current nodes
for _,node in ipairs(NODES:GetChildren())do
    HookNode(node)
end

--connect events
NODES.childAddedEvent:Connect(OnNodeAdded)
Events.Connect("Harvest.FinTime",OnFinishTimeUpdated)

--conect for local game state (to prevent harvesting on state change if needed)
Events.Connect(_G.AppState.EnterKey,UpdateInteractionLabel)
Events.Connect(_G.AppState.ExitKey,UpdateInteractionLabel)
--no harvesting while jumping
LOCAL_PLAYER.movementModeChangedEvent:Connect(UpdateInteractionLabel)

--load PNDs
--OnPND_Changed(LOCAL_PLAYER,"Tools")

--wait a little for the initial nodes placeholder cleanup to finish
Task.Wait(1)
NODES.childRemovedEvent:Connect(OnNodeRemoved)
Events.Connect("Node.ForceRelease",function(node)
    if LocalUserData.myNode ~= node then return end
    LocalUserData.myNode = nil
    LocalUserData.isHarvesting = false
end)

AHS.UpdateAllNodesCallouts()