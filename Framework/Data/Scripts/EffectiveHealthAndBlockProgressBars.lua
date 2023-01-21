local HEALTH_DAMAGE_PROGRESS_BAR = script:GetCustomProperty("HealthDamageProgressBar"):WaitForObject()
local BLOCK_DAMAGE_PROGRESS_BAR = script:GetCustomProperty("BlockDamageProgressBar"):WaitForObject()
local HEALTH_VALUE_PROGRESS_BAR = script:GetCustomProperty("HealthValueProgressBar"):WaitForObject()
local BLOCK_VALUE_PROGRESS_BAR = script:GetCustomProperty("BlockValueProgressBar"):WaitForObject()

local UIPROGRESS_BAR_PANEL = script.parent
local EquipAPI = _G["Character.EquipAPI"]
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

function Clamp(val)
    if val > 1 then val = 1 elseif val < 0 then val = 0 end
    return val
end

function Tick(dt)
	if UIPROGRESS_BAR_PANEL:IsVisibleInHierarchy() ~= true then return end
    local tickMod = dt * 3
    tickMod = Clamp(tickMod)

    --update hitpoints bars
    local hpRatio = LOCAL_PLAYER.hitPoints / LOCAL_PLAYER.maxHitPoints
    hpRatio = Clamp(hpRatio)
    if HEALTH_DAMAGE_PROGRESS_BAR.progress > 0 then
        HEALTH_DAMAGE_PROGRESS_BAR.progress = CoreMath.Lerp(HEALTH_DAMAGE_PROGRESS_BAR.progress, hpRatio, tickMod)
    else
        HEALTH_DAMAGE_PROGRESS_BAR.progress = hpRatio
    end
    HEALTH_VALUE_PROGRESS_BAR.progress = hpRatio

    --update block progress bars
    if not stats then return end
    local blockTemp = stats:GetTempStat("B") or 1
    local block = stats:GetStat("B") or 1
    local blockRatio = blockTemp / block
    blockRatio = Clamp(blockRatio)
    if BLOCK_DAMAGE_PROGRESS_BAR.progress > 0 then
        BLOCK_DAMAGE_PROGRESS_BAR.progress = CoreMath.Lerp(BLOCK_DAMAGE_PROGRESS_BAR.progress, blockRatio, tickMod)
    else
        BLOCK_DAMAGE_PROGRESS_BAR.progress = blockRatio
    end
    BLOCK_VALUE_PROGRESS_BAR.progress = blockRatio
end