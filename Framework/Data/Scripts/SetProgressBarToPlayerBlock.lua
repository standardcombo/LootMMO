local EquipAPI = _G["Character.EquipAPI"]
--local UIPROGRESS_BAR = script:GetCustomProperty("UIProgressBar"):WaitForObject()
local IS_INSTANT = script:GetCustomProperty("isInstant")
local UIPROGRESS_BAR = script.parent
assert(UIPROGRESS_BAR:IsA("UIProgressBar"), "parent needs to be a progress bar")

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


function Tick(dt)
	if UIPROGRESS_BAR.visibility ~= Visibility.FORCE_OFF then
		if stats then
			local blockTemp = stats:GetTempStat("B") or 1
			local block = stats:GetStat("B") or 1
			--print("block value",blockTemp,block)
			--print("math.min(blockTemp / block, 1), dt * 2",math.min(blockTemp / block, 1), dt * 2)
			if IS_INSTANT == false and UIPROGRESS_BAR.progress > 0 then
				UIPROGRESS_BAR.progress = CoreMath.Lerp(UIPROGRESS_BAR.progress, math.min(blockTemp / block, 1), dt * 2)
			else
				UIPROGRESS_BAR.progress = blockTemp / block
			end
			--print("UIPROGRESS_BAR.progress",UIPROGRESS_BAR.progress)
		end
	end
end