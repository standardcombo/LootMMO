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
    If this script is attached to equipment under Server Context, it will automatically save the
    equipment asset id to player storage on equipped event.
    This script makes it possible for an equipment to be saved for the player.

    Notes:
    - This script overrides any other equipment id that has been saved on the same player socket.
      Thus, only 1 equipment can be saved per socket.
    - EquipmentPersisterStarterServer is required in the scene to reequip the saved equipment at the start of the game.
]]

-- Internal custom properties
local EQUIPMENT = script:FindAncestorByType('Equipment')
if not EQUIPMENT:IsA('Equipment') then
    error(script.name .. " should be part of Equipment object hierarchy.")
end

-- nil OnEquipped(Equipment, Player)
function OnEquipped(equipment, player)
    local playerData = Storage.GetPlayerData(player)

	if type(playerData.equipment) ~= "table" then
		playerData.equipment = {}
    end

    -- Saves equipment id to player socket key
    if equipment.sourceTemplateId then
        playerData.equipment[equipment.socket] = equipment.sourceTemplateId
    end

    Storage.SetPlayerData(player, playerData)
end

-- Initialize
EQUIPMENT.equippedEvent:Connect(OnEquipped)