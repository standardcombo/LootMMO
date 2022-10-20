local PORTAL_GROUP = script:GetCustomProperty("PortalGroup"):WaitForObject()

function OnInteracted(trigger, player)
	player:TransferToGame("a91218/corehaven")
end

for _, child in pairs(PORTAL_GROUP:GetChildren()) do
	assert(child:IsA("Trigger"))
	child.interactedEvent:Connect(OnInteracted)
end
