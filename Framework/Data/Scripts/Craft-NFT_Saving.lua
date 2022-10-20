local SaveKeys = _G["Storagekeys"]
local key = SaveKeys.GetKeyFromName("NFTUpgraded")
local EquipAPi = _G["Character.EquipAPI"]

local api = {}

function api.Load(player)
	local data = Storage.GetConcurrentSharedPlayerData(key, player.id)
	return data
end

function api.LoadNFT(player, blockchainToken, assetid)
	if not blockchainToken then return end
	local data = api.Load(player)
	local entrystring = CoreString.Join("|", blockchainToken.contractAddress, blockchainToken.tokenId)
	return (data[entrystring] or {})[assetid]
end

function api.UpdateClient(player)
	local data = api.Load(player)
	player:SetPrivateNetworkedData("NFTS", data)
end

function api.Save(player, blockchainToken, itemId, greatness)
	Storage.SetConcurrentSharedPlayerData(key, player.id, function(data)
		if not blockchainToken then return data end
		local entrystring = CoreString.Join("|", blockchainToken.contractAddress, blockchainToken.tokenId)
		data[entrystring] = data[entrystring] or {}
		data[entrystring][itemId] = greatness
		if Object.IsValid(player) then
			Events.Broadcast('UpdatePlayerData', player)
		end
		return data
	end)
	if Object.IsValid(player) then
		api.UpdateClient(player)
	end
end

local function UpdateNFTS(Character, player)

	local function UpdateKey(coreInv, slot)
		if not slot then return end
		local item = coreInv:GetItem(slot)
		if not item then
			return
		end

		local bagkey, haskey = item:GetCustomProperty("BagKey")
		if haskey then

			local splitString = { CoreString.Split(bagkey, "|") }
			if splitString[1] and splitString[2] then
				local newBlock = Blockchain.GetToken(splitString[1], splitString[2])
				local greatness = api.LoadNFT(player, newBlock, item.name)
				if greatness then
					item:SetCustomProperty("Greatness", greatness)
				end
			end
		end

	end

	local inventory = Character:GetComponent("Inventory")
	local coreInv = inventory:GetInventory()

	coreInv.changedEvent:Connect(function()
		UpdateKey(coreInv)
	end)

end

EquipAPi.playerEquippedEvent:Connect(UpdateNFTS)
Game.playerJoinedEvent:Connect(api.UpdateClient)
Events.Connect("UpdatePlayerData", api.UpdateClient)

_G["Crafting.SaveNFT"] = api
