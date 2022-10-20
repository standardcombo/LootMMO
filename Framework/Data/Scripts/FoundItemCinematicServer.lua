--[[
	Found Item Cinematic - Server
	v1.0
	by: standardcombo
]]

_G.FoundItemCinematic = script.context

local EVENT_ID = "FoundItemSpawn"

local ANIMATION_STANCE = "unarmed_carry_score_card"
local DURATION = 2

function Show(player, template)
	if not player.serverUserData.foundItemCinematic then
		player.serverUserData.foundItemCinematic = {}
	end
	local stateData = player.serverUserData.foundItemCinematic

	-- Already showing another item. Queue this one for later
	if stateData.isBusy then
		if not stateData.queue then
			stateData.queue = {}
		end
		table.insert(stateData.queue, template)

		return
	end

	-- Lock
	stateData.isBusy = true

	-- Disable equipment on right/left hands
	for _, eq in ipairs(player:GetEquipment()) do
		if eq.socket == "right_prop" or eq.socket == "left_prop" then
			eq.visibility = Visibility.FORCE_OFF
		end
	end

	-- Set the player's stance
	if _G.StanceStack then
		_G.StanceStack.Add(player, ANIMATION_STANCE, "foundItem")
	else
		stateData.previousStance = player.animationStance
		player.animationStance = ANIMATION_STANCE
	end

	-- Spawn the item and attach it to the player
	if template then
		Events.BroadcastToAllPlayers(EVENT_ID, player, template, DURATION)
	end

	Task.Spawn(function()
		if Object.IsValid(player) then
			-- Restore the player's stance
			if _G.StanceStack then
				_G.StanceStack.Remove(player, ANIMATION_STANCE, "foundItem")
			else
				player.animationStance = stateData.previousStance
			end

			if stateData.queue and #stateData.queue > 0 then
				-- Show the next one in the queue
				Task.Wait()
				if Object.IsValid(player) then
					local nextTemplate = stateData.queue[1]
					table.remove(stateData.queue, 1)
					Show(player, nextTemplate)
				end
			else
				-- Enable equipment on right/left hands
				for _, eq in ipairs(player:GetEquipment()) do
					if eq.socket == "right_prop" or eq.socket == "left_prop" then
						eq.visibility = Visibility.INHERIT
					end
				end
				-- Remove lock
				stateData.isBusy = false
			end
		end
	end,
	DURATION)
end

