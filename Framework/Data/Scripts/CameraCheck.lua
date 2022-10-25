local LOCAL_PLAYER = Game:GetLocalPlayer()
local cam = LOCAL_PLAYER:GetDefaultCamera()
repeat
    cam = LOCAL_PLAYER:GetDefaultCamera()
    Task.Wait(1)
    print(cam, " please")
until cam
print("made it")