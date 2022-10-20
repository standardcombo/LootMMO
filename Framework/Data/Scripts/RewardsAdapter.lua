--[[
	Rewards Adapter
	v1.0 - 2022/10/20
	by: standardcombo
	
	Implements an interface between "RewardsParser.lua" and the
	Loot MMO inventory system.
	
	Modify AddItem() to integrate the rewards system with other inventory
	implementations.
	
	Dependencies
	============
	- Reward Toast UI: A component that shows the rewards earned.
		-> Players receive the "RewardToast" networked event.
	
	API
	===
	- AddXP(player, int amount)
	- AddMaterial(player, string materialId, int amount)
	- AddItem(player, string itemId, int amount)
	- AddRandomItem(player, string paramKey, string paramValue)
]]

local API = {}
_G.RewardsAdapter = API


local XP_RESOURCE_KEY = "XP"


function API.AddXP(player, amount)
	player:AddResource(XP_RESOURCE_KEY, amount)

	-- Show toast UI
	local definition = _G["Items.More"].GetDefinition("XP")
	if definition then
		AddItem(player, definition, amount)
	end
end


function API.AddMaterial(player, materialId, amount)
	local definition = _G["Items.Materials"].GetDefinition(materialId)
	if definition then
		AddItem(player, definition, amount)
	else
		error("Rewards Adapter: No material found with id "..materialId)
	end
end

function API.AddItem(player, itemId, amount)
	local definition = _G["Items"].GetDefinition(itemId)
	if not definition then
		definition = _G["Items.More"].GetDefinition(itemId)
	end
	if definition then
		AddItem(player, definition, amount)
	else
		error("Rewards Adapter: No item found with id "..itemId)
	end
end

function API.AddRandomItem(player, key, value)
	local allItems = _G["Items"].GetDefinitions()
	local total = 0
	for k,v in pairs(allItems) do
		total = total + 1
	end
	local rndIndex = math.random(1, total)
	local definition = nil
	for k,v in pairs(allItems) do
		rndIndex = rndIndex - 1
		if rndIndex <= 0 then
			definition = v
			break
		end
	end
	local greatness = value
	AddItem(player, definition, 1, greatness)
end


function AddItem(player, definition, amount, greatness)
	amount = amount or 1

	-- Popup UI that shows the player what they got
	local toastParams = {
		type = definition.rarity or GetRarityForGreatness(greatness),
		message = definition.name or definition.id,
		icon = definition.icon,
		level = greatness,
		flipH = definition.flipIconH,
		flipV = definition.flipIconV,
		sfx = definition.pickupSfx,
	}
	if amount and amount > 1 then
		toastParams.message = amount .." ".. definition.name
	end
	Events.BroadcastToPlayer(player, "RewardToast", toastParams)

	-- Play cinematic/animation of the player finding the item
	-- Most rewards will not have this
	if _G.FoundItemCinematic and definition.pickupAsset then
		_G.FoundItemCinematic.Show(player, definition.pickupAsset)
	end
	
	-- Actually grant the item (some reward elements may not have an item to grant)
	if definition.itemAsset and _G["Character.EquipAPI"] then
		local char = _G["Character.EquipAPI"].GetCurrentCharacter(player)
		if char then
			local params = {count = amount}
			if greatness then
				params.customProperties = {Greatness = greatness}
			end
			local inv = char:GetComponent("Inventory"):GetInventory()
			inv:AddItem(definition.itemAsset, params)
		else
			error("Tried to grant item ".. definition.id .." but player ".. 
			      player.name .." didn't have a character")
		end
	end
end

function GetRarityForGreatness(greatness)
	greatness = tonumber(greatness)

	if not greatness or greatness <= 3 then
		return "Common"
	
	elseif greatness <= 9 then
		return "Rare"

	elseif greatness <= 14 then
		return "Epic"
	else
		return "Legendary"
	end
end

