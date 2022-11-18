local trigger1 = script:GetCustomProperty("Trigger1"):WaitForObject()
local trigger2 =  script:GetCustomProperty("Trigger2"):WaitForObject()
local audio1 = script:GetCustomProperty("VoiceCharacterZombieSnarlAttack04SFX"):WaitForObject()
local audio2 = script:GetCustomProperty("CreatureBeastDeepLowBreath01SFX"):WaitForObject()

function OnEndOverlap1(trigger, other)
	if other:IsA("Player") then
        audio1:Play()
	end
end

function OnEndOverlap2(trigger, other)
	if other:IsA("Player") then
        audio2:Play()
	end
end

trigger1.endOverlapEvent:Connect(OnEndOverlap1)
trigger2.endOverlapEvent:Connect(OnEndOverlap2)