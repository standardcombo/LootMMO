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
]]

local API = {}
_G.RewardsAdapter = API


function API.AddItem(player, definition, amount)
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
	-- Most rewards will not have this
	if _G.FoundItemCinematic and definition.pickupAsset then
		_G.FoundItemCinematic.Show(player, definition.pickupAsset)
	end
	
	-- Actually grant the item (some reward elements may not have an item to grant)
	if definition.itemAsset and _G["Character.EquipAPI"] then
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

