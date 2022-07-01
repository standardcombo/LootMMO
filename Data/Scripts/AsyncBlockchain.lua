
--[[
	Async Blockchain
	v1.1
	by: standardcombo
	
	Loads blockchain tokens, mirroring the base Core API, with additional functionality.
	
	Returns a table of tokens in that collection, owned by that player.
	Handles error cases and retries in case of error.
	
	Caches results and request parameters. Therefore, if multiple places in the
	codebase ask for the same collections the load times can be reduced.
	
	Can call `LoadTokens()` multiple times in quick succession, giving the
	same callback function for all results. See example below.
	
	In case of very large collections pagination is handled. All tokens are
	gathered into a single table before the callback function is called.


	===== API =====
	IsBusy()
		Returns true if the async loader is currently processing requests.
		
	GetToken(contractAddress, tokenId, callbackFunction)
	
	GetTokens(contractAddress, table params, callbackFunction)

	GetTokensForPlayer(player, table params [, callbackFunction])
		No return value.
		Asynchronously gathers tokens that a player owns from a collection.
		The `params` table, in addition to the base API options, takes an optional 
		parameter `forceRefreshCache` bool.
		Calls the given callback function, passing a table of `BlockchainTokens`.

	
	==== Usage ====
	local ASYNC_BLOCKCHAIN = require( script:GetCustomProperty("AsyncBlockchain") )
	
	function Results(tokens)
		for _,t in ipairs(tokens) do
			DoSomethingWithToken(t)
		end
	end
	
	ASYNC_BLOCKCHAIN.GetTokensForPlayer(player, {contractAddress = id1}, Results)
	ASYNC_BLOCKCHAIN.GetTokensForPlayer(player, {contractAddress = id2}, Results)
	ASYNC_BLOCKCHAIN.GetTokensForPlayer(player, {contractAddress = id3}, Results, true)
]]

local API = {}

local RETRIES = 20
local ERROR_WAIT = 3

local tokensPerPlayer = {}
local collectionsPerPlayer = {}

local requestQueue = {}
local activeTask = nil


function API.IsBusy()
	return activeTask ~= nil
end


function API.GetToken(contractAddress, tokenId, callbackFunction)
	for i = 1, RETRIES do
		local token, resultCode, err = Blockchain.GetToken(contractAddress, tokenId)
		
		if token and resultCode == BlockchainTokenResultCode.SUCCESS then
			if callbackFunction then
				callbackFunction(token)
			end
			return
		end
		if TryAgainError(err) then
			warn("GetToken() Blockchain error: " ..err.. "\nTrying again in "..ERROR_WAIT.." seconds.")
			Task.Wait(ERROR_WAIT)
		else
			warn("GetToken() Blockchain error: " ..err)
			return
		end
	end
end


function API.GetTokens(contractAddress, params, callbackFunction)
	local resultingTokens = nil
	local collection
	
	for i = 1, RETRIES do
		collection, resultCode, err = Blockchain.GetTokens(contractAddress, params)
		
		if collection and resultCode == BlockchainTokenResultCode.SUCCESS then
			break
		end
		if TryAgainError(err) then
			warn("GetTokens() Blockchain error: " ..err.. "\nTrying again in "..ERROR_WAIT.." seconds.")
			Task.Wait(ERROR_WAIT)
		else
			warn("GetTokens() Blockchain error: " ..err)
			break
		end
	end
		
	while collection do
		local tokens = collection:GetResults()
		
		if not resultingTokens then
			resultingTokens = tokens
		else
			for _,t in ipairs(tokens) do
				table.insert(resultingTokens, t)
			end
		end
		
		if collection.hasMoreResults then
			collection = collection:GetMoreResults()
		
			Task.Wait() -- Wait a frame. Give the CPU breathing room
		else
			collection = nil
		end
	end
	
	if callbackFunction then
		callbackFunction(resultingTokens)
	end
end


function API.GetTokensForPlayer(player, parameters, callbackFunction)
	local contractAddress = parameters.contractAddress
	local forceRefreshCache = parameters.forceRefreshCache
	
	-- Check cache. Return existing data if available
	if collectionsPerPlayer[player] then
		if forceRefreshCache then
			collectionsPerPlayer[player][contractAddress] = nil
			
		elseif collectionsPerPlayer[player][contractAddress] then
			local tokens = collectionsPerPlayer[player][contractAddress]
			if callbackFunction then
				callbackFunction(tokens)
			end
			return
		end
	end
	
	-- Setup request data for blockchain loading
	local request = {player = player, contractAddress = contractAddress, callbackFunction = callbackFunction}
	table.insert(requestQueue, request)
	
	if not activeTask then
		activeTask = Task.Spawn(Runner)
	end
end


function Runner()
	while #requestQueue > 0 do
		local request = requestQueue[1]
		table.remove(requestQueue, 1)
		
		local player = request.player
		local contractAddress = request.contractAddress
		local callbackFunction = request.callbackFunction
		
		local resultingTokens = nil
		local collection = nil
		
		-- Check cache again here, as the same request could have been made multiple times, from different code
		if collectionsPerPlayer[player]
		and collectionsPerPlayer[player][contractAddress] then
			resultingTokens = collectionsPerPlayer[player][contractAddress]
			goto continue
		end
		
		for i = 1, RETRIES do
			collection, resultCode, err = Blockchain.GetTokensForPlayer(player, {contractAddress = contractAddress})
			
			if collection and resultCode == BlockchainTokenResultCode.SUCCESS then
				break
			end
			if TryAgainError(err) then
				warn("Blockchain error: " ..err.. "\nTrying again in "..ERROR_WAIT.." seconds.")
				Task.Wait(ERROR_WAIT)
			else
				warn("Blockchain error: " ..err)
				break
			end
		end
		
		while collection do
			local tokens = collection:GetResults()
			
			AddPlayerCache(player, contractAddress, tokens)
			
			if not resultingTokens then
				resultingTokens = tokens
			else
				for _,t in ipairs(tokens) do
					table.insert(resultingTokens, t)
				end
			end
			
			if collection.hasMoreResults then
				collection = collection:GetMoreResults()
			
				Task.Wait() -- Wait a frame. Give the CPU breathing room
			else
				collection = nil
			end
		end
		
		::continue::
		
		if callbackFunction then
			callbackFunction(resultingTokens)
		end
	end
	activeTask = nil
end


function AddPlayerCache(player, contractAddress, tokens)
	if tokensPerPlayer[player] == nil then
		tokensPerPlayer[player] = {}
	end
	if collectionsPerPlayer[player] == nil then
		collectionsPerPlayer[player] = {}
	end
	if collectionsPerPlayer[player][contractAddress] == nil then
		collectionsPerPlayer[player][contractAddress] = {}
	end
	
	local hasTokens = tokensPerPlayer[player]
	local collection = collectionsPerPlayer[player][contractAddress]
	
	for _,t in ipairs(tokens) do
		if not hasTokens[t] then
			hasTokens[t] = true
			table.insert(collection, t)
		end
	end
end


function TryAgainError(errorMessage)
	if errorMessage == "InvalidAccount" then
		return false
	end
	return true
end

return API

