local function COMBAT()
	return require(script:GetCustomProperty('Combat_Connector'))
end

local TELEPORT_FX = script:GetCustomProperty('TeleportFX')
local ROOT = script:GetCustomProperty('Root'):WaitForObject()
local ABILITY = script:GetCustomProperty('Ability'):WaitForObject()

function Execute()
    local player = ABILITY.owner

    if not Object.IsValid(player) then
        return
    end
    
    Events.Broadcast("Ability.Used", player, "Teleport")
    
    local rangeMod = ROOT.serverUserData.CalculateModifier('Range')
    local Direction = player:GetWorldTransform():GetForwardVector()
    local playerpos = player:GetWorldPosition()
    local EndPosition = playerpos + Direction * rangeMod
    local hit = World.Spherecast(Vector3.New(playerpos + Vector3.UP * 100), EndPosition, 100, {ignorePlayers = true})
    if hit then
        EndPosition = hit:GetImpactPosition()
    end

    player:SetWorldPosition(EndPosition)
    World.SpawnAsset(TELEPORT_FX, {position = EndPosition, networkContext = NetworkContextType.NETWORKED})
end

function Recovery()
    local dmgMod = ROOT.serverUserData.CalculateModifier('Damage')
	local nearbyEnemies = COMBAT().FindInSphere(ABILITY.owner:GetWorldPosition(), 1000, { ignoreTeams = ABILITY.owner.team, ignoreDead = true })
	local dmg = Damage.New()
	dmg.amount = dmgMod[1]
	dmg.reason = DamageReason.COMBAT
	dmg.sourcePlayer = ABILITY.owner
	dmg.sourceAbility = ABILITY
	local isCrit = dmgMod[2]
	for i, enemy in pairs(nearbyEnemies) do
		local attackData = {
			object = enemy,
			damage = dmg,
			source = dmg.sourcePlayer,
			position = nil,
			rotation = nil,
			tags = { id = 'Sorcerer_Q', Critical = isCrit}
		}
		COMBAT().ApplyDamage(attackData)
	end
end

ABILITY.executeEvent:Connect(Execute)
ABILITY.recoveryEvent:Connect(Recovery)
