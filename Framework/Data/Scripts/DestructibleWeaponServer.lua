--[[
	Destructible Weapon - Server
	v1.0
	by: standardcombo, Chris C.
	
	Script that specializes a weapon's basic attack to work with the NPC AI Kit.
--]]

-- Component dependencies
local MODULE = require( script:GetCustomProperty("ModuleManager") )
function COMBAT() return MODULE.Get_Optional("standardcombo.Combat.Wrap") end
function TAGS() return MODULE.Get("standardcombo.Combat.Tags") end


local WEAPON = script:FindAncestorByType("Weapon")

local DAMAGE_TO_PLAYERS = script:GetCustomProperty("DamageToPlayers")
local DAMAGE_TO_OBJECTS = script:GetCustomProperty("DamageToObjects")
local HEADSHOT_NPCS = script:GetCustomProperty("HeadshotNPCs")
local HEADSHOT_PLAYERS = script:GetCustomProperty("HeadshotPlayers")

-- Tags can represent various types or attributes of the equipment
TAGS().AddUnique(WEAPON, "Ranged")


function OnTargetImpact(theWeapon, impactData)
	local target = impactData.targetObject
	if not Object.IsValid(target) then return end
	
	if not target:IsA("Damageable") then
		local damageable = target:FindAncestorByType("Damageable")
		if damageable then
			target = damageable
		end
	end
	
	local hitResult = impactData:GetHitResult()
	local pos = hitResult:GetImpactPosition()
	local rot = hitResult:GetTransform():GetRotation()
	
	-- Evaluate headshot
	local isHeadshot = hitResult.isHeadshot
	if not isHeadshot and COMBAT() then
		isHeadshot = COMBAT().IsHeadshot(target, hitResult, pos)
	end
	--if isHeadshot then print("HEADSHOT!") end
	
	local amount = DAMAGE_TO_OBJECTS
	if target:IsA("Player") then
		if isHeadshot then
			amount = HEADSHOT_PLAYERS
		else
			amount = DAMAGE_TO_PLAYERS
		end
	elseif isHeadshot then
		amount = HEADSHOT_NPCS
	end
	
	if isHeadshot then
		TAGS().AddTag(WEAPON, "Headshot", true)
	end
	
	-- Multihit (e.g. shotgun)
	if #impactData:GetHitResults() > 1 then
		local numberOfHits = 0
		for _,hit in ipairs(impactData:GetHitResults()) do
			if hit.other == target then
				numberOfHits = numberOfHits + 1
			end
		end
		amount = amount * numberOfHits
	end

	-- Apply the damage
	local dmg = Damage.New(amount)
	dmg:SetHitResult(hitResult)
	dmg.reason = DamageReason.COMBAT
	dmg.sourcePlayer = theWeapon.owner
	dmg.sourceAbility = theWeapon:GetAbilities()[1]

	if COMBAT() then
		local attackData = {
			object = target,
			damage = dmg,
			source = dmg.sourcePlayer,
			item = WEAPON,
			position = pos,
			rotation = rot,
			tags = TAGS().GetTags(WEAPON)
		}
		COMBAT().ApplyDamage(attackData)
		
	elseif target.ApplyDamage then
		target:ApplyDamage(dmg)
	end
end

WEAPON.targetImpactedEvent:Connect(OnTargetImpact)


function Cleanup()
	-- nothing at the moment
end

--[[
function OnDestroyed(obj)
	Cleanup()
end

WEAPON.destroyEvent:Connect(OnDestroyed)
--]]

