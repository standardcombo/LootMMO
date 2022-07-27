function OnActionPressed(player, action, value) 
    if action == 'LevelUp' then
        player:SetPrivateNetworkedData('Level', math.min(20, player:GetPrivateNetworkedData('Level') +1 ))
    end
    if action == 'LevelDown' then
        player:SetPrivateNetworkedData('Level',math.max(1, player:GetPrivateNetworkedData('Level') - 1))
    end
end

 
Input.actionPressedEvent:Connect(OnActionPressed)
Game.playerJoinedEvent:Connect(
    function(player)
        player:SetPrivateNetworkedData('Level', 1)
    end
)
