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
    Purpose:
        This script provides a simple way to convert a bunch of parameters into a string, and back again
        It supports various types, including nested tables and arrays.

    Example Usage:
        Here are some examples:
        local s = SERIALIZER.WriteString(1, 0.5, true, 12, "hello")

        Calling the above will set s to a string that contains all the data needed to unpack
        local one, half, myBool, variable, message = SERIALIZER.ReadString(s)

        one is 1  (number)
        half is 0.5 (float)
        myBool is true (boolean)
        variable is 12 (number)
        message is "hello" (string)

        Another way you could pack a string is by joining all the parameters to form a string like
        '1, 0.5, true, 12, "hello"'
        and then use CoreString.Split(","), however all the sub strings will be of type string.
        This API will create a string that much shorter than this, and will serialize the types

        You can also use a lua table like:
        local myTable = {
            test=10
            value=20
            hello=true
        }

        and call:
        local s = SERIALIZER.WriteString(myTable)
        local decodedTable = SERIALIZER.ReadString(myTable)

        -- Print out the table
        for k, v in pairs(decodedTable) do print(k, v) end

        You will see its correctly serialized the keys and values of the table.

        However, each 'key' is a string, so the name of the string is going to use up some space

        To save space, its better to serialize an array or a list of parameters as it wont include the keys

    How it works:
        When we serialize a value, we first write a single character as a token, followed by any needed additional
        characters to serialize the value. See TYPE_TOKENS
        The token allows us, during decoding, to know what the 'type' of a variable will be.

        Rather than having one token for 'number' we also have various tokens for position and negative
        numbers, such as POS_INT6 and NEG_INT6. An int6 is a number between 0-63, using a single character.
        a int12 is 0-4095 using 2 characters (rather than 4 digits) and a int18 is 0-262143 using 3 characters, etc
        So if we were writing the numbers 20, 2000, 123456 we would have
        [Token:POS_INT6][char][Token:POS_INT6][char][char][Token:POS_INT18][char][char][char]

        We can support 1-127 tokens, so theres room to expand this. If we need more than 127 tokens we could make
        token 127 be an 'extension' and then you read a second token

        Some tokens, like [nil] dont have any characters after it. So if you knew you were serializing the number '0' a lot we
        could have a token for that specially to only use one character

--]]

---@class APISerializer
local API = {}

---@type Base64
local Base64 = require(script:GetCustomProperty("Base64"))

local staticToNumber = {}
local numberToStatic = {}

local TYPE_TOKENS = {
    NIL = 1,
    POS_INT6 = 2,
    POS_INT12 = 3,
    POS_INT18 = 4,
    POS_INT24 = 5,
    NEG_INT6 = 6,
    NEG_INT12 = 7,
    NEG_INT18 = 8,
    NEG_INT24 = 9,
    BOOLEAN = 10,
    CHAR = 11,
    STRING_6 = 12,
    STRING_12 = 13,
    STRING_18 = 14,
    TABLE_6 = 15,
    TABLE_12 = 16,
    TABLE_18 = 17,
    ARRAY_6 = 18,
    ARRAY_12 = 19,
    ARRAY_18 = 20,
    NORMALIZED_FLOAT = 21,
    FLOAT = 22,
    STATIC_KEY_6 = 23,
    STATIC_KEY_12 = 24, 
    STATIC_KEY_18 = 25, 
}

function TableIsArray(t)
    assert(type(t) == "table")
    return TableKeyCount(t) == #t
end

function TableKeyCount(t)
    local count = 0
    for k, v in pairs(t) do
        count = count+1
    end
    return count
end

function IsWholeNumber(n)
    assert(type(n) == "number")
    return n == CoreMath.Round(n)
end

function IsNormalizedNumber(n)
    assert(type(n) == "number")
    return n >= 0 and n <= 1
end

function NormalizedFloatToUInt6(value)
    assert(type(value) == "number")
    assert(value >= 0 and value <= 1)
    return CoreMath.Clamp(CoreMath.Round(value*63), 0, 63)
end

