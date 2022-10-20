local ROOT = script:GetCustomProperty("Root"):WaitForObject()
local TRIGGER = script:GetCustomProperty("Trigger"):WaitForObject()

local DAMAGE_MIN = script:GetCustomProperty("DamageMin")
local DAMAGE_MAX = script:GetCustomProperty("DamageMax")

local affectedPlayers = {}

function ApplyDamage(player)
    local dmg = Damage.New(math.random(DAMAGE_MIN, DAMAGE_MAX))
    dmg.sourceAbility = ROOT.serverUserData.sourceAbility
	if dmg.sourceAbility then
		dmg.sourcePlayer = ROOT.serverUserData.sourceAbility.owner
	end
    dmg.reason = DamageReason.COMBAT
    player:ApplyDamage(dmg)

    affectedPlayers[player] = {
        lastTime = time(),
        randomValue = math.random(2)
    }
end

function CheckPlayerInTrigger(player)
    if affectedPlayers[player] == nil then
        if  player:IsA("Player") then
            ApplyDamage(player)
            player.diedEvent:Connect(OnPlayerDied)
            player.respawnedEvent:Connect(OnPlayerDied)
        end
        return false
    else
        return true
    end
end

function Tick(deltaTime)
    for _, obj in ipairs(TRIGGER:GetOverlappingObjects()) do
        if obj:IsA("Player") and CheckPlayerInTrigger(obj) then
            local player = obj
            if time() - affectedPlayers[player].lastTime >= affectedPlayers[player].randomValue then
                -- If dead then reset the list for the player and return
                if player.isDead then
                    return
                end
                ApplyDamage(player)
            end
        end
    end
end

function OnPlayerDied(player)
    affectedPlayers[player] = nil
    if Object.IsValid(script) and Object.IsValid(ROOT) then
        ROOT:Destroy()
    end
end

function OnEndOverlap(_, other)
	if other:IsA("Player") and affectedPlayers[other] then
        affectedPlayers[other] = nil
	end
end

TRIGGER.endOverlapEvent:Connect(OnEndOverlap)
