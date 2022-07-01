--[[
	Destructible Weapon AOE
	v1.2
	by: standardcombo
	
	Deals damage in an area, to Players and NPCs.
--]]

-- Component dependencies
local MODULE = require( script:GetCustomProperty("ModuleManager") )
function COMBAT() return MODULE.Get_Optional("standardcombo.Combat.Wrap") end
function TAGS() return MODULE.Get("standardcombo.Combat.Tags") end


local WEAPON = script:FindAncestorByType("Weapon")
local ATTACK_ABILITY = script:GetCustomProperty("AttackAbility"):WaitForObject()

local BLAST_IMPACT_TEMPLATE = script:GetCustomProperty("BlastImpactTemplate")
local BLAST_DAMAGE_RANGE = script:GetCustomProperty("BlastDamageRange")
local BLAST_RADIUS = script:GetCustomProperty("BlastRadius")
local BLAST_KNOCKBACK_SPEED = script:GetCustomProperty("BlastKnockbackSpeed")

local casterTeam = 0

-- Tags can represent various types or attributes of the equipment
local tagData = TAGS().GetTags(WEAPON)
table.insert(tagData, "AOE")


local function OnTargetImpact(theWeapon, impactData)
    if not impactData.targetObject then return end

    -- Create the position of the blast and find players within radius
    local hitResult = impactData:GetHitResult()
    local center = hitResult:GetImpactPosition()
    local enemies
    if COMBAT() then
    	enemies = COMBAT().FindInSphere(center, BLAST_RADIUS, {ignoreTeams = casterTeam})
    else
    	enemies = Game.FindPlayersInSphere(center, BLAST_RADIUS, {ignoreTeams = casterTeam})
    end

    if BLAST_IMPACT_TEMPLATE then
        local blastTemplate = World.SpawnAsset(BLAST_IMPACT_TEMPLATE, {position = center})
        blastTemplate:ScaleTo(Vector3.ONE * BLAST_RADIUS / 50, 0.2, false)
    end

    for _, enemy in pairs(enemies) do

		local enemyPos = enemy:GetWorldPosition()
		
        -- Create a direction at which the character is pushed away from the blast
        local displacement = enemyPos - center
        if BLAST_KNOCKBACK_SPEED > 0 then
	        if COMBAT() then
	        	COMBAT().AddImpulse(enemy, displacement:GetNormalized() * BLAST_KNOCKBACK_SPEED)
	        else
        		enemy:AddImpulse(displacement:GetNormalized() * BLAST_KNOCKBACK_SPEED)
        	end
        end

        -- The farther the character is from the blast the less damage that character takes
        local minDamage = BLAST_DAMAGE_RANGE.x
        local maxDamage = BLAST_DAMAGE_RANGE.y
        displacement.z = 0
        local t = displacement.size / BLAST_RADIUS
        local damageAmount = CoreMath.Lerp(maxDamage, minDamage, t)
        damageAmount = CoreMath.Round(damageAmount)
		
		-- Create damage object
		local dmg = Damage.New(damageAmount)
		dmg:SetHitResult(hitResult)
		dmg.reason = DamageReason.COMBAT
		dmg.sourcePlayer = impactData.weaponOwner
		dmg.sourceAbility = ATTACK_ABILITY

        -- Apply damage to enemy
        if COMBAT() then
			local attackData = {
				object = enemy,
				damage = dmg,
				source = dmg.sourcePlayer,
				position = enemyPos,
				tags = tagData
			}
	        COMBAT().ApplyDamage(attackData)
		else
			enemy:ApplyDamage(dmg)
		end
    end
end

WEAPON.targetImpactedEvent:Connect(OnTargetImpact)


function OnEquipped(equipment, player)
	casterTeam = player.team
end

WEAPON.equippedEvent:Connect(OnEquipped)

