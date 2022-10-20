
local ABILITY = script:GetCustomProperty("Ability"):WaitForObject()
local SFX = script:GetCustomProperty("Sfx"):WaitForObject()

function Play()
	if Object.IsValid(ABILITY.owner) then
		SFX:Play()
		SFX:SetWorldPosition(ABILITY.owner:GetWorldPosition())
	end
end

function Stop()
	SFX:Stop()
end

ABILITY.castEvent:Connect(Play)
ABILITY.interruptedEvent:Connect(Stop)
ABILITY.readyEvent:Connect(Stop)

