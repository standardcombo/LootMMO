local ENEMY_HEALTH_MULTIPLIERS = {0.3, 1.0, 3.5, 7.0}
local ENEMY_DAMAGE_MULTIPLIERS = {0.1, 1.0, 2.5, 7.5}
local LOOT_STAT_MULTIPLIERS = {1.2, 1.6, 2.0, 2.5}
local EXPERIENCE_MULTIPLIERS = {0.6, 1.3, 2.0, 3.0}

local networkedScript = nil
local difficultyLevel = 1
local bonusLevel = 0
local initialized = false

local API = {}

function API.RegisterServerScript(serverScript)
	function OnNetworkedPropertyChangedEvent(owner, propertyName)
		difficultyLevel = networkedScript:GetCustomProperty("DifficultyLevel")
		bonusLevel = networkedScript:GetCustomProperty("BonusLevel")
	end

	networkedScript = serverScript
	OnNetworkedPropertyChangedEvent()		-- Arguments aren't used anyway
	networkedScript.networkedPropertyChangedEvent:Connect(OnNetworkedPropertyChangedEvent)
end

function API.SetDifficultyLevel(difficultyLevel)
	initialized = true
	networkedScript:SetNetworkedCustomProperty("DifficultyLevel", difficultyLevel)
end

function API.GetDifficultyLevel()
	if Environment.IsServer() then
		while not initialized do
			Task.Wait()
		end
	end

	return difficultyLevel
end

function API.GetBonusLevel()
	return bonusLevel
end

function API.ResetBonusLevel()
	networkedScript:SetNetworkedCustomProperty("BonusLevel", 0)
end

function API.AddBonusLevel()
	assert(difficultyLevel == 4)
	networkedScript:SetNetworkedCustomProperty("BonusLevel", bonusLevel + 1)
end

function API.GetEnemyHealthMultiplier()
	return ENEMY_HEALTH_MULTIPLIERS[difficultyLevel] * 1.1 ^ bonusLevel
end

function API.GetEnemyDamageMultiplier()
	return ENEMY_DAMAGE_MULTIPLIERS[difficultyLevel] * 1.1 ^ bonusLevel
end

function API.GetEnemyHealingMultiplier()
	-- For now we just use health multipliers for healing as well.
	return ENEMY_HEALTH_MULTIPLIERS[difficultyLevel] * 1.1 ^ bonusLevel
end

function API.GetLootStatMultiplier()
	return LOOT_STAT_MULTIPLIERS[difficultyLevel]
end

function API.GetExperienceMultiplier()
	return EXPERIENCE_MULTIPLIERS[difficultyLevel]
end


return API
