local ROOT = script:GetCustomProperty("Root"):WaitForObject()
local PERIOD = script:GetCustomProperty("Period")
local TEMPLATE = script:GetCustomProperty("Template")

function Tick(deltaTime)
	if not ROOT.clientUserData.isFading then
		World.SpawnAsset(TEMPLATE, {parent = script})
	end

	Task.Wait(PERIOD)
end
