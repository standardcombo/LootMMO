--[[
Copyright 2020 Manticore Games, Inc.

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated
documentation files (the "Software"), to deal in the Software without restriction, including without limitation the
rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit
persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the
Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE
WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR
COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR
OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
--]]

--[[
This script handles spawning swing sound and impact effect on ability execute phase of this equipment.
Each ability can have its own swing effect and swing spawn settings.
]]

--v1.1.1

-- Internal custom properties
local EQUIPMENT = script:FindAncestorByType('Equipment')
if not EQUIPMENT:IsA('Equipment') then
    error(script.name .. " should be part of Equipment object hierarchy.")
end

Task.Wait(1)

-- User exposed variables
local PLAYER_IMPACT = EQUIPMENT:GetCustomProperty("PlayerImpact")
local OBJECT_IMPACT = EQUIPMENT:GetCustomProperty("ObjectImpact")
local SWING_SOUND = EQUIPMENT:GetCustomProperty("SwingSound")
local HIT_SPHERE_RADIUS = EQUIPMENT:GetCustomProperty("HitSphereRadius")
local HIT_SPHERE_OFFSET = EQUIPMENT:GetCustomProperty("HitSphereOffset")

-- Constants
local DEFAULT_LIFE_SPAN = 2

-- Internal variables
local abilityList = {}

-- nil Tick()
-- Checks the players within hitbox, and makes sure swipe effects stay at the player's location
function Tick()
    -- Check for the existence of the equipment or owner before running Tick
    if not Object.IsValid(EQUIPMENT) then return end
    if not Object.IsValid(EQUIPMENT.owner) then return end
    if EQUIPMENT.owner.isDead then return end

    for _, abilityInfo in pairs(abilityList) do

        -- Always keep the current swipe at the position of the player
        if Object.IsValid(abilityInfo.currentSwing) then
        	local pos = EQUIPMENT.owner:GetWorldPosition() + abilityInfo.swingPosition
            abilityInfo.currentSwing:SetWorldPosition(pos)
        end

        if abilityInfo.canAttack then
            if abilityInfo.canAttack then
                DetectAndDamageInSphere(GetHitSpherePosition(), HIT_SPHERE_RADIUS, abilityInfo)
            end
        end

    end
end

-- Vector3 GetHitSpherePosition()
-- Returns position of the hit sphere based on equipment owner player position and offset
function GetHitSpherePosition()
    if not Object.IsValid(EQUIPMENT) then return Vector3.ZERO end
    if not Object.IsValid(EQUIPMENT.owner) then return EQUIPMENT:GetWorldPosition() end

    local ownerTransform = EQUIPMENT.owner:GetWorldTransform()

    return EQUIPMENT.owner:GetWorldPosition() + 
            ownerTransform:GetForwardVector() * HIT_SPHERE_OFFSET.x + 
            ownerTransform:GetRightVector() * HIT_SPHERE_OFFSET.y + 
            ownerTransform:GetUpVector() * HIT_SPHERE_OFFSET.z
end

-- GetValidTarget(Object)
-- Returns the valid Player or Damageable object
function GetValidTarget(target)
    if not Object.IsValid(target) then return nil end

    if target:IsA("Player") or target:IsA("Damageable") then
        return target
    else
        return target:FindAncestorByType("Damageable")
    end
end

-- nil DetectAndDamageInSphere(Vector3, float, table)
-- Creates sphere cast to detect valid object to apply damage on
function DetectAndDamageInSphere(center, radius, abilityInfo)
    local hitResults = World.SpherecastAll(center, center + Vector3.FORWARD, radius)

    for index, hitResult in ipairs(hitResults) do
        local validTarget = GetValidTarget(hitResult.other)
        if validTarget then
            MeleeAttack(validTarget, hitResult:GetImpactPosition(), abilityInfo)
        end
    end
end

-- nil MeleeAttack(Player or Damageable Object, Vector3)
-- Detect players or damagable objects within hitbox to apply damage
function MeleeAttack(target, impactPosition, abilityInfo)
    if not Object.IsValid(target) then return end

    local ability = abilityInfo.ability
    if not Object.IsValid(ability) then return end
    if not Object.IsValid(ability.owner) then return end

    -- Ignore if the hitbox is overlapping with the owner
    if target == ability.owner then return end
 
    -- Ignore friendly attack
    if target:IsA("Player") then
        if Teams.AreTeamsFriendly(target.team, ability.owner.team) then return end
    end

    -- Avoid hitting the same player multiple times in a single swing
    if (abilityInfo.ignoreList[target] ~= 1) then

        -- Spawn player or object impact vfx template
        if target:IsA("Player") then
            SpawnImpactEffect(PLAYER_IMPACT, impactPosition)
        elseif target:IsA("Damageable") then
            SpawnImpactEffect(OBJECT_IMPACT, impactPosition)
        end

        abilityInfo.ignoreList[target] = 1
    end
