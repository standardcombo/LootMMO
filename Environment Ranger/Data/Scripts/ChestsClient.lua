local API_RE = require(script:GetCustomProperty("APIReliableEvents"))

function OnOpenChest(chest)
	chest:GetCustomProperty("Lid"):WaitForObject():RotateTo(Rotation.New(60.0, 180.0, 0.0), 0.7, true)
	chest:GetCustomProperty("OpenVFX"):WaitForObject():Play()
	chest:GetCustomProperty("OpenSound"):WaitForObject():Play()
end

API_RE.Connect("OC", OnOpenChest)
