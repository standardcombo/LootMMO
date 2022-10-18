local SaveKeys = _G["Storagekeys"]
local key = SaveKeys.GetKeyFromName("NFTUpgraded")
local api = {}

function api.Save(player, item, blockchainToken, inventoryid, greatness)
	Storage.SetConcurrentSharedPlayerData(key, player.id, function(data)
		if not item or blockchainToken then return data end
		local entrystring = CoreString.Join("|", blockchainToken.contractAddress, blockchainToken.tokenId)
		data[entrystring] = data[entrystring] or {}
		data[entrystring][inventoryid] = greatness
		player:SetPrivateNetworkedData("NFTData", data)
		return data
	end)
end

function api.Load(player)
	local data = Storage.GetConcurrentSharedPlayerData(key, player.id)
	player:SetPrivateNetworkedData("NFTData", data)
	return data
end

function api.LoadNFT(player, blockchainToken, assetid)
	local data = api.Load(player)
	local entrystring = CoreString.Join("|", blockchainToken.contractAddress, blockchainToken.tokenId)
	return (data[entrystring] or {})[assetid]
end

Game.playerJoinedEvent:Connect(api.Load)

_G["Crafting.SaveNFT"] = api
