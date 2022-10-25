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
    This script handles drop calculations. Drop data is expected to be in the following format:

    Drops
    |___ Drop 1
    |   |___ ItemId (string)
    |   |___ CurrencyId (string)
    |   |___ MinAmount (integer)
    |   |___ MaxAmount (integer)
    |   |___ WeightedChance (integer)
    |   |___ PercentChance (float)
    |___ Drop 2
    |   |___ ItemId (string)
    |   |___ CurrencyId (string)
    |   |___ MinAmount (integer)
    |   |___ MaxAmount (integer)
    |   |___ WeightedChance (integer)
    |   |___ PercentChance (float)
    |___ etc...
--]]

---@class APIDrops
local API = {}

---Returns a table of Item and Currency ids and amounts if successfully rolled.
---@param drops table
---@param amount integer
---@param results DropResults|nil
---@return DropResults
function API.CalculateDrops(drops, amount, results)
    amount = amount or 1

    local percentDrops = {}
    local weightedDrops = {}

    ---@class DropResults
    results = results or {}
    results.Items = results.Items or {}
    results.Currencies = results.Currencies or {}
    
    -- Split drops based on type
    for _, dropData in pairs(drops) do
        if type(dropData) == "table" then
            if dropData.ItemId ~= "" or dropData.CurrencyId ~= "" then
                local weightedChance = dropData.WeightedChance or 0

                if weightedChance > 0 then
                    table.insert(weightedDrops, dropData)
                else
                    table.insert(percentDrops, dropData)
                end
            end
        end
    end

    -- Roll weighted drops
    if #weightedDrops > 0 then
        local totalWeight = 0
        for _, dropData in ipairs(weightedDrops) do
            totalWeight = totalWeight + dropData.WeightedChance
        end

        for i = 1, amount, 1 do
            local roll = math.random(1, totalWeight)
            local currentWeight = 0
            for _, dropData in ipairs(weightedDrops) do
                currentWeight = currentWeight + dropData.WeightedChance
                if currentWeight >= roll then
                    if dropData.ItemId ~= "" then
                        if not results.Items[dropData.ItemId] then
                            results.Items[dropData.ItemId] = 0
                        end
                        results.Items[dropData.ItemId] = results.Items[dropData.ItemId] + GetAmount(dropData)
                    elseif dropData.CurrencyId ~= "" then
                        if not results.Currencies[dropData.CurrencyId] then
                            results.Currencies[dropData.CurrencyId] = 0
                        end
                        results.Currencies[dropData.CurrencyId] = results.Currencies[dropData.CurrencyId] + GetAmount(dropData)
                    end
                    break
                end
            end
        end
    end

    -- Roll percent drops
    if #percentDrops > 0 then
        for _, dropData in ipairs(percentDrops) do
            local percentChance = CoreMath.Clamp(dropData.PercentChance or 0, 0, 100.0)

            for i = 1, amount, 1 do
                local roll = math.random(0.0, 100.0)

                if roll <= percentChance then
                    if dropData.ItemId ~= "" then
                        if not results.Items[dropData.ItemId] then
                            results.Items[dropData.ItemId] = 0
                        end
                        results.Items[dropData.ItemId] = results.Items[dropData.ItemId] + GetAmount(dropData)
                    elseif dropData.CurrencyId ~= "" then
                        if not results.Currencies[dropData.CurrencyId] then
                            results.Currencies[dropData.CurrencyId] = 0
                        end
                        results.Currencies[dropData.CurrencyId] = results.Currencies[dropData.CurrencyId] + GetAmount(dropData)
                    end
                end
            end
        end
    end

    return results
end

---Returns a table containing Item ids and their percent chance of dropping.
---@param drops table
---@return PercentResults
function API.GetDropPercents(drops)
    ---@class PercentResults
    local percentResults = {
        Items = {},
        Currencies = {}
    }

    -- Get the total weight for use later
    local totalWeight = 0
    for _, dropData in pairs(drops) do
        if type(dropData) == "table" then
            if (dropData.ItemId ~= "" or dropData.CurrencyId ~= "") and dropData.WeightedChance and dropData.WeightedChance > 0 then
                totalWeight = totalWeight + dropData.WeightedChance
            end
        end
    end

    -- Collect all of the percent chances for each Item
    for _, dropData in pairs(drops) do
        if type(dropData) == "table" then
            if dropData.ItemId ~= "" or dropData.CurrencyId ~= "" then
                if dropData.ItemId ~= "" and not percentResults.Items[dropData.ItemId] then
                    percentResults.Items[dropData.ItemId] = {}
                elseif dropData.CurrencyId ~= "" and not percentResults.Currencies[dropData.CurrencyId] then
                    percentResults.Currencies[dropData.CurrencyId] = {}
                end

                if dropData.WeightedChance and dropData.WeightedChance > 0 then
                    if dropData.ItemId ~= "" then
                        table.insert(percentResults.Items[dropData.ItemId], {
                            MinAmount = dropData.MinAmount,
                            MaxAmount = dropData.MaxAmount,
                            Percent = dropData.WeightedChance / totalWeight
                        })
                    elseif dropData.CurrencyId ~= "" then
                        table.insert(percentResults.Currencies[dropData.CurrencyId], {
                            MinAmount = dropData.MinAmount,
                            MaxAmount = dropData.MaxAmount,
                            Percent = dropData.WeightedChance / totalWeight
                        })
                    end
                else
                    if dropData.ItemId ~= "" then
                        table.insert(percentResults.Items[dropData.ItemId], {
                            MinAmount = dropData.MinAmount,
                            MaxAmount = dropData.MaxAmount,
                            Percent = (dropData.PercentChance or 0) / 100.0
                        })
                    elseif dropData.CurrencyId ~= "" then
                        table.insert(percentResults.Currencies[dropData.CurrencyId], {
                            MinAmount = dropData.MinAmount,
                            MaxAmount = dropData.MaxAmount,
                            Percent = (dropData.PercentChance or 0) / 100.0
                        })
                    end
                end
            end
        end
    end

    -- Iterate over each item and calculate the actual chance of it dropping (Handles multiple drops with the same id)
    local results = {
        Items = {},
        Currencies = {}
    }

    for itemId, percentData in pairs(percentResults.Items) do
        local min, max, percent = GetActualValues(percentData)
        results.Items[itemId] = {
            MinAmount = min,
            MaxAmount = max,
            Percent = percent
        }
    end

    for currencyId, percentData in pairs(percentResults.Currencies) do
        local min, max, percent = GetActualValues(percentData)
        results.Currencies[currencyId] = {
            MinAmount = min,
            MaxAmount = max,
            Percent = percent
        }
    end

    return results
end

function GetActualValues(percentData)
    local min = 0
    local max = 0
    local inversePercent

    for _, percentDataItem in ipairs(percentData) do
        min = min + percentDataItem.MinAmount
        max = max + percentDataItem.MaxAmount

        if inversePercent then
            inversePercent = inversePercent * (1.0 - percentDataItem.Percent)
        else
            inversePercent = (1.0 - percentDataItem.Percent)
        end
    end

    return min, max, 1.0 - inversePercent
end

---Returns a random amount between the minimum and maximum amounts (inclusive) on a drop data.
---@param dropData table
---@return integer
function GetAmount(dropData)
    local min = dropData.MinAmount or 1
    local max = dropData.MaxAmount or 1

    if min < 0 then
        min = 0
    end

    if max < min then
        max = min
    end

    return math.random(min, max)
end

return API