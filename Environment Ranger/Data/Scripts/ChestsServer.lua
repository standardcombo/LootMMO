local API_RE = require(script:GetCustomProperty("APIReliableEvents"))

local ROOT = script:GetCustomProperty("Root"):WaitForObject()
local CHEST_TEMPLATE = script:GetCustomProperty("ChestTemplate")
local DROP_KEY = script:GetCustomProperty("DropKey")

local CHEST_COUNT = ROOT:GetCustomProperty("ChestCount")

local CHEST_LOCATIONS = {}

local chests = {}

for _, location in pairs(script:GetCustomProperty("ChestLocationsGroup"):WaitForObject():GetChildren()) do
	table.insert(CHEST_LOCATIONS, location)
end

function OnOpenChest(trigger, triggerPlayer, index)
	local chest = chests[index]

	API_RE.BroadcastToAllPlayers("OC", chest)

	if not chest.serverUserData.open then
		for _, player in pairs(Game.GetPlayers()) do
			API_RE.Broadcast("DropLoot", DROP_KEY, chest:GetWorldPosition() + Vector3.UP * 20.0, player)
		end

		-- It's possible there are edge cases where someone could spam or multiple people could interact and get
		-- duplicate loot, so we prevent that.
		chest.serverUserData.open = true
		chest:GetCustomProperty("Trigger"):WaitForObject().collision = Collision.FORCE_OFF
	end
end

function SpawnChests()
	-- Scramble list
	for i = 1, #CHEST_LOCATIONS - 1 do
		local j = math.random(i, #CHEST_LOCATIONS)
		local temp = CHEST_LOCATIONS[j]
		CHEST_LOCATIONS[j] = CHEST_LOCATIONS[i]
		CHEST_LOCATIONS[i] = temp
	end

	for i = 1, CHEST_COUNT do
		local chest = World.SpawnAsset(CHEST_TEMPLATE, {parent = CHEST_LOCATIONS[i]})
		chest:GetCustomProperty("Trigger"):WaitForObject().interactedEvent:Connect(OnOpenChest, i)
		chests[i] = chest
	end
end

function OnResetDungeon()
	for _, chest in pairs(chests) do
		chest:Destroy()
	end

	chests = {}
	SpawnChests()
end

SpawnChests()

API_RE.Connect("ResetDungeon", OnResetDungeon)
