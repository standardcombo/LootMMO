local RecipieAPI = _G['Crafting.Recipies']

local api = {}
function api.GetRecipes()
    return RecipieAPI.GetAllRecipies()
end
function api.GetRecipe(id)
    return RecipieAPI.GetRecipe(id)
end
function api.GetGreatnessValue(item, greatness)
    local recepe = api.GetRecipe(item)
    if recepe then
        local cost = {}
        for key, value in pairs(recepe) do
            local newvalue = math.ceil(value * greatness)
            if newvalue > 0 then
                cost[key] = math.ceil(value * greatness)
            end
        end
        return cost
    end
end
function api.GetScrap(item, greatness)
    local recepe = api.GetRecipe(item)
    if recepe then
        local reward = {}
        for key, value in pairs(recepe) do
            if key ~= 'id' then
                local newvalue = math.ceil(value * greatness)
                if newvalue > 0 then
                    reward[key] = math.ceil(value * greatness)
                end
            end
        end
        return reward
    end
end

_G['Crafting.CraftingAPI'] = api
