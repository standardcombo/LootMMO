local ROOT = script:GetCustomProperty('Root'):WaitForObject()
local ABILITY = script:GetCustomProperty('Ability'):WaitForObject()

local mods = {}
local isEvading = nil
local goingToTakeDamageListener = nil

function OnGoingToTakeDamage(attackData)
	local object = attackData.object
	local dmg = attackData.damage
	local source = attackData.source
	if isEvading and object == ABILITY.owner and dmg.amount > 0 then
        dmg.amount = 0
	end
end

function Cast()
    mods = ROOT.serverUserData.calculateModifier()
    if Environment.IsServer() then
        if not ABILITY.owner.isGrounded then
            ABILITY:Interrupt()
        end
        isEvading = mods['EvasionChance']
    end
end

function OnDestroyListener()
    if goingToTakeDamageListener then
    	goingToTakeDamageListener:Disconnect()
    	goingToTakeDamageListener = nil
    end
end

goingToTakeDamageListener = Events.Connect("CombatWrapAPI.GoingToTakeDamage", OnGoingToTakeDamage)
ABILITY.destroyEvent:Connect(OnDestroyListener)
ABILITY.castEvent:Connect(Cast)