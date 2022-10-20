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
Base64.MAX_24 = 2^24 - 1

-- Helper for encoding.
function raw_encode_6(uint6)
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

-- Encode a 24 bit value into a string of two characters.
function Base64.Encode24(uint24)
    assert(0 <= uint24 and uint24 <= Base64.MAX_24)
    local en = raw_encode_6
    local b1 = en(0x3F & (uint24 >> 0))
    local b2 = en(0x3F & (uint24 >> 6))
    local b3 = en(0x3F & (uint24 >> 12))
    local b4 = en(0x3F & (uint24 >> 18))
    return b1 .. b2 .. b3 .. b4
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

-- Decode the next 24 bit value from the base64 string.
function Base64.Decode24(s)
    local sub = string.sub
    local b1 = REVERSE[sub(s, 1, 1)]
    local b2 = REVERSE[sub(s, 2, 2)]
    local b3 = REVERSE[sub(s, 3, 3)]
    local b4 = REVERSE[sub(s, 4, 4)]
    return b1 | (b2 << 6) | (b3 << 12) | (b4 << 18)
end

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
end
Base64._SelfTest()

return Base64