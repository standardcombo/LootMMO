--[[
	You can place just a single sfx or vfx core object. Or you can place an entire folder/group with sfx + vfx 
	and this will go through and play all the files.
--]]


local TRIGGER = script:GetCustomProperty("trigger"):WaitForObject() or script.parent
local BEGIN_OVERLAP_EFFECTS = script:GetCustomProperty("beginOverlapEffects"):WaitForObject()
local END_OVERLAP_EFFECTS = script:GetCustomProperty("endOverlapEffects"):WaitForObject()
local MOVE_EFFECTS_TO_TRIGGER_POSITION = script:GetCustomProperty("moveEffectsToTriggerPosition")
if(TRIGGER ~= nil and TRIGGER:IsA("Trigger")) then
	
	function OnBeginOverlap(whichTrigger, player)
		if player:IsA("Player") then
			PlayEffects(BEGIN_OVERLAP_EFFECTS)
		end
	end
	
	function OnEndOverlap(whichTrigger, player)
		if player:IsA("Player") then
			PlayEffects(END_OVERLAP_EFFECTS)
		end
	end
	
	function PlayEffects(_effects) 
		--check if we need to move the effects to the trigger position
		if(MOVE_EFFECTS_TO_TRIGGER_POSITION) then
			_effects:SetWorldPosition(TRIGGER:GetWorldPosition())
		end
		
		--make sure something was actually sent
		if(_effects == nil) then return end
		
		if(IsObjTypePlayable(_effects)) then
			_effects:Play()
		else 	
			--goes through all the files and plays each one if it's playable
			for _, effectChild in pairs(_effects:GetChildren()) do
				if(IsObjTypePlayable(effectChild)) then
					effectChild:Play()
				else 
					for _, effectChildChild in pairs(effectChild:GetChildren()) do
						if(IsObjTypePlayable(effectChildChild)) then
							effectChildChild:Play()
						end
					end
				end
			end
		end
	end
	
	function IsObjTypePlayable(_effect)
		if(_effect:IsA("Audio") or _effect:IsA("SmartAudio")  or _effect:IsA("Vfx")) then
			return true
		else 
			return false
		end
	end
	
	if(BEGIN_OVERLAP_EFFECTS ~= nil) then TRIGGER.interactedEvent:Connect(OnBeginOverlap) end
	if(END_OVERLAP_EFFECTS ~= nil) then TRIGGER.endOverlapEvent:Connect(OnEndOverlap) end
else 
	warn("Not a valid trigger assigned")
end


