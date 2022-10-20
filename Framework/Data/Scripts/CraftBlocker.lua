local EquipAPI      = _G["Character.EquipAPI"]
local LOCAL_PLAYER  = Game.GetLocalPlayer()
local ENTER_TRIGGER = script:GetCustomProperty("EnterTrigger"):WaitForObject()
local progressEvent = nil

ENTER_TRIGGER.isEnabled = false
local function UnequipEvent()
	if progressEvent then
		progressEvent:Disconnect()
		progressEvent = nil
	end
	ENTER_TRIGGER.isEnabled = false
end

local function ProgressUpdated(progress)
	if progress:GetProgressionKey("PotionSlot2") then
		UnequipEvent()
		ENTER_TRIGGER.isEnabled = true
	end
end

local function PlayerEquipped(Character, Player)
	if Player ~= LOCAL_PLAYER then return end

	local progress = Character:GetComponent("Progression")
	progressEvent = progress.progressionUpdatedEvent:Connect(ProgressUpdated)
	ProgressUpdated(progress)
end

local function PlayerUnequipped(Character, Player)
	if Player ~= LOCAL_PLAYER then return end
	UnequipEvent()
end

EquipAPI.playerEquippedEvent:Connect(PlayerEquipped)
EquipAPI.playerUnequippedEvent:Connect(PlayerUnequipped)
