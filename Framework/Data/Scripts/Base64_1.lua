----------------------------------------------------------------------------------
-- Base64 string encoding.
----------------------------------------------------------------------------------
---@class Base64
local Base64 = {}

-- Lookup tables for fast encode/decode.
local SYMBOLS = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890-+"
local REVERSE = {}
for i=1,#SYMBOLS do
    local c = SYMBOLS:sub(i, i)
    REVERSE[c] = i - 1
end
-- This is useful for anyone wanting to know some other characters can still be used as protocol markers.
local UNUSED_SYMBOLS = "?!@#$%^&*={}[]()<>,."

-- Store these in the class for anyone else who needs them.
Base64.MATCH_PATTERN = "[%a%d%-%+]"
Base64.UNUSED_SYMBOLS = UNUSED_SYMBOLS
Base64.SYMBOLS = SYMBOLS
Base64.REVERSE = REVERSE

-- More useful constants so you know what you can and can't encode.
Base64.MAX_6 = 2^6 - 1
Base64.MAX_12 = 2^12 - 1
Base64.MAX_18 = 2^18 - 1
Base64.MAX_24 = 2^24 - 1
Base64.MAX_30 = 2^30 - 1
Base64.MAX_36 = 2^36 - 1

-- Helper for encoding.
local function raw_encode_6(uint6)
    return SYMBOLS:sub(uint6+1, uint6+1)
end

-- Encode a 6 bit value into a character.
function Base64.Encode6(uint6)
    assert(0 <= uint6 and uint6 <= Base64.MAX_6)
    return raw_encode_6(uint6)
end

-- Encode a 12 bit value into a string of two characters.
function Base64.Encode12(uint12)
    assert(0 <= uint12 and uint12 <= Base64.MAX_12)
    local en = raw_encode_6
    local b1 = en(0x3F & (uint12 >> 0))
    local b2 = en(0x3F & (uint12 >> 6))
    return b1 .. b2
end

-- Encode an 18 bit value into a string of three characters.
function Base64.Encode18(uint18)
    assert(0 <= uint18 and uint18 <= Base64.MAX_18)
    local en = raw_encode_6
    local b1 = en(0x3f & (uint18 >> 0))
    local b2 = en(0x3f & (uint18 >> 6))
    local b3 = en(0x3f & (uint18 >> 12))
    return b1 .. b2 .. b3
end

-- Encode a 24 bit value into a string of four characters.
function Base64.Encode24(uint24)
    assert(0 <= uint24 and uint24 <= Base64.MAX_24)
    local en = raw_encode_6
    local b1 = en(0x3F & (uint24 >> 0))
    local b2 = en(0x3F & (uint24 >> 6))
    local b3 = en(0x3F & (uint24 >> 12))
    local b4 = en(0x3F & (uint24 >> 18))
    return b1 .. b2 .. b3 .. b4
end

-- Encode a 30 bit value into a string of five characters.
function Base64.Encode30(uint30)
    assert(0 <= uint30 and uint30 <= Base64.MAX_30)
    local en = raw_encode_6
    local b1 = en(0x3F & (uint30 >> 0))
    local b2 = en(0x3F & (uint30 >> 6))
    local b3 = en(0x3F & (uint30 >> 12))
    local b4 = en(0x3F & (uint30 >> 18))
    local b5 = en(0x3F & (uint30 >> 24))
    return b1 .. b2 .. b3 .. b4 .. b5
end

-- Encode a 36 bit value into a string of five characters.
function Base64.Encode36(uint36)
    assert(0 <= uint36 and uint36 <= Base64.MAX_36)
    local en = raw_encode_6
    local b1 = en(0x3F & (uint36 >> 0))
    local b2 = en(0x3F & (uint36 >> 6))
    local b3 = en(0x3F & (uint36 >> 12))
    local b4 = en(0x3F & (uint36 >> 18))
    local b5 = en(0x3F & (uint36 >> 24))
    local b6 = en(0x3F & (uint36 >> 30))
    return b1 .. b2 .. b3 .. b4 .. b5 .. b6
end

