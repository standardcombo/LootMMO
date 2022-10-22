local GEO = script:GetCustomProperty("Geo"):WaitForObject()
local EquipAPI = _G["Character.EquipAPI"]
local LOCAL_PLAYER = Game.GetLocalPlayer()
local ProgressEvent = nil

local function DisconnectEvent()
	if ProgressEvent then
		ProgressEvent:Disconnect()
		ProgressEvent = nil
	end
end

local function DisableCauldron()
	GEO.isEnabled = true
end

local function UnlockCauldron()
	GEO.isEnabled = false
end

local function ProgressUpdated(progress)
	if progress:GetProgressionKey("PotionSlot2") then
		UnlockCauldron()
		DisconnectEvent()
	end
end

local function PlayerUnequipped(char, player)
	if player ~= LOCAL_PLAYER then return end
	DisconnectEvent()
	DisableCauldron()
end

local function PlayerEquipped(char, player)
	if player ~= LOCAL_PLAYER then return end
	local progress = char:GetComponent("Progression")
	ProgressEvent = progress.progressionUpdatedEvent:Connect(ProgressUpdated)
	ProgressUpdated(progress)
end

EquipAPI.playerEquippedEvent:Connect(PlayerEquipped)
EquipAPI.playerUnequippedEvent:Connect(PlayerUnequipped)
