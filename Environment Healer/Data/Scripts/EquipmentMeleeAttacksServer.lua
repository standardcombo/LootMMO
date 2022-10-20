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
This script uses the specified hit sphere on ability to damage enemy players or damageable objects on ability execute phase.
]]

-- Internal custom properties
local EQUIPMENT = script:FindAncestorByType('Equipment')
if not EQUIPMENT:IsA('Equipment') then
    error(script.name .. " should be part of Equipment object hierarchy.")
end

-- User exposed properties
local HIT_SPHERE_RADIUS = EQUIPMENT:GetCustomProperty("HitSphereRadius")
local HIT_SPHERE_OFFSET = EQUIPMENT:GetCustomProperty("HitSphereOffset")
local SHOW_HIT_SPHERE = EQUIPMENT:GetCustomProperty("ShowHitSphere")

-- Internal variables
local abilityList = {}

-- nil Tick()
-- Checks the players or damageable objects within hitbox, 
-- and makes sure swipe effects stay at the player's location
function Tick()
    -- Check for the existence of the equipment or owner before running Tick
    if not Object.IsValid(EQUIPMENT) then return end
    if not Object.IsValid(EQUIPMENT.owner) then return end
    if EQUIPMENT.owner.isDead then return end

    for _, abilityInfo in ipairs(abilityList) do
        if abilityInfo.canAttack then
            DetectAndDamageInSphere(GetHitSpherePosition(), HIT_SPHERE_RADIUS, abilityInfo)
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

    if SHOW_HIT_SPHERE then
        CoreDebug.DrawSphere(center, radius)
    end

    for index, hitResult in ipairs(hitResults) do
        local validTarget = GetValidTarget(hitResult.other)
        if validTarget then
            MeleeAttack(validTarget, abilityInfo, hitResult)
        end
    end
end

-- nil MeleeAttack(Player or Damageable Object)
-- Detect players or damagable objects within hitbox to apply damage
function MeleeAttack(target, abilityInfo, hitResult)
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

    -- Avoid hitting the same player or damageable object multiple times in a single swing
    if (abilityInfo.ignoreList[target] ~= 1) then

        -- Creates new damage info at apply it to the enemy
        local damage = Damage.New(abilityInfo.damage)
        damage.sourcePlayer = ability.owner
        damage.sourceAbility = ability
        damage:SetHitResult(hitResult)
        target:ApplyDamage(damage)

        abilityInfo.ignoreList[target] = 1
    end
end

-- nil OnEquipped()
-- Enables collision on player to make the hitbox collidable
function OnEquipped()
    Task.Wait(0.1)
    EQUIPMENT.collision = Collision.INHERIT
end

-- nil OnExecute(Ability)
-- Spawns a swing effect template on ability execute
function OnExecute(ability)
    for _, abilityInfo in ipairs(abilityList) do
        if abilityInfo.ability == ability then
            abilityInfo.canAttack = true
            abilityInfo.ignoreList = {}
        end
    end
end

-- nil ResetMelee(Ability)
-- Resets this scripts internal variables
function ResetMelee(ability)
    -- Forget anything we hit this swing
    if ability then
        for _, abilityInfo in ipairs(abilityList) do
            if abilityInfo.ability == ability then
                abilityInfo.canAttack = false
                abilityInfo.ignoreList = {}
            end
        end
    else
        for _, abilityInfo in ipairs(abilityList) do
            abilityInfo.canAttack = false
            abilityInfo.ignoreList = {}
        end
    end
end

-- Initialize
local abilityDescendants = EQUIPMENT:FindDescendantsByType("Ability")
for _, ability in ipairs(abilityDescendants) do
    local useHitSphere = ability:GetCustomProperty("UseHitSphere")

    if useHitSphere then
        ability.executeEvent:Connect(OnExecute)
        ability.cooldownEvent:Connect(ResetMelee)

        table.insert(abilityList, {
            ability = ability,
            damage = ability:GetCustomProperty("Damage"),
            useHitSphere = useHitSphere,
            canAttack = false,
            ignoreList = {}
        })
    end
end

EQUIPMENT.equippedEvent:Connect(OnEquipped)
EQUIPMENT.unequippedEvent:Connect(ResetMelee)