-- Decode the next 6 bit value from the base64 string.
function Base64.Decode6(s)
    return REVERSE[s:sub(1, 1)]
end

-- Decode the next 12 bit value from the base64 string.
function Base64.Decode12(s)
    local sub = string.sub
    local b1 = REVERSE[sub(s, 1, 1)]
    local b2 = REVERSE[sub(s, 2, 2)]
    return b1 | (b2 << 6)
end

-- Decode the next 18 bit value from the base64 string.
function Base64.Decode18(s)
    local sub = string.sub
    local b1 = REVERSE[sub(s, 1, 1)]
    local b2 = REVERSE[sub(s, 2, 2)]
    local b3 = REVERSE[sub(s, 3, 3)]
    return b1 | (b2 << 6) | (b3 << 12)
end

-- Decode the next 24 bit value from the base64 string.
function Base64.Decode24(s)
    local sub = string.sub
    local b1 = REVERSE[sub(s, 1, 1)]
    local b2 = REVERSE[sub(s, 2, 2)]
    local b3 = REVERSE[sub(s, 3, 3)]
    local b4 = REVERSE[sub(s, 4, 4)]
    return b1 | (b2 << 6) | (b3 << 12) | (b4 << 18)
end

-- Decode the next 30 bit value from the base64 string.
function Base64.Decode30(s)
    local sub = string.sub
    local b1 = REVERSE[sub(s, 1, 1)]
    local b2 = REVERSE[sub(s, 2, 2)]
    local b3 = REVERSE[sub(s, 3, 3)]
    local b4 = REVERSE[sub(s, 4, 4)]
    local b5 = REVERSE[sub(s, 5, 5)]
    return b1 | (b2 << 6) | (b3 << 12) | (b4 << 18) | (b5 << 24)
end

-- Decode the next 36 bit value from the base64 string.
function Base64.Decode36(s)
    local sub = string.sub
    local b1 = REVERSE[sub(s, 1, 1)]
    local b2 = REVERSE[sub(s, 2, 2)]
    local b3 = REVERSE[sub(s, 3, 3)]
    local b4 = REVERSE[sub(s, 4, 4)]
    local b5 = REVERSE[sub(s, 5, 5)]
    local b6 = REVERSE[sub(s, 6, 6)]
    return b1 | (b2 << 6) | (b3 << 12) | (b4 << 18) | (b5 << 24) | (b6 << 30)
end

