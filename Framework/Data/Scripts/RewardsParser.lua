--[[
	Rewards Parser
	v1.1.0 - 2023/3/30
	by: standardcombo
	
	Parses reward instructions for Loot Drops, Quests, or any other system.
	Uses a meta-scripting language that define complex reward sequences.
	Supports full math expressions.
	
	
	Usage
	=====
	Added as a require() script to other scripts. Then call Parse()
	
	
	Dependencies
	============
	- RewardsAdapter.lua: A small interface called by the Rewards Parser.
		Allows easier integration with various inventory systems. Implement
		the adapter to work with your game.
	
	
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

	"Material(Coins=PlayerLevel*10)"
		Gives the player a number of Coins equal to their level multiplied by 10.
]]

local API = {}

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
	if not entry then
		error("Failed to parse rewards for row: "..tostring(rowId))
	end
	local rewards = SplitCommaSeparatedData(entry.rewards)
	for _,rewardInstruction in ipairs(rewards) do
		_GrantReward(player, dataTable, rewardInstruction)
		-- It's possible the player has left in the middle of reward sequence
		if not Object.IsValid(player) then return end
	end
end

local function GetPlayerLevel(player)
	if _G["Character.EquipAPI"] then
		local char = _G["Character.EquipAPI"].GetCurrentCharacter(player)
		if char then
			return char:GetComponent("Level").level
		end
	end
	return player:GetResource("Level")
end

function _GrantReward(player, dataTable, rewardInstruction)
	-- Replace `PlayerLevel` variable with player's actual level
	local playerLevel = GetPlayerLevel(player)
	rewardInstruction = rewardInstruction:gsub("PlayerLevel", tostring(playerLevel))
	
	-- Normalize case for RNG macro
	rewardInstruction = rewardInstruction:gsub("rng%[", "RNG[")
	rewardInstruction = rewardInstruction:gsub("Rng%[", "RNG[")
	
	local instruction, param = rewardInstruction:match("^(.-)%((.+)%)$")
	
	if not instruction or not param then
		error("Malformed reward instruction '"..rewardInstruction.."'")
	end
	
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
		loopCount = _ParseNumber(loopCount)
		for i = 1,loopCount do
			_Parse(player, dataTable, ref)
			Task.Wait()
			if not Object.IsValid(player) then return end
		end

	elseif instruction == "XP" then
		-- Add XP
		local amount = _ParseNumber(param)
		if _G.RewardsAdapter then
			_G.RewardsAdapter.AddXP(player, amount)
		else
			player:AddResource("XP", amount)
		end

	elseif instruction == "Material" then
		-- Give a crafting material
		local key, amount = CoreString.Split(param, "=")
		amount = _ParseNumber(amount)
		if key and amount then
			if _G.RewardsAdapter then
				_G.RewardsAdapter.AddMaterial(player, key, amount)
			else
				warn("Missing rewards adapter. Implement _G.RewardsAdapter.AddMaterial()")
			end
		else
			warn("Failed to grant material with instruction:".. rewardInstruction)
		end
		
	elseif instruction == "Item" then
		-- Specific item, by ID
		if param then
			if _G.RewardsAdapter then
				_G.RewardsAdapter.AddItem(player, param)
			else
				warn("Missing rewards adapter. Implement _G.RewardsAdapter.AddItem()")
			end
		else
			warn("Failed to grant specific item with instruction:".. rewardInstruction)
		end
	
	elseif instruction == "RandomItem" then
		-- Random item
		local key, value = CoreString.Split(param, "=")
		if key and value then
			local num = _ParseNumber(value)
			if num then
				value = num
			end
			if _G.RewardsAdapter then
				_G.RewardsAdapter.AddRandomItem(player, key, value)
			else
				warn("Missing rewards adapter. Implement _G.RewardsAdapter.AddItem()")
			end
		else
			warn("Failed to grant specific item with instruction:".. rewardInstruction)
		end

	else
		warn("Failed to parse reward with instruction:".. rewardInstruction)
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


function tokenize(expr)
	local tokens = {}
	expr = expr:gsub("%s+", "") -- remove whitespace
	local i = 1
	while i <= #expr do
		local c = expr:sub(i, i)
		if c:match("%d") or c == "." then -- parse number
			local j = i + 1
			while j <= #expr and (expr:sub(j, j):match("%d") or expr:sub(j, j) == ".") do
				j = j + 1
			end
			tokens[#tokens+1] = expr:sub(i, j-1)
			i = j
		elseif c:match("[%+%-*/%(%)%%^]") then -- parse operator
			tokens[#tokens+1] = c
			i = i + 1
		else -- unrecognized character
			error("Invalid token '"..c.."' in expression: " ..expr)
		end
	end
	return tokens
end


function _ParseNumber(str)
	-- Define operator precedence levels (reversed order)
	local precedence = {
		"+",
		"-",
		"*",
		"/",
	}
	
	-- Inner function that evaluates a sub-expressions. Allows recursion
	local function evaluate(expr)
		--print("evaluate() "..expr)
		-- Evaluate expressions inside parentheses first
		expr = expr:gsub("^(.-)%((.+)%)(.-)$", function(a, b, c)
			--print(a)
			--print(b)
			--print(c)
			if b then
				return a..tostring(evaluate(b))..c
			end
			return expr
		end)
		-- Replace RNG[a-b] constructs with random numbers
		local function replace_rng(pre, a, b, post)
			--print(pre)
			--print(a)
			--print(b)
			--print(post)
			-- parse the expressions for a and b
			local a_val = _ParseNumber(a)
			if not a_val then
				error("Failed to parse expression: " .. a)
			end
			local b_val = _ParseNumber(b)
			if not b_val then
				error("Failed to parse expression: " .. b)
			end
			-- compute the range of possible values
			local min_val = CoreMath.Round(math.min(a_val, b_val))
			local max_val = CoreMath.Round(math.max(a_val, b_val))
			-- generate and return a random number in the range
			return pre.. tostring(math.random(min_val, max_val)) ..post
		end
		-- Start with the inner-most RNG[] block. Pad with spaces to ease parsing
		local paddedExpr = ' '..expr..' '
		local rngExpr = paddedExpr:gsub("^(.+)RNG%[(.-)%-(.-)%](.+)$", replace_rng)
		if rngExpr ~= paddedExpr then
			--print("rngExpr: "..rngExpr)
			return evaluate(rngExpr)
		end
		
		-- Most basic case, the expression is simply a number
		local number = tonumber(expr)
		if number then
			return number
		end
		
		-- Split the expression into tokens
		local tokens = tokenize(expr)
		
		-- Evaluate the tokens in order of operator precedence
		for i = 1, #precedence do
			local op = precedence[i]
			for j = 2, #tokens - 1 do
				if tokens[j] == op then
					-- Evaluate the expression to the left of the operator
					local left_expr = table.concat(tokens, " ", 1, j - 1)
					local left_val = evaluate(left_expr)
					
					-- Evaluate the expression to the right of the operator
					local right_expr = table.concat(tokens, " ", j + 1)
					local right_val = evaluate(right_expr)
					
					-- Apply the operator to the two values
					local result
					if op == "+" then
						return left_val + right_val
					elseif op == "-" then
						return left_val - right_val
					elseif op == "*" then
						return left_val * right_val
					elseif op == "/" then
						return left_val / right_val
					end
					error("Unimplemented operator '"..op.."' in reward string '"..str.."'")
					return 0
				end
			end
		end
		error("Could not parse reward string '"..str.."', check syntax")
		return 0
	end

	-- Evaluate the expression and return the result
	return evaluate(str)
end


return API

