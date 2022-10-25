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
    BitStringWriter and BitStringReader provides a lua string based way of serializing in binary
    Each 'character' in a string can hold an int6 which is 0-63
    Its provided as a helper to the Base64 library

    Usage:

    ---@type APIBitString
    local API_BIT_STRING = require( script.GetCustomProperty("APIBitString"))

    local writer = APIBitString.Writer.New()
    writer:WriteUInt12(4095) -- This is the largest number you can write, but it will only use 2 characters
    writer:WriteVector3( Vector3.ONE ) -- This will encode a vector3 into 12 characters

    local s = writer:GetString()

    print ("The string encoded is " .. s)

    local reader = APIBitString.Reader.New(s)
    print ("Our UInt12 was " .. tostring( reader:ReadUInt12() )
    print ("Our Vector was " .. tostring( reader:ReadVector3()) )


--]]

---@type Base64
local Base64 = require(script:GetCustomProperty("Base64"))

---@class BitStringWriter
local BitStringWriter = {}
BitStringWriter.__index = BitStringWriter

---@class BitStringReader
local BitStringReader = {}
BitStringReader.__index = BitStringReader

------------------------------------------------------------
---Creates a new BitStringWriter
---@return BitStringWriter
function BitStringWriter.New()
    local o = {}
    o.stream = ""
    setmetatable(o, BitStringWriter)
    return o
end

---Creates a new BitStringReader copying the bitstring from the Writer
---@return BitStringReader
function BitStringWriter:GetBitStringReader()
    return BitStringReader.New(self:GetString())
end

function BitStringWriter:_AppendString(s)
    self.stream = self.stream .. s
end

---@param uint6 integer
function BitStringWriter:WriteUInt6(uint6)
    self:_AppendString(Base64.Encode6(uint6))
end

---@param uint12 integer
function BitStringWriter:WriteUInt12(uint12)
    self:_AppendString(Base64.Encode12(uint12))
end

---@param uint18 integer
function BitStringWriter:WriteUInt18(uint18)
    self:_AppendString(Base64.Encode18(uint18))
end

---@param uint24 integer
function BitStringWriter:WriteUInt24(uint24)
    self:_AppendString(Base64.Encode24(uint24))
end

---@param uint30 integer
function BitStringWriter:WriteUInt30(uint30)
    self:_AppendString(Base64.Encode30(uint30))
end

---@param uint36 integer
function BitStringWriter:WriteUInt36(uint36)
    self:_AppendString(Base64.Encode36(uint36))
end

---@param v Vector3
function BitStringWriter:WriteVector3(v)
    self:_AppendString(Base64.EncodeVector3(v))
end

---@param r Rotation
function BitStringWriter:WriteRotation(r)
    self:_AppendString(Base64.EncodeRotation(r))
end

---@param x number @a float between 0 and 1 will be converted to a number between 0 and 63
function BitStringWriter:WriteNormalizedFloat6(x)
    assert(x >= 0 and x <=1)
    local integer = CoreMath.Clamp(CoreMath.Round(x*63), 0, 63)
    self:WriteUInt6(integer)
end

---@param s string
function BitStringWriter:WriteString(s)
    local len = string.len(s)
    local maxLen = 1<<12
    assert(len>=0 and len < maxLen)
    self:WriteUInt12(len)
    if len > 0 then
        self:_AppendString(s)
    end
end

---@return string
function BitStringWriter:GetString()
    return self.stream
end

------------------------------------------------------------
---Creates a new BitStringReader
---@return BitStringReader
function BitStringReader.New(s)
    local o = {}
    o.stream = s
    o.readIndex = 1
    setmetatable(o, BitStringReader)
    return o
end

function BitStringReader:_ReadString(charCount)
    local s = string.sub(self.stream, self.readIndex, self.readIndex+charCount-1)
    self.readIndex = self.readIndex + charCount
    return s
end

---@return integer
function BitStringReader:ReadUInt6()
    local charCount = 1
    local s = self:_ReadString(charCount)
    return Base64.Decode6(s)
end

---@return integer
function BitStringReader:ReadUInt12()
    local charCount = 2
    local s = self:_ReadString(charCount)
    return Base64.Decode12(s)
end

---@return integer
function BitStringReader:ReadUInt18()
    local charCount = 3
    local s = self:_ReadString(charCount)
    return Base64.Decode18(s)
end

---@return integer
function BitStringReader:ReadUInt24()
    local charCount = 4
    local s = self:_ReadString(charCount)
    return Base64.Decode24(s)
end

---@return integer
function BitStringReader:ReadUInt30()
    local charCount = 5
    local s = self:_ReadString(charCount)
    return Base64.Decode30(s)
end

---@return integer
function BitStringReader:ReadUInt36()
    local charCount = 6
    local s = self:_ReadString(charCount)
    return Base64.Decode36(s)
end

---@return Vector3
function BitStringReader:ReadVector3()
    local charCount = 12
    local s = self:_ReadString(charCount)
    return Base64.DecodeVector3(s)
end

---@return Rotation
function BitStringReader:ReadRotation()
    local charCount = 12
    local s = self:_ReadString(charCount)
    return Base64.DecodeRotation(s)
end

---@return float
function BitStringReader:ReadNormalizedFloat6()
    local integer = self:ReadUInt6()
    return CoreMath.Clamp(integer / 63)
end

---@return string
function BitStringReader:ReadString()
    local charCount = self:ReadUInt12()
    if charCount == 0 then
        return ""
    else
        return self:_ReadString(charCount)
    end
end

---@return string
function BitStringReader:GetString()
    return self.stream
end

function BitStringReader:BitsAvailable()
    if string.len(self.stream) <= self.readIndex then
        return false
    else
        return true
    end
end

------------------------------------------------------------

---@class APIBitString
local API = {
    Writer = BitStringWriter,
    Reader = BitStringReader
}

return API