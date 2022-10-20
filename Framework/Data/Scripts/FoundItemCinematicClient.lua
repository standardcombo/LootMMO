--[[
    Found Item Cinematic - Client
    v1.0
    by: standardcombo
]]

local EVENT_ID = "FoundItemSpawn"

local FLARE_VFX = script:GetCustomProperty("FlareVFX")
local SFX = script:GetCustomProperty("SFX"):WaitForObject()


Events.Connect(EVENT_ID, function(player, template, duration)
    if Object.IsValid(player) then
    	if player == Game.GetLocalPlayer() then
    		SFX:Play()
    	end
        local item = World.SpawnAsset(template)
        item:AttachToPlayer(player, "nameplate")
        item:SetPosition(Vector3.New(0, 0, 15))
        item.lifeSpan = duration

        local flare = World.SpawnAsset(FLARE_VFX)
        flare:AttachToPlayer(player, "nameplate")
        flare:SetPosition(Vector3.New(0, 0, 15))
        flare.lifeSpan = duration

        -- Position the flare at the center of the object
        --local itemBounds = World.GetBoundingBoxFromObjects({item})
        --flare:SetWorldPosition(itemBounds:GetCenter())
    end
end)

