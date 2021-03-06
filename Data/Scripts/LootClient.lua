
local LOOT_COLLECTION_DATA = require(script:GetCustomProperty("LootCollectionData"))
local LOOT_BAG_PARSER = require(script:GetCustomProperty("LootBagParser"))
local UI_ROOT = script:GetCustomProperty("UIRoot"):WaitForObject()
local INSTRUCTION = script:GetCustomProperty("InstructionText"):WaitForObject()
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
local RETURN_TO_BAG_SELECTION_TRIGGER = script:GetCustomProperty("ReturnToBagSelectionTrigger"):WaitForObject()

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


function EquipLoot(lootBag)
	
	local headerPrefix = LOOT_COLLECTION_DATA.GetHeaderPrefix(lootBag.collection)
	
	INSTRUCTION.text = ""
	LOOT_ID.text = headerPrefix .. lootBag.tokenId
	
	UIPANEL.visibility = Visibility.INHERIT
	PLAY_BUTTON_ROOT.visibility = Visibility.INHERIT
	
	Events.BroadcastToServer("ClearEquipment")
	
	local definitions = {}
	
	-- Set item icons and names
	for i,item in pairs(lootBag.items) do
		local def = _G.Items.GetDefinition(item.name)
		table.insert(definitions, def)
		
		itemImages[i]:SetImage(def.icon)
		itemImages[i]:SetColor(Color.WHITE)
		
		itemTexts[i].text = item.fullName
		
		if def.equipment then
			Events.BroadcastToServer("Equip", item.name)
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
Events.Connect("EquipLoot", EquipLoot)


function OnPlay()
	PLAY_BUTTON_SFX:Play()
	Events.Broadcast("JoinSocial")
	Events.BroadcastToServer("JoinSocial")
	
	UI_ROOT.visibility = Visibility.FORCE_OFF
end
PLAY_BUTTON.clickedEvent:Connect(OnPlay)


function ReturnToCharacterSelect(player)
	--if player ~= Game.GetLocalPlayer() then return end
	
	Events.Broadcast("BagSelection")
	Events.BroadcastToServer("BagSelection")
		
	UI_ROOT.visibility = Visibility.INHERIT
end
RETURN_TO_BAG_SELECTION_TRIGGER.interactedEvent:Connect(ReturnToCharacterSelect)


function IsInSocialSpace()
	local player = Game.GetLocalPlayer()
	local pos = player:GetWorldPosition()
	return pos.z < 7000
end


if Environment.IsPreview() then
	Input.actionPressedEvent:Connect(function(_, action)
		if action == "SkipCheat" then
			if IsInSocialSpace() then
				ReturnToCharacterSelect()
			else
				OnPlay()
			end
		end
	end)
end

