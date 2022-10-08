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

local function DisableCauldren()
	GEO.isEnabled = true
end

local function UnlockCauldren()
	GEO.isEnabled = false
end

local function ProgressUpdated(progress)
	if progress:GetProgressionKey("PotionSlot2") then
		UnlockCauldren()
		DisconnectEvent()
	end
end

local function PlayerUnequipped(char, player)
	if player ~= LOCAL_PLAYER then return end
	DisconnectEvent()
	DisableCauldren()
end

local function PlayerEquipped(char, player)
	if player ~= LOCAL_PLAYER then return end
	local progress = char:GetComponent("Progression")
	ProgressEvent = progress.progressionUpdatedEvent:Connect(ProgressUpdated)
	ProgressUpdated(progress)
end

EquipAPI.playerEquippedEvent:Connect(PlayerEquipped)
EquipAPI.playerUnequippedEvent:Connect(PlayerUnequipped)
