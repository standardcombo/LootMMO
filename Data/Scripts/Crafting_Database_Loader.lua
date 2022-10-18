local ITEM_CRAFTING = require(script:GetCustomProperty("ItemCrafting"))

local API = {}

function API.GetAllRecipes()
	return ITEM_CRAFTING
end

function API.GetRecipe(id)
	return ITEM_CRAFTING[id]
end

_G["Crafting.Recipes"] = API
