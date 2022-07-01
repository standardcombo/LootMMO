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
--- @type Card_Database_API
local CardCC_DatabaseApi = script:GetCustomProperty('CardCC_DatabaseApi').defaultDatabase

--- @type Deck_API
local Api = {}

local Deck = {
    inventory = {},
    size = 0,
    maxCards = 20
}
Deck.__index = Deck
function Deck:Add(card,index)
    index = index or 1
    if self.size > self.maxCards then return end 
    table.insert(self.inventory,index, card)
    self.size = #self.inventory
    return true
end

function Deck:Remove(index)
    table.remove(self.inventory, index)
end

function Deck:Clear()
    self.inventory = {}
end

function Deck:Pack()
    local packed = {}
    for key, value in ipairs(self.inventory) do
        table.insert(packed, value)
    end
    return packed
end

function Deck:UnPack(packed)
    local newInventory = {}
    for key, value in ipairs(packed) do
        newInventory[key] = CardCC_DatabaseApi:WaitForCardById(value, 0)
    end
    self.inventory = newInventory
end
function Deck:Shuffle()
    for i = #self.inventory, 2, -1 do
        local j = math.random(#self.inventory)
        self.inventory[i], self.inventory[j] = self.inventory[j], self.inventory[i]
    end 
end

function Api.Pack(curDeck)
    local packed = {}
    for key, value in ipairs(curDeck.inventory) do
        table.insert(packed, value)
    end
    return packed
end

function Api.UnPack(packed)
    local newInventory = {}
    for key, value in ipairs(packed) do
        newInventory[key] = CardCC_DatabaseApi:WaitForCardById(value, 0)
    end
    return newInventory
end
function Api.New(OptinalParams)
    OptinalParams = OptinalParams or {}
    local newDeck = setmetatable({}, Deck)
    newDeck.inventory = {}
    newDeck.maxCards = OptinalParams.maxCards or newDeck.maxCards 
    return newDeck
end

return Api
