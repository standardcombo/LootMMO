
local API = {}
_G.EnemyTopBar = API

local SHOW_EVENT_ID = "EnemyTopBar.Show"
local HIDE_EVENT_ID = "EnemyTopBar.Hide"


function API.ShowToPlayer(eventData)
	Events.BroadcastToPlayer(eventData.player, SHOW_EVENT_ID, eventData)
end

function API.HideToPlayer(eventData)
	Events.BroadcastToPlayer(eventData.player, HIDE_EVENT_ID, eventData)
end


function OnDamageTaken(attackData)
	local target = attackData.object
	if not Object.IsValid(target) then return end
	
	local source = attackData.source
	if not Object.IsValid(source) then return end
	
	-- The player attacked an NPC
	if source:IsA("Player") and not target:IsA("Player") then
		local eventData = {
			player = source,
			npc = target,
			priority = 100,
		}
		API.ShowToPlayer(eventData)
		
	-- An NPC attacked the player
	elseif target:IsA("Player") and not source:IsA("Player") then
		local npc = source:FindAncestorByType("DamageableObject")
		if npc then
			local eventData = {
				player = target,
				npc = npc,
				priority = 50,
			}
			API.ShowToPlayer(eventData)
		end
	end
end

Events.Connect("CombatWrapAPI.OnDamageTaken", OnDamageTaken)


function OnNPCTargetChanged(eventData)
	local newTarget = eventData.newTarget
	
	-- An NPC engaged the player
	if Object.IsValid(newTarget) and newTarget:IsA("Player") then
		local npc = eventData.npcScript:FindAncestorByType("DamageableObject")
		if Object.IsValid(npc) then
			eventData = {
				player = newTarget,
				npc = npc,
				priority = 20,
			}
			if _G.Enemies then
				local rarity = _G.Enemies.GetRarityFromMUID(npc.sourceTemplateId)
				if rarity == "Rare" then
					eventData.priority = eventData.priority + 1
				elseif rarity == "Epic" then
					eventData.priority = eventData.priority + 3
				elseif rarity == "Legendary" then
					eventData.priority = eventData.priority + 5
				end
			end
			API.ShowToPlayer(eventData)
		end
	end
end

Events.Connect("NPC.TargetChanged", OnNPCTargetChanged)

