local API_NPC = require(script:GetCustomProperty("API_NPC"))
local API_SE = require(script:GetCustomProperty("APIStatusEffects"))

local EFFECT_TEMPLATE = script:GetCustomProperty("EffectTemplate")
local VISIBILITY_GROUP = script:GetCustomProperty("VisibilityGroup"):WaitForObject()
local ICON = script:GetCustomProperty("Icon"):WaitForObject()

-- Indices correlated
local SHAPE_ICONS = {
	script:GetCustomProperty("Star"),
	script:GetCustomProperty("Square"),
	script:GetCustomProperty("Triangle"),
	script:GetCustomProperty("Circle")
}

local STATUS_EFFECT_NAMES = {"Yellow Star", "Red Square", "Blue Triangle", "Violet Circle"}
local COLORS = {Color.YELLOW, Color.RED, Color.CYAN, Color.PURPLE}

local LOCAL_PLAYER = Game.GetLocalPlayer()

function OnTaskStart(npc, animatedMesh)
	animatedMesh:PlayAnimation("unarmed_yes")
	animatedMesh.playbackRateMultiplier = 0.7
end

function OnTaskEnd(npc, animatedMesh, interrupted)
	animatedMesh:StopAnimations()
	animatedMesh.playbackRateMultiplier = 1.0

	Task.Spawn(function()
		local hadStatusEffect = false
		local startTime = os.clock()
		local statusEffectIndex = nil

		-- Time check in case we avoided getting the status effect in the first place
		while (not hadStatusEffect or statusEffectIndex) and os.clock() - startTime < 20.0 do
			statusEffectIndex = nil

			for _, data in pairs(API_SE.GetStatusEffectsOnCharacter(LOCAL_PLAYER)) do
				for i, effectName in pairs(STATUS_EFFECT_NAMES) do
					if data.name == effectName then
						statusEffectIndex = i
						hadStatusEffect = true
						break
					end
				end
			end

			if statusEffectIndex then
				VISIBILITY_GROUP.visibility = Visibility.INHERIT
				ICON:SetImage(SHAPE_ICONS[statusEffectIndex])
				ICON:SetColor(COLORS[statusEffectIndex])
			else
				VISIBILITY_GROUP.visibility = Visibility.FORCE_OFF
			end

			Task.Wait()
		end
	end)
end

API_NPC.RegisterTaskClient("boss2_encourage_commerce", EFFECT_TEMPLATE, OnTaskStart, OnTaskEnd)
