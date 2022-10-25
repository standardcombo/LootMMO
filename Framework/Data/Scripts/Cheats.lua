--[[
===============
Character Cheats 
===============
	AdminList - A list of admins able to use commands.
	
	Cheats exploits used for testing 
-----------------
]]

while not _G["Character.Constructor"] do
	Task.Wait()
end

--- Add/Remove player names to the table below that can use cheats.
--- Note: Local preview mode doesn't need names added.
local AdminList = {
	["blaking707"] = true,
	["CommanderFoo"] = true
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
			local stats = newCharacter:GetComponent("Stats")
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
			local iteminfo = Itemdat.GetDefinition(itemstring[2]) or materials.GetDefinition(itemstring[2])
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
			local iteminfo = Itemdat.GetDefinition(itemstring[2]) or materials.GetDefinition(itemstring[2])
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
	["/progress"] = {
		func = function(player, _, splitString)
			local newCharacter = _G["Character.EquipAPI"].GetCurrentCharacter(player)
			local Progress = newCharacter:GetComponent("Progress")
			Progress:SetProgression(splitString[1], splitString[2] == "true")
		end,
		description = "Set character progress flags",
	},
	["/addxp"] = {
		func = function(player, _, splitString)
			local newCharacter = _G["Character.EquipAPI"].GetCurrentCharacter(player)
			local level = newCharacter:GetComponent("Level")
			level:AddXP(tonumber(splitString[2]))
		end,
		description = "Add xp to character",
	},
}



function OnReceiveMessage(player, params)
	if not AdminList[player.name] and not Environment.IsPreview() then return end
	local splitString = { CoreString.Split(params.message, " ") }

	if cheats[splitString[1]] then
		cheats[splitString[1]].func(player, params.message, splitString)
		return
	end
	Chat.BroadcastMessage("No command found" .. splitString[1])
end

Chat.receiveMessageHook:Connect(OnReceiveMessage)
