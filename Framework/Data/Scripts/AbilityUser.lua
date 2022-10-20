local Abilities = {}

function EquipNewAbilityPlayer(player, Ability)
    if Ability then
        Abilities[Ability.owner] = Ability
    end
end

function OnActionPressed(player, action, value)
    if action == 'Q' then
        if Abilities[player] then
            Abilities[player]:Activate({level = player:GetPrivateNetworkedData('Level')})
        end
    end
end
Input.actionPressedEvent:Connect(OnActionPressed)

Events.Connect('EquippedAbility', EquipNewAbilityPlayer)
Game.playerLeftEvent:Connect(
    function(player)
        Abilities[player] = nil
    end
)
