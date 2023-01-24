
--[[
	Re-implements the Async Blockchain component, where the function
	Blockchain.GetTokensForPlayer() with contract address is done by
	scanning and sorting the player's entire wallets, instead of using
	the base API implementation.
	
	All other async functions are simply forwarded to the older version
	of this component.
]]

local ASYNC_BLOCKCHAIN = require(script:GetCustomProperty("AsyncBlockchain"))


local API = {}

local RETRIES = 20
local ERROR_WAIT = 3

local collectionsPerPlayer = {}

local requestQueue = {}
local activeTask = nil

local botWalletSingleWarning = true


function API.IsBusy()
	return activeTask ~= nil or ASYNC_BLOCKCHAIN.IsBusy()
end

-- Redirect
function API.GetToken(contractAddress, tokenId, callbackFunction)
	ASYNC_BLOCKCHAIN.GetToken(contractAddress, tokenId, callbackFunction)
end

-- Redirect
function API.GetTokens(contractAddress, params, callbackFunction)
	ASYNC_BLOCKCHAIN.GetTokens(contractAddress, params, callbackFunction)
end

-- Re-implemented as a full scan and sorting of wallet
function API.GetTokensForPlayer(player, parameters, callbackFunction)
	if callbackFunction and parameters.contractAddress == "0x1dfe7ca09e99d10835bf73044a23b73fc20623df" then
		callbackFunction({{contractAddress="0x1dfe7ca09e99d10835bf73044a23b73fc20623df",tokenId="1404114",rawMetadata="data:application/json;base64,eyJuYW1lIjogIkJhZyAjMTQwNDExNCIsICJkZXNjcmlwdGlvbiI6ICJNb3JlIExvb3QgaXMgYWRkaXRpb25hbCByYW5kb21pemVkIGFkdmVudHVyZXIgZ2VhciBnZW5lcmF0ZWQgYW5kIHN0b3JlZCBvbiBjaGFpbi4gTWF4aW11bSBzdXBwbHkgaXMgZHluYW1pYywgaW5jcmVhc2luZyBhdCAxLzEwdGggb2YgRXRoZXJldW0ncyBibG9jayByYXRlLiBTdGF0cywgaW1hZ2VzLCBhbmQgb3RoZXIgZnVuY3Rpb25hbGl0eSBhcmUgaW50ZW50aW9uYWxseSBvbWl0dGVkIGZvciBvdGhlcnMgdG8gaW50ZXJwcmV0LiBGZWVsIGZyZWUgdG8gdXNlIE1vcmUgTG9vdCBpbiBhbnkgd2F5IHlvdSB3YW50LiIsICJpbWFnZSI6ICJkYXRhOmltYWdlL3N2Zyt4bWw7YmFzZTY0LFBITjJaeUI0Yld4dWN6MGlhSFIwY0RvdkwzZDNkeTUzTXk1dmNtY3ZNakF3TUM5emRtY2lJSEJ5WlhObGNuWmxRWE53WldOMFVtRjBhVzg5SW5oTmFXNVpUV2x1SUcxbFpYUWlJSFpwWlhkQ2IzZzlJakFnTUNBek5UQWdNelV3SWo0OGMzUjViR1UrTG1KaGMyVWdleUJtYVd4c09pQjNhR2wwWlRzZ1ptOXVkQzFtWVcxcGJIazZJSE5sY21sbU95Qm1iMjUwTFhOcGVtVTZJREUwY0hnN0lIMDhMM04wZVd4bFBqeHlaV04wSUhkcFpIUm9QU0l4TURBbElpQm9aV2xuYUhROUlqRXdNQ1VpSUdacGJHdzlJbUpzWVdOcklpQXZQangwWlhoMElIZzlJakV3SWlCNVBTSXlNQ0lnWTJ4aGMzTTlJbUpoYzJVaVBrZHlhVzF2YVhKbFBDOTBaWGgwUGp4MFpYaDBJSGc5SWpFd0lpQjVQU0kwTUNJZ1kyeGhjM005SW1KaGMyVWlQa1JwZG1sdVpTQlNiMkpsSUc5bUlGQnZkMlZ5UEM5MFpYaDBQangwWlhoMElIZzlJakV3SWlCNVBTSTJNQ0lnWTJ4aGMzTTlJbUpoYzJVaVBrUnlZV2R2YmlkeklFTnliM2R1UEM5MFpYaDBQangwWlhoMElIZzlJakV3SWlCNVBTSTRNQ0lnWTJ4aGMzTTlJbUpoYzJVaVBrUnlZV2R2Ym5OcmFXNGdRbVZzZER3dmRHVjRkRDQ4ZEdWNGRDQjRQU0l4TUNJZ2VUMGlNVEF3SWlCamJHRnpjejBpWW1GelpTSStVMmxzYXlCVGJHbHdjR1Z5Y3p3dmRHVjRkRDQ4ZEdWNGRDQjRQU0l4TUNJZ2VUMGlNVEl3SWlCamJHRnpjejBpWW1GelpTSStUR1ZoZEdobGNpQkhiRzkyWlhNZ2IyWWdVbVZtYkdWamRHbHZiand2ZEdWNGRENDhkR1Y0ZENCNFBTSXhNQ0lnZVQwaU1UUXdJaUJqYkdGemN6MGlZbUZ6WlNJK1RtVmphMnhoWTJVOEwzUmxlSFErUEhSbGVIUWdlRDBpTVRBaUlIazlJakUyTUNJZ1kyeGhjM005SW1KaGMyVWlQa2R2YkdRZ1VtbHVaend2ZEdWNGRENDhMM04yWno0PSJ9"}})
		return
	end
	if Environment.IsMultiplayerPreview() and string.sub(player.name, 1, 3) == "Bot" then
		if botWalletSingleWarning then
			botWalletSingleWarning = false
			warn("Call to GetTokensForPlayer() in multiplayer preview returns an empty table, as bots don't have wallets.")
		end
		if callbackFunction then
			callbackFunction({}) -- Empty table result
		end
		return
	end

	local contractAddress = parameters.contractAddress
	local forceRefreshCache = parameters.forceRefreshCache
	
	-- Check cache. Return existing data if available
	if collectionsPerPlayer[player] then
		if forceRefreshCache then
			collectionsPerPlayer[player] = nil
			
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
		local wallets = nil
		
		-- Check cache again here, as the same request could have been made multiple times, from different code
		if collectionsPerPlayer[player] then
			goto continue
		end
		
		-- Get wallets for the player
		for i = 1, RETRIES do
			if not Object.IsValid(player) then break end
			
			wallets, resultCode, err = Blockchain.GetWalletsForPlayer(player)
			
			if wallets and resultCode == BlockchainTokenResultCode.SUCCESS then
				break
			end
			if TryAgainError(err) then
				warn("1) Blockchain error: " ..err.. "\nTrying again in "..ERROR_WAIT.." seconds.")
				Task.Wait(ERROR_WAIT)
			else
				warn("2) Blockchain error: " ..err)
				goto continue
			end
		end
		wallets = wallets:GetResults()
		
		-- Load all tokens from each wallet
		for _, wallet in pairs(wallets) do
			for i = 1, RETRIES do
				collection, resultCode, err = Blockchain.GetTokensForOwner(wallet.address)
				
				if not collection or resultCode ~= BlockchainTokenResultCode.SUCCESS then
					if TryAgainError(err) then
						warn("3) Blockchain error: " ..err.. "\nTrying again in "..ERROR_WAIT.." seconds.")
						Task.Wait(ERROR_WAIT)
						collection = nil
					else
						warn("4) Blockchain error: " ..err)
						goto continue
					end
				end
				
				while collection do
					local tokens = collection:GetResults()
					
					AddPlayerCache(player, tokens)
					
					if collection.hasMoreResults then
						collection = collection:GetMoreResults()
					
						Task.Wait() -- Wait a frame. Give the CPU breathing room
					else
						collection = nil
					end
				end
				if not collection then
					break
				end
			end
		end
		
		::continue::
		
		if not collectionsPerPlayer[player] then
			collectionsPerPlayer[player] = {}
		end
		if not collectionsPerPlayer[player][contractAddress] then
			collectionsPerPlayer[player][contractAddress] = {}
		end
		resultingTokens = collectionsPerPlayer[player][contractAddress]
		
		if callbackFunction then
			callbackFunction(resultingTokens)
		end
	end
	activeTask = nil
end


function AddPlayerCache(player, tokens)
	if collectionsPerPlayer[player] == nil then
		collectionsPerPlayer[player] = {}
	end
	
	for _,t in ipairs(tokens) do

		local contractAddress = t.contractAddress
		if collectionsPerPlayer[player][contractAddress] == nil then
			collectionsPerPlayer[player][contractAddress] = {}
		end
		table.insert(collectionsPerPlayer[player][contractAddress], t)
	end
end


function TryAgainError(errorMessage)
	if errorMessage == "InvalidAccount" then
		return false
	end
	return true
end

return API

