--[[
	NPCAttack - Server
	v1.0.0
	by: standardcombo
	
	Works in conjunction with NPCAIServer. The separation of the two scripts makes it
	easier to design diverse kinds of enemies.
--]]

-- Component dependencies
local MODULE = require( script:GetCustomProperty("ModuleManager") )
function COMBAT() return MODULE.Get("standardcombo.Combat.Wrap") end
function PLAYER_HOMING_TARGETS() return MODULE.Get("standardcombo.Combat.PlayerHomingTargets") end
function CROSS_CONTEXT_CALLER() return MODULE.Get("standardcombo.Utils.CrossContextCaller") end
function LOOT_DROP_FACTORY() return MODULE.Get_Optional("standardcombo.NPCKit.LootDropFactory") end
function TAGS() return MODULE.Get("standardcombo.Combat.Tags") end

---@type DamageableObject
local ROOT = script:GetCustomProperty("Root"):WaitForObject()

local DAMAGE_TO_PLAYERS = ROOT:GetCustomProperty("DamageToPlayers")
local DAMAGE_TO_NPCS = ROOT:GetCustomProperty("DamageToNPCs")
if not DAMAGE_TO_PLAYERS then
	DAMAGE_TO_PLAYERS = script:GetCustomProperty("DamageToPlayers") or 5
end
if not DAMAGE_TO_NPCS then
	DAMAGE_TO_NPCS = script:GetCustomProperty("DamageToNPCs") or 5
end

local PROJECTILE_BODY = script:GetCustomProperty("ProjectileBody")
local MUZZLE_FLASH_VFX = script:GetCustomProperty("MuzzleFlash")
local IMPACT_SURFACE_VFX = script:GetCustomProperty("ImpactSurface")
local IMPACT_CHARACTER_VFX = script:GetCustomProperty("ImpactCharacter")
local PROJECTILE_LIFESPAN = script:GetCustomProperty("ProjectileLifeSpan") or 10
local PROJECTILE_SPEED = script:GetCustomProperty("ProjectileSpeed") or 4000
local PROJECTILE_GRAVITY = script:GetCustomProperty("ProjectileGravity") or 1
local IS_PROJECTILE_HOMING = script:GetCustomProperty("ProjectileHoming")
local HOMING_DRAG = script:GetCustomProperty("HomingDrag") or 7
local HOMING_ACCELERATION = script:GetCustomProperty("HomingAcceleration") or 15000

local REWARD_RESOURCE_TYPE = ROOT:GetCustomProperty("RewardResourceType")
local REWARD_RESOURCE_AMOUNT = ROOT:GetCustomProperty("RewardResourceAmount")

local LOOT_ID = ROOT:GetCustomProperty("LootId")

local projectileImpactListener = nil


function GetTeam()
	if not Object.IsValid(ROOT) then
		return 0
	end
	return ROOT:GetCustomProperty("Team")
end

function GetObjectTeam(object)
	if object.team ~= nil then
		return object.team
	end
	local templateRoot = object:FindTemplateRoot()
	if templateRoot then
		return templateRoot:GetCustomProperty("Team")
	end
	return nil
end


function Attack(target)
	if target:IsA("Player") and PLAYER_HOMING_TARGETS() then
		target = PLAYER_HOMING_TARGETS().GetTargetForPlayer(target)
	elseif target.context and target.context.HOMING_TARGET then
		target = target.context.HOMING_TARGET
	end

	local startPos = script:GetWorldPosition()
	local rotation = script:GetWorldRotation()
	local direction = rotation * Vector3.FORWARD
	if not IS_PROJECTILE_HOMING then
		local v = target:GetWorldPosition() - startPos
		direction = v:GetNormalized() + 200 * Vector3.UP * v.size * PROJECTILE_GRAVITY / PROJECTILE_SPEED / PROJECTILE_SPEED
	end

	CROSS_CONTEXT_CALLER().Call(function()
		local projectile = Projectile.Spawn(PROJECTILE_BODY, startPos, direction)
		projectile.lifeSpan = PROJECTILE_LIFESPAN
		projectile.speed = PROJECTILE_SPEED
		projectile.gravityScale = PROJECTILE_GRAVITY

		if IS_PROJECTILE_HOMING then
			projectile.homingTarget = target
			projectile.drag = HOMING_DRAG
			projectile.homingAcceleration = HOMING_ACCELERATION
		end

		projectile.piercesRemaining = 999

		projectileImpactListener = projectile.impactEvent:Connect(OnProjectileImpact)
	end)

	SpawnAsset(MUZZLE_FLASH_VFX, startPos, rotation)
