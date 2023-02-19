local API = {}

---@type string
local HARVESTING_NODES = require(script:GetCustomProperty("HarvestingNodes"))
---@type string
local HARVESTING_TOOLS = require(script:GetCustomProperty("HarvestingTools"))
---@type Folder
local NODES_PARENT = script:GetCustomProperty("NODES"):WaitForObject()

local NODES_DATA = {}
local TOOLS_DATA = {}
local FREE_NODES_DATA = {}
local SPAWNED_NODES = {}
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

function GetWeightedRandomNodeIndex(NodeTypeTable,nodeType)
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
    warn("?? bad weight values for "..nodeType)
    return 1
end

-----------------------
--SERVER CONTEXT
-----------------------

function API.GetNodePlacementStatus()
    if Environment.IsServer() ~= true then warn("API.GetNodePlacementStatus is for server context purposes only") return end
    if serverNodesReady == true then return true end
    warn("FREE_NODES_DATA is not ready on server, API.InitNodesData")
    return false
end

function API.InitNodesData()
    if Environment.IsServer() ~= true then warn("API.InitNodesData is server only") return end
    if Object.IsValid(NODES_PARENT) ~= true then warn("Invalid NODES_PARENT in API.InitNodesData") return end
    local AllNodes = NODES_PARENT:GetChildren()
    if #AllNodes == 0 then warn("No children in NODES_PARENT for API.InitNodesData") return end

    --save the placed nodes data and remove them for runtime
    for _,nodeObject in ipairs(AllNodes)do
        local nodeData = {}
        nodeData.Type = nodeObject:GetCustomProperty("Type")
        nodeData.Transform = nodeObject:GetWorldTransform()
        table.insert(FREE_NODES_DATA,nodeData)
    end

    --remove current nodes, the server will handle them from now on
    for _,nodeObject in ipairs(AllNodes)do
        nodeObject:Destroy()
    end

    --API is ready to handle nodes on server
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
    --local randomNodeIndex = math.random(1,#randomNode_NodesData)
    --weighted chances
    local randomNodeIndex = GetWeightedRandomNodeIndex(NODES_DATA[randomNodeType],randomNodeType)
    local randomNodeData = randomNode_NodesData[randomNodeIndex]
    --load the node stages and spawn the required richness
    local GeoStagesTable = randomNodeData.NodeStageGeoTable
    --if not GeoStagesTable then warn("The node geometry definition table is missing") return end
    local maxRichness = #GeoStagesTable
    --required richness perc cent value
    local requiredRichness = maxRichness
    if richnessPerCent then
        requiredRichness = maxRichness*richnessPerCent/100
        requiredRichness = math.floor(requiredRichness + 1) --ceil
        if requiredRichness > maxRichness then requiredRichness = maxRichness
        elseif requiredRichness < 1 then requiredRichness = 1 end
    end
    --spawn node
    local NewNode = World.SpawnAsset(randomNodeData.Template, {parent = NODES_PARENT, transform = randomNodeTransform, networkContext = NetworkContextType.NETWORKED})
    --setup node custom properties
    NewNode:SetCustomProperty("Richness",requiredRichness)
    --add the origin template table row for client context effects
    NewNode:SetCustomProperty("OriginRow",randomNodeData.rowNum)
    --save for the script logic
    SPAWNED_NODES[NewNode] = {}
    SPAWNED_NODES[NewNode].GeoStagesTable = randomNodeData.NodeStageGeoTable
    local proxTirgger = NewNode:GetCustomProperty("ProximityTrigger"):WaitForObject()
    SPAWNED_NODES[NewNode].proximityTrigger = proxTirgger
    --remove the position from the free ones
    --print("removing from the free node placements",tempTable[randomNodeFromTempTable].originIndex)
    table.remove(FREE_NODES_DATA,tempTable[randomNodeFromTempTable].originIndex)
    --force replication
    NewNode:ForceReplication()
    --is this needed?
    return NewNode
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
        --per cent count for each type (always at least one)
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
    --remove the node, so it is now really empty. Client will spawn harvesting effect on child removal
    node:Destroy()
    --cleanup table
    SPAWNED_NODES[node] = nil
end

function API.MineNode(node,player)
    --this function is called from server controlling if the player is able to do so
    if API.GetNodePlacementStatus() ~= true then return end
    if Object.IsValid(node) ~= true then return end
    if SPAWNED_NODES[node] == nil then warn("existing node is missing its data??"..tostring(node)) return end
    --deplete one richness from the node
    local richness = node:GetCustomProperty("Richness")
    richness = richness - 1
    --TODO add resources to player involved
    print("award the player "..player.name.." with",node:GetCustomProperty("RewardPerUse"))
    --update node geometry or remove if depleted
    if richness > 0 then
        node:SetCustomProperty("Richness",richness)
        node:ForceReplication()
    else
        API.RemoveNode(node)
    end
    print("node mined, new richness is ",richness)
end

function API.LockNode(node,player)
    if API.GetNodePlacementStatus() ~= true then return end
    --check if the node is free
    --check player proximity at the node
    --lock node for the player requesting
end

function API.ReleaseNode(node,player)
    if API.GetNodePlacementStatus() ~= true then return end
    --check if the node is locked
    --unlock node
end

-----------------------
--Client Context
-----------------------

function API.RegisterNodeOnClient(node)
    if Environment.IsClient() ~= true then return end
    local originRow = node:GetCustomProperty("OriginRow") or 0
    while originRow == 0 do
        Task.Wait(.1)
        originRow = node:GetCustomProperty("OriginRow")
        warn("waiting for node origin row on client")
    end
    local nodeTableData = HARVESTING_NODES[originRow]
    SPAWNED_NODES[node] = {}
    SPAWNED_NODES[node].GeoStagesTable = nodeTableData.NodeStageGeoTable
    local proxTirgger = node:GetCustomProperty("ProximityTrigger"):WaitForObject()
    SPAWNED_NODES[node].proximityTrigger = proxTirgger
    SPAWNED_NODES[node].FinishedTemplate = nodeTableData.FinishedTemplate
end

function API.NodeDestroyedOnClient(node)
    --print(node)
    --print(SPAWNED_NODES[node].FinishedTemplate)
    local effect = World.SpawnAsset(SPAWNED_NODES[node].FinishedTemplate, {transform = node:GetWorldTransform()})
    if effect.lifeSpan == 0 then effect.lifeSpan = 3 end
    SPAWNED_NODES[node] = nil
    Events.Broadcast("Node.ForceRelease",node)
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
        --print("waiting for node data")
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
    print("is new",isNew)
    if isNew == true then
        print("scaling new")
        NodeGeo:SetWorldScale(Vector3.ONE * 0.01)
        NodeGeo:ScaleTo(Vector3.ONE,2)
    end
end

function API.GetFreeNodesCount()
    --[[for r,tbl in ipairs(FREE_NODES_DATA)do
        print(r)
        for k,v in pairs(tbl)do
            print(k,v)
        end
    end]]
    --print("Free nodes count:",#FREE_NODES_DATA)
    return #FREE_NODES_DATA
end

return API