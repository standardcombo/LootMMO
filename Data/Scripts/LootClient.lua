local LOOT_COLLECTION_DATA = require(script:GetCustomProperty('LootCollectionData'))
local LOOT_BAG_PARSER = require(script:GetCustomProperty('LootBagParser'))
local UI_ROOT = script:GetCustomProperty('UIRoot'):WaitForObject()

local HEADER_PANEL = script:GetCustomProperty('HeaderPanel'):WaitForObject()
local HEADER_TEXT = script:GetCustomProperty('HeaderText'):WaitForObject()
local COLLECTION_TEXT = script:GetCustomProperty('CollectionText'):WaitForObject()

local WEAPON_IMAGE = script:GetCustomProperty('WeaponImage'):WaitForObject()
local CHEST_IMAGE = script:GetCustomProperty('ChestImage'):WaitForObject()
local HEAD_IMAGE = script:GetCustomProperty('HeadImage'):WaitForObject()
local WAIST_IMAGE = script:GetCustomProperty('WaistImage'):WaitForObject()
local FOOT_IMAGE = script:GetCustomProperty('FootImage'):WaitForObject()
local HAND_IMAGE = script:GetCustomProperty('HandImage'):WaitForObject()
local NECKLACE_IMAGE = script:GetCustomProperty('NecklaceImage'):WaitForObject()
local RING_IMAGE = script:GetCustomProperty('RingImage'):WaitForObject()

local WEAPON_BUTTON = script:GetCustomProperty('WeaponButton'):WaitForObject()
local CHEST_BUTTON = script:GetCustomProperty('ChestButton'):WaitForObject()
local HEAD_BUTTON = script:GetCustomProperty('HeadButton'):WaitForObject()
local WAIST_BUTTON = script:GetCustomProperty('WaistButton'):WaitForObject()
local FOOT_BUTTON = script:GetCustomProperty('FootButton'):WaitForObject()
local HAND_BUTTON = script:GetCustomProperty('HandButton'):WaitForObject()
local NECKLACE_BUTTON = script:GetCustomProperty('NecklaceButton'):WaitForObject()
local RING_BUTTON = script:GetCustomProperty('RingButton'):WaitForObject()

local ITEM_DETAILS_PANEL = script:GetCustomProperty('ItemDetailsFloatingPanel'):WaitForObject()
local ITEM_DETAILS_SCRIPT = ITEM_DETAILS_PANEL:FindDescendantByType('Script')

local PLAY_BUTTON_ROOT = script:GetCustomProperty('PlayButtonRoot'):WaitForObject()
local PLAY_BUTTON = script:GetCustomProperty('PlayButton'):WaitForObject()
local PLAY_BUTTON_SFX = script:GetCustomProperty('PlayButtonSFX'):WaitForObject()
local RETURN_TO_BAG_SELECTION_TRIGGER = script:GetCustomProperty('ReturnToBagSelectionTrigger'):WaitForObject()

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
local itemButtons = {
    WEAPON_BUTTON,
    CHEST_BUTTON,
    HEAD_BUTTON,
    WAIST_BUTTON,
    FOOT_BUTTON,
    HAND_BUTTON,
    NECKLACE_BUTTON,
    RING_BUTTON
}

local classes = {
    'Warrior',
    'Hunter',
    'Mage',
    'Assassin',
    'Cleric'
}

local HEADER_START_Y = HEADER_PANEL.y
HEADER_PANEL.y = 0
COLLECTION_TEXT.text = ''

function EquipLoot(lootBag)
    local headerPrefix = LOOT_COLLECTION_DATA.GetHeaderPrefix(lootBag.collection)

    HEADER_TEXT.text = headerPrefix .. lootBag.tokenId

    COLLECTION_TEXT.text = LOOT_COLLECTION_DATA.GetDescription(lootBag.collection)

    PLAY_BUTTON_ROOT.visibility = Visibility.INHERIT

    Events.BroadcastToServer('ClearEquipment')

    local definitions = {}

    -- Set item icons and names
    for i, item in pairs(lootBag.items) do
        local def = _G.Items.GetDefinition(item.name)
        local itemContruct =
            _G['Item.Constructor'].New(
            {
                item = item.name,
                order = item.order,
                greatness = item.greatness
            }
        )
        table.insert(definitions, def)

        itemImages[i]:SetImage(def.icon)
        itemImages[i]:SetColor(Color.WHITE)
        itemImages[i].isFlippedHorizontal = def.flipIconH
        itemImages[i].isFlippedVertical = def.flipIconV

        itemButtons[i].clientUserData.item = item
        itemButtons[i].clientUserData.itemClass = itemContruct
    end
    Events.BroadcastToServer('EquipBag', lootBag:Serialize())
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
Events.Connect('EquipLoot', EquipLoot)

function OnPlay()
    PLAY_BUTTON_SFX:Play()

    _G.AppState.SetLocalState(_G.AppState.SocialHub)

    UI_ROOT.visibility = Visibility.FORCE_OFF
end
PLAY_BUTTON.clickedEvent:Connect(OnPlay)

function ReturnToBagSelect(trigger, player)
    if player ~= Game.GetLocalPlayer() then
        return
    end

    _G.AppState.SetLocalState(_G.AppState.BagSelection)

    UI_ROOT.visibility = Visibility.INHERIT
end
RETURN_TO_BAG_SELECTION_TRIGGER.interactedEvent:Connect(ReturnToBagSelect)

function IsInSocialHub()
    return _G.AppState.GetLocalState() == _G.AppState.SocialHub
end

function Tick(deltaTime)
    if COLLECTION_TEXT.text ~= '' then
        local t = deltaTime * 5
        HEADER_PANEL.y = CoreMath.Lerp(HEADER_PANEL.y, HEADER_START_Y, t)
    end
    if ITEM_DETAILS_PANEL.visibility == Visibility.INHERIT then
        local pos = Input.GetCursorPosition()
        ITEM_DETAILS_PANEL.x = pos.x
        ITEM_DETAILS_PANEL.y = pos.y
    end
end

for _, button in ipairs(itemButtons) do
    button.hoveredEvent:Connect(
        function(b)
            local item = b.clientUserData.item
            local itemClass = b.clientUserData.itemClass
            if item and itemClass then
                ITEM_DETAILS_SCRIPT.context.SetItem(item, itemClass)
                ITEM_DETAILS_PANEL.visibility = Visibility.INHERIT
            end
        end
    )
    button.unhoveredEvent:Connect(
        function(b)
            ITEM_DETAILS_PANEL.visibility = Visibility.FORCE_OFF
        end
    )
end
ITEM_DETAILS_PANEL.visibility = Visibility.FORCE_OFF

if Environment.IsPreview() then
    Input.actionPressedEvent:Connect(
        function(_, action)
            if action == 'SkipCheat' then
                if IsInSocialHub() then
                    ReturnToBagSelect()
                else
                    OnPlay()
                end
            end
        end
    )
end
