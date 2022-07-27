local API = {}

local STATE_TRACKER_GROUP = nil

-- movementControlMode, lookControlMode, maxWalkSpeed, groundFriction, brakingFrictionFactor
local DEFAULT_PLAYER_SETTINGS = {}

-- This must match the properties on the helper template
API.MAX_STATUS_EFFECTS = 4

--[[
Custom - Can have any of tick, start, end functions. Most commonly used for DOT/HOT, but could do a lot of things
Stun - Prevents any player movement.
Move Speed - Speeds up or slows down the player.
Damage Dealt Mod - Makes a player do more or less damage.
Damage Taken Mod - Makes a player take more or less damage.
Friction - Adjust a player's ground friction.
--]]
API.STATUS_EFFECT_TYPE_CUSTOM = 1
API.STATUS_EFFECT_TYPE_STUN = 2
API.STATUS_EFFECT_TYPE_MOVE_SPEED = 3
API.STATUS_EFFECT_TYPE_DAMAGE_DEALT_MOD = 4
API.STATUS_EFFECT_TYPE_DAMAGE_TAKEN_MOD = 5
API.STATUS_EFFECT_TYPE_FRICTION = 6
API.STATUS_EFFECT_TYPE_BLIND = 7
--[[
statusEffectData fields:
name - player-facing name
<duration> - default duration, or missing for unlimited duration
icon - to show on ui
color - color in ui (usually the background)
<effectTemplate> - template to spawn and attach to player for effects
type - type from above list
<startFunction(player)> - for custom type, called when applied
<tickFunction(player)> - for custom type, called exactly once a second (on average)
<endFunction(player)> - for custom type, called when expires or removed. Note this may have expired because they died.
<multiplier> - amount to multiply the given property by
id - unique id number defined below
--]]
API.STATUS_EFFECT_DEFINITIONS = {} -- name -> table

local STATUS_EFFECT_ID_TABLE = {} -- id -> table

local tickCounts = {} -- Player -> index -> int

local ID_KEY = 1
local SOURCE_KEY = 2
local TIME_KEY = 3
local DURATION_KEY = 4
local DAMAGE_KEY = 5
local MULTIPLIER_KEY = 6

local function StringSplit(delimiter, text)
	local tbl = {}
	if delimiter == "" then -- this would result in endless loops
		error("delimiter matches empty string!")
	end
	if text == "" then
		error("Empty string!")
	end
	if string.find(text, delimiter) == nil then
		tbl[1] = text
		return tbl
	end
	local p = 1
	local d = "[^" .. delimiter .. "]+"
	for str in string.gmatch(text, d) do
		tbl[p] = str
		p = p + 1
	end
	return tbl
end

local function GetStringifieldValue(v)
	if v == nil then
		return "^nil^"
	end
	if type(v) == "boolean" then
		return v and "^true^" or "^false^"
	end
	return tostring(v)
end

local function IsNumeric(value)
	return value == tostring(tonumber(value)) or math.type(value) ~= nil
end

-- Client and Server
local function ConvertStringToTable(str, pri_delimiter, sec_delimiter)
	local tbl = {}
	local t1 = StringSplit(pri_delimiter or "|", str)
	for _, v in pairs(t1) do
		local t2 = StringSplit(sec_delimiter or "~", v)
		local index = IsNumeric(t2[1]) and tonumber(t2[1]) or t2[1]
		tbl[index] = IsNumeric(t2[2]) and tonumber(t2[2]) or t2[2]
	end
	return tbl
end

-- Client and Server

local function ConvertTableToString(tbl, pri_delimiter, sec_delimiter)
	local str = ""
	sec_delimiter = sec_delimiter or "~"
	pri_delimiter = pri_delimiter or "|"
	if type(tbl) == "number" then
		warn(tostring("CONVERT " .. tbl))
	end
	for k, v in pairs(tbl) do
		str = str .. k .. sec_delimiter .. GetStringifieldValue(v or nil)
		if next(tbl, k) ~= nil then
			str = str .. pri_delimiter
		end
	end
	return str
end

local function GetStatusTbl(tbl)
	local tempTbl = {}
	if tbl ~= "" then
		tempTbl = ConvertStringToTable(tbl)
		return tempTbl
	end
end

function GetStringHash(string)
	local hash = 0
	local pPow = 1

	for i = 1, string.len(string) do
		local c = string.byte(string, i)
		hash = (hash + c * pPow) % 9000000009
		pPow = pPow * 31 % 9000000009
	end

	return hash % 2 ^ 32 - 2 ^ 31
