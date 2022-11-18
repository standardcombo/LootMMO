local trigger1 = script:GetCustomProperty("Trigger1"):WaitForObject()
local trigger2 =  script:GetCustomProperty("Trigger2"):WaitForObject()
local trigger3 =  script:GetCustomProperty("Trigger3"):WaitForObject()
local audio1 = script:GetCustomProperty("VoiceCharacterZombieSnarlAttack04SFX"):WaitForObject()
local audio2 = script:GetCustomProperty("CreatureBeastDeepLowBreath01SFX"):WaitForObject()

function OnStartOverlap1(trigger, other)
	if other:IsA("Player") then
        audio1:Play()
	end
end

function OnStartOverlap2(trigger, other)
	if other:IsA("Player") then
        audio2:Play()
	end
end

function OnStartOverlap3(trigger, other)
	if other:IsA("Player") then
        Events.BroadcastToServer("SpawnZombie")
	end
end

trigger1.beginOverlapEvent:Connect(OnStartOverlap1)
trigger2.beginOverlapEvent:Connect(OnStartOverlap2)
trigger3.beginOverlapEvent:Connect(OnStartOverlap3)