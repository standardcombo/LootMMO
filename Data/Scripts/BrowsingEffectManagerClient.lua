local BROWSING_EFFECT_ASSET = script:GetCustomProperty("BrowsingEffect")

local LOCAL_PLAYER = Game.GetLocalPlayer()
local BROWSING_MODAL_INDEX = CoreModalType.PAUSE_MENU
local BROWSE_STANCE = "unarmed_browse_virtual_interface"

local browsingPlayers = {}
local randomBrowsingColors = {
    Color.CYAN, Color.ORANGE, Color.GREEN, Color.WHITE
}

function PlayAnimation(effectObject, vertical, scrollCount)
    effectObject:SetSmartProperty("Scroll Count", scrollCount)
    effectObject:SetSmartProperty("Vertical", vertical)
    effectObject:Play()
end

function AssignPlayerBrowsingEffect(player)
    if not Object.IsValid(player) then return end

    browsingPlayers[player] = {}
    browsingPlayers[player].count = 1 

    local instance = World.SpawnAsset(BROWSING_EFFECT_ASSET, {
        position = player:GetWorldPosition(),
        rotation = player:GetWorldRotation()
    })

    instance:AttachToPlayer(player, "root")

    browsingPlayers[player].effectInstance = instance
    browsingPlayers[player].effectObject = instance:GetCustomProperty("Indicator"):WaitForObject()

    local randColor = randomBrowsingColors[math.random(1, #randomBrowsingColors)]

    browsingPlayers[player].effectObject:SetSmartProperty("Tile Color", randColor)
    browsingPlayers[player].effectObject:SetSmartProperty("Frame Color", randColor)
end

function RemovePlayerBrowsingEffect(player)
    if not Object.IsValid(player) then return end
    if not browsingPlayers[player] then return end

    if Object.IsValid(browsingPlayers[player].effectInstance) then
        browsingPlayers[player].effectInstance:Destroy()
    end
    browsingPlayers[player] = nil
end

function Tick(deltaTime)
    for index, player in ipairs(Game.GetPlayers()) do
        if not browsingPlayers[player] and player.animationStance == BROWSE_STANCE then
            AssignPlayerBrowsingEffect(player)
        end
        if browsingPlayers[player] and player.animationStance ~= BROWSE_STANCE then
            RemovePlayerBrowsingEffect(player)
        end
    end
end

function OnAnimation(player, eventName)
    if browsingPlayers[player] and player.animationStance == BROWSE_STANCE then
        if eventName == "action" then
            if browsingPlayers[player].count == 1 then
                browsingPlayers[player].count = 2
                PlayAnimation(browsingPlayers[player].effectObject, true, 1)
            elseif browsingPlayers[player].count == 2 then
                browsingPlayers[player].count = 1
                PlayAnimation(browsingPlayers[player].effectObject, false, 3)
            end
        end
    end
end

function OnPlayerJoined(player)
    player.animationEvent:Connect(OnAnimation)

    if player:GetResource("CoreModal") == BROWSING_MODAL_INDEX then
        AssignPlayerBrowsingEffect(player, time())
    end
end

function OnPlayerLeft(player)
    RemovePlayerBrowsingEffect(player)
end

Game.playerJoinedEvent:Connect(OnPlayerJoined)
Game.playerLeftEvent:Connect(OnPlayerLeft)