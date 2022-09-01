local FEEDBACK_LIST = require(script:GetCustomProperty("EmoteFeedbackList"))

local LOCAL_PLAYER = Game.GetLocalPlayer()
local CHAT_MESSAGE_COLOR = Color.ORANGE
local VISIBILITY_DISTANCE = 1500
local EMOTE_COOLDOWN = 2

local playersEmoteCache = {}

function EmoteStart(player, emote)
    --print(player.name.." start "..emote)
    local validPlayers = Game.FindPlayersInSphere(player:GetWorldPosition(), VISIBILITY_DISTANCE)
--[[     if string.find(emote, "dance") then
        Events.Broadcast("SpawnChatMessage", player, "Let's Dance!", CHAT_MESSAGE_COLOR, validPlayers)
    end ]]
    if FEEDBACK_LIST[emote] and FEEDBACK_LIST[emote].message then
        if time() > playersEmoteCache[player].lastEmoteTime + EMOTE_COOLDOWN then
            playersEmoteCache[player].lastEmoteTime = time()
        else
            return
        end
        if type(FEEDBACK_LIST[emote].message) == "string" then
            Events.Broadcast("SpawnChatMessage", player, FEEDBACK_LIST[emote].message, CHAT_MESSAGE_COLOR, validPlayers)

        elseif type(FEEDBACK_LIST[emote].message) == "table" then
            local randNum = math.random(1, #FEEDBACK_LIST[emote].message)
            Events.Broadcast("SpawnChatMessage", player, FEEDBACK_LIST[emote].message[randNum], CHAT_MESSAGE_COLOR, validPlayers)
        end
    end
end

function EmoteStop(player, emote)
    --print(player.name.." stop "..emote)
    --playersEmoteCache[player] = emote
end

function OnPlayerJoined(player)
    playersEmoteCache[player] = {}
    playersEmoteCache[player].lastEmoteTime = 0
    player.emoteStartedEvent:Connect(EmoteStart)
    --player.emoteStoppedEvent:Connect(EmoteStop)
end
function OnPlayerLeft(player)
    playersEmoteCache[player] = nil
end

Game.playerJoinedEvent:Connect(OnPlayerJoined)
Game.playerLeftEvent:Connect(OnPlayerLeft)
