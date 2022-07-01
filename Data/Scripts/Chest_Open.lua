
-- Custom 
local LID = script:GetCustomProperty("Lid"):WaitForObject()
local OPEN_CURVE = script:GetCustomProperty("OpenCurve")
local ROOT = script:GetCustomProperty("Root"):WaitForObject()
local CHEST_OPEN = script:GetCustomProperty("ChestOpen")

local function Open()
    local startTime = time()
    local endTime = startTime + 1
    local DT = Task.Wait()
    World.SpawnAsset(CHEST_OPEN, {position = script:GetWorldPosition()})
    while time() <  endTime do 
        LID:RotateTo(Rotation.New(-OPEN_CURVE:GetValue(time() -startTime ),0,180),DT, true)
        DT = Task.Wait()
    end 

end   
ROOT.clientUserData.Chest = {Open = Open }