--[[
	Combat Accountant (server)
	v1.0 - 2022/10/20
	by: standardcombo
	
	Keeps track of who dealt damage to what.
	Can be consulted when crediting rewards or assists.
	
	API
	===
	- GetReportForTarget(Damageable/Player target)
		Returns a combat report about the given object
		
	- ClearDataForTarget(Damageable/Player target)
		Clears existing combat data for a given object
]]

local API = {}
_G.CombatAccountant = API

local data = {}


function API.GetReportForTarget(target)
	if not target.id then
		error("Can only report on targets that have an ID")
	end
	local id = target.id
	return data[id]
end


function API.ClearDataForTarget(target)
	local id = target.id
	data[id] = nil
end

-- Pre-damage event
function OnGoingToTakeDamage(attackData)
	local report, target, source, id, sId = _Boilerplate(attackData)
	if not report then return end
	
	if report.preDamage[sId] then
		report.preDamage[sId] = report.preDamage[sId] + attackData.damage.amount
	else
		report.preDamage[sId] = attackData.damage.amount
	end
end

-- Damage event
function OnDamageTaken(attackData)
	local report, target, source, id, sId = _Boilerplate(attackData)
	if not report then return end

	if report.damage[sId] then
		report.damage[sId] = report.damage[sId] + attackData.damage.amount
	else
		report.damage[sId] = attackData.damage.amount
	end
end

-- Killed event
function OnObjectDied(attackData)
	local report, target, source, id, sId = _Boilerplate(attackData)
	if not report then return end

	report.killerId = sId
	report.killerName = source.name
end

Events.Connect("CombatWrapAPI.GoingToTakeDamage", OnGoingToTakeDamage)
Events.Connect("CombatWrapAPI.OnDamageTaken", OnDamageTaken)
Events.Connect("CombatWrapAPI.ObjectHasDied", OnObjectDied)

function _Boilerplate(attackData)
	local target = attackData.object
	local source = attackData.source
	
	if not source or not source.id then return end
	
	local id = target.id
	local sId = source.id
	
	local report = data[id]
	if not report then
		report = {}
		data[id] = report
		
		report.targetId = id
		report.targetName = target.name
		report.preDamage = {}
		report.damage = {}
	end
	return report, target, source, id, sId
end

-- Clear the data when players respawn
function OnPlayerSpawned(player)
	API.ClearDataForTarget(player)
end

Game.playerJoinedEvent:Connect(function(player)
	player.spawnedEvent:Connect(OnPlayerSpawned)
end)


