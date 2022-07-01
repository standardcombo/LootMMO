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
-------------------------------------------------------------------------------
-- Math_Utilities
-------------------------------------------------------------------------------
--- @type Math_Utilities
local API = {}
API.version = 0.1
API.name = 'Math_Utilities'
API.desc = 'math utilities'

API.__tostring = function()
    return string.format('%s: %g - %s', API.name, API.version, API.desc)
end
API = setmetatable(API, API)

--- Gets the direction to a vector
--- @param startPos number
--- @param endPos number
--- @return Vector3 Vector3 direction towards
function API.DirectionTo(startPos, endPos)
    return endPos - startPos
end

--- Gets the distance of 2 vectors
--- @param startPos number
--- @param endPos number
--- @return number number distance of 2 vectors
function API.DistanceOf(startPos, endPos)
    return (endPos - startPos).size
end

--- Wraps the value, min-max inclusive.
--- @param value number
--- @param min number
--- @param max number
--- @return number number wrapped value
function API.Wrap(value, min, max)
    if value < min then
        return max - (min - value) % (max - min)
    else
        return min + (value - min) % (max - min)
    end
end 

--- maps a value onto new number values
--- @param value number
--- @param low1 number
--- @param high1 number
--- @param low2 number
--- @param high2 number
--- @return number number mapped number
function API.Map(value, low1, high1, low2, high2)
    return low2 + (value - low1) * (high2 - low2) / (high1 - low1)
end

local perlinHash = {
    151,
    160,
    137,
    91,
    90,
    15,
    131,
    13,
    201,
    95,
    96,
    53,
    194,
    233,
    7,
    225,
    140,
    36,
    103,
    30,
    69,
    142,
    8,
    99,
    37,
    240,
    21,
    10,
    23,
    190,
    6,
    148,
    247,
    120,
    234,
    75,
    0,
    26,
    197,
    62,
    94,
    252,
    219,
    203,
    117,
    35,
    11,
    32,
    57,
    177,
    33,
    88,
    237,
    149,
    56,
    87,
    174,
    20,
    125,
    136,
    171,
    168,
    68,
    175,
    74,
    165,
    71,
    134,
    139,
    48,
    27,
    166,
    77,
    146,
    158,
    231,
    83,
    111,
    229,
    122,
    60,
    211,
    133,
    230,
    220,
    105,
    92,
    41,
    55,
    46,
    245,
    40,
    244,
    102,
    143,
    54,
    65,
    25,
    63,
    161,
    1,
    216,
    80,
    73,
    209,
    76,
    132,
    187,
    208,
    89,
    18,
    169,
    200,
    196,
    135,
    130,
    116,
    188,
    159,
    86,
    164,
    100,
    109,
    198,
    173,
    186,
    3,
    64,
    52,
    217,
    226,
    250,
    124,
    123,
    5,
    202,
    38,
    147,
    118,
    126,
    255,
    82,
    85,
    212,
    207,
    206,
    59,
    227,
    47,
    16,
    58,
    17,
    182,
    189,
    28,
    42,
    223,
    183,
    170,
    213,
    119,
    248,
    152,
    2,
    44,
    154,
    163,
    70,
    221,
    153,
    101,
    155,
    167,
    43,
    172,
    9,
    129,
    22,
    39,
    253,
    19,
    98,
    108,
    110,
    79,
    113,
    224,
    232,
    178,
    185,
    112,
    104,
    218,
    246,
    97,
    228,
    251,
    34,
    242,
    193,
    238,
    210,
    144,
    12,
    191,
    179,
    162,
    241,
    81,
    51,
    145,
    235,
    249,
    14,
    239,
    107,
    49,
    192,
    214,
    31,
    181,
    199,
    106,
    157,
    184,
    84,
    204,
    176,
    115,
    121,
    50,
    45,
    127,
    4,
    150,
    254,
    138,
    236,
    205,
    93,
    222,
    114,
    67,
    29,
    24,
    72,
    243,
    141,
    128,
    195,
    78,
    66,
    215,
    61,
    156,
    180,
    151,
    160,
    137,
    91,
    90,
    15,
    131,
    13,
    201,
    95,
    96,
    53,
    194,
    233,
    7,
    225,
    140,
    36,
    103,
    30,
    69,
    142,
    8,
    99,
    37,
    240,
    21,
    10,
    23,
    190,
    6,
    148,
    247,
    120,
    234,
    75,
    0,
    26,
    197,
    62,
    94,
    252,
    219,
    203,
    117,
    35,
    11,
    32,
    57,
    177,
    33,
    88,
    237,
    149,
    56,
    87,
    174,
    20,
    125,
    136,
    171,
    168,
    68,
    175,
    74,
    165,
    71,
    134,
    139,
    48,
    27,
    166,
    77,
    146,
    158,
    231,
    83,
    111,
    229,
    122,
    60,
    211,
    133,
    230,
    220,
    105,
    92,
    41,
    55,
    46,
    245,
    40,
    244,
    102,
    143,
    54,
    65,
    25,
    63,
    161,
    1,
    216,
    80,
    73,
    209,
    76,
    132,
    187,
    208,
    89,
    18,
    169,
    200,
    196,
    135,
    130,
    116,
    188,
    159,
    86,
    164,
    100,
    109,
    198,
    173,
    186,
    3,
    64,
    52,
    217,
    226,
    250,
    124,
    123,
    5,
    202,
    38,
    147,
    118,
    126,
    255,
    82,
    85,
    212,
    207,
    206,
    59,
    227,
    47,
    16,
    58,
    17,
    182,
    189,
    28,
    42,
    223,
    183,
    170,
    213,
    119,
    248,
    152,
    2,
    44,
    154,
    163,
    70,
    221,
    153,
    101,
    155,
    167,
    43,
    172,
    9,
    129,
    22,
    39,
    253,
    19,
    98,
    108,
    110,
    79,
    113,
    224,
    232,
    178,
    185,
    112,
    104,
    218,
    246,
    97,
    228,
    251,
    34,
    242,
    193,
    238,
    210,
    144,
    12,
    191,
    179,
    162,
    241,
    81,
    51,
    145,
    235,
    249,
    14,
    239,
    107,
    49,
    192,
    214,
    31,
    181,
    199,
    106,
    157,
    184,
    84,
    204,
    176,
    115,
    121,
    50,
    45,
    127,
    4,
    150,
    254,
    138,
    236,
    205,
    93,
    222,
    114,
    67,
    29,
    24,
    72,
    243,
    141,
    128,
    195,
    78,
    66,
    215,
    61,
    156,
    180
}

