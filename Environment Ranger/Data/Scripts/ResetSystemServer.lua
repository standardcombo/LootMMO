--[[
This system has a general issue where the reset causes it to remove all of the NPCs. Because of other complications this
kills all of the current npcs, which triggers a bunch of things, like opening doors and finished objectives. Because of
performance, that is done over a few seconds. Therefore each system may have to wait 5-10 seconds before reseting so
the work doesn't get undone.
]]
local API_RE = require(script:GetCustomProperty("APIReliableEvents"))
local API_DS = require(script:GetCustomProperty("APIDifficultySystem"))

local DATA_GROUP = script:GetCustomProperty("DataGroup"):WaitForObject()

local END_DUNGEON_RESET_DELAY = 30.0

local resetTime = nil
local hasResetWhenEmpty = false

function ResetDungeon(delay)
	if not resetTime then
		resetTime = time() + delay
		script:SetNetworkedCustomProperty("ResetTime", resetTime)

		Task.Spawn(function()
			while time() < resetTime do
				Task.Wait()
			end

			API_RE.Broadcast("ResetDungeon")
			Task.Wait()		-- We need the checkpoint system to update the spawn points before we respawn players

			for _, player in pairs(Game.GetPlayers()) do
				player:Respawn()
			end

			Task.Wait(15.0)	-- Some of the resetting behavior takes a while, and we don't want to overlap it
			resetTime = nil
		end)
	end
end

function OnDungeonEnd()
	ResetDungeon(END_DUNGEON_RESET_DELAY)

	--[[if API_DS.GetDifficultyLevel() == 4 then
		API_DS.AddBonusLevel()
	end]]
end

function Tick(deltaTime)
	local hasPlayers = #Game.GetPlayers() ~= 0

	if hasPlayers then
		-- Reset for next time its empty
		hasResetWhenEmpty = false
	else
		if not hasResetWhenEmpty then
			ResetDungeon(0.0)
			hasResetWhenEmpty = true

			if API_DS.GetDifficultyLevel() == 4 then
				API_DS.ResetBonusLevel()
			end
		end
	end
end

API_RE.Connect(DATA_GROUP:GetCustomProperty("DungeonEndEventName"), OnDungeonEnd)
