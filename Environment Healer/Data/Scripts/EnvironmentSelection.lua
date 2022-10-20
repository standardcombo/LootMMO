
local CHARACTER_SELECT = script:GetCustomProperty("CharacterSelect"):WaitForObject()
local SOCIAL_SPACE_TEMPLATE = script:GetCustomProperty("SocialSpaceTemplate")

Events.Connect("JoinSocial", function()
	--CHARACTER_SELECT:Destroy()
	--World.SpawnAsset(SOCIAL_SPACE_TEMPLATE)
end)

