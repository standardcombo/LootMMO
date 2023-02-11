--[[
	Combat Wrap - NPC
	v1.0.0
	by: standardcombo, WaveParadigm
	
	Provides an interface of combat functions that operate on a non-Player object.
	
	Interface:
	- GetName()
	- GetTeam()
	- GetHitPoints()
	- GetMaxHitPoints()
	- GetVelocity()
	- ApplyDamage()
	- IsDead()
	- IsHeadshot()
	- IsValidObject()
	- AddImpulse()
	- FindInSphere()
	- GetMaxWalkSpeed()
	- SetMaxWalkSpeed()
--]]

-- Component dependencies
local MODULE = require( script:GetCustomProperty("ModuleManager") )
function NPC_MANAGER() return MODULE.Get_Optional("standardcombo.NPCKit.NPCManager") end


local wrapper = {}


-- GetName()
function wrapper.GetName(npc)
	local templateRoot = FindRoot(npc)
	if templateRoot then
		local displayName = templateRoot:GetCustomProperty("DisplayName")
		if displayName then
			return displayName
		end
		return templateRoot.name
	end
	return npc.name
end


-- GetTeam()
function wrapper.GetTeam(npc)
	if npc.team ~= nil then
		return npc.team
	end
	local templateRoot = FindRoot(npc)
	if templateRoot then
		return templateRoot:GetCustomProperty("Team")
	end
	return nil
end


-- GetHitPoints()
function wrapper.GetHitPoints(npc)
	if Object.IsValid(npc) then
		local templateRoot = FindRoot(npc)
		if templateRoot then
			return templateRoot.hitPoints or 0
		end
	end
	return nil
end


-- GetMaxHitPoints()
function wrapper.GetMaxHitPoints(obj)

	if not Object.IsValid(obj) then
		return 0
	end
	
	if obj.context and obj.context.MAX_HEALTH then
		return obj.context.MAX_HEALTH
	end
	
	local npcScript = FindNPCScript(obj)
	
	if not npcScript then return false end
	
	if npcScript.context and npcScript.context.MAX_HEALTH then
		return npcScript.context.MAX_HEALTH
	end
	return 0
end


-- GetVelocity()
function wrapper.GetVelocity(obj)

	if not Object.IsValid(obj) then
		return Vector3.ZERO
	end
	
	if obj.context and obj.context.GetVelocity then
		return obj.context.GetVelocity()
	end
	
	local npcScript = FindNPCScript(obj)
	
	if not npcScript then return Vector3.ZERO end
	
	if npcScript.context and npcScript.context.GetVelocity then
		return npcScript.context.GetVelocity()
	end
	return Vector3.ZERO
end


-- ApplyDamage()
function wrapper.ApplyDamage(attackData)
	local hitResult = attackData.damage:GetHitResult()
	if hitResult and not attackData.position then
		attackData.position = hitResult:GetImpactPosition()
	end
	if hitResult and not attackData.rotation then
		attackData.rotation = hitResult:GetTransform():GetRotation()
	end

	attackData.damage.reason = 99 -- an override that tells the system we have processed this damage
	local damageableRoot = attackData.object

	-- Check the given object, its template root, and then its entire hierarchy for a Damageable
	-- If none are damageables, then damageableRoot will be nil, and no damage will go through.
	if (not damageableRoot:IsA("DamageableObject")) then
		damageableRoot = damageableRoot:FindTemplateRoot()
		if (not damageableRoot:IsA("DamageableObject")) then
			damageableRoot = damageableRoot:FindTemplateRoot():FindDescendantByType("DamageableObject")
		end
	end

	if damageableRoot then
		damageableRoot:ApplyDamage(attackData.damage)
		
	else -- v0.11 compatibility
		local destructibleManager = _G["standardcombo.NPCKit.DestructibleManager"]
		if destructibleManager then
			destructibleManager.DamageObject(attackData)
		end
	end
end


-- AddImpulse()
function wrapper.AddImpulse(npc, direction)
	-- TODO
end


-- IsDead()
function wrapper.IsDead(obj)

	if not Object.IsValid(obj) then
		return true
	end
	
	if obj.context and obj.context.IsAlive then
		return (not obj.context.IsAlive())
	end
	
	local npcScript = FindNPCScript(obj)
	
	if not npcScript then return false end
	
	if npcScript.context and npcScript.context.IsAlive then
		return (not npcScript.context.IsAlive())
	end
	return false
