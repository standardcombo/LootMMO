local trigger1 = script:GetCustomProperty("Trigger1"):WaitForObject()
local trigger2 =  script:GetCustomProperty("Trigger2"):WaitForObject()
local trigger3 =  script:GetCustomProperty("Trigger3"):WaitForObject()
local audio1 = script:GetCustomProperty("VoiceCharacterZombieSnarlAttack04SFX"):WaitForObject()
local audio2 = script:GetCustomProperty("CreatureBeastDeepLowBreath01SFX"):WaitForObject()
local trigger1Event
local trigger2Event
local trigger3Event
local local_player = Game:GetLocalPlayer()

function OnStartOverlap1(trigger, other)
	if other == local_player then
        audio1:Play()
		trigger1Event:Disconnect()
	end
end

function OnStartOverlap2(trigger, other)
	if other == local_player then
        audio2:Play()
		trigger2Event:Disconnect()
	end
end

function OnStartOverlap3(trigger, other)
	if other == local_player then
		print("spawn")
        Events.BroadcastToServer("SpawnZombie")
		trigger3Event:Disconnect()
	end
end

Task.Wait(2)
if local_player:GetResource("Greeter") == 0 then
	trigger1Event = trigger1.beginOverlapEvent:Connect(OnStartOverlap1)
	trigger2Event = trigger2.beginOverlapEvent:Connect(OnStartOverlap2)
	trigger3Event = trigger3.beginOverlapEvent:Connect(OnStartOverlap3)
end