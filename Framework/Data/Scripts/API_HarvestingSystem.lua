-----------------------------------------
-- HARVESTING SYSTEM FOR LootMMO
-- By Morituri_SK, v 1.0
-----------------------------------------
-- Harvesting API for Server and Client
--
-- API for nodes handling
-----------------------------------------

local API = {}

--this is the most common error, when importing the system, lets warn the creator
local refNodes = script:GetCustomProperty("NODES")
if refNodes:GetObject() == nil then error("******* API_HarvestingSystem is missing the reference to NODES folder") return end

---@type string
local HARVESTING_NODES = require(script:GetCustomProperty("HarvestingNodes"))
---@type string
local HARVESTING_TOOLS = require(script:GetCustomProperty("HarvestingTools"))
---@type Folder
local NODES_PARENT = script:GetCustomProperty("NODES"):WaitForObject()
---@type string
local REWARDS_PARSER = require(script:GetCustomProperty("RewardsParser"))

local NODES_DATA = {}
local TOOLS_DATA = {}
local FREE_NODES_DATA = {}
local SPAWNED_NODES = {}
local FORCE_SPAWN = {}
local serverNodesReady = false

--load nodes and tools table data
for rowNum,rowData in ipairs(HARVESTING_NODES)do
    if NODES_DATA[rowData.Type] == nil then NODES_DATA[rowData.Type] = {} end
    --insert row data to the appropriate node type table for future usage
    rowData.rowNum = rowNum
    rowData.maxRichness = #rowData.NodeStageGeoTable
    table.insert(NODES_DATA[rowData.Type], rowData)
end

for rowNum,rowData in ipairs(HARVESTING_TOOLS)do
    if TOOLS_DATA[rowData.Type] == nil then TOOLS_DATA[rowData.Type] = {} end
    if TOOLS_DATA[rowData.Type][rowData.Level] ~= nil then warn("tool level has to be unique, for harvesting tools table row number "..tostring(rowNum)) end
    --save tools by type and level for players usage
    TOOLS_DATA[rowData.Type][rowData.Level] = {}
    TOOLS_DATA[rowData.Type][rowData.Level].Equipment = rowData.Equipment
    TOOLS_DATA[rowData.Type][rowData.Level].Stance = rowData.Stance
end

-----------------------
--INTERNALS
-----------------------

function GetWeightedRandomNodeIndex(NodeTypeTable)
    --count total weight
    local totalWeight = 0
    for _,typeData in ipairs(NodeTypeTable)do
        totalWeight = totalWeight + typeData.WeightChance
    end
    --roll random
    local randomRoll = math.random(1,totalWeight)
    --choose final index based on weight
    for i,typeData in ipairs(NodeTypeTable)do
        randomRoll = randomRoll - typeData.WeightChance
        if randomRoll < 1 then return i end
    end
    --failsafe, this should never happen
    warn("?? bad weight values for "..NodeTypeTable.Type)
    return 1
end

-----------------------
--SERVER CONTEXT
-----------------------

function API.GetNodePlacementStatus()
    if Environment.IsServer() ~= true then warn("Required function is for server context purposes only") return end
    if serverNodesReady == true then return true end
    warn("FREE_NODES_DATA is not ready on server, call API.InitNodesData first")
    return false
end

local function SpawnNode(nodeData, richness, transform, freeNodesTableIndex)
    --spawn node
    local NewNode = World.SpawnAsset(nodeData.Template, {parent = NODES_PARENT, transform = transform, networkContext = NetworkContextType.NETWORKED})
    --setup node custom properties
    NewNode:SetCustomProperty("Richness",richness)
    --add the origin template table row for client context effects
    NewNode:SetCustomProperty("OriginRow",nodeData.rowNum)
    --save for the script logic
    SPAWNED_NODES[NewNode] = {}
    SPAWNED_NODES[NewNode].GeoStagesTable = nodeData.NodeStageGeoTable
    local proxTirgger = NewNode:GetCustomProperty("ProximityTrigger"):WaitForObject()
    SPAWNED_NODES[NewNode].proximityTrigger = proxTirgger
    --remove the position from the free ones
    table.remove(FREE_NODES_DATA,freeNodesTableIndex)
    --force replication
    NewNode:ForceReplication()
    --return spawned node, for later use if needed
    return NewNode
