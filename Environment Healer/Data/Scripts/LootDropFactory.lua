--[[
	Loot Drop Factory
	v2.0
	by: standardcombo
	
	Spawns random loot drops from a customizable data set.
	
	Loot entries are grouped by their "Group ID", which is the name of their parent group.
	
	Modify the drops by modifying the groups and their child scripts. Each child script
	is one loot drop entry. Copy/delete/rename to setup the loot drops for your game.
	
	Example loots, such as the Loot Bag, contain the 'PickupBobRotateClient' script
	that animates them popping up and falling down. Additionally, the Loot Drop Factory
	will find the ground under the drop position (raycast) and calls MoveTo() on the
	loot, so it interpolates linearly to the ground in addition to the physics arc
	animated by the 'PickupBobRotateClient' script.
	
	Usage:
	
	To drop loot-
	
	Add this to the header area of your script:
	```
		function LOOT_DROP_FACTORY()
			if _G.standardcombo and _G.standardcombo.NPCKit then
				return _G.standardcombo.NPCKit.LOOT_DROP_FACTORY
			end
		end
	```
	
	In the body of your script, where the drop decision is made:
	```
		LOOT_DROP_FACTORY().Drop("Common", position)
	```
	
	In the above example, loot is dropped from the "Common" group. By default,
	the Loot Drop Factory also comes with "Uncommon" and "Rare" loot groups.
	
--]]

-- Registers itself into the global table
local API = {}
_G["standardcombo.NPCKit.LootDropFactory"] = API


-- Organize entries
local allDataScripts = script:FindDescendantsByType("Script")

local dropTables = {}
local totalIncidences = {}

Task.Wait()

for _,entry in ipairs(allDataScripts) do
	local lootId = entry.context.GetId()
	local incidence = entry.context.GetIncidence()
	
	if not dropTables[lootId] then
		dropTables[lootId] = {}
		totalIncidences[lootId] = 0
	end
	
	table.insert(dropTables[lootId], entry)
	totalIncidences[lootId] = totalIncidences[lootId] + incidence
end


-- Public Drop() function
function API.Drop(id, position)
	if id == nil then return end
		
	-- Spawn loot
	local rewardTemplate = GetLootTemplate(id)
	if rewardTemplate then
		local lootReward = World.SpawnAsset(rewardTemplate, {position = position})
		if not lootReward then return end
		
		-- Drop to ground
		local rayStart = position
		local rayEnd = rayStart + Vector3.UP * -1000
		local hit = World.Raycast(rayStart, rayEnd, {ignorePlayers = true})
		if hit then
			local moveToPos = hit:GetImpactPosition()
			lootReward:MoveTo(moveToPos, 1)
		end
	end
end


-- Access to the data
function GetLootTemplate(lootId)
	if dropTables[lootId] == nil then
		error("Unknown loot ID: " .. lootId)
		return
	end
	
	local drops = dropTables[lootId]
	local rng = math.random(totalIncidences[lootId])
	
	for _,entry in ipairs(drops) do
		local incidence = entry.context.GetIncidence()
		if rng <= incidence then
			return entry.context.GetTemplate()
		end
		rng = rng - incidence
	end
	error("Incidence miscalculation for loot ID:" .. lootId)
	return nil
end


