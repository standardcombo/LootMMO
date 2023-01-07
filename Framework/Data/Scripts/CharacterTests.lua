--[[
	Character Cheats 
	v1.1.0 - 2022/11/14
	by: blaking707, CommanderFoo, Luapi
	
	To help with testing various parts of the game, cheats can be used to give
	materials, loot, and other things. These commands can only be used by players
	who are in the AdminList table.

	Cheats are enabled in local preview by default. But for multiplayer, you will 
	need to add your Core username to the AdminList below in the script.

	Commands:

	/help
		Lists all the commands in the Cheats table along with the description.

		Example: /help

	/class
		Changes the class of the character. See the Class_Description data table
		for a list of class names that can be used.

		Example: /class Mage

	/newchar
		Creates a new character. This will reset things like XP, upgrade points, but
		not quest progress.

		Example: /newchar

	/stat
		Modify the stats of the character. See the Class_Stats table for the colums 
		that can be used.

		Example: /stat "B" 5000

	/addpoint
		Adds an upgrade point for the character to spend on an ability.

		Example: /addpoint
	
	/additem
		Adds an item or material to the players inventory if there is space
		in the stack. See the Loot Items and Loot Materials data tables for
		the names of items that can be added.

		Overflow isn't supported. Check existing inventory stack size and add
		to that to make up to 99.

		Example: /additem "Titanium Ring" 1
		Example: /additem "Metal" 99
		Example: /additem "Coins" 10000

	/removeitem
		Removes an item from the players inventory. See the Loot Items and Loot
		Materials data tables.

		Example: /removeitem "Metal" 1
	
	/classes
		Lists all the classes available in the Chat window.

		Example: /classes

	/mystats
		Lists all the stats and level for the character in the Chat window.

		Example: /mystats

	/cheat
		Sets character to max rank and unlocks all abilities for that class.

		Example: /cheat

	/addxp
		Adds XP to the character.

		/addxp 500

	/teleport
		Teleports to various locations around the Tavern to speed up testing. Add 
		more locations in the Teleport Locations group inside the Cheats script in
		the Hierarchy.

		Locations: Cauldron, Crafting, Map, Workshop, Pinball, Chairs, Bar, Spawn

		Example: /teleport Chairs
		Example: /tp Spawn
--]]

local TELEPORT_LOCATIONS = script:GetCustomProperty("TeleportLocations"):WaitForObject()

while not _G["Character.Constructor"] do
	Task.Wait()
end

--- Add/Remove player names to the table below that can use cheats.
--- Note: Local preview mode doesn't need names added.
local AdminList = {
	["CommanderFoo"] = true,
	["Luapi"] = true,
	["LootMMO"] = true,
}

local character = _G["Character.Constructor"]
local SaveAPI   = _G["Character.SaveApi"]
local CLASS     = _G["Character.Classes"]
local Itemdat   = _G["Items"]
local materials = _G["Items.Materials"]
local cheats    = {}

