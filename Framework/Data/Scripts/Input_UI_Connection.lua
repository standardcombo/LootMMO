local LOCAL_PLAYER = Game.GetLocalPlayer()

local InputAtlas = {
    ['OpenInventory'] = 'OpenInventory',
    ['OpenShop'] = 'OpenShop'
}

function InputPressed(player, action)
    if InputAtlas[action] then
        Events.Broadcast(InputAtlas[action])
    end
end

Input.actionPressedEvent:Connect(InputPressed)
