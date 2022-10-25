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

---@type Attribute
local ATTRIBUTE = require(script:GetCustomProperty("APIAttribute"))

---Helper function to split up a string by commas
---@param s string
---@return string[]
function SplitStringByCommas(s)
    local results = {}
    for _, subString in pairs( { CoreString.Split(s, ",", { removeEmptyResults = true }) }) do
        table.insert(results, CoreString.Trim(subString))
    end
    return results
end

---Helper function to shallow copy a table
---@param t table
---@return table
function ShallowCopyTable(t)
    local copy = {}
    for k, v in pairs(t) do
        copy[k] = v
    end
    return copy
end

---@class APIModifyDrops
local API = {}

function API.ApplyDropModifiers(drops, appendDrops, dropModifiers)
    -- Shallow copy all the drops
    local newDrops = {}
    for dropName, dropData in pairs(drops) do
        local copyDropData = ShallowCopyTable(dropData)
        newDrops[dropName] = copyDropData
    end

    -- Add any bonus drops inside dropModifiers
    for dropName, dropData in pairs(appendDrops) do
        local copyDropData = ShallowCopyTable(dropData)
        newDrops[dropName] = copyDropData
    end

    -- Setup attributes for all our drops
    local nameToDropAttributes = {}
    for dropName, dropData in pairs(newDrops) do
        nameToDropAttributes[dropName] = {
            minAmount = ATTRIBUTE.New(dropData.MinAmount),
            maxAmount = ATTRIBUTE.New(dropData.MaxAmount),
            weightedChance = ATTRIBUTE.New(dropData.WeightedChance),
            percentChance = ATTRIBUTE.New(dropData.PercentChance),
        }
    end

    -- Loop over all the drop modifiers to find
    for _, dropModifier in pairs(dropModifiers) do
        local modifyDropData = dropModifier.Data
        local stacks = dropModifier.Stacks
        if modifyDropData.Drops then
            for _, dropName in pairs(SplitStringByCommas(modifyDropData.Drops)) do
                local data = nameToDropAttributes[dropName]
                if data then
                    if modifyDropData.MinAmountMultiplyByStacks then
                        data.minAmount:IncreaseAddition(modifyDropData.MinAmountAdd * stacks)
                        data.minAmount:IncreaseMultiplier(modifyDropData.MinAmountMultiplier * stacks)
                    else
                        data.minAmount:IncreaseAddition(modifyDropData.MinAmountAdd)
                        data.minAmount:IncreaseMultiplier(modifyDropData.MinAmountMultiplier)
                    end

                    if modifyDropData.MaxAmountMultiplyByStacks then
                        data.maxAmount:IncreaseAddition(modifyDropData.MaxAmountAdd * stacks)
                        data.maxAmount:IncreaseMultiplier(modifyDropData.MaxAmountMultiplier * stacks)
                    else
                        data.maxAmount:IncreaseAddition(modifyDropData.MaxAmountAdd)
                        data.maxAmount:IncreaseMultiplier(modifyDropData.MaxAmountMultiplier)
                    end

                    if modifyDropData.PercentChanceMultiplyByStacks then
                        data.weightedChance:IncreaseAddition(modifyDropData.PercentChanceAdd * stacks)
                        data.weightedChance:IncreaseMultiplier(modifyDropData.PercentChanceMultiplier * stacks)
                    else
                        data.weightedChance:IncreaseAddition(modifyDropData.PercentChanceAdd)
                        data.weightedChance:IncreaseMultiplier(modifyDropData.PercentChanceMultiplier)
                    end

                    if modifyDropData.WeightedChanceMultiplyByStacks then
                        data.percentChance:IncreaseAddition(modifyDropData.WeightedChanceAdd * stacks)
                        data.percentChance:IncreaseMultiplier(modifyDropData.WeightedChanceMultiplier * stacks)
                    else
                        data.percentChance:IncreaseAddition(modifyDropData.WeightedChanceAdd)
                        data.percentChance:IncreaseMultiplier(modifyDropData.WeightedChanceMultiplier)
                    end
                end
            end
        end
    end

    -- Loop over all the attributes and update the new drops
    for dropName, dropAttributes in pairs(nameToDropAttributes) do
        local dropData = newDrops[dropName]
        if dropData then
            dropData.MinAmount = dropAttributes.minAmount:GetTotal()
            dropData.MaxAmount = dropAttributes.maxAmount:GetTotal()
            dropData.WeightedChance = dropAttributes.weightedChance:GetTotal()
            dropData.PercentChance = dropAttributes.percentChance:GetTotal()
        end
    end

    return newDrops
end

return API