local image = script.parent
local LOCAL_PLAYER = Game.GetLocalPlayer()
assert(image:IsA('UIImage'), 'parent needs to be a image')

image:SetPlayerProfile(LOCAL_PLAYER)
