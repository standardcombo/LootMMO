--[[
	NPC Manager
	v1.0
	by: standardcombo
	
	Provides bookkeeping on all NPCs contained in a game.
--]]

-- Registers itself into the global table
local API = {}
_G["standardcombo.NPCKit.NPCManager"] = API


local allNPCs = {}
local npcColliders = {}
local npcDamageables = {}

function API.Register(npc)
	if (not allNPCs[npc]) then
		allNPCs[npc] = true
		
		npc.destroyEvent:Connect(OnDestroyed)
	end
end


function API.RegisterCollider(npc, collider)
	npcColliders[collider] = npc
end

function API.RegisterDamageable(npc, damageable)
	npcDamageables[damageable] = npc
end

function API.IsRegistered(npc)
	return allNPCs[npc] ~= nil
end

function API.GetNpcs()
	local npcs = {}
	for key, value in pairs(allNPCs) do
		table.insert(npcs, key)
	end
	return npcs
end

function API.FindScriptForCollider(collider)
	return npcColliders[collider]
end

function API.FindScriptForDamageable(damageable)
	return npcDamageables[damageable]
end

function API.GetDamageables()
	local damageables = {}
	for key, value in pairs(npcDamageables) do
		table.insert(damageables, key)
	end
	return damageables
end

function API.GetEnemies(team)
	local enemies = {}
	for npc,_ in pairs(allNPCs) do
		local npcTeam = npc.context.GetTeam()
		if (npcTeam ~= team) then
			table.insert(enemies, npc)
		end
	end
	return enemies
end


function API.FindInSphere(position, radius, parameters)
	local result = {}
	local radiusSquared = radius*radius
	
	for npc,_ in pairs(allNPCs) do
		local npcPos = npc:GetWorldPosition()
		local distanceSquared = (position - npcPos).sizeSquared
		if distanceSquared <= radiusSquared then
			table.insert(result, npc)
		end
	end
	return result
end


function OnDestroyed(obj)
	-- Clear collider references
	for collider,npc in pairs(npcColliders) do
		if npc == obj then
			npcColliders[collider] = nil
		end
	end
	-- Clear damageable reference
	for damageable,npc in pairs(npcDamageables) do
		if npc == obj then
			npcDamageables[damageable] = nil
			break
		end
	end
	-- Clear NPC reference
	if allNPCs[obj] then
		allNPCs[obj] = nil
	end
end