end

function GetIdPropertyName(n)
	return string.format("SE%d_Id", n)
end

function GetStartTimePropertyName(n)
	return string.format("SE%d_StartTime", n)
end

function API.GetSourceProperty(n)
	return string.format("SE%d_Source", n)
end

function UpdatePlayerEffectState(player, effectType)
	local statusEffects = API.GetStatusEffectsOnPlayer(player)

	if effectType == API.STATUS_EFFECT_TYPE_STUN then
		for _, data in pairs(statusEffects) do
			local statusEffectData = API.STATUS_EFFECT_DEFINITIONS[data.name]

			if statusEffectData.type == effectType then
				player.movementControlMode = MovementControlMode.NONE
				--player.lookControlMode = LookControlMode.NONE
				return
			end
		end

		player.movementControlMode = DEFAULT_PLAYER_SETTINGS.movementControlMode
		--player.lookControlMode = DEFAULT_PLAYER_SETTINGS.lookControlMode
		return
	end

	local minMultiplier = 1.0
	local maxMultiplier = 1.0

	for _, data in pairs(statusEffects) do
		local statusEffectData = API.STATUS_EFFECT_DEFINITIONS[data.name]

		if statusEffectData.type == effectType then
			minMultiplier = math.min((statusEffects.multiplier or statusEffectData.multiplier), minMultiplier)
			maxMultiplier = math.max((statusEffects.multiplier or statusEffectData.multiplier), maxMultiplier)
		end
	end

	if effectType == API.STATUS_EFFECT_TYPE_MOVE_SPEED then
		player.maxWalkSpeed = DEFAULT_PLAYER_SETTINGS.maxWalkSpeed * minMultiplier * maxMultiplier
	elseif effectType == API.STATUS_EFFECT_TYPE_DAMAGE_DEALT_MOD then
		-- do something
	elseif effectType == API.STATUS_EFFECT_TYPE_DAMAGE_TAKEN_MOD then
		-- do something
	elseif effectType == API.STATUS_EFFECT_TYPE_FRICTION then
		player.groundFriction = DEFAULT_PLAYER_SETTINGS.groundFriction * minMultiplier * maxMultiplier
		player.brakingFrictionFactor = DEFAULT_PLAYER_SETTINGS.brakingFrictionFactor * minMultiplier * maxMultiplier
	end
end

function OnPlayerJoined(player)
	tickCounts[player] = {}
end

function OnPlayerLeft(player)
	tickCounts[player] = nil
end

-- Client and Server
function API.GetStateTrackerName(player)
	return player.id
end

-- Client and Server
function API.GetStateTracker(player)
	return STATE_TRACKER_GROUP:FindChildByName(API.GetStateTrackerName(player))
end

-- Client and Server
function API.InitializeStatusEffectController(stateTrackerGroup)
	STATE_TRACKER_GROUP = stateTrackerGroup
end

-- Server
function API.InitializePlayerSettings(player)
	DEFAULT_PLAYER_SETTINGS.movementControlMode = player.movementControlMode
	DEFAULT_PLAYER_SETTINGS.lookControlMode = player.lookControlMode
	DEFAULT_PLAYER_SETTINGS.maxWalkSpeed = player.maxWalkSpeed
	DEFAULT_PLAYER_SETTINGS.groundFriction = player.groundFriction
	DEFAULT_PLAYER_SETTINGS.brakingFrictionFactor = player.brakingFrictionFactor
end

