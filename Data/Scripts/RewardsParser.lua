
local API = {}

local XP_RESOURCE_KEY = "Cxp"


function API.Parse(player, dataTable, rowId)
	local entry = dataTable[rowId]
	local rewards = SplitCommaSeparatedData(entry.rewards)
	for _,rewardInstruction in ipairs(rewards) do
		_GrantReward(player, rewardInstruction)
		-- It's possible the player has left in the middle of reward sequence
		if not Object.IsValid(player) then return end
	end
end

function _GrantReward(player, rewardInstruction)
	local instruction, key, amount = CoreString.Split(rewardInstruction, {
		delimiters = {"(","=",")"}, 
		removeEmptyResults = true
	})
	if instruction == "Wait" then
		local delay = tonumber(key)
		if delay then
			Task.Wait(delay)
		else
			warn("Failed to delay rewards with instruction: ".. rewardInstruction)
		end

	elseif instruction == "XP" then
		-- Add XP
		local resourceId = XP_RESOURCE_KEY
		local resourceAmount = tonumber(key)
		player:AddResource(resourceId, resourceAmount)
		-- Show toast UI
		local itemDef = _G["Items.More"].GetDefinition("XP")
		_GrantItem(player, itemDef, resourceAmount)

	elseif instruction == "Material" then
		local materialDef = _G["Items.Materials"].GetDefinition(key)
		amount = tonumber(amount)
		if materialDef and amount then
			_GrantItem(player, materialDef, amount)
		else
			warn("Failed to grant material with instruction:".. rewardInstruction)
		end
	
	elseif instruction == "RandomItem" then
		print("TODO: Granting random item with ".. key .." ".. amount)
		
		local itemDef = _G["Items.More"].GetDefinition("RandomItem")
		_GrantItem(player, itemDef)

	else
		local itemDef = _G["Items.More"].GetDefinition(instruction)
		if itemDef then
			_GrantItem(player, itemDef, 1)
		else
			warn("Failed to grant specific item with instruction:".. rewardInstruction)
		end
	end
end

function _GrantItem(player, definition, amount)
	--print("Granting item: ".. definition.id .." x".. amount)
	-- Popup UI that shows the player what they got
	local toastParams = {
		type = definition.rarity,
		message = definition.name,
		icon = definition.icon,
		flipH = definition.flipIconH,
		flipV = definition.flipIconV,
		sfx = definition.pickupSfx,
	}
	if amount and amount > 1 then
		toastParams.message = amount .."x ".. definition.name
	end
	Events.BroadcastToPlayer(player, "RewardToast", toastParams)

	-- Play cinematic/animation of the player finding the item
	-- Many rewards will not have this
	if _G.FoundItemCinematic and definition.pickupAsset then
		_G.FoundItemCinematic.Show(player, definition.pickupAsset)
	end
	
	-- Actually grant the item (some reward elements may not have an item to grant)
	if definition.itemAsset then
		local char = _G["Character.EquipAPI"].GetCurrentCharacter(player)
		if char then
			local inv = char:GetComponent("Inventory"):GetInventory()
			inv:AddItem(definition.itemAsset, {count = amount})
		else
			error("Tried to grant item ".. definition.id .." but player ".. 
			      player.name .." didn't have a character")
		end
	end
end


function SplitCommaSeparatedData(data)
	-- Split with comma
	local results = {
	    CoreString.Split(data, {
	        delimiters = {","}, 
	        removeEmptyResults = true
	    })
	}
	-- Trim whitespace
	for i,entry in ipairs(results) do
		results[i] = CoreString.Trim(entry)
	end
	return results
end


return API

