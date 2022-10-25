--[[
Bitfields library
v1.0
Created by Chris
Lua implementation of a fixed-length bitfield.  Handles
easy get/set, and exports to a CORE-safe string.
(i. e. no null characters or extended ASCII)
Sample uses:
local BF = require(prop_Bitfields)  -- this library needs to be required.
local myBitfield = BF.New(10) -- 10 bits long
myBitfield.Reset(false)  -- Set everything to false.
myBitfield.Set(2, true)  -- Sets the 2nd bit to true
print(myBitfield.Get(2)) -- Should return true
print(myBitfield)        -- Print out a human-readable version of the bitfield.
--]]


local BITS_PER_CHAR = 6	-- you read that right. :(
local DEFAULT_CHAR = string.char(64)
local FULLY_SET_CHAR = string.char(127)

function CalculateRequiredChars(bits)
	return math.ceil(bits / BITS_PER_CHAR)
end


function New(bits, startingStr)
	local charsRequired = CalculateRequiredChars(bits)
	if startingStr == nil then
		startingStr = string.rep(DEFAULT_CHAR, charsRequired)
	end
	assert(startingStr:len() >= charsRequired)

	local newBF = {bits = bits, raw = startingStr}
	setmetatable(newBF, {__index = BF, __tostring = BF.AsString})
	return newBF
end


----------------------------

BF = {}

-- Helper function, not publicly exposed.
function GetBitLocation(index)
	-- This is 1-based, because it has to interact with lua string calls
	local charIndex = math.floor(index / BITS_PER_CHAR) + 1
	-- This is zero based because it only interacts with bitshifts.
	local bitIndex = (index % BITS_PER_CHAR)
	return charIndex, bitIndex
end

-- Helper function to make debugging easier.
function BitsAsString(n, total)
	if total == nil then total = 6 end
	local s = ""
	while n > 0 do
		if n & 1 ~= 0 then
			s = "1" .. s
		else
			s = "0" .. s
		end
		n = n >> 1
	end
	if s:len() < total then
		s = string.rep("0", total - s:len()) .. s
	end
	return s
end

function BF.AsString(self)
	local result = ""
	for i = 1, self.raw:len() do
		result = BitsAsString(self.raw:byte(i) & DEFAULT_CHAR:byte(1) - 1) .. result
	end
	return result
end


function BF.Set(self, index, value)
	local charIndex, bitIndex = GetBitLocation(index)
	assert(charIndex <= self.raw:len())

	local newBit = 0
	if value then newBit = 1 end
	local byte = self.raw:byte(charIndex)
	byte = byte & ~(1 << bitIndex)
	byte = byte | newBit << bitIndex

	self.raw = self.raw:sub(0, charIndex - 1) .. string.char(byte) .. self.raw:sub(charIndex + 1)
end


function BF.Get(self, index)
	local charIndex, bitIndex = GetBitLocation(index)
	assert(charIndex <= self.raw:len())
	local byte = self.raw:byte(charIndex)
	return byte & (1 << bitIndex) ~= 0
end

function BF.Reset(self, newValue)
	if newValue then
		self.raw = string.rep(FULLY_SET_CHAR, self.raw:len())
	else
		self.raw = string.rep(DEFAULT_CHAR, self.raw:len())
	end
end


function BF.Resize(self, newSize)
	local charsReq = CalculateRequiredChars(newSize)
	if charsReq > self.raw:len() then
		self.raw = self.raw .. string.rep(DEFAULT_CHAR, charsReq - self.raw:len())
	else
		self.raw = self.raw:sub(1, charsReq)
	end
	self.bits = newSize
end



return {
	New = New
}