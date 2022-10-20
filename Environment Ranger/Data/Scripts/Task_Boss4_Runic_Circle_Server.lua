local API_NPC = require(script:GetCustomProperty("API_NPC"))
local API_D = require(script:GetCustomProperty("APIDamage"))
local API_SE = require(script:GetCustomProperty("APIStatusEffects"))
local API_RE = require(script:GetCustomProperty("APIReliableEvents"))

local RANGE = 0.0
local COOLDOWN = 17.0
local AREA_RADIUS = 300.0
local DURATION = 12.0

local currentTarget = nil
local currentStatusEffects = {}		-- Character -> index

function Tick(deltaTime)
	if currentTarget then
		local activeCharacters = {}

		for _, player in pairs(Game.FindPlayersInSphere(currentTarget, AREA_RADIUS, {ignoreDead = true})) do
			activeCharacters[player] = true

			if not currentStatusEffects[player] then
				currentStatusEffects[player] = API_SE.ApplyStatusEffect(nil, player, API_SE.STATUS_EFFECT_DEFINITIONS["Runic Power"].id)
			end
		end

		for _, npc in pairs(API_NPC.GetAwakeNPCsInSphere(currentTarget, AREA_RADIUS)) do
			activeCharacters[npc] = true
			
			if not currentStatusEffects[npc] then
				currentStatusEffects[npc] = API_SE.ApplyStatusEffect(nil, npc, API_SE.STATUS_EFFECT_DEFINITIONS["Runic Power"].id)
			end
		end

		for character, index in pairs(currentStatusEffects) do
			if not activeCharacters[character] then
				if Object.IsValid(character) then
					API_SE.RemoveStatusEffect(character, index)
				end
				
				currentStatusEffects[character] = nil
			end
		end
	else
		for character, index in pairs(currentStatusEffects) do
			API_SE.RemoveStatusEffect(character, index)
		end

		currentStatusEffects = {}
	end
end

function GetPriority(npc, taskHistory)
	if API_NPC.GetHealthFraction(npc) > 0.95 then
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
		currentTarget = npc:GetWorldPosition()
		API_RE.BroadcastToAllPlayers("RC", currentTarget)

		Task.Spawn(function()
			Task.Wait(DURATION)
			currentTarget = nil
		end)
	end
end

API_NPC.RegisterTaskServer("boss4_runic_circle", RANGE, COOLDOWN, GetPriority, OnTaskStart, OnTaskEnd)