end

function API.InitNodesData()
    if Environment.IsServer() ~= true then warn("API.InitNodesData is server only") return end
    if Object.IsValid(NODES_PARENT) ~= true then warn("Invalid NODES_PARENT in API.InitNodesData") return end
    local AllNodes = NODES_PARENT:GetChildren()
    if #AllNodes == 0 then warn("No children to init in NODES_PARENT for API.InitNodesData") return end

    --save the placed nodes data for use during runtime
    for freeNodeIndex,nodeObject in ipairs(AllNodes)do
        local nodeData = {}
        nodeData.Type = nodeObject:GetCustomProperty("Type")
        nodeData.Transform = nodeObject:GetWorldTransform()
        FREE_NODES_DATA[freeNodeIndex] = nodeData
        --spawn the nodes marked for force spawn
        if nodeObject:GetCustomProperty("AlwaysSpawn") == true then
            table.insert(FORCE_SPAWN, freeNodeIndex)
        end
    end

    --remove current nodes, the server will handle them from now on
    for _,nodeObject in ipairs(AllNodes)do
        nodeObject:Destroy()
    end

    --force spawn the selected nodes
    if #FORCE_SPAWN > 0 then
        for i=#FORCE_SPAWN,1,-1 do
            local freeNodeIndex = FORCE_SPAWN[i]
            local nodeType = FREE_NODES_DATA[freeNodeIndex].Type
            local randomNodeIndex = GetWeightedRandomNodeIndex(NODES_DATA[nodeType])
            local randomNodeData = NODES_DATA[nodeType][randomNodeIndex]
            local GeoStagesTable = randomNodeData.NodeStageGeoTable
            local maxRichness = #GeoStagesTable
            SpawnNode(randomNodeData, maxRichness, FREE_NODES_DATA[freeNodeIndex].Transform, freeNodeIndex)
        end
    end

    --from now on, API is ready to handle nodes on server
    serverNodesReady = true
end

