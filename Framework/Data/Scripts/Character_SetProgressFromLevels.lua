local EquipAPI = _G["Character.EquipAPI"]
local LevelPrograss = _G['Character.Progression']
local levelupEvents = {}

local function CheckProgression(level, progression)
	local currentLevel = level:GetLevel()
	for key, value in pairs(LevelPrograss) do
		if not progression:GetProgressionKey(key) then
			if currentLevel > value.Level then
				progression:SetProgression(value.Flag, true)
			end
		end
	end
end

local function EquipPlayer(char, player)
	local progression = char:GetComponent("Progression")
	local level = char:GetComponent("Level")
	CheckProgression(level, progression)
	level.levelUpEvent:Connect(function()
		CheckProgression(level, progression)
	end)
end

local function UnequipPlayer(char, player)
	if levelupEvents[char.id] then
		levelupEvents[char.id]:Disconnect()
		levelupEvents[char.id] = nil
	end
end

EquipAPI.playerEquippedEvent:Connect(EquipPlayer)
EquipAPI.playerUnequippedEvent:Connect(UnequipPlayer)
