local Ability = script:GetCustomProperty("Ability"):WaitForObject()

local HEAL_PERCENT = script:GetCustomProperty("HealPercent")

local function execute(ability)
	for _, player in pairs(Game.GetPlayers()) do
		player.hitPoints = player.hitPoints + (HEAL_PERCENT * player.maxHitPoints)
	end
end

Ability.executeEvent:Connect(execute)