end


function OnProjectileImpact(projectile, other, hitResult)
	local myTeam = GetTeam()
	local impactTeam = GetObjectTeam(other)
	if (impactTeam ~= 0 and myTeam == impactTeam) then return end

	CleanupProjectileListener()

	local pos = hitResult:GetImpactPosition()
	local rot = projectile:GetWorldTransform():GetRotation()
	
	local damageAmount = 0

	if other:IsA("Player") then
		damageAmount = DAMAGE_TO_PLAYERS
		SpawnAsset(IMPACT_CHARACTER_VFX, pos, rot)
	else
		damageAmount = DAMAGE_TO_NPCS
		SpawnAsset(IMPACT_SURFACE_VFX, pos, hitResult:GetTransform():GetRotation())
	end

	if damageAmount == 0 then
		return
	end
	
	local level = ROOT:GetCustomProperty("Level")
	if level and level > 0 then
		damageAmount = damageAmount + CoreMath.Round(damageAmount * level / 3)
	end

	local dmg = Damage.New(damageAmount)
	dmg:SetHitResult(hitResult)
	dmg.reason = DamageReason.COMBAT

	local attackData = {
		object = other,
		damage = dmg,
		source = script.parent:FindChildByName("NPCAIServer"),
		item = script,
		position = pos,
		--rotation = rot, --Without this parameter treasures will point at the local player
		tags = TAGS().GetTags(ROOT)
	}

	-- Apply the damage
	COMBAT().ApplyDamage(attackData)

	-- Cleanup
	projectile:Destroy()
end


function CleanupProjectileListener()
	if projectileImpactListener then
		projectileImpactListener:Disconnect()
		projectileImpactListener = nil
	end
end


function SpawnAsset(template, pos, rot)
	if not template then
		return
	end

	local spawnedVfx = World.SpawnAsset(template, {
		position = pos,
		rotation = rot,
		networkContext = NetworkContextType.NETWORKED
	})
	if spawnedVfx and spawnedVfx.lifeSpan <= 0 then
		spawnedVfx.lifeSpan = 1.5
	end
end


function OnDestroyed(obj)
	CleanupProjectileListener()
end
ROOT.destroyEvent:Connect(OnDestroyed)

-- Damage / destructible

function OnObjectDied(attackData)
	if attackData.object == ROOT then
		local source = attackData.source
		DropRewards(source)
	end
end
Events.Connect("CombatWrapAPI.ObjectHasDied", OnObjectDied)

function GetHealth()
	return ROOT.hitPoints
end

function SetHealth(value)
	ROOT.hitPoints = value
end

function DropRewards(killer)
	local lootDropFactory = LOOT_DROP_FACTORY()
	
	if lootDropFactory and lootDropFactory.VERSION and lootDropFactory.VERSION >= 3.0 then
		local params = {
			object = ROOT,
			killer = killer,
			lootId = LOOT_ID,
			position = ROOT:GetWorldPosition(),
			rotation = ROOT:GetWorldRotation(),
			resourceType = REWARD_RESOURCE_TYPE,
			resourceAmount = REWARD_RESOURCE_AMOUNT,
		}
		lootDropFactory.Drop(params)
		
		return
	end
	
	-- Give resources
	if REWARD_RESOURCE_TYPE and Object.IsValid(killer) and killer:IsA("Player") then
		killer:AddResource(REWARD_RESOURCE_TYPE, REWARD_RESOURCE_AMOUNT)
	end

	-- Drop loot
	if LOOT_ID ~= "" and lootDropFactory then
		local pos = script:GetWorldPosition()
		lootDropFactory.Drop(LOOT_ID, pos)
	end
end
