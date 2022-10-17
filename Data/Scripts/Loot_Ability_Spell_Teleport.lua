local function COMBAT()
	return require(script:GetCustomProperty('Combat_Connector'))
end

local TELEPORT_FX = script:GetCustomProperty('TeleportFX')
local ROOT = script:GetCustomProperty('Root'):WaitForObject()
local ABILITY = script:GetCustomProperty('Ability'):WaitForObject()

local mods = {}

function Execute()
    local player = ABILITY.owner

    if not Object.IsValid(player) then
        return
    end
    mods = ROOT.serverUserData.calculateModifier()
    local Direction = player:GetWorldTransform():GetForwardVector()
    local playerpos = player:GetWorldPosition()
    local EndPosition = playerpos + Direction * mods["Range"]
    local hit = World.Spherecast(Vector3.New(playerpos + Vector3.UP * 100), EndPosition, 100, {ignorePlayers = true})
    if hit then
        EndPosition = hit:GetImpactPosition()
    end

    player:SetWorldPosition(EndPosition)
    World.SpawnAsset(TELEPORT_FX, {position = EndPosition, networkContext = NetworkContextType.NETWORKED})
end

function Recovery()
    mods = ROOT.serverUserData.calculateModifier()
	local nearbyEnemies = COMBAT().FindInSphere(ABILITY.owner:GetWorldPosition(), 1000, { ignoreTeams = ABILITY.owner.team, ignoreDead = true })
	local dmg = Damage.New()
	dmg.amount = mods['Damage'][1]
	dmg.reason = DamageReason.COMBAT
	dmg.sourcePlayer = ABILITY.owner
	dmg.sourceAbility = ABILITY
	local isCrit = mods['Damage'][2]
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
