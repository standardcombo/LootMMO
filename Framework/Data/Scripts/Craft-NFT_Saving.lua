local savekeys = require(script:GetCustomProperty("StorageKeys"))

local STORAGE_KEY = savekeys.GetKey("NFTUpgraded")
local EquipAPi = _G["Character.EquipAPI"]

local api = {}
_G["Crafting.SaveNFT"] = api

function api.Load(player)
	local data = Storage.GetConcurrentSharedPlayerData(STORAGE_KEY, player.id)
	return data
end

function api.LoadNFT(player, blockchainToken, itemId)
	if not blockchainToken then return end
	local data = api.Load(player)
	if not data then
		return nil
	end
	local bagKey = CoreString.Join("|", blockchainToken.contractAddress, blockchainToken.tokenId)
	if not data[bagKey] then
		return nil
	end
	return data[bagKey][itemId]
end

function api.UpdateClient(player)
	local data = api.Load(player)
	player:SetPrivateNetworkedData("NFTS", data)
end

function api.Save(player, blockchainToken, itemId, greatness)
	Storage.SetConcurrentSharedPlayerData(STORAGE_KEY, player.id, function(data)
		if not blockchainToken then
			return data
		end
		local bagKey = CoreString.Join("|", blockchainToken.contractAddress, blockchainToken.tokenId)
		data[bagKey] = data[bagKey] or {}
		data[bagKey][itemId] = greatness
		
		Task.Spawn(function()
			if Object.IsValid(player) then
				api.UpdateClient(player)
			end
		end)
		return data
	end)
end

local function UpdateNFTS(Character, player)

	local function UpdateKey(coreInv, slot)
		-- ! Always returns here, because slot is not passed as parameter
		if not slot then return end

		-- Dead logic

		local item = coreInv:GetItem(slot)
		if not item then
			return
		end

		local bagKey, haskey = item:GetCustomProperty("BagKey")
		if haskey then
			local contractAddress, tokenId = { CoreString.Split(bagKey, "|") }
			if contractAddress and tokenId then
				local token = Blockchain.GetToken(contractAddress, tokenId)
				local greatness = api.LoadNFT(player, token, item.name)
				if greatness then
					item:SetCustomProperty("Greatness", greatness)
				end
			end
		end
	end

	local inventory = Character:GetComponent("Inventory")
	local coreInv = inventory:GetInventory()

	coreInv.changedEvent:Connect(function()
		-- Loop through the slots?
		UpdateKey(coreInv)
	end)

end

EquipAPi.playerEquippedEvent:Connect(UpdateNFTS)
Game.playerJoinedEvent:Connect(api.UpdateClient)
