--[[
	Rewards Parser
	v1.0 - 2022/10/20
	by: standardcombo
	
	Parses reward instructions for the Loot Drop and Quest systems.
	Uses a meta-scripting language that define complex reward sequences.
	
	Usage
	=====
	Added as a require() script to other scripts. Then call Parse()
	
	API
	===
	- Parse(player, dataTable, rowId)
		Runs the instructions found in the given data table, at row "rowId".
		Instructions should be in the column named "rewards".
	
	Meta-scripting
	==============
	Commands:
	- Wait(float duration) A small pause in execution.
	- Ref(string rewardRowId) Runs the instructions from another row of data.
	- Loop(int count=string rewardRowId) Repeats another instruction multiple times.
	- XP(int amount) Gives the player a specific amount of XP points (resource).
	- Material(string itemId=int amount) Gives the player crafting materials.
	- Item(string itemId) Gives the player a specific item.
	- RandomItem(string paramName=int paramValue) Gives the player a random item.
	- RNG[int minValue-int maxValue] Random number range. Supported in expressions.
	- | 'or' operator, for multiple alternative parameters, chosen at random.
	
	Examples:
	"Material(Coins=5)"
		Gives the player 5 Coins.
	
	"Material(Coins=RNG[3-10])"
		Gives the player a random amount of Coins, between 3 and 10.
	
	"Material(Coins=10), Wait(1), Item(MapPiece)"
		Gives the player 10 Coins, waits 1 second, then gives them a MapPiece item.
	
	"Ref(RndMat), Wait(1), Ref(RndItem)"
		Executes the instruction at row "RndMat", waits 1 second, then executes the
		"RndItem" instruction.
	
	"Ref(RndMat | RndItem | CoinPile)"
		Executes one instruction, from either "RndMat", "RndItem" or "CoinPile".
		
	"Loop(3=Bone1), Wait(0.5), Material(Coins=RNG[1-5])"
		Executes the instruction at row "Bone1" three times, waits half a second,
		then gives the player a random amount of coins, between 1 and 5.
]]

local API = {}

local XP_RESOURCE_KEY = "Cxp"

local stackDepth = 0


function API.Parse(player, dataTable, rowId)
	stackDepth = 0
	_Parse(player, dataTable, rowId)
end

function _Parse(player, dataTable, rowId)
	stackDepth = stackDepth + 1
	if stackDepth >= 10 then
		error("Cyclic data detected at row: "..rowId)
	end
	
	local entry = dataTable[rowId]
	local rewards = SplitCommaSeparatedData(entry.rewards)
	for _,rewardInstruction in ipairs(rewards) do
		_GrantReward(player, dataTable, rewardInstruction)
		-- It's possible the player has left in the middle of reward sequence
		if not Object.IsValid(player) then return end
	end
end

function _GrantReward(player, dataTable, rewardInstruction)
	local instruction, param = CoreString.Split(rewardInstruction, {
		delimiters = {"(", ")"}, 
		removeEmptyResults = true
	})
	
	-- Case of multiple parameters separated by '|', choose one at random
	local alternativeParams = { CoreString.Split(param, "|") }
	if #alternativeParams > 1 then
		for i,value in ipairs(alternativeParams) do
			if type(value) ~= "string" then
				table.remove(alternativeParams, i)
			end
		end
		local randomIndex = math.random(1, #alternativeParams)
		param = CoreString.Trim(alternativeParams[randomIndex])
	end
	
	-- Check all instructions
	if instruction == "Wait" then
		-- Add a small pause. Useful in-between rewards
		local delay = tonumber(param)
		if delay then
			Task.Wait(delay)
		else
			warn("Failed to delay rewards with instruction: ".. rewardInstruction)
		end
		
	elseif instruction == "Ref" then
		-- Recursive
		_Parse(player, dataTable, param)
		
	elseif instruction == "Loop" then
		-- Repeat a reward several times
		local loopCount, ref = CoreString.Split(param, "=")
		loopCount = _ParseAmount(loopCount)
		for i = 1,loopCount do
			_Parse(player, dataTable, ref)
			Task.Wait()
			if not Object.IsValid(player) then return end
		end

	elseif instruction == "XP" then
		-- Add XP
		local resourceId = XP_RESOURCE_KEY
		local resourceAmount = _ParseAmount(param)
		player:AddResource(resourceId, resourceAmount)
		-- Show toast UI
		local itemDef = _G["Items.More"].GetDefinition("XP")
		_GrantItem(player, itemDef, resourceAmount)

	elseif instruction == "Material" then
		-- Give a crafting material
		local key, amount = CoreString.Split(param, "=")
		local materialDef = _G["Items.Materials"].GetDefinition(key)
		amount = _ParseAmount(amount)
		if materialDef and amount then
			_GrantItem(player, materialDef, amount)
		else
			warn("Failed to grant material with instruction:".. rewardInstruction)
		end
		
	elseif instruction == "Item" then
		-- Specific item, by ID
		local itemDef = _G["Items.More"].GetDefinition(param)
		if itemDef then
			_GrantItem(player, itemDef, 1)
		else
			warn("Failed to grant specific item with instruction:".. rewardInstruction)
		end
	
	elseif instruction == "RandomItem" then
		local key, amount = CoreString.Split(param, "=")
		
		print("TODO: Granting random item with ".. key .." ".. amount)
		
		local itemDef = _G["Items.More"].GetDefinition("RandomItem")
		_GrantItem(player, itemDef)

	else
		warn("Failed to parse reward with instruction:".. rewardInstruction)
	end
end

function _ParseAmount(value)
	if not value then
		return nil
	end
	local num = tonumber(value)
	if num then
		return num
	end
	local min, max = CoreString.Split(value, {
		delimiters = {"RNG[", "rng[", "Rng[", "-", "]"}, 
		removeEmptyResults = true
	})
	min = tonumber(min)
	max = tonumber(max)
	if min and max then
		return math.random(min, max)
	end
	return nil
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