function UInt6ToNormalizedFloat(integer)
    return CoreMath.Clamp(integer / 63)
end

function WriteValue(value, buffer)
    local staticIndex = staticToNumber[value]
    
    if staticIndex and staticIndex > Base64.MAX_18 then 
        index = nil 
    end

    if staticIndex then
        if staticIndex <= Base64.MAX_6 then
            buffer.AppendTypeToken(TYPE_TOKENS.STATIC_KEY_6)
            buffer.AppendString(Base64.Encode6(staticIndex))
        elseif staticIndex <= Base64.MAX_12 then
            buffer.AppendTypeToken(TYPE_TOKENS.STATIC_KEY_12)
            buffer.AppendString(Base64.Encode12(staticIndex))
        elseif staticIndex <= Base64.MAX_18 then
            buffer.AppendTypeToken(TYPE_TOKENS.STATIC_KEY_18)
            buffer.AppendString(Base64.Encode18(staticIndex))
        end
    else
        local valueType = type(value)
        if valueType == "nil" then
            buffer.AppendTypeToken(TYPE_TOKENS.NIL)
        elseif valueType == "boolean" then
            buffer.AppendTypeToken(TYPE_TOKENS.BOOLEAN)
            buffer.AppendString(Base64.EncodeBoolean(value))
        elseif valueType == "number" then
            if IsWholeNumber(value) then
                if value >= 0 then
                    if value <= Base64.MAX_6 then
                        buffer.AppendTypeToken(TYPE_TOKENS.POS_INT6)
                        buffer.AppendString(Base64.Encode6(value))
                    elseif value <= Base64.MAX_12 then
                        buffer.AppendTypeToken(TYPE_TOKENS.POS_INT12)
                        buffer.AppendString(Base64.Encode12(value))
                    elseif value <= Base64.MAX_18 then
                        buffer.AppendTypeToken(TYPE_TOKENS.POS_INT18)
                        buffer.AppendString(Base64.Encode18(value))
                    elseif value <= Base64.MAX_24 then
                        buffer.AppendTypeToken(TYPE_TOKENS.POS_INT24)
                        buffer.AppendString(Base64.Encode24(value))
                    else
                        error("Whole number is too large to encode")
                    end
                else
                    value = -value -- make negative positive
                    if value <= Base64.MAX_6 then
                        buffer.AppendTypeToken(TYPE_TOKENS.NEG_INT6)
                        buffer.AppendString(Base64.Encode6(value))
                    elseif value <= Base64.MAX_12 then
                        buffer.AppendTypeToken(TYPE_TOKENS.NEG_INT12)
                        buffer.AppendString(Base64.Encode12(value))
                    elseif value <= Base64.MAX_18 then
                        buffer.AppendTypeToken(TYPE_TOKENS.NEG_INT18)
                        buffer.AppendString(Base64.Encode18(value))
                    elseif value <= Base64.MAX_24 then
                        buffer.AppendTypeToken(TYPE_TOKENS.NEG_INT24)
                        buffer.AppendString(Base64.Encode24(value))
                    else
                        error("Whole number is too large to encode (negative)")
                    end
                end
            else
                if IsNormalizedNumber(value) then
                    buffer.AppendTypeToken(TYPE_TOKENS.NORMALIZED_FLOAT)
                    local i = NormalizedFloatToUInt6(value)
                    buffer.AppendString(Base64.Encode6(i))
                else
                    buffer.AppendTypeToken(TYPE_TOKENS.FLOAT)
                    local i = CoreMath.Round(value * 100)
                    buffer.AppendString(Base64.Encode24(i))
                end
            end
        elseif valueType == "string" then
            local count = #value
            if count <= Base64.MAX_6 then
                buffer.AppendTypeToken(TYPE_TOKENS.STRING_6)
                buffer.AppendString(Base64.Encode6(count))
            elseif count <= Base64.MAX_12 then
                buffer.AppendTypeToken(TYPE_TOKENS.STRING_12)
                buffer.AppendString(Base64.Encode12(count))
            elseif count <= Base64.MAX_18 then
                buffer.AppendTypeToken(TYPE_TOKENS.STRING_18)
                buffer.AppendString(Base64.Encode12(count))
            else
                error("String has too many characters in it to encode")
            end
            buffer.AppendString(value)
        elseif valueType == "table" then
            if TableIsArray(value) then
                local count = #value
                if count <= Base64.MAX_6 then
                    buffer.AppendTypeToken(TYPE_TOKENS.ARRAY_6)
                    buffer.AppendString(Base64.Encode6(count))
                elseif count <= Base64.MAX_12 then
                    buffer.AppendTypeToken(TYPE_TOKENS.ARRAY_12)
                    buffer.AppendString(Base64.Encode12(count))
                elseif count <= Base64.MAX_18 then
                    buffer.AppendTypeToken(TYPE_TOKENS.ARRAY_18)
                    buffer.AppendString(Base64.Encode18(count))
                else
                    error("There are too many items in the array")
                end
                for _, v in ipairs(value) do
                    WriteValue(v, buffer)
                end
            else
                local count = TableKeyCount(value)
                if count <= Base64.MAX_6 then
                    buffer.AppendTypeToken(TYPE_TOKENS.TABLE_6)
                    buffer.AppendString(Base64.Encode6(count))
                elseif count <= Base64.MAX_12 then
                    buffer.AppendTypeToken(TYPE_TOKENS.TABLE_12)
                    buffer.AppendString(Base64.Encode12(count))
                elseif count <= Base64.MAX_18 then
                    buffer.AppendTypeToken(TYPE_TOKENS.TABLE_18)
                    buffer.AppendString(Base64.Encode18(count))
                else
                    error("There are too many items in the array")
                end
                for k, v in pairs(value) do
                    WriteValue(k, buffer)
                    WriteValue(v, buffer)
                end
            end
        elseif valueType == "function" then
            buffer.AppendTypeToken(TYPE_TOKENS.NIL)
        elseif valueType == "userdata" then
            -- Built in core types! Vector2, Vector3, Rotation, Quaternion, CoreObjectReference, etc
            error ("userdata currently not supported")
        else
            error ("Unsupported type found: " .. tostring(valueType))
        end
    end
