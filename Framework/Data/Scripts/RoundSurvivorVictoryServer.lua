--[[
Copyright 2019 Manticore Games, Inc. 

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated
documentation files (the "Software"), to deal in the Software without restriction, including without limitation the
rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit
persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the
Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE
WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR
COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR
OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
--]]

--[[
This component ends the round when either a single team or single player remain (depending on the "ByTeam" property). It
also broadcasts the following events (server only):

PlayerVictory(Player winner)
TeamVictory(int winningTeam)
TieVictory()
--]]

-- Internal custom properties
local ABGS = require(script:GetCustomProperty("API"))
local COMPONENT_ROOT = script:GetCustomProperty("ComponentRoot"):WaitForObject()

-- User exposed properties
local BY_TEAM = COMPONENT_ROOT:GetCustomProperty("ByTeam")

-- nil Tick(float)
-- Watches the end condition of only one team or one player alive
function Tick(deltaTime)
	if not ABGS.IsGameStateManagerRegistered() then
		return
	end

	if ABGS.GetGameState() == ABGS.GAME_STATE_ROUND then
		-- Skip when solo for testing
		if #Game.GetPlayers() == 1 then
			return
		end
		
		if BY_TEAM then
			local winningTeam = nil

			for _, player in pairs(Game.GetPlayers()) do
				if not player.isDead then
					if winningTeam ~= nil and winningTeam ~= player.team then
						return		-- We've got two teams alive
					end

					winningTeam = player.team
				end
			end

			if winningTeam then
				Events.Broadcast("TeamVictory", winningTeam)
			else
				Events.Broadcast("TieVictory")
			end

			-- We didn't exit early, so at most one team is alive
			ABGS.SetGameState(ABGS.GAME_STATE_ROUND_END)
		else
			local winner = nil

			for _, player in pairs(Game.GetPlayers()) do
				if not player.isDead then
					if winner then
						return		-- Two players are alive
					else
						winner = player
					end
				end
			end

			if winner then
				Events.Broadcast("PlayerVictory", winner)
			else
				Events.Broadcast("TieVictory")
			end

			-- We didn't exit early, so at most one player is alive
			ABGS.SetGameState(ABGS.GAME_STATE_ROUND_END)
		end
	end
end