cheats = {
	["/help"] = {
		func = function()
			local cmds = "\n"
			for key, value in pairs(cheats) do
				cmds = string.format("%s%s: %s \n", cmds, key, value.description or "")
			end
			Chat.BroadcastMessage(cmds)
		end,
		description = "Returns all Commands",
	},
	["/class"] = {
		func = function(player, _, splitString)
			if not splitString[2] then return end
			local newCharacter = _G["Character.EquipAPI"].GetCurrentCharacter(player)
			local class = newCharacter:GetComponent("Class")
			if class then
				class:SetClass(splitString[2])
			end
		end,
		description = "Sets Class for player",
	},
	["/newchar"] = {
		func = function(player)
			local newCharacter = character.NewCharacter()
			newCharacter:SetOwner(player)
		end,
		description = "Sets new Character",
	},
	["/stat"] = {
		func = function(player, message)
			local newCharacter = _G["Character.EquipAPI"].GetCurrentCharacter(player)
			local Ability = { CoreString.Split(message, '"') }
			if not Ability[2] then return end
			local stats = newCharacter:GetComponent("Stats")
			Ability[3] = CoreString.Trim(Ability[3])
			if stats then
				stats:SetTempStat(Ability[2], tonumber(Ability[3]))
				stats:SetStat(Ability[2], tonumber(Ability[3]))
			end
		end,
		description = "set stat",
	},
	["/addpoint"] = {
		func = function(player)
			local newCharacter = _G["Character.EquipAPI"].GetCurrentCharacter(player)
			local points = newCharacter:GetComponent("Points")
			if points then
				points:AddPoint()
			end
		end,
		description = "Add points",
	},
	["/additem"] = {
		func = function(player, message)
			local newCharacter = _G["Character.EquipAPI"].GetCurrentCharacter(player)
			local Inventory = newCharacter:GetComponent("Inventory")
			local itemstring = { CoreString.Split(message, '"') }
			local iteminfo = Itemdat.GetDefinition(itemstring[2], true) or materials.GetDefinition(itemstring[2], true)
			if iteminfo then
				Inventory:GetInventory():AddItem(iteminfo["itemAsset"], { count = tonumber(itemstring[3]) or 1 })
			end
		end,
		description = "Add items",
	},
	["/removeitem"] = {
		func = function(player, message)
			local newCharacter = _G["Character.EquipAPI"].GetCurrentCharacter(player)
			local Inventory = newCharacter:GetComponent("Inventory")
			local itemstring = { CoreString.Split(message, '"') }
			local iteminfo = Itemdat.GetDefinition(itemstring[2], true) or materials.GetDefinition(itemstring[2], true)
			if iteminfo then
				Inventory:GetInventory():RemoveItem(iteminfo["itemAsset"], { count = tonumber(itemstring[3]) or 1 })
			end
		end,
		description = "Removes items",
	},
	["/classes"] = {
		func = function(player)
			local message = ""
			for key, value in pairs(CLASS.GetClasses()) do
				message = message .. key .. " | "
			end
			Chat.BroadcastMessage(message)
		end,
		description = "Returns all Classes",
	},
	["/mystats"] = {
		func = function(player)
			local newCharacter = _G["Character.EquipAPI"].GetCurrentCharacter(player)
			local stats = newCharacter:GetComponent("Stats")
			local message = ""
			for key, value in pairs(stats:GetTempStats()) do
				message = message .. key .. value .. " | "
			end
			Chat.BroadcastMessage(message)
		end,
		description = "Returns all Stats",
	},
	["/cheat"] = {
		func = function(player)
			local newCharacter = _G["Character.EquipAPI"].GetCurrentCharacter(player)
			local level = newCharacter:GetComponent("Level")
			local progression = newCharacter:GetComponent("Progression")
			level:AddXP(100000000)
			progression:SetProgression("AcceptSlot1", true)
			progression:SetProgression("AcceptSlot2", true)
			progression:SetProgression("AcceptSlot3", true)
			progression:SetProgression("AcceptSlot4", true)
			progression:SetProgression("AcceptSlot5", true)
			progression:SetProgression("AcceptPotion1", true)
			progression:SetProgression("AcceptPotion2", true)
			progression:SetProgression("AcceptPotion3", true)
		end,
		description = "Cheat character to max",
	},
	["/addxp"] = {
		func = function(player, _, splitString)
			if not tonumber(splitString[2]) then return end
			local newCharacter = _G["Character.EquipAPI"].GetCurrentCharacter(player)
			local level = newCharacter:GetComponent("Level")
			level:AddXP(tonumber(splitString[2]))
		end,
		description = "Add xp to character",
	},
	["/teleport"] = {
		func = function(player, _, splitString)
			if not splitString[2] then return end
			local location = TELEPORT_LOCATIONS:FindChildByName(splitString[2])

			if location ~= nil then
				player:SetWorldPosition(location:GetWorldPosition())
				player:SetWorldRotation(location:GetWorldRotation())
			end
		end,
		description = "Teleports to various areas for quick testing.",
	},
}

function OnReceiveMessage(player, params)
	if not AdminList[player.name] and not Environment.IsPreview() then return end
	local splitString = { CoreString.Split(params.message, " ") }
	
	if splitString[1] == "/tp" then -- Associate abbreviated commands to full length cheat commands
		splitString[1] = "/teleport"
	end
	
	if cheats[splitString[1]] then
		Task.Spawn(function()
			-- We need to put this inside a Task.Spawn because Hook listeners have certain limitations.
			-- From the point of view of cheats, we can't predict other implementations or debugging.
			cheats[splitString[1]].func(player, params.message, splitString)
		end)
		return
	end
	Chat.BroadcastMessage("No command found" .. splitString[1])
end

Chat.receiveMessageHook:Connect(OnReceiveMessage)