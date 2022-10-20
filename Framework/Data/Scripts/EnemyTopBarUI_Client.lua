
local API = {}
_G.EnemyTopBar = API

local HEALTH_BAR_SCRIPT = script:GetCustomProperty("HealthBarScript"):WaitForObject()
local SHOW_EVENT_ID = "EnemyTopBar.Show"
local HIDE_EVENT_ID = "EnemyTopBar.Hide"

Task.Spawn(function()
	HEALTH_BAR_SCRIPT.context.SetDataProvider(script.context)
end)


local activeNPC = nil
local currentPriority = 0


function API.ShowToPlayer(eventData)
	if eventData.player == Game.GetLocalPlayer() then
		OnShow(eventData)
	end
end

function API.HideToPlayer(eventData)
	if eventData.player == Game.GetLocalPlayer() then
		OnHide(eventData)
	end
end


function OnShow(eventData)
	local priority = eventData.priority
	if priority and priority < currentPriority then
		return
	end
	currentPriority = priority or 0
	
	local npc = eventData.npc
	
	if Object.IsValid(npc) then
		activeNPC = npc
		
		HEALTH_BAR_SCRIPT.context.UpdateStaticData()
	end
end

function OnHide(eventData)
	activeNPC = nil
end

Events.Connect(SHOW_EVENT_ID, OnShow)
Events.Connect(HIDE_EVENT_ID, OnHide)


-- Data provider:


function GetName()
	if Object.IsValid(activeNPC) then
		if _G.Enemies then
			local def = _G.Enemies.GetDefinitionFromMUID(activeNPC.sourceTemplateId)
			if def then
				return def.name
			end
		end
		return activeNPC.name
	end
	return ""
end


function GetRarity()
	if Object.IsValid(activeNPC) then
		if _G.Enemies then
			local rarity = _G.Enemies.GetRarityFromMUID(activeNPC.sourceTemplateId)
			if rarity then
				return rarity
			end
		end
	end
	return "Common"
end


function GetLevel()
	if Object.IsValid(activeNPC) then
		return activeNPC:GetCustomProperty("Level") or 0
	end
	return 0
end


function GetTeam()
	if Object.IsValid(activeNPC) then
		return activeNPC:GetCustomProperty("Team") or 0
	end
	return 0
end


function GetHealth()
	local hp = 0
	if Object.IsValid(activeNPC) then
		hp = activeNPC.hitPoints or 0
	end
	if hp == 0 then
		currentPriority = -1
	end
	return hp
end

function GetMaxHealth()
	if Object.IsValid(activeNPC) then
		return activeNPC.maxHitPoints or 0
	end
	return 0
end


function GetArmor()
	if Object.IsValid(activeNPC) then
		return activeNPC:GetCustomProperty("Armor") or 0
	end
	return 0
end


function GetMaxArmor()
	if Object.IsValid(activeNPC) then
		if activeNPC.clientUserData.maxArmor then
			return activeNPC.clientUserData.maxArmor
		end
	end
	return GetMaxHealth()
end