end

-- nil SpawnImpactEffect(string, Vector3)
-- Spawns impact effect based on given position
function SpawnImpactEffect(effect, impactPosition)
    if not effect then return end

    local impactInstance = World.SpawnAsset(effect, {position = impactPosition})
    if impactInstance.lifeSpan == 0 then
        impactInstance.lifeSpan = DEFAULT_LIFE_SPAN
    end
end

-- nil SpawnSwingEffect(table)
-- Spawns swing effect based settings on the ability
function SpawnSwingEffect(abilityInfo)
	if abilityInfo.swingSpawnDelay > 0 then
    	Task.Wait(abilityInfo.swingSpawnDelay)
    end

    -- Spawn the ability vfx only if the equiment and owner exist after the delay
    if Object.IsValid(EQUIPMENT) and Object.IsValid(EQUIPMENT.owner) then
        -- Spawn the swing effect
        if abilityInfo.swingEffect then
	        abilityInfo.currentSwing = World.SpawnAsset(abilityInfo.swingEffect, {
	            position = EQUIPMENT.owner:GetWorldPosition() + abilityInfo.swingPosition,
	            rotation = Rotation.New(abilityInfo.swingRotationX, abilityInfo.swingRotationY, EQUIPMENT.owner:GetWorldRotation().z)})
	
	        -- Apply default life span if the vfx template doesn't have a lifespan
	        if abilityInfo.currentSwing.lifeSpan == 0 then
	            abilityInfo.currentSwing.lifeSpan = DEFAULT_LIFE_SPAN
	        end
	    end

        -- Spawn swing sound for every ability execute
        if SWING_SOUND then
            local swingSoundInstance = World.SpawnAsset(SWING_SOUND, {
                position = EQUIPMENT.owner:GetWorldPosition()})
            -- Apply default life span if the swing sound template doesn't have a lifespan
            if swingSoundInstance.lifeSpan == 0 then
                swingSoundInstance.lifeSpan = DEFAULT_LIFE_SPAN
            end
        end
    end
end

function OnCast(ability)
	local abilityInfo = abilityList[ability]
	if abilityInfo.spawnEffectOnCast then
		SpawnSwingEffect(abilityInfo)
	end
end

-- nil OnExecute(Ability)
-- Spawns a swing effect template on ability execute
function OnExecute(ability)
	local abilityInfo = abilityList[ability]
	abilityInfo.canAttack = true
	abilityInfo.ignoreList = {}
	if not abilityInfo.spawnEffectOnCast then
		SpawnSwingEffect(abilityInfo)
	end
end

-- nil ResetMelee()
-- Resets this scripts internal variables
function ResetMelee(ability)

    -- Forget anything we hit this swing
    if Object.IsValid(ability) and abilityList[ability] then
    	local abilityInfo = abilityList[ability]
        abilityInfo.canAttack = false
        abilityInfo.ignoreList = {}
    else
        for _, abilityInfo in pairs(abilityList) do
            abilityInfo.canAttack = false
            abilityInfo.ignoreList = {}
        end
    end
end

-- Initialize
-- Find all abilities with melee related custom properties
local abilityDescendants = EQUIPMENT:FindDescendantsByType("Ability")
for _, ability in ipairs(abilityDescendants) do
    local useHitSphere = ability:GetCustomProperty("UseHitSphere")

    if useHitSphere then
    	ability.castEvent:Connect(OnCast)
        ability.executeEvent:Connect(OnExecute)
        ability.cooldownEvent:Connect(ResetMelee)

        -- Gather custom properties on ability
        abilityList[ability] = {
            ability = ability,
            canAttack = false,
            ignoreList = {},
            spawnEffectOnCast = ability:GetCustomProperty("SpawnEffectOnCast"),
            swingEffect = ability:GetCustomProperty("SwingEffect"),
            swingSpawnDelay = ability:GetCustomProperty("SwingSpawnDelay"),
            swingPosition = ability:GetCustomProperty("SwingPosition") or Vector3.ZERO,
            swingRotationX = ability:GetCustomProperty("SwingRotationX"),
            swingRotationY = ability:GetCustomProperty("SwingRotationY"),
            currentSwing = nil
        }
    end
end

-- Initialize
EQUIPMENT.unequippedEvent:Connect(ResetMelee)