local Per = {}
for index, value in ipairs(perlinHash) do
    Per[index - 1] = value
end

--- Returns 3D Space Perlin Noise between -1 and 1
--- @param x number
--- @param y number
--- @param z number
--- @return number number
function API.perlin_noise3D(x, y, z)
    local function Fade(t)
        return t ^ 3 * (t * (t * 6 - 15) + 10)
    end
    local function Grad(hash, _x, _y, _z)
        local h = hash & 15
        local u = h < 8 and _x or _y
        local v = h < 4 and _y or ((h == 12 or h == 14) and _x or _z)
        return ((h % 2) == 0 and u or -u) + ((h % 3) == 0 and v or -v)
    end

    x = x or 1
    y = y or 1
    z = z or 1

    local X, Y, Z
    X = math.floor(x)
    Y = math.floor(y)
    Z = math.floor(z)

    x = x - X
    y = y - Y
    z = z - Z

    X = X & 255
    Y = Y & 255
    Z = Z & 255

    local u, v, w
    u = Fade(x)
    v = Fade(y)
    w = Fade(z)

    A = Per[X] + Y
    AA = Per[A] + Z
    AB = Per[A + 1] + Z
    AAA = Per[AA]
    ABA = Per[AB]
    AAB = Per[AA + 1]
    ABB = Per[AB + 1]

    B = Per[X + 1] + Y
    BA = Per[B] + Z
    BB = Per[B + 1] + Z
    BAA = Per[BA]
    BBA = Per[BB]
    BAB = Per[BA + 1]
    BBB = Per[BB + 1]
    local PLerp = CoreMath.Lerp

    return PLerp(
        PLerp(
            PLerp(Grad(AAA, x, y, z), Grad(BAA, x - 1, y, z), u),
            PLerp(Grad(ABA, x, y - 1, z), Grad(BBA, x - 1, y - 1, z), u),
            v
        ),
        PLerp(
            PLerp(Grad(AAB, x, y, z - 1), Grad(BAB, x - 1, y, z - 1), u),
            PLerp(Grad(ABB, x, y - 1, z - 1), Grad(BBB, x - 1, y - 1, z - 1), u),
            v
        ),
        w
    )
end

--- Returns lerp of a value on a curve
--- @param startValue number
--- @param endValue number
--- @param percent number
--- @param curve SimpleCurve
--- @return number number
function API.CurveLerp(startValue, endValue, percent, curve)
    return CoreMath.Lerp(startValue, endValue, curve:GetValue(percent))
end

--- @param points table Vector3 of points
--- @param tolerence number max offset it can be
--- @return boolean boolean are points on the same plane
function API.PointsAreCollinear(points, tolerence)
    if #points < 3 then
        return true
    end

    return true
end

--- @param points table Vector3 of points
--- @param tolerence number max offset it can be
--- @return boolean boolean are points on the same plane
function API.PointsAreCoplanar(points, tolerence)
    if #points < 4 then
        return true
    end

    local Vectors = {}
    for i = 2, #points do
        table.insert(Vectors, points[1] - points[i])
    end

    return true
end

--- Returns the closest point on an infinite line
--- @param vectorStart number
--- @param vectorEnd number
--- @param vectorPoint number
--- @return Vector3 Vector3 closest Point on line
function API.ClosestPointOnInfinateLine(vectorStart, vectorEnd, vectorPoint)
    local directionToLastNode = (vectorEnd - vectorStart)
    local dotA = directionToLastNode:GetNormalized() .. (vectorPoint - vectorStart)
    local intersection = vectorStart + directionToLastNode:GetNormalized() * dotA
    return intersection
end

--- Returns the closest point on a line
--- @param vectorStart number
--- @param vectorEnd number
--- @param vectorPoint number
--- @return Vector3 Vector3 closest Point on line
function API.ClosestPointOnLine(vectorStart, vectorEnd, vectorPoint)
    local directionToLastNode = (vectorEnd - vectorStart)
    local dotA = directionToLastNode:GetNormalized() .. (vectorPoint - vectorStart)
    dotA = math.min(math.max(dotA, 0), directionToLastNode.size)
    local intersection = vectorStart + directionToLastNode:GetNormalized() * dotA
    return intersection
end
---returns the factorial of a number
--- @param val number
--- @return number factorial of value
function API.factorial(val)
    local value = val
    for i = val - 1, 1, -1 do
        value = value * i
    end
    return value
end

return API
