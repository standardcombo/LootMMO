local RuntimeContextDetection = require(script:GetCustomProperty("RuntimeContextDetection"))

return function(player)
    if RuntimeContextDetection.IsClientSide() then
        World.SpawnAsset(script:GetCustomProperty("SFX_Portal"))
        Task.Spawn(function()
            UI.PrintToScreen("ERROR: PORTAL MALFUNCTION!", Color.ORANGE)
        end, 0.5)
    end

    if RuntimeContextDetection.IsServerSide() then
        player:AddImpulse(Vector3.UP * 400000)
    end
end


