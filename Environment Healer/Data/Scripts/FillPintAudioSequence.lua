
local SQUEEK = script:GetCustomProperty("Squeek"):WaitForObject()
local GLUG = script:GetCustomProperty("Glug"):WaitForObject()
local FLOW = script:GetCustomProperty("Flow"):WaitForObject()
local SIZZLE = script:GetCustomProperty("Sizzle"):WaitForObject()
local BARREL_AIR = script:GetCustomProperty("BarrelAir"):WaitForObject()

function Play()
	Task.Spawn(function()
		Task.Wait(0.2)
		SQUEEK:Play()
		Task.Wait(0.2)
		FLOW:Play()
		Task.Wait(0.1)
		SIZZLE:Play()
		GLUG:Play()
		Task.Wait(1.5)
		FLOW:Stop()
		SIZZLE:Stop()
		GLUG:Stop()
		Task.Wait(1.5)
		BARREL_AIR:Play()
	end)
end
--[[
Game.GetLocalPlayer().bindingPressedEvent:Connect(function(_, action)
	if action == "ability_secondary" then
		Play()
	end
end)--]]