end


-- IsHeadshot()
function wrapper.IsHeadshot(obj, dmg, position)

	if not Object.IsValid(obj) then
		return false
	end
	
	if not obj:IsA("CoreObject") then
		return false
	end
	
	local root = FindRoot(obj)
	if root then
		local headShotComponent = root:FindDescendantByName("NPCHeadshot")
		if headShotComponent and headShotComponent.context then
			return headShotComponent.context.IsHeadshot(position)
		end
	end
	return false
end


-- IsValidObject()
function wrapper.IsValidObject(obj)
	if not Object.IsValid(obj) then return false end
	if NPC_MANAGER() then
		if NPC_MANAGER().IsRegistered(obj) then return true end
		return FindNPCScript(obj) ~= nil
	end
	return false
end


-- FindInSphere()
function wrapper.FindInSphere(position, radius, parameters)
	if NPC_MANAGER() then
		local npcsInArea = NPC_MANAGER().FindInSphere(position, radius, parameters)
		
		if #npcsInArea > 0 and parameters then
			local ignoreDead = parameters.ignoreDead
			local ignoreLiving = parameters.ignoreLiving
			local ignoreTeams = parameters.ignoreTeams
			local includeTeams = parameters.includeTeams
			
			for i = #npcsInArea, 1, -1 do
				local npc = npcsInArea[i]
				
				if ignoreDead or ignoreLiving then
					local isDead = wrapper.IsDead(npc)
					if (isDead and ignoreDead) or (not isDead and ignoreLiving) then
						table.remove(npcsInArea, i)
						goto continue
					end
				end
				
				if ignoreTeams then
					local team = wrapper.GetTeam(npc)
					
					if type(ignoreTeams) == "number" then
						if team == ignoreTeams then
							table.remove(npcsInArea, i)
							goto continue
						end
					elseif type(ignoreTeams) == "table" then
						for _,subTeam in pairs(ignoreTeams) do
							if subTeam == team then
								table.remove(npcsInArea, i)
								goto continue
							end
						end
					end
				end
				
				if includeTeams then
					local team = wrapper.GetTeam(npc)
					
					if type(includeTeams) == "number" then
						if team ~= includeTeams then
							table.remove(npcsInArea, i)
							goto continue
						end
					elseif type(includeTeams) == "table" then
						local teamFound = false
						for _,subTeam in pairs(includeTeams) do
							if subTeam == team then
								teamFound = true
							end
						end
						if not teamFound then
							table.remove(npcsInArea, i)
							goto continue
						end
					end
				end
				::continue::
			end
		end
		
		return npcsInArea
	end
	return {}
end


-- GetMaxWalkSpeed()
function wrapper.GetMaxWalkSpeed(npc)
	if npc.context and npc.context.GetMaxMoveSpeed then
		return npc.context.GetMaxMoveSpeed()
	end
	local npcScript = FindNPCScript(npc)
	if npcScript then
		return npcScript.context.GetMaxMoveSpeed()
	end
	return 0
end


-- SetMaxWalkSpeed()
function wrapper.SetMaxWalkSpeed(npc, value)
	local npcScript = npc
	if not npcScript.context or not npcScript.context.SetMaxMoveSpeed then
		npcScript = FindNPCScript(npc)
	end
	if npcScript.context and npcScript.context.SetMaxMoveSpeed then
		npcScript.context.SetMaxMoveSpeed(value)
	end
end


function FindRoot(npc)
	if not npc:IsA("CoreObject") then
		return nil
	end
	local root = npc:FindTemplateRoot()
	if not root then
		if npc:IsA("DamageableObject") then
			return npc
		end
		root = npc:FindAncestorByType("DamageableObject")
	end
	if root then
		return root
	end
	return npc
end

function FindNPCScript(obj)
	if NPC_MANAGER() then
		local npcScript = NPC_MANAGER().FindScriptForCollider(obj)
		if (not npcScript) then
			npcScript = NPC_MANAGER().FindScriptForDamageable(obj)
		end
		return npcScript
	end
	return nil
end


return wrapper

