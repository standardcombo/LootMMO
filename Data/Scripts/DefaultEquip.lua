
local SORCERER = {
	"Shift", "Teleport",
	"1", "Tornado",
	"2", "Animorph Potion",
	"3", "Iceberg",
	"4", "Pyroblast",
}

local FIGHTER = {
	"Shift", "Roll",
	"1", "Rock Strike",
	"2", "Stone Wall",
	"3", "Landslide",
	"4", "Boulder Throw",
}

local SETUP = FIGHTER

--[[
Game.playerJoinedEvent:Connect(function(player)
    Events.Broadcast("Equipper_Equip", player, "Pyroblast", "1" )
    Events.Broadcast("Equipper_Equip", player, "Teleport", "2" )
    Events.Broadcast("Equipper_Equip", player, "Tornado", "3" )
    Events.Broadcast("Equipper_Equip", player, "Roll", "Shift" )
end )
]]

Game.playerJoinedEvent:Connect(function(player)
	for i = 1,#SETUP,2 do
		local key = SETUP[i]
		local ability = SETUP[i + 1]
    	Events.Broadcast("Equipper_Equip", player, ability, key)
    end
end )

