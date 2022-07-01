-- Custom
local _1M_CHIP = script:GetCustomProperty("1m_Chip")
local _100000_CHIP = script:GetCustomProperty('100000Chip')
local _10000_CHIP = script:GetCustomProperty('10000Chip')
local _1000_CHIP = script:GetCustomProperty('1000Chip')
local _100_CHIP = script:GetCustomProperty('100Chip')
local _10_CHIP = script:GetCustomProperty('10Chip')
local _1_CHIP = script:GetCustomProperty('1Chip')
local _25_CHIP = script:GetCustomProperty('25Chip')
local _500K_CHIP = script:GetCustomProperty("500k_Chip")
local _50000_CHIP = script:GetCustomProperty('50000Chip')
local _5000_CHIP = script:GetCustomProperty('5000Chip')
local _500_CHIP = script:GetCustomProperty('500Chip')
local _50_CHIP = script:GetCustomProperty('50Chip')
local _5_CHIP = script:GetCustomProperty('5Chip')
local EMPTY_PANEL = script:GetCustomProperty('EmptyPanel')
local CHIP_HIT = script:GetCustomProperty('ChipHit')

local chipValues = {
    1000000,
    500000,
    100000,
    50000,
    10000,
    5000,
    1000,
    500,
    100,
    50,
    25,
    10,
    5,
    1
}

local valueTable = {
    [1000000] = _1M_CHIP,
    [500000] = _500K_CHIP,
    [100000] = _100000_CHIP,
    [50000] = _50000_CHIP,
    [10000] = _10000_CHIP,
    [5000] = _5000_CHIP,
    [1000] = _1000_CHIP,
    [500] = _500_CHIP,
    [100] = _100_CHIP,
    [50] = _50_CHIP,
    [25] = _25_CHIP,
    [10] = _10_CHIP,
    [5] = _5_CHIP,
    [1] = _1_CHIP,
}

local chipheight = 4
local API = {}

local function GetChips(value)
    local chips = {}
    for _, chipValue in ipairs(chipValues) do
        if value == 0 then
            break
        end

        local floorDiv = value // chipValue
        if floorDiv ~= 0 then
            for i=1, floorDiv do
                table.insert(chips, chipValue)
            end

            value = math.fmod(value, chipValue)
        end
    end

    return chips
end

function API.RenderChips(value)
    if value <= 0 then
        return {}
    end
    local ChipSpawn = {}
    local chips = GetChips(value)
    local lastChip = nil
    local xoffset = 0
    local scale = Vector3.New(0.2, .2, 0.036) * .75
    for index, chipVal in ipairs(chips) do
        if valueTable[chipVal] then
            if (index % chipheight) == 0 then
                xoffset = xoffset + 36 * math.floor(index / chipheight)
            end

            local chip = World.SpawnAsset(valueTable[chipVal], {scale = scale})

            table.insert(ChipSpawn, chip)
        end
    end
    return ChipSpawn
end

return API