-- Client and Server
function API.DefineStatusEffect(statusEffectData)
	if type(statusEffectData) ~= "table" then
		error(string.format("DefineStatusEffect called with non-table statusEffectData (%s)", tostring(statusEffectData)))
	end

	if not statusEffectData.name then
		error("DefineStatusEffect called with statusEffectData missing name")
	end

	if not statusEffectData.icon then
		error(string.format("DefineStatusEffect for %s missing icon", statusEffectData.name))
	end

	if not statusEffectData.color then
		error(string.format("DefineStatusEffect for %s missing color", statusEffectData.name))
	end

	if not statusEffectData.type then
		error(string.format("DefineStatusEffect for %s missing type", statusEffectData.name))
	end

	if statusEffectData.type == API.STATUS_EFFECT_TYPE_CUSTOM then
		if not statusEffectData.startFunction and not statusEffectData.tickFunction and not statusEffectData.endFunction then
			error(string.format("DefineStatusEffect for %s has no function but is type custom", statusEffectData.name))
		end
	elseif statusEffectData.type ~= API.STATUS_EFFECT_TYPE_STUN then
		if not statusEffectData.multiplier then
			error(string.format("DefineStatusEffect for %s has no multiplier and requires one", statusEffectData.name))
		end
	end

	if API.STATUS_EFFECT_DEFINITIONS[statusEffectData.name] then
		error(string.format("DefineStatusEffect for %s when that status effect already exists", statusEffectData.name))
	end

	local id = statusEffectData.name
	--GetStringHash(statusEffectData.name)
	statusEffectData.id = id

	if id == 0 then
		error(string.format("DefineStatusEffect for %s has 0 id", statusEffectData.name))
	end

	if STATUS_EFFECT_ID_TABLE[id] then
		error(string.format("DefineStatusEffect for %s has id collision", statusEffectData.name))
	else
		STATUS_EFFECT_ID_TABLE[id] = statusEffectData
	end

	API.STATUS_EFFECT_DEFINITIONS[statusEffectData.name] = statusEffectData
end

-- Client and Server, returns index -> name, startTime table, may not have consecutive indices
function API.GetStatusEffectsOnPlayer(player)
	if not Object.IsValid(player) then
		return
	end
	local tracker = API.GetStateTracker(player)
	if not tracker or not Object.IsValid(tracker) then
		return
	end
	local result = {}

	for i = 1, API.MAX_STATUS_EFFECTS do
		local source = GetStatusTbl(tracker:GetCustomProperty(API.GetSourceProperty(i)))
		if source and source[ID_KEY] ~= 0 then
			local id = source[ID_KEY]
			local data = {}
			data.name = STATUS_EFFECT_ID_TABLE[id].name
			data.startTime = tonumber(source[TIME_KEY])
			data.source = source[SOURCE_KEY]
			data.duration = source[DURATION_KEY]
			data.damage = source[DAMAGE_KEY]
			data.multiplier = source[MULTIPLIER_KEY]
			result[i] = data
		end
	end

	return result
end

-- Server only
function API.ApplyStatusEffect(player, id, source, duration, damage, multiplier)
	if not Object.IsValid(player) then
		return
	end
	if player.isDead or player.serverUserData.DamageImmunity then
		return
	end
	local doesHave, currentId = API.DoesPlayerHaveStatusEffect(player, id)
	if doesHave then
		API.RemoveStatusEffect(player, currentId)
	end

	local tracker = API.GetStateTracker(player)
	for i = 1, API.MAX_STATUS_EFFECTS do
		if tracker then
			local trackerTbl = GetStatusTbl(tracker:GetCustomProperty(API.GetSourceProperty(i)))

			if not trackerTbl then
				--tracker:SetNetworkedCustomProperty(GetIdPropertyName(i), id)
				--tracker:SetNetworkedCustomProperty(GetStartTimePropertyName(i), time())
				if source or duration or damage or multiplier then
					local tempTbl = {
						[ID_KEY] = id,
						[TIME_KEY] = CoreMath.Round(time(), 2),
						[SOURCE_KEY] = source.id,
						[DURATION_KEY] = duration,
						[DAMAGE_KEY] = damage,
						[MULTIPLIER_KEY] = multiplier
					}

					tracker:SetNetworkedCustomProperty(API.GetSourceProperty(i), ConvertTableToString(tempTbl))
				end
				tickCounts[player][i] = 0

				local statusEffectData = STATUS_EFFECT_ID_TABLE[id]

				if statusEffectData.type == API.STATUS_EFFECT_TYPE_CUSTOM then
					if statusEffectData.startFunction then
						statusEffectData.startFunction(player)
					end
				else
					UpdatePlayerEffectState(player, statusEffectData.type)
				end

				return
			end
		end
	end

	-- Knock one off?
	if id and type(id) == "number" and player and Object.IsValid(player) then
		warn(string.format("Failed to apply status effect id: %d to player %s because they already had max", id, player.name))
	end
end

