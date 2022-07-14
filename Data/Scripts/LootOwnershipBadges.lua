
--[[
	Loot Ownership Badges
	v1.0
	by: standardcombo
	
	Displays a series of icons below the player's nameplate, to indicate how many
	NFTs they own from each collection.
--]]

local ROOT = script.parent

local LOOT_COLLECTION_DATA = require(script:GetCustomProperty("LootCollectionData"))
local ASYNC_BLOCKCHAIN = require(script:GetCustomProperty("AsyncBlockchain"))
local OWNERSHIP_PANEL = script:GetCustomProperty("OwnershipPanel"):WaitForObject()
local ENTRY_PROTOTYPE_SINGLE = script:GetCustomProperty("EntryPrototypeSingle"):WaitForObject()
local ENTRY_PROTOTYPE_1_DIGIT = script:GetCustomProperty("EntryPrototype1Digit"):WaitForObject()
local ENTRY_PROTOTYPE_2_DIGITS = script:GetCustomProperty("EntryPrototype2Digits"):WaitForObject()
local SPACING = script:GetCustomProperty("Spacing")

local TEMPLATE_SINGLE = ENTRY_PROTOTYPE_SINGLE.sourceTemplateId
local TEMPLATE_1_DIGIT = ENTRY_PROTOTYPE_1_DIGIT.sourceTemplateId
local TEMPLATE_2_DIGITS = ENTRY_PROTOTYPE_2_DIGITS.sourceTemplateId

local poolSingle = { ENTRY_PROTOTYPE_SINGLE }
local pool1Digit = { ENTRY_PROTOTYPE_1_DIGIT }
local pool2Digits = { ENTRY_PROTOTYPE_2_DIGITS }
local pools = {}
pools[TEMPLATE_SINGLE] = poolSingle
pools[TEMPLATE_1_DIGIT] = pool1Digit
pools[TEMPLATE_2_DIGITS] = pool2Digits

ENTRY_PROTOTYPE_SINGLE.visibility = Visibility.FORCE_OFF
ENTRY_PROTOTYPE_1_DIGIT.visibility = Visibility.FORCE_OFF
ENTRY_PROTOTYPE_2_DIGITS.visibility = Visibility.FORCE_OFF

local entries = {}
local totalWidth = 0


function AddEntry(amount, icon)
	-- Select entry template appropriate for amount
	local template = TEMPLATE_SINGLE
	if amount > 9 then
		template = TEMPLATE_2_DIGITS
	elseif amount > 1 then
		template = TEMPLATE_1_DIGIT
	end
	
	-- See if there's an entry available in the pool
	local pool = pools[template]
	local entry = nil
	if #pool > 0 then
		entry = pool[1]
		table.remove(pool, 1)
		
		entry.visibility = Visibility.INHERIT
	end
	-- If not, spawn a new one
	if entry == nil then
		entry = World.SpawnAsset(template, {parent = OWNERSHIP_PANEL})
	end
	
	-- Write amount
	if amount > 1 then
		local uiText = entry:GetCustomProperty("Text"):WaitForObject()
		if amount >= 50 then
			uiText.text = "50+"
		else
			uiText.text = amount .. "x"
		end
	end
	
	-- Set icon
	local uiImage = entry:GetCustomProperty("Image"):WaitForObject()
	uiImage:SetImage(icon)
	
	-- Adjust layout
	if #entries > 0 then
		totalWidth = totalWidth + SPACING
	end
	entry.x = totalWidth
	totalWidth = totalWidth + entry.width
	
	-- Add to table
	table.insert(entries, entry)
end

function BlockchainResults(tokens)
	if tokens and #tokens > 0 then
		local contractAddress = tokens[1].contractAddress
		local icon = LOOT_COLLECTION_DATA.GetIcon(contractAddress)
		AddEntry(#tokens, icon)
		UpdatePositions()
	end
end

function UpdatePositions()
	local x = -totalWidth / 2
	for _,entry in ipairs(entries) do
		entry.x = x + entry.width / 2
		x = x + entry.width + SPACING
	end
end

function UpdateContents(player)
	-- Load collections
	for _,id in ipairs(LOOT_COLLECTION_DATA.GetIds()) do
		ASYNC_BLOCKCHAIN.GetTokensForPlayer(player, {contractAddress = id}, BlockchainResults)
	end
end

-- Before initializing, wait for the player object to be assigned to the nameplate UI
while ROOT.clientUserData == nil or ROOT.clientUserData.player == nil do
	Task.Wait(0.1)
end

UpdateContents(ROOT.clientUserData.player)

