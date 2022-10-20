while not _G["Character.Constructor"] do
	Task.Wait()
end

local character = _G["Character.Constructor"]
local SaveAPI   = _G["Character.SaveApi"]
local CLASS     = _G["Character.Classes"]
local Itemdat   = _G["Items"]
local materials = _G["Items.Materials"]
function OnReceiveMessage(player, params)
	local splitString = { CoreString.Split(params.message, " ") }
	if splitString[1] == "/help" then
		Chat.BroadcastMessage("All Commands \n /class class \n /stat stat value \n /classes \n /mystats \n /addxp ")
		return
	elseif splitString[1] == "/class" then
		local newCharacter = _G["Character.EquipAPI"].GetCurrentCharacter(player)
		local class = newCharacter:GetComponent("Class")
		if class then
			class:SetClass(splitString[2])
		end
		return
	elseif splitString[1] == "/newchar" then
		local newCharacter = character.NewCharacter()
		newCharacter:SetOwner(player)
	elseif splitString[1] == "/stat" then
		local newCharacter = _G["Character.EquipAPI"].GetCurrentCharacter(player)
		local Ability = { CoreString.Split(params.message, '"') }
		local stats = newCharacter:GetComponent("Stats")
		if stats then
			stats:SetTempStat(Ability[2], tonumber(Ability[3]))
			stats:SetStat(Ability[2], tonumber(Ability[3]))
		end
		return
	elseif splitString[1] == "/addpoint" then
		local newCharacter = _G["Character.EquipAPI"].GetCurrentCharacter(player)
		local points = newCharacter:GetComponent("Points")
		if points then
			points:AddPoint()
		end
		return
	elseif splitString[1] == "/additem" then
		local newCharacter = _G["Character.EquipAPI"].GetCurrentCharacter(player)
		local Inventory = newCharacter:GetComponent("Inventory")
		local itemstring = { CoreString.Split(params.message, '"') }
		local iteminfo = Itemdat.GetDefinition(itemstring[2]) or materials.GetDefinition(itemstring[2])
		if iteminfo then
			Inventory:GetInventory():AddItem(iteminfo["itemAsset"], { count = tonumber(itemstring[3]) or 1 })
		end
		return
	elseif splitString[1] == "/removeitem" then
		local newCharacter = _G["Character.EquipAPI"].GetCurrentCharacter(player)
		local Inventory = newCharacter:GetComponent("Inventory")
		local itemstring = { CoreString.Split(params.message, '"') }
		local iteminfo = Itemdat.GetDefinition(itemstring[2]) or materials.GetDefinition(itemstring[2])
		if iteminfo then
			Inventory:GetInventory():RemoveItem(iteminfo["itemAsset"], { count = tonumber(itemstring[3]) or 1 })
		end
		return
	elseif splitString[1] == "/classes" then
		local message = ""
		for key, value in pairs(CLASS.GetClasses()) do
			message = message .. key .. " | "
		end
		Chat.BroadcastMessage(message)
	elseif splitString[1] == "/mystats" then
		local newCharacter = _G["Character.EquipAPI"].GetCurrentCharacter(player)
		local stats = newCharacter:GetComponent("Stats")
		local message = ""
		for key, value in pairs(stats:GetTempStats()) do
			message = message .. key .. value .. " | "
		end
		Chat.BroadcastMessage(message)
	elseif splitString[1] == "/cheat" then
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
	elseif splitString[1] == "/progress" then
		local newCharacter = _G["Character.EquipAPI"].GetCurrentCharacter(player)
		local Progress = newCharacter:GetComponent("Progress")
		Progress:SetProgression(splitString[1], splitString[2] == "true")
	elseif splitString[1] == "/addxp" then
		local newCharacter = _G["Character.EquipAPI"].GetCurrentCharacter(player)
		local level = newCharacter:GetComponent("Level")
		level:AddXP(tonumber(splitString[2]))
	else
		Chat.BroadcastMessage("No command found" .. splitString[1])
	end
end

Chat.receiveMessageHook:Connect(OnReceiveMessage)
