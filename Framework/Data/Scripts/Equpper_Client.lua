--[[
	Equipper Client
	v1.0.1 - 2022/11/02
	by: blaking707, Luapi, CommanderFoo
]]

local RENDER_ROOT = script:GetCustomProperty('RenderRoot'):WaitForObject() -- Reference to container with all ability panels
local LOOT_ABILITY_EQUIPMENT = _G['Ability.Equipment'] -- API to get information from abilities table
local Potions = _G["Potions.Equipment"]
local EquipmentTable = {}
local EquipmentContainer = nil

local LOCALPLAYER = Game.GetLocalPlayer()

Task.Wait()
local PANELS = RENDER_ROOT:GetChildren()
local bindingsTable = {}

for _, panel in pairs(PANELS) do
    bindingsTable[panel.name] = panel
    panel.clientUserData.SetActionName(panel.name)
end

while not EquipmentContainer do
	for _, object in ipairs(LOCALPLAYER:GetAttachedObjects()) do --Look for the Equipment Container in the player's attached objects
		if object.name == "Equipment Container" then
			EquipmentContainer = object
			break
		end
	end
	Task.Wait()
end

local function WriteData(equipment, panel)
    Task.Wait()
    local icon = LOOT_ABILITY_EQUIPMENT.GetIcon(equipment.name) or Potions.GetIcon(equipment.name)
    if icon then
        panel.clientUserData.SetIcon(icon)
    end
    panel.clientUserData.SetEquipment(equipment)
end

local function OnChildRemoved(parent, child)
	EquipmentTable[child] = nil
end

local function OnChildAdded(parent, child)
	local binding = child:GetCustomProperty('AbilityBinding')
	if not EquipmentTable[child] then
            EquipmentTable[child] = binding
            if bindingsTable[binding] then
                Task.Spawn(function()
                    WriteData(child, bindingsTable[binding])
                end)
            end
	end
end

for _, equipment in ipairs(EquipmentContainer:GetChildren()) do --Initial check for equipment
	OnChildAdded(_, equipment)
end

EquipmentContainer.childAddedEvent:Connect(OnChildAdded)
EquipmentContainer.childRemovedEvent:Connect(OnChildRemoved)
