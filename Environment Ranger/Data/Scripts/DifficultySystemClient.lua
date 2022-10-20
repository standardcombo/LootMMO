local API_DS = require(script:GetCustomProperty("APIDifficultySystem"))

local SERVER_SCRIPT = script:GetCustomProperty("ServerScript"):WaitForObject()
local DIFFICULTY_TEXT = script:GetCustomProperty("DifficultyText"):WaitForObject()

local BASE_NAMES = {
	"Normal",
	"Hard",
	"Nightmare",
	"Infinite"
}

function Tick(deltaTime)
	local difficultyLevel = API_DS.GetDifficultyLevel()
	local bonusLevel = API_DS.GetBonusLevel()
	if bonusLevel == 0 then
		DIFFICULTY_TEXT.text = string.format("%s Difficulty", BASE_NAMES[difficultyLevel])
	else
		DIFFICULTY_TEXT.text = string.format("%s+%d Difficulty", BASE_NAMES[difficultyLevel], bonusLevel)
	end
end

API_DS.RegisterServerScript(SERVER_SCRIPT)
