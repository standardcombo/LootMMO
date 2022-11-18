--[[
	Equipper Client
	v1.0.2 - 2022/11/02
	by: blaking707, Luapi, CommanderFoo
]]

local RENDER_ROOT = script:GetCustomProperty('RenderRoot'):WaitForObject() -- Reference to container with all ability panels
local LOOT_ABILITY_EQUIPMENT = _G['Ability.Equipment'] -- API to get information from abilities table
local Potions = _G["Potions.Equipment"]
local EquipmentTable = {}

local LOCAL_PLAYER = Game.GetLocalPlayer()

Task.Wait()
local PANELS = RENDER_ROOT:GetChildren()
local bindingsTable = {}

for _, panel in pairs(PANELS) do
	bindingsTable[panel.name] = panel
	panel.clientUserData.SetActionName(panel)
end

local function WriteData(equipment, panel)
    local icon = LOOT_ABILITY_EQUIPMENT.GetIcon(equipment.name) or Potions.GetIcon(equipment.name)
	if icon then
        panel.clientUserData.SetIcon(icon,panel)
	else
		print("No icon found for "..equipment.name)
    end
    panel.clientUserData.SetEquipment(equipment)
end

local function OnChildRemoved(parent, equipment)
	EquipmentTable[equipment] = nil
end

local function OnChildAdded(parent, equipment)
	while not Object.IsValid(equipment) do
		Task.Wait()
	end
	if not EquipmentTable[equipment] then
		local binding = equipment:GetCustomProperty('AbilityBinding')
		while not binding do
			Task.Wait()
			binding = equipment:GetCustomProperty('AbilityBinding')
		end
		EquipmentTable[equipment] = binding
		if bindingsTable[binding] then
			Task.Spawn(function()
				WriteData(equipment, bindingsTable[binding])
			end)
		end
	end
end

while not LOCAL_PLAYER:GetPrivateNetworkedData("equipmentContainer") do
	Task.Wait()
end

for _, equipment in ipairs(LOCAL_PLAYER:GetPrivateNetworkedData("equipmentContainer"):GetChildren()) do --Initial check for equipment
	OnChildAdded(_, equipment)
end

LOCAL_PLAYER:GetPrivateNetworkedData("equipmentContainer").childAddedEvent:Connect(OnChildAdded)
LOCAL_PLAYER:GetPrivateNetworkedData("equipmentContainer").childRemovedEvent:Connect(OnChildRemoved)