-- Server only
function API.RemoveStatusEffect(player, index)
	if not Object.IsValid(player) then
		return
	end
	local tracker = API.GetStateTracker(player)
	local trackerTbl = GetStatusTbl(tracker:GetCustomProperty(API.GetSourceProperty(index)))
	if trackerTbl and trackerTbl[ID_KEY] ~= "" then
		local id = trackerTbl[ID_KEY]
		tracker:SetNetworkedCustomProperty(API.GetSourceProperty(index), "")
		tickCounts[player][index] = nil

		local statusEffectData = STATUS_EFFECT_ID_TABLE[id]

		if statusEffectData.type == API.STATUS_EFFECT_TYPE_CUSTOM then
			if statusEffectData.endFunction then
				statusEffectData.endFunction(player)
			end
		else
			UpdatePlayerEffectState(player, statusEffectData.type)
		end

		return
	end

	error(string.format("Failed to remove status effect index: %d on player %s (they don't have it)", index, player.name))
end

function API.DoesPlayerHaveStatusEffect(player, name)
	if not Object.IsValid(player) then
		return false
	end
	local tracker = API.GetStateTracker(player)

	if not tracker or not Object.IsValid(tracker) then
		return false
	end

	for i = 1, API.MAX_STATUS_EFFECTS do
		local trackerTbl = GetStatusTbl(tracker:GetCustomProperty(API.GetSourceProperty(i)))
		if trackerTbl and trackerTbl[ID_KEY] ~= 0 then
			local id = trackerTbl[ID_KEY]
			local statusEffectData = STATUS_EFFECT_ID_TABLE[id]
			if (statusEffectData.name == name) then
				return true, i
			end
		end
	end
	return false
end

-- Server only
function API.RemoveStatusEffectByName(player, name)
	if not Object.IsValid(player) then
		return
	end
	local tracker = API.GetStateTracker(player)
	for i = 1, API.MAX_STATUS_EFFECTS do
		local trackerTbl = GetStatusTbl(tracker:GetCustomProperty(API.GetSourceProperty(i)))
		if trackerTbl and trackerTbl[ID_KEY] ~= "" then
			local statusEffectData = STATUS_EFFECT_ID_TABLE[trackerTbl[ID_KEY]]
			if (statusEffectData.name == name) then
				API.RemoveStatusEffect(player, i)
			end
		end
	end
end

-- Server only
function API.RemoveAllStatusEffects(player)
	if not Object.IsValid(player) then
		return
	end
	local tracker = API.GetStateTracker(player)
	for i = 1, API.MAX_STATUS_EFFECTS do
		local trackerTbl = GetStatusTbl(tracker:GetCustomProperty(API.GetSourceProperty(i)))
		if trackerTbl and trackerTbl[ID_KEY] ~= "" then
			local statusEffectData = STATUS_EFFECT_ID_TABLE[trackerTbl[ID_KEY]]
			API.RemoveStatusEffect(player, i)
		end
	end
end

-- Server Only
function API.Tick(deltaTime)
	local players = Game.GetPlayers()
	for _, player in ipairs(players) do
		if Object.IsValid(player) then
			local tracker = API.GetStateTracker(player)

			for i = 1, API.MAX_STATUS_EFFECTS do
				local trackerTbl = GetStatusTbl(tracker:GetCustomProperty(API.GetSourceProperty(i)))

				if trackerTbl and trackerTbl[ID_KEY] ~= "" then
					local id = trackerTbl[ID_KEY]
					local startTime = tonumber(trackerTbl[TIME_KEY])
					local statusEffectData = STATUS_EFFECT_ID_TABLE[id]
					local sourcePlayer

					for _, s in ipairs(players) do
						if s.id == trackerTbl[SOURCE_KEY] then
							sourcePlayer = s
						end
					end

					if statusEffectData.type == API.STATUS_EFFECT_TYPE_CUSTOM and statusEffectData.tickFunction then
						local ticksExpected = math.floor(time() - startTime)

						for j = tickCounts[player][i] + 1, ticksExpected do
							tickCounts[player][i] = tickCounts[player][i] + 1
							statusEffectData.tickFunction(player, sourcePlayer, trackerTbl[DAMAGE_KEY])

							-- The tick might kill you, which removes all your status effects. The rest of this is no longer valid.
							if player.isDead then
								return
							end
						end
					end

					if
						statusEffectData.duration and
							time() > tonumber(startTime + (trackerTbl[DURATION_KEY] or statusEffectData.duration))
					 then
						API.RemoveStatusEffect(player, i)
					end
				end
			end
		end
	end
end

Game.playerJoinedEvent:Connect(OnPlayerJoined)
Game.playerLeftEvent:Connect(OnPlayerLeft)

return API
