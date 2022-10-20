--[[
Copyright 2020 Manticore Games, Inc.

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
    Automatically detects siblings with names that match socket names on the
	equipment owner and attaches those groups to the player sockets.
	E.g. A group named "head" will attach to the player's head.
]]

local EQUIPMENT = script:FindAncestorByType('Equipment')
if not EQUIPMENT then
    error(script.name .. " should be part of Equipment object hierarchy.")
end
local COSTUME_FOLDER = script:GetCustomProperty("Costume"):WaitForObject()

local equipped = false
local attachedCostume = {}

-- nil OnEquipped(Equipment, Player)
function OnEquipped(equipment, player)
    if not Object.IsValid(COSTUME_FOLDER) then return end
    if not Object.IsValid(player) or not player:IsA("Player") then return end

    for _, obj in ipairs(COSTUME_FOLDER:GetChildren()) do
        obj:AttachToPlayer(player, obj.name)
        table.insert(attachedCostume, obj)
    end
    equipped = true
end

-- nil OnUnequipped(Equipment, Player)
function OnUnequipped(equipment, player)
    for _, obj in ipairs(attachedCostume) do
        obj:Detach()
        obj:Destroy()
    end
    equipped = false
end

-- nil Tick()
-- Always check if the costunm is equipped for every client (if the equipment has owner)
function Tick()
    if not equipped and Object.IsValid(EQUIPMENT.owner) then
        OnEquipped(EQUIPMENT, EQUIPMENT.owner)
    end
end

-- Initialize
EQUIPMENT.equippedEvent:Connect(OnEquipped)
EQUIPMENT.unequippedEvent:Connect(OnUnequipped)