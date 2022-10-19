local ABILITY = script.parent

local TOLERANCE_POSITION = 85
local TOLERANCE_ROTATION = 10


if not _G.ChannelAbility then
	local API = {}
	_G.ChannelAbility = API
	
	function API.IsChanneling(player)
		local channel = player.serverUserData.channelAbility
		if Object.IsValid(channel) then
			return channel:GetCurrentPhase() == AbilityPhase.CAST
		end
		return false
	end
	
	function API.CanChannel(player)
		local channel = player.serverUserData.channelAbility
		if Object.IsValid(channel) then
			return channel:GetCurrentPhase() == AbilityPhase.READY
		end
		return false
	end
	
	function API.Start(player, duration, onCompleteCallback)
		local channel = player.serverUserData.channelAbility
		if channel:GetCurrentPhase() == AbilityPhase.READY then
			channel:Activate()
			
			local channelInterruptedListener
			local channelTask
			
			channelInterruptedListener = channel.interruptedEvent:Connect(function()
				if channelTask then
					channelTask:Cancel()
				end
				if channelInterruptedListener.isConnected then
					channelInterruptedListener:Disconnect()
				end
			end)
	
			
			channelTask = Task.Spawn(function()
				if Object.IsValid(player) and Object.IsValid(channel) then
					channel:Interrupt()
					
					if onCompleteCallback ~= nil then
						onCompleteCallback(player)
					end
				end
			end,
			duration)
		end
	end
	
	function API.Cancel(player)
		
	end
end


function OnCast(ability)
	local player = ability.owner
	if not Object.IsValid(player) then return end
	
	local startHitpoints = player.hitPoints
	local startBlockpoints = player.serverUserData.blockPoints
	local startPosition = player:GetWorldPosition()
	local startRotation = player:GetWorldRotation()
	
	Task.Spawn(function()
		while Object.IsValid(ability)
		and Object.IsValid(player)
		and ability:GetCurrentPhase() == AbilityPhase.CAST
		do
			-- Stop if the player loses hitpoints
			if player.hitPoints < startHitpoints then
				--print("Interrupted channeling because the player lost hitpoints")
				ability:Interrupt()
				return
			end
			
			-- Stop if the player loses armor
			if player.serverUserData.blockPoints < startBlockpoints then
				--print("Interrupted channeling because the player lost blockPoints")
				ability:Interrupt()
				return
			end
			
			-- Stop if the player moves
			local pos = player:GetWorldPosition()
			
			if (pos - startPosition).sizeSquared > TOLERANCE_POSITION*TOLERANCE_POSITION then
				--print("Interrupted channeling because the player moved")
				ability:Interrupt()
				return
			end
			
			-- Stop if the player rotates
			local rot = player:GetWorldRotation()
			
			if math.abs((rot - startRotation).z) > TOLERANCE_ROTATION then
				--print("Interrupted channeling because the player rotated")
				ability:Interrupt()
				return
			end
			
			Task.Wait(0.2)
		end
	end)
end

ABILITY.castEvent:Connect(OnCast)

