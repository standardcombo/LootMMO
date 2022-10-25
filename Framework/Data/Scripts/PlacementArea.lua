
---@type APIPlacementAreas
local API_PLACEMENT_AREA = require(script:GetCustomProperty("APIPlacementAreas"))

local COMPONENT_ROOT = script:GetCustomProperty("ComponentRoot"):WaitForObject()
local PLACEMENT_ROOT = COMPONENT_ROOT
if COMPONENT_ROOT:GetCustomProperty("Group") then
    PLACEMENT_ROOT = COMPONENT_ROOT:GetCustomProperty("Group"):WaitForObject() or COMPONENT_ROOT.parent
end

local PLACEMENT_AREA_ID = COMPONENT_ROOT.id
local AREA_TYPE = COMPONENT_ROOT:GetCustomProperty("AreaType")

function GetState()
    ---@class PlacementAreaState
    local result = {}
    result.root = PLACEMENT_ROOT
    result.areaType = AREA_TYPE
    return result
end

local functionTable = {}
functionTable.GetState = GetState

API_PLACEMENT_AREA.RegisterPlacementArea(PLACEMENT_AREA_ID, functionTable)

COMPONENT_ROOT.destroyEvent:Connect(function()
    API_PLACEMENT_AREA.UnregisterPlacementArea(PLACEMENT_AREA_ID)
end)