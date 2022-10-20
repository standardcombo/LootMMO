local API = {}

function GetShortId(id)
    return string.sub(id, 1, string.find(id, ":") - 1)
end

function API.GetIdFromObject(character)
    if character then
        if character:IsA("Player") then
            return character.id
        else
            return GetShortId(character.id)
        end
    end

    return ""
end

function API.GetObjectFromId(id)
    if id and type(id) == "string" and id ~= "" then
        for _, player in pairs(Game.GetPlayers()) do
            if player.id == id then
                return player
            end
        end

        if is_valid_muid(id) then
            return World.FindObjectById(id)
        end
    end
end

return API