end

function ReadTable(buffer, count)
    local result = {}
    for i=1, count do
        local key = ReadValue(buffer)
        local value = ReadValue(buffer)
        result[key] = value
    end
    return result
end

function ReadArray(buffer, count)
    local result = {}
    for i=1, count do
        local value = ReadValue(buffer)
        result[i] = value
    end
    return result
end

local READ_TOKEN_METHODS = {
    [TYPE_TOKENS.NIL] = function(buffer)
        return
    end,
    [TYPE_TOKENS.POS_INT6] = function(buffer)
        return Base64.Decode6(buffer.ReadString(1))
    end,
    [TYPE_TOKENS.POS_INT12] = function(buffer)
        return Base64.Decode12(buffer.ReadString(2))
    end,
    [TYPE_TOKENS.POS_INT18] = function(buffer)
        return Base64.Decode18(buffer.ReadString(3))
    end,
    [TYPE_TOKENS.POS_INT24] = function(buffer)
        return Base64.Decode24(buffer.ReadString(4))
    end,
    [TYPE_TOKENS.NEG_INT6] = function(buffer)
        return -Base64.Decode6(buffer.ReadString(1))
    end,
    [TYPE_TOKENS.NEG_INT12] = function(buffer)
        return -Base64.Decode12(buffer.ReadString(2))
    end,
    [TYPE_TOKENS.NEG_INT18] = function(buffer)
        return -Base64.Decode18(buffer.ReadString(3))
    end,
    [TYPE_TOKENS.NEG_INT24] = function(buffer)
        return -Base64.Decode24(buffer.ReadString(4))
    end,
    [TYPE_TOKENS.BOOLEAN] = function(buffer)
        return Base64.DecodeBoolean(buffer.ReadString(1))
    end,
    [TYPE_TOKENS.CHAR] = function(buffer)
        return buffer.ReadString(1)
    end,
    [TYPE_TOKENS.STRING_6] = function(buffer)
        local count = Base64.Decode6(buffer.ReadString(1))
        return buffer.ReadString(count)
    end,
    [TYPE_TOKENS.STRING_12] = function(buffer)
        local count = Base64.Decode12(buffer.ReadString(2))
        return buffer.ReadString(count)
    end,
    [TYPE_TOKENS.STRING_18] = function(buffer)
        local count = Base64.Decode18(buffer.ReadString(3))
        return buffer.ReadString(count)
    end,
    [TYPE_TOKENS.TABLE_6] = function(buffer)
        local count = Base64.Decode6(buffer.ReadString(1))
        return ReadTable(buffer, count)
    end,
    [TYPE_TOKENS.TABLE_12] = function(buffer)
        local count = Base64.Decode12(buffer.ReadString(2))
        return ReadTable(buffer, count)
    end,
    [TYPE_TOKENS.TABLE_18] = function(buffer)
        local count = Base64.Decode18(buffer.ReadString(3))
        return ReadTable(buffer, count)
    end,
    [TYPE_TOKENS.ARRAY_6] = function(buffer)
        local count = Base64.Decode6(buffer.ReadString(1))
        return ReadArray(buffer, count)
    end,
    [TYPE_TOKENS.ARRAY_12] = function(buffer)
        local count = Base64.Decode12(buffer.ReadString(2))
        return ReadArray(buffer, count)
    end,
    [TYPE_TOKENS.ARRAY_18] = function(buffer)
        local count = Base64.Decode18(buffer.ReadString(3))
        return ReadArray(buffer, count)
    end,
    [TYPE_TOKENS.NORMALIZED_FLOAT] = function(buffer)
        return UInt6ToNormalizedFloat( Base64.Decode6(buffer.ReadString(1)))
    end,
    [TYPE_TOKENS.FLOAT] = function(buffer)
        return Base64.Decode24(buffer.ReadString(4)) / 100
    end,
    [TYPE_TOKENS.STATIC_KEY_6] = function(buffer)
        local index = Base64.Decode6(buffer.ReadString(1))
        return numberToStatic[index]
    end,
    [TYPE_TOKENS.STATIC_KEY_12] = function(buffer)
        local index = Base64.Decode12(buffer.ReadString(2))
        return numberToStatic[index]
    end,
    [TYPE_TOKENS.STATIC_KEY_18] = function(buffer)
        local index = Base64.Decode18(buffer.ReadString(3))
        return numberToStatic[index]
    end,
}


