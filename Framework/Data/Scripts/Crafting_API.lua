local RecipesAPI = _G['Crafting.Recipes']

local api = {}
function api.GetRecipes()
	return RecipesAPI.GetAllRecipes()
end

function api.GetRecipe(id)
	return RecipesAPI.GetRecipe(id)
end

function api.GetRecipeForGreatness(item, greatness)
	greatness = math.max(1, greatness)
	local recipe = api.GetRecipe(item)
	if recipe then
		local cost = {}
		for key, value in pairs(recipe) do
			if type(value) == "number" then
				local newvalue = math.ceil(value * greatness)
				if newvalue > 0 then
					cost[key] = newvalue
				end
			end
		end
		return cost
	end
end

function api.GetScrap(item, greatness)
	greatness = math.max(1, greatness)
	local recipe = api.GetRecipe(item)
	if recipe then
		local reward = {}
		for key, value in pairs(recipe) do
			if type(value) == "number" then
				local newvalue = math.ceil(value * greatness)
				if newvalue > 0 then
					reward[key] = newvalue
				end
			end
		end
		return reward
	end
end

_G['Crafting.CraftingAPI'] = api
