
local ASYNC_BLOCKCHAIN = require(script:GetCustomProperty("AsyncBlockchain"))
local LOOT_BAG_PARSER = require(script:GetCustomProperty("LootBagParser"))
local LOOT_COLLECTION_DATA = require(script:GetCustomProperty("LootCollectionData"))
local SERVER_SCRIPT = script:GetCustomProperty("ServerScript"):WaitForObject()

local CONNECTING_TEXT = script:GetCustomProperty("ConnectingText"):WaitForObject()
local ROW_PROTOTYPE = script:GetCustomProperty("RowPrototype"):WaitForObject()
local ROW_PROTOTYPE_FREE = script:GetCustomProperty("RowPrototypeFree"):WaitForObject()
local UP_BUTTON = script:GetCustomProperty("UpButton"):WaitForObject()
local DOWN_BUTTON = script:GetCustomProperty("DownButton"):WaitForObject()

local ROW_SPACING = 20
local ROWS_PER_PAGE = 6
local PAGE_HEIGHT = (ROW_PROTOTYPE.height + ROW_SPACING) * ROWS_PER_PAGE
local SCROLL_CONTAINER = ROW_PROTOTYPE.parent
local SCROLL_LERP_SPEED = 7.5


-- Set to `true` to test loading and parsing of each collection
local TEST_COLLECTIONS = false

-- List of supported NFT collections, for character select
local COLLECTIONS = {
	LOOT_BAG_PARSER.Collection.Loot,
	LOOT_BAG_PARSER.Collection.mLoot,
	LOOT_BAG_PARSER.Collection.Genesis,
}

local TEST_TOKEN_IDS = {
	"1", -- Loot (for Adventurers)
	"8001", -- More Loot
	"136", -- Genesis Adventurers
}

-- Results of blockchain requests
local totalCollectionsLoaded = 0
local isLoadingWallet = true

local player = Game.GetLocalPlayer()


-- Setup UI

function GET(obj, key) return obj:GetCustomProperty(key):WaitForObject() end

local container = ROW_PROTOTYPE.parent
local rowTopY = ROW_PROTOTYPE.y
local rowHeight = ROW_PROTOTYPE.height

ROW_PROTOTYPE.visibility = Visibility.FORCE_OFF
ROW_PROTOTYPE_FREE.visibility = Visibility.FORCE_OFF

local rows = {}

function OnButtonPressed(button, row)
	for i,row in ipairs(rows) do
		if row.clientUserData.button == button then
			row.clientUserData.button.isEnabled = false
			GET(row, "SelectedIcon").visibility = Visibility.INHERIT
			
			-- Fire off event to select this loot bag
			Events.Broadcast("EquipLoot", row.clientUserData.lootBag)
		else
			row.clientUserData.button.isEnabled = true
			GET(row, "SelectedIcon").visibility = Visibility.FORCE_OFF
		end
	end
end


function NewRow(rowPrototype)
	local row = rowPrototype
	if rowPrototype.visibility ~= Visibility.INHERIT then
		rowPrototype.visibility = Visibility.INHERIT
	else
		local rowAssetId = rowPrototype.sourceTemplateId
		row = World.SpawnAsset(rowAssetId, {parent = container})
	end
	return row
end

function SetupRow(row, lootBag)
	row.clientUserData.lootBag = lootBag
	
	local button = GET(row, "UIButton")
	row.clientUserData.button = button
	button.pressedEvent:Connect(OnButtonPressed)
	
	local selectionPrefix = LOOT_COLLECTION_DATA.GetSelectionPrefix(lootBag.collection)
	
	GET(row, "TokenText").text = selectionPrefix..lootBag.tokenId
	
	if lootBag.class == "Warrior" then
		GET(row, "ClassText").text = "Warrior"
		GET(row, "IconWarrior").visibility = Visibility.INHERIT
		GET(row, "IconHunter").visibility = Visibility.FORCE_OFF
		GET(row, "IconMage").visibility = Visibility.FORCE_OFF
		
	elseif lootBag.class == "Hunter" then
		GET(row, "ClassText").text = "Hunter"
		GET(row, "IconWarrior").visibility = Visibility.FORCE_OFF
		GET(row, "IconHunter").visibility = Visibility.INHERIT
		GET(row, "IconMage").visibility = Visibility.FORCE_OFF
		
	elseif lootBag.class == "Mage" then
		GET(row, "ClassText").text = "Mage"
		GET(row, "IconWarrior").visibility = Visibility.FORCE_OFF
		GET(row, "IconHunter").visibility = Visibility.FORCE_OFF
		GET(row, "IconMage").visibility = Visibility.INHERIT
	end
	return row
end

