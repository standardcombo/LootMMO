local API = {}

local EPOCH_OFFSET = 1624484039
local epochTimeMinusTime = os.time() - os.clock()

local PRIVATE_NETWORKED_KEY = "epochTimeMinusServerTime"

if Environment.IsClient() then

    function API.IsValid()
        return Game.GetLocalPlayer():GetPrivateNetworkedData(PRIVATE_NETWORKED_KEY) ~= nil
    end

    function API.GetRealTime()
        epochTimeMinusTime = API.ExpandTime(Game.GetLocalPlayer():GetPrivateNetworkedData(PRIVATE_NETWORKED_KEY))
        if epochTimeMinusTime == nil then
            return nil
        end
        return epochTimeMinusTime + os.clock()
    end

else
    function API.UpdatePlayersEpoch()
        epochTimeMinusTime = os.time() - os.clock()

        for _, player in ipairs(Game.GetPlayers()) do
            player:SetPrivateNetworkedData("epochTimeMinusServerTime", API.CompactTime(epochTimeMinusTime))
        end
    end

    function API.GetRealTime()
        return epochTimeMinusTime + os.clock()
    end
end

function API.CompactTime(epochTime)
    return epochTime - EPOCH_OFFSET
end

function API.ExpandTime(epochTime)
    return epochTime + EPOCH_OFFSET
end

return API