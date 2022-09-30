local EquipAPI = _G["Character.EquipAPI"]
local UIPROGRESS_BAR = script:GetCustomProperty("UIProgressBar"):WaitForObject()
local LOCAL_PLAYER = Game.GetLocalPlayer()
local stats = nil

local function CharacterEquipped(character, player)
	if player == LOCAL_PLAYER then
		stats = character:GetComponent("Stats")
	end
end

local function CharacterUnequipped(character, player)
	if player == LOCAL_PLAYER then
		stats = nil
	end
end

EquipAPI.playerEquippedEvent:Connect(CharacterEquipped)
EquipAPI.playerUnequippedEvent:Connect(CharacterUnequipped)


function Tick()
	if UIPROGRESS_BAR.visibility ~= Visibility.FORCE_OFF then
		if stats then
			local blockTemp = stats:GetTempStat("B") or 1
			local block = stats:GetStat("B") or 1

			UIPROGRESS_BAR.progress = math.min(blockTemp / block, 1)
		end
	end
end
