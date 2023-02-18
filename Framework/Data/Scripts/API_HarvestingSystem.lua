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

function API.SpawnRandomNode(type)
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
    --choose a random node of the type (or all nodes if type == nil)
    if #tempTable == 0 then warn("There are no free nodes of the "..tostring(type).." type") return end
    local randomNodeFromTempTable = math.random(1,#tempTable)
    local randomNodeTransform = tempTable[randomNodeFromTempTable].Transform
    local randomNodeType = tempTable[randomNodeFromTempTable].Type
    local randomNode_NodesData = NODES_DATA[randomNodeType]
    local randomNodeIndex = math.random(1,#randomNode_NodesData)
    local randomNodeData = randomNode_NodesData[randomNodeIndex]
    --load the node stages and spawn the top stage
    local GeoStagesTable = randomNodeData.NodeStageGeoTable
    if not GeoStagesTable then warn("The node geometry definition table is missing") return end
    local maxRichness = #GeoStagesTable
    --spawn node
    local NewNode = World.SpawnAsset(randomNodeData.Template, {parent = NODES_PARENT, transform = randomNodeTransform, networkContext = NetworkContextType.NETWORKED})
    --setup node custom properties
    NewNode:SetCustomProperty("Richness",maxRichness)
    --add the origin template table row for client context effects
    NewNode:SetCustomProperty("OriginRow",randomNodeData.rowNum)
    --save for the script logic
    SPAWNED_NODES[NewNode] = {}
    SPAWNED_NODES[NewNode].GeoStagesTable = GeoStagesTable
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
function API.SpawnProperRichnessGeometryForNode(node)
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