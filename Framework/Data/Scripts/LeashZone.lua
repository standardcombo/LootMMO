--[[
	Leash Zone
	v1.0
	by: standardcombo
	
	Placed under a trigger that defines the zone. When NPCs exit the trigger/zone
	they are sent back to patrol or back to their spawn point.
	
	While returning to their patrol/spawn the NPCs ignore attacks. Attack damage
	is reduced to zero, but can also be set to heal the NPC if it's attacked
	while leashed.
--]]

local TRIGGER = script.parent
local LEASH_DURATION = script:GetCustomProperty("Duration") or 7
local LEASH_HEALS = script:GetCustomProperty("LeashHeals") or false

local leashedNPCs = {}

function FindAiScript(obj)
	if not obj.FindTemplateRoot then return end
	
	local templateRoot = obj:FindTemplateRoot()
	if (templateRoot == nil) then
		templateRoot = obj.parent
	end
	if templateRoot then
		-- Team mismatch exit condition
		local team = templateRoot:GetCustomProperty("Team") or 0
		if (team ~= 0 and TRIGGER.team ~= 0 and team ~= TRIGGER.team) then
			return nil
		end
		
		-- Search for AI script
		local scripts = templateRoot:FindDescendantsByType("Script")
		for _,s in ipairs(scripts) do
			if s.context.SetObjective then
				return s
			end
		end
	end
	return nil
end

function OnNPCDestroyed(obj)
	leashedNPCs[obj] = nil
end

function OnEndOverlap(trigger, obj)
	local aiScript = FindAiScript(obj)
	if aiScript then
		aiScript.context.SetTemporaryVisionRadius(0, LEASH_DURATION)
		aiScript.context.SetTemporaryHearingRadius(0, LEASH_DURATION)
		aiScript.context.ResumePatrol()
		
		if not leashedNPCs[aiScript] then
			leashedNPCs[aiScript] = true
			aiScript.destroyEvent:Connect(OnNPCDestroyed)
		end
		
		Task.Wait(LEASH_DURATION)
		if Object.IsValid(aiScript) then
			leashedNPCs[aiScript] = nil
		end
	end
end
TRIGGER.endOverlapEvent:Connect(OnEndOverlap)


function OnGoingToTakeDamage(attackData)
	if not Object.IsValid(attackData.object) then return end
	
	local aiScript = FindAiScript(attackData.object)
	if aiScript and leashedNPCs[aiScript] then
		if LEASH_HEALS then
			attackData.damage.amount = -attackData.damage.amount
		else
			attackData.damage.amount = 0
		end
	end
end
Events.Connect("CombatWrapAPI.GoingToTakeDamage", OnGoingToTakeDamage)