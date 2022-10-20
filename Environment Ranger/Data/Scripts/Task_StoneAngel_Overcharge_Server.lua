local API_NPC = require(script:GetCustomProperty("API_NPC"))
local API_D = require(script:GetCustomProperty("APIDamage"))
local API_DS = require(script:GetCustomProperty("APIDifficultySystem"))
local API_RE = require(script:GetCustomProperty("APIReliableEvents"))

local PYLONS_GROUP = script:GetCustomProperty("PylonGroup"):WaitForObject()

local RANGE = 0.0
local COOLDOWN = 18.0
local DAMAGE = 113.0
local RADIUS = 1200.0
local DELAYS = {5.0, 4.0, 3.5, 3.0}

function ResetPylons()
	for _, pylon in pairs(PYLONS_GROUP:GetChildren()) do
		pylon.visibility = Visibility.INHERIT
		pylon.collision = Collision.INHERIT
	end
end

function OnBossReset()
	ResetPylons()
end

function OnResetDungeon()
	ResetPylons()
end

function GetPriority(npc, taskHistory)
	if API_NPC.GetHealthFraction(npc) > 0.9 then
		return 0.0
	else
		return 3.0
	end
end

function OnTaskStart(npc, threatTable)
	return 1.5
end

function OnTaskEnd(npc, interrupted)
	if not interrupted then
		local pylons = PYLONS_GROUP:GetChildren()
		local class1 = {}	-- Pylons with a player near
		local class2 = {}	-- Pylons that still exist

		for _, pylon in pairs(pylons) do
			if pylon.collision == Collision.INHERIT then
				if #Game.FindPlayersInSphere(pylon:GetWorldPosition(), RADIUS, {ignoreDead = true}) > 0 then
					table.insert(class1, pylon)
				else
					table.insert(class2, pylon)
				end
			end
		end

		local pylon = nil

		if #class1 > 0 then
			pylon = class1[math.random(#class1)]
		elseif #class2 > 0 then
			pylon = class2[math.random(#class2)]
		end

		if pylon then
			API_RE.BroadcastToAllPlayers("SAO", pylon)

			Task.Spawn(function()
				Task.Wait(DELAYS[API_DS.GetDifficultyLevel()])
				API_D.ApplyAreaDamage(npc, pylon:GetWorldPosition(), RADIUS, DAMAGE, false, API_D.TAG_AOE)
				pylon.visibility = Visibility.FORCE_OFF
				pylon.collision = Collision.FORCE_OFF
			end)
		end
	end
end

API_RE.Connect("Boss4Reset", OnBossReset)
API_RE.Connect("ResetDungeon", OnResetDungeon)

API_NPC.RegisterTaskServer("stoneangel_overcharge", RANGE, COOLDOWN, GetPriority, OnTaskStart, OnTaskEnd)
