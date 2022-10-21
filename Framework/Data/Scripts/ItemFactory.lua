
-- Used by the Tavern's consumable, e.g. the Pint

local API = {}
_G.ItemFactory = API

function API.Spawn(itemId)
	local itemDefinition = _G.Consumables.GetDefinition(itemId)
	if itemDefinition then
		local item = World.SpawnAsset(itemDefinition.equipment, {networkContext = NetworkContextType.NETWORKED})
		item:SetCustomProperty("itemId", itemId)
		item:SetCustomProperty("usesRemaining", itemDefinition.numberOfUses)
		return item
	end
	return nil
end