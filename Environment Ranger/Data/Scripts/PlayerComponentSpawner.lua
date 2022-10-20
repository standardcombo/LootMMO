local COMPONENT_TEMPLATE = script:GetCustomProperty("ComponentTemplate")

local playerComponents = {}

local function OnPlayerJoined(player)
    local component = World.SpawnAsset(COMPONENT_TEMPLATE, { parent = script })
    component:SetNetworkedCustomProperty("PlayerId", player.id)
    playerComponents[player] = component
end

local function OnPlayerLeft(player)
    playerComponents[player]:Destroy()
    playerComponents[player] = nil
end

Game.playerJoinedEvent:Connect(OnPlayerJoined)
Game.playerLeftEvent:Connect(OnPlayerLeft)