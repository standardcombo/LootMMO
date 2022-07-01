local denominations = {
    1,
    5,
    10,
    25,
    50,
    100,
    500,
    1000,
    5000,
    10000,
    50000,
    100000
}

local API = {}

function API.DenominateValue(value,split)
    if value <= 0 then
        return
    end
    if value > 100000 then
        return {100000}
    end
    local function CheckValues(val) 
        if val == 5 then return 2 end 
        if val <= 0 then return end
        local index = 1
        if val * 2 <= denominations[index] then
            return index
        end

        for i = 1, #denominations do
            if  (val) >denominations[i] and  ((val *2 ) > denominations[i] or split) then
                index = i
            else
                return index , math.floor( val/denominations[index])
            end
        end
    end

    local denoms = {}

    local dup = value
    while dup > 0 do
        local index, amount = CheckValues(dup)
        amount = amount or 1 
        if index then
            for i = 1,amount do 
                dup = dup - denominations[index]
                table.insert(denoms, denominations[index])
            end
        end
    end

    return denoms
end
 local test = {}--API.DenominateValue(30,false)
 for key, value in pairs(test) do
     print(value)
 end
return API