function ReadValue(buffer)
    local token = buffer.ReadTypeToken()
    local method = READ_TOKEN_METHODS[token]
    if method == nil then
        error("Unable to find a method for the token " .. token)
    end
    return method(buffer)
end

function API.SetStaticTable(staticArray)
    staticToNumber = {}
    numberToStatic = {}
    for k, v in pairs(staticArray) do
        staticToNumber[v] = k
        numberToStatic[k] = v
    end
end

function API.WriteString(...)
    local buffer = {}
    local stream = {}
    local writeIndex = 1
    function buffer.AppendTypeToken(token)
        stream[writeIndex] = string.char(token)
        writeIndex = writeIndex+1
    end
    function buffer.AppendString(s)
        stream[writeIndex] = s
        writeIndex = writeIndex+1
    end
    local params = {...}
    for i=1, #params do
        WriteValue(params[i], buffer)
    end
    return table.concat(stream)
end


function API.ReadString(s)
    if s == nil then
        return nil
    end
    local buffer = {}
    local stream = s
    local readIndex = 1
    local length = #s
    function buffer.ReadString(charCount)
        assert(readIndex+charCount-1 <= length , "We have read past the end of the string")
        local s = string.sub(stream, readIndex, readIndex+charCount-1)
        readIndex = readIndex + charCount
        return s
    end
    function buffer.ReadTypeToken()
        local char = buffer.ReadString(1)
        return string.byte(char)
    end

    local result = {}
    local index = 1
    while readIndex < length do
        result[index] = ReadValue(buffer)
        index = index+1
    end
    return table.unpack(result, 1, index)
end

return API