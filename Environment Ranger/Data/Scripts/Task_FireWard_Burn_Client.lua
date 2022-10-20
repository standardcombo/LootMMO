local API_NPC = require(script:GetCustomProperty("API_NPC"))

local EFFECT_TEMPLATE = script:GetCustomProperty("EffectTemplate")

function OnTaskStart(npc, animatedMesh)
end

function OnTaskEnd(npc, animatedMesh, interrupted)
end

API_NPC.RegisterTaskClient("fireward_burn", EFFECT_TEMPLATE, OnTaskStart, OnTaskEnd)
