--[[
Copyright 2021 Manticore Games, Inc.

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated
documentation files (the "Software"), to deal in the Software without restriction, including without limitation the
rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit
persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the
Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE
WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR
COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR
OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
--]]

--[[
    As well as providing a useful function to split a string up into small strings based on chunk size,
    it also provides a method to set PrivateNetworkedData in a way where a single single is split up 
    into multiple strings and ensures when its recieved all the chunks are syncronized into one string.
    This helps with network bandwidth on a really long string.

    So if the chunk size is 4, and the string is "Hello world", and the key is "example" the data will become
    "key" = "$&#"
    "key_1" = "$hell"
    "key_2" = "&o wo"
    "key_3" = "#rld"

    To ensure we have a syncronized state, we check that the leading character on the other keys
    match with the santity check on the keys

    If we changed the text to "Hello wombat" then
    the "key" will become "$&*" and "key_3" becomes "*mbat".
    If we recieve the key first, and key_3 hasnt update, we return nil
    If we recieve the key_3 frist, then the "key" wont match and we return nil
    When we have both keys synced, "key" and "key_3" will match up and we get the string
]]

---@class APIStringChunk
local API = {}


-- Split a string up into smaller strings
function API.SplitStringByChunk(text, chunkSize)
    assert(type(text) == "string")
    assert(type(chunkSize) == "number")
    if text == "" then
        return {""}
    end
    local s = {}
    for i=1, #text, chunkSize do
        s[#s+1] = text:sub(i,i+chunkSize - 1)
    end
    return s
end

-- Increases a char to a different bit for the sanity check
function AdjustToken(token)
    local byte = 1
    if token then
        byte = string.byte(token)+1
    end
    if byte > 127 then byte=1 end
    return string.char(byte)
end

---Gets the string from NetworkedData, but only if all the strings are synced
---@param player Player
---@param key string
---@return string|nil
function API.GetPlayerPrivateNetworkedDataString(player, key)
    assert(player)
    assert(key)

    local sanity = player:GetPrivateNetworkedData(key)
    if sanity == nil then
        return nil
    end
    local splits = API.SplitStringByChunk(sanity, 1)
    local count = #splits
    local buffers = {}
    local bufferTokens = {}
    for i=1, count do
        local buffer = player:GetPrivateNetworkedData(key .. "_" .. tostring(i))
        if buffer == nil then -- if the buffer was nil we are definitely not synced
            return
        end
        buffers[i] = string.sub(buffer, 2)
        bufferTokens[i] = string.sub(buffer, 1, 1)
    end
    local synced = true
    for i, token in ipairs(splits) do
        if bufferTokens[i] ~= token then
            synced = false
        end
    end
    if synced then
        return table.concat(buffers)
    else
        return nil
    end
end



---Sets a string for private networked data, splitting it up into different chucks and ensuring it will syncronize
---@param player Player
---@param key string
---@param value string|nil
---@param chunkSize integer
function API.SetPlayerPrivateNetworkedDataString(player, key, value, chunkSize)
    assert(player)
    assert(key)
    assert(type(chunkSize) == "number")

    -- previous data
    local sanity = player:GetPrivateNetworkedData(key) or ""
    local count = string.len(sanity)
    local buffers = {}
    local bufferTokens = {}
    for i=1, count do
        local buffer = player:GetPrivateNetworkedData(key .. "_" .. tostring(i))
        if buffer then
            buffers[i] = string.sub(buffer, 2)
            bufferTokens[i] = string.sub(buffer, 1, 1)
        end
    end
    local newCount = 0
    local newSanity = nil
    if value then
        local newBuffers = API.SplitStringByChunk(value, chunkSize)
        newCount = #newBuffers
        local newBufferTokens = {}
        for i=1, newCount do
            local token = bufferTokens[i]
            local oldBuffer = buffers[i]
            local newBuffer = newBuffers[i]
            if oldBuffer ~= newBuffer then
                token = AdjustToken(token)
                player:SetPrivateNetworkedData(key .. "_" .. tostring(i), token .. newBuffer)
            end
            newBufferTokens[i] = token
        end
        if newCount > 0 then
            newSanity = table.concat(newBufferTokens)
        end
    end
    if newCount < count then
        for i=newCount+1, count do
            -- Clear out old values
            player:SetPrivateNetworkedData(key .. "_" .. tostring(i), nil)
        end
    end
    if player:GetPrivateNetworkedData(key) ~= newSanity then
        player:SetPrivateNetworkedData(key, newSanity)
    end
end

return API