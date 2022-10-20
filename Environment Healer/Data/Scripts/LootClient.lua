
local PARSED_LOOT_DATA = require( script:GetCustomProperty("ParsedLootBagData") )
local LOOT_GENERATOR = require( script:GetCustomProperty("LootGenerator") )
local UI_ROOT = script:GetCustomProperty("UIRoot"):WaitForObject()
local INSTRUCTION = script:GetCustomProperty("InstructionText"):WaitForObject()
local LOOT_ID_SHADOW = script:GetCustomProperty("LootIDShadow"):WaitForObject()
local LOOT_ID = script:GetCustomProperty("LootID"):WaitForObject()

local WEAPON_IMAGE = script:GetCustomProperty("WeaponImage"):WaitForObject()
local CHEST_IMAGE = script:GetCustomProperty("ChestImage"):WaitForObject()
local HEAD_IMAGE = script:GetCustomProperty("HeadImage"):WaitForObject()
local WAIST_IMAGE = script:GetCustomProperty("WaistImage"):WaitForObject()
local FOOT_IMAGE = script:GetCustomProperty("FootImage"):WaitForObject()
local HAND_IMAGE = script:GetCustomProperty("HandImage"):WaitForObject()
local NECKLACE_IMAGE = script:GetCustomProperty("NecklaceImage"):WaitForObject()
local RING_IMAGE = script:GetCustomProperty("RingImage"):WaitForObject()
local WEAPON_TEXT = script:GetCustomProperty("WeaponText"):WaitForObject()
local CHEST_TEXT = script:GetCustomProperty("ChestText"):WaitForObject()
local HEAD_TEXT = script:GetCustomProperty("HeadText"):WaitForObject()
local WAIST_TEXT = script:GetCustomProperty("WaistText"):WaitForObject()
local FOOT_TEXT = script:GetCustomProperty("FootText"):WaitForObject()
local HAND_TEXT = script:GetCustomProperty("HandText"):WaitForObject()
local NECKLACE_TEXT = script:GetCustomProperty("NecklaceText"):WaitForObject()
local RING_TEXT = script:GetCustomProperty("RingText"):WaitForObject()
local UIPANEL = script:GetCustomProperty("UIPanel"):WaitForObject()
local PLAY_BUTTON_ROOT = script:GetCustomProperty("PlayButtonRoot"):WaitForObject()
local PLAY_BUTTON = script:GetCustomProperty("PlayButton"):WaitForObject()
local PLAY_BUTTON_SFX = script:GetCustomProperty("PlayButtonSFX"):WaitForObject()

local itemImages = {
	WEAPON_IMAGE,
	CHEST_IMAGE,
	HEAD_IMAGE,
	WAIST_IMAGE,
	FOOT_IMAGE,
	HAND_IMAGE,
	NECKLACE_IMAGE,
	RING_IMAGE
}
local itemTexts = {
	WEAPON_TEXT,
	CHEST_TEXT,
	HEAD_TEXT,
	WAIST_TEXT,
	FOOT_TEXT,
	HAND_TEXT,
	NECKLACE_TEXT,
	RING_TEXT
}

local classes = {
	"Warrior",
	"Hunter",
	"Mage",
	"Assassin",
	"Cleric",
}


UI.SetCanCursorInteractWithUI(true)
UI.SetCursorVisible(true)


function GenerateLoot(number)
	local loot = PARSED_LOOT_DATA[number]
	if not loot then
		loot = LOOT_GENERATOR.Generate(number)
	end
	
	INSTRUCTION.text = ""
	LOOT_ID.text = "Loot Bag: #" .. number
	LOOT_ID_SHADOW.text = LOOT_ID.text
	
	UIPANEL.visibility = Visibility.INHERIT
	PLAY_BUTTON_ROOT.visibility = Visibility.INHERIT
	
	Events.BroadcastToServer("ClearEquipment")
	
	local definitions = {}
	
	-- Set item icons and names
	for i,components in pairs(loot) do
		local itemId
		local displayName
		if i == 1 then
			itemId = LOOT_GENERATOR.GetWeaponId(components)
			displayName = LOOT_GENERATOR.GetWeaponDisplayName(components)
			
		elseif i == 2 then
			itemId = LOOT_GENERATOR.GetChestId(components)
			displayName = LOOT_GENERATOR.GetChestDisplayName(components)
			
		elseif i == 3 then
			itemId = LOOT_GENERATOR.GetHeadId(components)
			displayName = LOOT_GENERATOR.GetHeadDisplayName(components)
			
		elseif i == 4 then
			itemId = LOOT_GENERATOR.GetWaistId(components)
			displayName = LOOT_GENERATOR.GetWaistDisplayName(components)
			
		elseif i == 5 then
			itemId = LOOT_GENERATOR.GetFootId(components)
			displayName = LOOT_GENERATOR.GetFootDisplayName(components)
			
		elseif i == 6 then
			itemId = LOOT_GENERATOR.GetHandId(components)
			displayName = LOOT_GENERATOR.GetHandDisplayName(components)
			
		elseif i == 7 then
			itemId = LOOT_GENERATOR.GetNeckId(components)
			displayName = LOOT_GENERATOR.GetNeckDisplayName(components)
			
		elseif i == 8 then
			itemId = LOOT_GENERATOR.GetRingId(components)
			displayName = LOOT_GENERATOR.GetRingDisplayName(components)
		end
		
		local def = _G.Items.GetDefinition(itemId)
		table.insert(definitions, def)
		
		itemImages[i]:SetImage(def.icon)
		
		--itemTexts[i].text = item.displayName
		itemTexts[i].text = displayName
		
		if def.equipment then
			Events.BroadcastToServer("Equip", itemId)
		end
	end
	
	-- Calculate class
	--[[
	local classScores = {}
	for _,className in ipairs(classes) do
		classScores[className] = 0
	end
	for _,def in pairs(definitions) do
		for _,className in ipairs(classes) do
			local points = def["points" .. className]
			classScores[className] = classScores[className] + points
		end
	end
	print("\n"..number)
	local selectedClass = nil
	local bestScore = -9999
	for c,score in pairs(classScores) do
		if not selectedClass or score > bestScore then
			selectedClass = c
			bestScore = score
		end
		print(c .. ": " .. score)
	end
	CLASS_NAME.text = selectedClass
	CLASS_SHADOW.text = selectedClass
	]]
end


function EvalInput(params)
	local value = tonumber(params.message)
	if value then
		Task.Spawn(function()
			GenerateLoot(value)
		end)
	    params.message = ""
	end
end

Chat.sendMessageHook:Connect(EvalInput)


PLAY_BUTTON.clickedEvent:Connect(function()
	PLAY_BUTTON_SFX:Play()
	Events.Broadcast("JoinSocial")
	Events.BroadcastToServer("JoinSocial")
	
	UI_ROOT.visibility = Visibility.FORCE_OFF
end)


Events.Connect("SelectLoot", GenerateLoot)