local freeBagsAdded = 0
function AddRow(row)
	if row.clientUserData.lootBag.isFreeDaily then
		-- Add free bags at the bottom
		table.insert(rows, row)
		freeBagsAdded = freeBagsAdded + 1
	else
		-- Insert owned bags above free bags
		local index = #rows - freeBagsAdded + 1
		table.insert(rows, index, row)
	end
	
	row.x = ROW_PROTOTYPE.x
	
	y = rowTopY
	for i,r in ipairs(rows) do
		r.y = y
		y = y + rowHeight + ROW_SPACING
	end
end


local pageIndex = 1
local targetScrollY = 0

function Tick(deltaTime)
	-- Update scroll position
	local t = deltaTime * SCROLL_LERP_SPEED
	local y = SCROLL_CONTAINER.y
	y = CoreMath.Lerp(y, targetScrollY, t)
	SCROLL_CONTAINER.y = y
	
	-- Update visibility of "Loading..." text
	if isLoadingWallet then
		if not ASYNC_BLOCKCHAIN.IsBusy() 
		or totalCollectionsLoaded >= #COLLECTIONS then
			-- Loading ended
			isLoadingWallet = false
			CONNECTING_TEXT.visibility = Visibility.FORCE_OFF
		end
	end
end

function UpdateScrollProperties()
	targetScrollY = -PAGE_HEIGHT * (pageIndex - 1)
	
	-- Update visibility of the UP arrow button
	if pageIndex > 1 then
		UP_BUTTON.visibility = Visibility.INHERIT
	else
		UP_BUTTON.visibility = Visibility.FORCE_OFF
	end
	
	-- Update visibility of the DOWN arrow button
	if #rows >= pageIndex * ROWS_PER_PAGE then
		DOWN_BUTTON.visibility = Visibility.INHERIT
	else
		DOWN_BUTTON.visibility = Visibility.FORCE_OFF
	end
end

function OnUpPressed()
	pageIndex = pageIndex - 1
	UpdateScrollProperties()
end

function OnDownPressed()
	pageIndex = pageIndex + 1
	UpdateScrollProperties()
end

UP_BUTTON.pressedEvent:Connect(OnUpPressed)
DOWN_BUTTON.pressedEvent:Connect(OnDownPressed)


-- Animate the "Loading..." text while it's busy
function UpdatePositionOfConnectingText()
	local y
	if #rows > 0 then
		y = rows[#rows].y
	else
		y = ROW_PROTOTYPE.y
	end
	CONNECTING_TEXT.parent.y = y + ROW_PROTOTYPE.height + ROW_SPACING
end
UpdatePositionOfConnectingText()

Task.Spawn(function()
	local i = 1
	while isLoadingWallet do
		CONNECTING_TEXT.text = "Loading"
		if i % 4 == 1 then CONNECTING_TEXT.text = CONNECTING_TEXT.text.."." end
		if i % 4 == 2 then CONNECTING_TEXT.text = CONNECTING_TEXT.text..".." end
		if i % 4 == 3 then CONNECTING_TEXT.text = CONNECTING_TEXT.text.."..." end
		i = i + 1
		Task.Wait(0.1)
	end
end)

-- Loading start
function OnTokensLoaded(tokens)
	totalCollectionsLoaded = totalCollectionsLoaded + 1
	
	if not tokens then return end
	
	for _,t in ipairs(tokens) do
		local lootBag = LOOT_BAG_PARSER.Parse(t)
		lootBag.isFreeDaily = false
		AddRow(SetupRow(NewRow(ROW_PROTOTYPE), lootBag))
		UpdatePositionOfConnectingText()
		UpdateScrollProperties()
		Task.Wait(0.1)
	end
end


local freeDailySerialized = {}
function OnFreeDailyBagPropertyChanged(_, key)
	local serializedBag, exists = SERVER_SCRIPT:GetCustomProperty(key)
	if exists 
	and serializedBag ~= "" 
	and freeDailySerialized[serializedBag] == nil then
		local lootBag = LOOT_BAG_PARSER.Parse(serializedBag)
		lootBag.isFreeDaily = true
		AddRow(SetupRow(NewRow(ROW_PROTOTYPE_FREE), lootBag))
		UpdatePositionOfConnectingText()
		UpdateScrollProperties()
	end
end

SERVER_SCRIPT.customPropertyChangedEvent:Connect(OnFreeDailyBagPropertyChanged)
for i = 1,6 do
	local key = "DailyBag"..i
	OnFreeDailyBagPropertyChanged(SERVER_SCRIPT, key)
end


if TEST_COLLECTIONS then
	for i,id in ipairs(COLLECTIONS) do
		local tokenId = TEST_TOKEN_IDS[i]
		ASYNC_BLOCKCHAIN.GetToken(id, tokenId, function(t) OnTokensLoaded({t}) end)
	end
end

for _,id in ipairs(COLLECTIONS) do
	ASYNC_BLOCKCHAIN.GetTokensForPlayer(player, {contractAddress = id}, OnTokensLoaded)
end

