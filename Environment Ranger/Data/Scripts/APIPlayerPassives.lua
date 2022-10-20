local API = {}

local IS_CLIENT = pcall(Game.GetLocalPlayer)

local passiveDefinitions = {}

for propertyName, script in pairs(script:GetCustomProperties()) do
	if string.sub(propertyName, 1, 3) ~= "API" then
		table.insert(passiveDefinitions, require(script))
	end
end

--[[	Passive data is a table with the following entries:
string name										User-facing unique name (also used for talent tree)
string description								User-facing description
AssetReference icon								Icon to show on the character sheet
<float> threatMultiplier						How much threat the player generates
<float> damageDealtMultiplier					How much damage the player deals
<float> damageTakenMultiplier					How much damage the player takes
<function> onGain(player)						Called when a player gains this passive
<function> onLose(player)						Called when a player loses this passive
]]
local passiveData = {}						--	string -> table (above)
local playerPassives = {}					--	Player -> table (string -> true)

function RegisterPassive(data)
	assert(data.name)
	assert(data.description)
	assert(data.icon)
	assert(not passiveData[data.name])

	passiveData[data.name] = data
end

function OnPlayerJoined(player)
	playerPassives[player] = {}
end

function OnPlayerLeft(player)
	playerPassives[player] = nil
end

function API.GivePlayerPassive(player, passive)
	assert(passiveData[passive])
	assert(not playerPassives[player][passive])

	playerPassives[player][passive] = true

	if not IS_CLIENT and passiveData[passive].onGain then
		passiveData[passive].onGain(player)
	end
end

function API.RemovePlayerPassive(player, passive)
	assert(passiveData[passive])
	assert(playerPassives[player][passive])

	playerPassives[player][passive] = nil

	if not IS_CLIENT and passiveData[passive].onLose then
		passiveData[passive].onLose(player)
	end
end

function API.DoesPlayerHavePassive(player, passive)
	assert(passiveData[passive])
	return playerPassives[player][passive] == true	-- Cast this to an actual bool
end

function API.GetPlayerThreatMultiplier(player)
	local result = 1.0

	for passive, _ in pairs(playerPassives[player]) do
		if passiveData[passive].threatMultiplier then
			result = result * passiveData[passive].threatMultiplier
		end
	end

	return result
end

function API.GetPlayerDamageDealtMultiplier(player)
	local result = 1.0

	for passive, _ in pairs(playerPassives[player]) do
		if passiveData[passive].damageDealtMultiplier then
			result = result * passiveData[passive].damageDealtMultiplier
		end
	end

	return result
end

function API.GetPlayerDamageTakenMultiplier(player)
	local result = 1.0

	for passive, _ in pairs(playerPassives[player]) do
		if passiveData[passive].damageTakenMultiplier then
			result = result * passiveData[passive].damageTakenMultiplier
		end
	end

	return result
end

function API.GetPlayerPassives(player)
	return playerPassives[player]
end

function API.GetPassiveData(passive)
	return passiveData[passive]
end

-- We stick these in _G to avoid a dependency loop
_G.Passives = {}
_G.Passives.GetPlayerDamageDealtMultiplier = API.GetPlayerDamageDealtMultiplier
_G.Passives.GetPlayerDamageTakenMultiplier = API.GetPlayerDamageTakenMultiplier
_G.Passives.DoesPlayerHavePassive = API.DoesPlayerHavePassive

Game.playerJoinedEvent:Connect(OnPlayerJoined)
Game.playerLeftEvent:Connect(OnPlayerLeft)

for _, data in pairs(passiveDefinitions) do
	RegisterPassive(data)
end

return API