function API.SpawnRandomNode(type,richnessPerCent)
    if API.GetNodePlacementStatus() ~= true then return end
    if API.GetFreeNodesCount() == 0 then warn("all node places are occupied, ready to be harvested") return end
    --build temporary table to choose from
    local tempTable = {}
    for i,nodePlacementData in ipairs(FREE_NODES_DATA)do
        FREE_NODES_DATA[i].originIndex = i
        if type then
            if type == nodePlacementData.Type then table.insert(tempTable,FREE_NODES_DATA[i]) end
        else
            table.insert(tempTable,FREE_NODES_DATA[i])
        end
    end
    --choose a random node of the type (or choose from all nodes if type == nil)
    if #tempTable == 0 then warn("There are no free nodes of the "..tostring(type).." type") return end
    local randomNodeFromTempTable = math.random(1,#tempTable)
    local randomNodeTransform = tempTable[randomNodeFromTempTable].Transform
    local randomNodeType = tempTable[randomNodeFromTempTable].Type
    local randomNode_NodesData = NODES_DATA[randomNodeType]
    --weighted chances
    local randomNodeIndex = GetWeightedRandomNodeIndex(NODES_DATA[randomNodeType])
    local randomNodeData = randomNode_NodesData[randomNodeIndex]
    --load the node stages and spawn the required richness
    local GeoStagesTable = randomNodeData.NodeStageGeoTable
    local maxRichness = #GeoStagesTable
    --required richness per cent value
    local requiredRichness = maxRichness
    if richnessPerCent then
        requiredRichness = maxRichness*richnessPerCent/100
        requiredRichness = math.floor(requiredRichness + 1) --ceil
        if requiredRichness > maxRichness then requiredRichness = maxRichness
        elseif requiredRichness < 1 then requiredRichness = 1 end
    end
    local newNode = SpawnNode(randomNodeData, requiredRichness, randomNodeTransform, tempTable[randomNodeFromTempTable].originIndex)
    return newNode
end

function API.SpawnInitialNodes(perCent, spawnEven, spawnFull)
    if API.GetNodePlacementStatus() ~= true then return end
    if spawnEven == true then
        --build temporary table of types available
        local tempTable = {}
        for _,nodePlacementData in ipairs(FREE_NODES_DATA)do
            if tempTable[nodePlacementData.Type] == nil then tempTable[nodePlacementData.Type] = 0 end
            tempTable[nodePlacementData.Type] = tempTable[nodePlacementData.Type] + 1
        end
        --per cent count for each type (always at least one is being spawned)
        for nodeType,totalCountOfType in pairs(tempTable)do
            local spawnTotalOfType = math.floor(totalCountOfType * perCent / 100 + .5) --math.round()
            if spawnTotalOfType < 1 then spawnTotalOfType = 1 end
            for i=1,spawnTotalOfType do
                local richnessPerCent = 100
                if spawnFull ~= true then richnessPerCent = math.random(1,100) end
                API.SpawnRandomNode(nodeType,richnessPerCent)
            end
        end
    else
        local freeNodesCount = API.GetFreeNodesCount()
        local spawnTotal = math.floor(freeNodesCount * perCent / 100 + .5) --math.round()
        if spawnTotal < 1 then spawnTotal = 1 end
        for i=1,spawnTotal do
            local richnessPerCent = 100
            if spawnFull ~= true then richnessPerCent = math.random(1,100) end
            API.SpawnRandomNode(nil,richnessPerCent)
        end
    end
end

function API.RemoveNode(node)
    if API.GetNodePlacementStatus() ~= true then return end
    if Object.IsValid(node) ~= true then warn(tostring(node).." node is not valid to be removed") return end
    local nodeTransform = node:GetWorldTransform()
    local nodeType = node:GetCustomProperty("Type")
    --add the node back to free nodes table
    local newIndex = #FREE_NODES_DATA + 1
    FREE_NODES_DATA[newIndex] = {Type = nodeType, Transform = nodeTransform, originIndex = newIndex}
    --remove the node, so it is now really empty. Client will spawn '_fin' harvesting effect on child removal
    node:Destroy()
    --cleanup table
    SPAWNED_NODES[node] = nil
end

function API.MineNode(node,player)
    --the HarvestingSystem_Server.lua is responsible to check if player is able to do so
    if API.GetNodePlacementStatus() ~= true then return end
    if Object.IsValid(node) ~= true then return end
    if SPAWNED_NODES[node] == nil then warn("existing node is missing its data??"..tostring(node)) return end
    --deplete one richness from the node
    local richness = node:GetCustomProperty("Richness")
    richness = richness - 1
    --add resources to player involved 
    local originRow = node:GetCustomProperty("OriginRow") or 0
    if originRow > 0 then
        --award when perSwing is true or the node is depleted
        if HARVESTING_NODES[originRow].awardsPerSwing == true or richness == 0 then
            Task.Spawn(function() REWARDS_PARSER.Parse(player, HARVESTING_NODES, originRow) end)
        end
    end
    local nodeType = node:GetCustomProperty("Type")
    --update node geometry or remove if depleted
    if richness > 0 then
        node:SetCustomProperty("Richness",richness)
        node:ForceReplication()
        Events.Broadcast("Node.Harvested",player,nodeType)
    else
        Events.Broadcast("Node.Depleted",player,nodeType)
        API.RemoveNode(node)
    end
end

-----------------------
--Client Context
-----------------------
local LOCAL_PLAYER = nil
if Environment.IsClient() then LOCAL_PLAYER = Game.GetLocalPlayer() end

function API.RegisterNodeOnClient(node)
    if Environment.IsClient() ~= true then return end
    local originRow = node:GetCustomProperty("OriginRow") or 0
    while originRow == 0 do
        Task.Wait(.1)
        originRow = node:GetCustomProperty("OriginRow")
        --warn("waiting for node origin row on client")
    end
    local nodeTableData = HARVESTING_NODES[originRow]
    SPAWNED_NODES[node] = {}
    SPAWNED_NODES[node].GeoStagesTable = nodeTableData.NodeStageGeoTable
    local proxTirgger = node:GetCustomProperty("ProximityTrigger"):WaitForObject()
    SPAWNED_NODES[node].proximityTrigger = proxTirgger
    SPAWNED_NODES[node].FinishedTemplate = nodeTableData.FinishedTemplate
    SPAWNED_NODES[node].calloutParent = node:GetCustomProperty("CalloutEffects"):WaitForObject()
    SPAWNED_NODES[node].calloutParent.parent = nil --deparent for smooth effects
    _UpdateNodeCallout(node) --play if needed
end

function API.NodeDestroyedOnClient(node)
    if Environment.IsClient() ~= true then return end
    local effect = World.SpawnAsset(SPAWNED_NODES[node].FinishedTemplate, {transform = node:GetWorldTransform()})
    if effect.lifeSpan == 0 then effect.lifeSpan = 3 end
    --remove the callout effects too (let them disappear first)
    SPAWNED_NODES[node].calloutParent.lifeSpan = 3
    _PlayNodeCallout(SPAWNED_NODES[node].calloutParent,false)
    --clear node data
    SPAWNED_NODES[node] = nil
    Events.Broadcast("Node.ForceRelease",node)
end

function API.UpdateAllNodesCallouts()
    for node,nodeData in pairs(SPAWNED_NODES) do
        _UpdateNodeCallout(node)
    end
end

function _UpdateNodeCallout(currentNode)
    if LOCAL_PLAYER == nil then return end
    local toolReq = currentNode:GetCustomProperty("ToolReq")
    local greatnessRequired = currentNode:GetCustomProperty("GreatnessRequired") or 0
    local toolGreatness = API.HasRequredTool(LOCAL_PLAYER,toolReq)
    if toolGreatness == nil or toolGreatness < greatnessRequired then
        _PlayNodeCallout(SPAWNED_NODES[currentNode].calloutParent,false)
    elseif toolGreatness >= greatnessRequired then
        _PlayNodeCallout(SPAWNED_NODES[currentNode].calloutParent,true)
    else
        _PlayNodeCallout(SPAWNED_NODES[currentNode].calloutParent,false)
    end
end

function _PlayNodeCallout(calloutParent,playMe)
    for _,effect in ipairs(calloutParent:GetChildren())do
        if playMe == true then effect:Play()
        else effect:Stop() end
    end
end

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

local function GetInventory(player)
	local Character = EquipAPI.GetCurrentCharacter(player)
	if not Character then return end
	local inventory = Character:GetComponent("Inventory")
	local CoreInv = inventory:GetInventory()
	return CoreInv
end

function API.HasRequredTool(player,toolName)
    local inv = GetInventory(player)
    local toolGreatness = nil
    if inv then
        toolGreatness = inv:GetToolGreatness(toolName)
    end
    return toolGreatness
end

-----------------------
--Any Context
-----------------------
function API.GetProperToolTemplate(type,level)
    if TOOLS_DATA[type] == nil then return end
    return TOOLS_DATA[type][level].Equipment
end

function API.GetProperToolStance(type,level)
    if TOOLS_DATA[type] == nil then return end
    return TOOLS_DATA[type][level].Stance
end

--this function has to be connected (NODES_PARENT.OnChildAdded) for server AND client context, as the nodes geo is Local Context
function API.SpawnProperRichnessGeometryForNode(node,isNew)
    if Object.IsValid(node) ~= true then warn("node richness update is for non-valid node, I quit.") return end
    local waits = 0
    while SPAWNED_NODES[node] == nil do
        Task.Wait(.1)
        waits = waits + 1
        if Object.IsValid(node) ~= true then warn("node is no longer valid, richness geometry quits") return end
        if waits > 20 then warn("node data are delayed too much, richness geometry quits") return end
    end
    if Object.IsValid(SPAWNED_NODES[node].NodeGeo) then SPAWNED_NODES[node].NodeGeo:Destroy() end
    local GeoStagesTable = SPAWNED_NODES[node].GeoStagesTable
    local currRichness = node:GetCustomProperty("Richness")
    --spawn node geometry
    local NodeGeo = World.SpawnAsset(GeoStagesTable[currRichness].Template, {parent = node, networkContext = NetworkContextType.LOCAL_CONTEXT})
    SPAWNED_NODES[node].NodeGeo = NodeGeo
    if isNew == true then
        NodeGeo:SetScale(Vector3.ONE * 0.01)
        NodeGeo:ScaleTo(Vector3.ONE,2,true)
    end
end

function API.IsPlayerInPoximity(node,player)
    if Object.IsValid(node) ~= true then return end
    return SPAWNED_NODES[node].proximityTrigger:IsOverlapping(player)
end

function API.GetFreeNodesCount()
    return #FREE_NODES_DATA
end

return API