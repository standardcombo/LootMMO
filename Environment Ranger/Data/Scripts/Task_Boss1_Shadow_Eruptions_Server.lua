local API_NPC = require(script:GetCustomProperty("API_NPC"))
local API_D = require(script:GetCustomProperty("APIDamage"))
local API_RE = require(script:GetCustomProperty("APIReliableEvents"))

local ERUPTIONS_GROUP = script:GetCustomProperty("EruptionsGroup"):WaitForObject()

local RANGE = 0.0
local COOLDOWN = 45.0
local DAMAGE_RATE = 9.0
local RADII = {1280.0, 2560.0, 3840.0, 7680.0}

function GetPriority(npc, taskHistory)
	if API_NPC.GetHealthFraction(npc) > 0.9 then
		return 0.0
	else
		return 3.0
	end
end

function OnTaskStart(npc, threatTable)
	return 1.0
end

function OnTaskEnd(npc, interrupted)
	if not interrupted then
		local order = {1, 2, 3, 4}

		-- Scramble order
		for i = 1, #order - 1 do
			local j = math.random(i, #order)
			local temp = order[j]
			order[j] = order[i]
			order[i] = temp
		end

		API_RE.BroadcastToAllPlayers("SE", order)

		Task.Spawn(function()
			for i = 1, #order do
				Task.Spawn(function()
					for j = 1, 6 do
						Task.Wait(1.0)
						local ringIndex = order[i]

						for _, player in pairs(Game.GetPlayers()) do
							local offset = player:GetWorldPosition() - ERUPTIONS_GROUP:GetWorldPosition()
							offset.z = 0.0
							local r = offset.size

							if r < RADII[ringIndex] then
								if ringIndex == 1 or r >= RADII[ringIndex - 1] then
									API_D.ApplyDamage(npc, player, DAMAGE_RATE, API_D.TAG_AOE)
								end
							end
						end
					end
				end)

				Task.Wait(6.0)
			end
		end)
	end
end

API_NPC.RegisterTaskServer("boss1_shadow_eruptions", RANGE, COOLDOWN, GetPriority, OnTaskStart, OnTaskEnd)