-- Encode multiple values using the provided format string.
-- A valid format string consists only of the characters '1', '2', '3', '4' which
-- indicate the number of bytes a certain value is to be encoded with.
--
-- e.g. Base64.Pack("1234", 1byteValue, 2byteValue, 3byteValue, 4byteValue)
function Base64.Pack(fmt, ...)
    assert(type(fmt) == "string")
    local s = {}
    local args = table.pack(...)
    for i=1,#fmt do
        local width = tonumber(fmt:sub(i,i))
        assert(width and 1 <= width and width <= #Base64.Packers)
        table.insert(s, Base64.Packers[width](args[i]))
    end
    return table.concat(s)
end
Base64.Packers = { Base64.Encode6, Base64.Encode12, Base64.Encode18, Base64.Encode24, Base64.Encode30, Base64.Encode36 }

-- Decode a string into multiple values using the provided format string.
-- See above for valid format string description.
--
-- e.g. 1byteValue, 2byteValue, 3byteValue, 4byteValue = Base64.Unpack("1234", s)
function Base64.Unpack(fmt, s)
    assert(type(fmt) == "string")
    local j = 1
    local vals = {}
    for i=1,#fmt do
        local width = tonumber(fmt:sub(i,i))
        assert(width and 1 <= width and width <= #Base64.Unpackers)
        assert(#s >= j + width - 1)
        table.insert(vals, Base64.Unpackers[width](s:sub(j)))
        j = j + width
    end
    return table.unpack(vals)
end
Base64.Unpackers = { Base64.Decode6, Base64.Decode12, Base64.Decode18, Base64.Decode24, Base64.Decode30, Base64.Decode36 }

-- Sanity check.
function Base64._SelfTest()
    assert("a" == Base64.Encode6(0))
    assert("+" == Base64.Encode6(63))
    assert(0 == Base64.Decode6("a"))
    assert(63 == Base64.Decode6("+"))

    assert("aa" == Base64.Encode12(0))
    assert("+a" == Base64.Encode12(63))
    assert("a+" == Base64.Encode12(4032))
    assert("++" == Base64.Encode12(4095))
    assert(0 == Base64.Decode12("aa"))
    assert(63 == Base64.Decode12("+a"))
    assert(4032 == Base64.Decode12("a+"))
    assert(4095 == Base64.Decode12("++"))

    assert("+aaa" == Base64.Encode24(63))
    assert("a+aa" == Base64.Encode24(4032))
    assert("aa+a" == Base64.Encode24(258048))
    assert("aaa+" == Base64.Encode24(16515072))
    assert(63 == Base64.Decode24("+aaa"))
    assert(4032 == Base64.Decode24("a+aa"))
    assert(258048 == Base64.Decode24("aa+a"))
    assert(16515072 == Base64.Decode24("aaa+"))

    assert(1 == Base64.Unpack("1", Base64.Pack("1", 1)))
    assert(1 == Base64.Unpack("1", Base64.Pack("2", 1)))
    assert(1 == Base64.Unpack("1", Base64.Pack("3", 1)))
    assert(1 == Base64.Unpack("1", Base64.Pack("4", 1)))

    local TESTVALS = { Base64.MAX_6, Base64.MAX_12, Base64.MAX_18, Base64.MAX_24 }
    for i,v in ipairs(table.pack(Base64.Unpack("1234", Base64.Pack("1234", table.unpack(TESTVALS))))) do
        assert(v == TESTVALS[i])
    end
end




Base64._SelfTest()

-- New helper functions added by Divided (David)

function Base64.EncodeInteger(number, bitCount)
    local magnitude = math.abs(number)
    bitCount = bitCount-1
    local mask = (1 << bitCount) - 1
    assert(magnitude < mask, tostring(number) .. " exceeds limited of " .. (bitCount+1) .. " bits")
    local signed = number < 0 and (1 << bitCount) or 0
    return signed | (magnitude & mask)
end

function Base64.DecodeInteger(s, bitCount)
    bitCount = bitCount-1
    local mask = (1 << bitCount) - 1
    local signed = (s >> bitCount) == 1 and -1 or 1
    return (s & mask) * signed
end

function Base64.EncodeVector3(vector)
    local x = CoreMath.Round(vector.x * 100)
    local y = CoreMath.Round(vector.y * 100)
    local z = CoreMath.Round(vector.z * 100)
    local s = ""
    s = s .. Base64.Encode24(Base64.EncodeInteger(x, 24))
    s = s .. Base64.Encode24(Base64.EncodeInteger(y, 24))
    s = s .. Base64.Encode24(Base64.EncodeInteger(z, 24))
    return s
end

function Base64.DecodeVector3(s)
    local choppedX = string.sub(s, 1, 4)
    local choppedY = string.sub(s, 5, 8)
    local choppedZ = string.sub(s, 9, 12)

    local x = Base64.DecodeInteger(Base64.Decode24(choppedX), 24) / 100
    local y = Base64.DecodeInteger(Base64.Decode24(choppedY), 24) / 100
    local z = Base64.DecodeInteger(Base64.Decode24(choppedZ), 24) / 100

    return Vector3.New(x,y,z)
end

function Base64.EncodeRotation(rotation)
    local vector = Vector3.New(rotation.x, rotation.y, rotation.z)
    return Base64.EncodeVector3(vector)
end

function Base64.DecodeRotation(s)
    local vector = Base64.DecodeVector3(s)
    return Rotation.New(vector.x, vector.y, vector.z)
end

function Base64.EncodeBoolean(b)
    local value = b and 1 or 0
    return Base64.Encode6(value)
end

function Base64.DecodeBoolean(s)
    return (Base64.Decode6(s) == 1)
end


return Base64