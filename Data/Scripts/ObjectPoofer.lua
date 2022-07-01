
-- Custom

local PROP_GROUP = script:GetCustomProperty("PropGroup"):WaitForObject() ---@type Folder
local TRIGGER_GROUP = script:GetCustomProperty("Trigger_Group"):WaitForObject()
local EXPLODE_FX = script:GetCustomProperty("Explode_FX") or nil
local DEBRIS_FX = script:GetCustomProperty("Debris_FX") or nil



PropArray = {}



for i, child in pairs(PROP_GROUP:GetChildren()) do
    table.insert(PropArray,{

        originPosition = child:GetWorldTransform(), paperID = child.id
        })
end


function OnBeginOverlap(_, other)


        if other and other:IsA("StaticMesh") and other.isSimulatingDebrisPhysics == true then
            


            local data = 0
            for a = 1, #PropArray do
                if PropArray[a].paperID == other.id then
                    data = a
                end
            end
            
            if data ~= 0 then
                if EXPLODE_FX then
                    World.SpawnAsset(EXPLODE_FX,{position = other:GetWorldPosition(), rotation = Rotation.New(0,0,math.random(0,360))})
                end
                if DEBRIS_FX then
                    World.SpawnAsset(DEBRIS_FX,{position = other:GetWorldPosition(), rotation = Rotation.New(math.random(0,360),0,0)})
                end
                other.visibility = Visibility.FORCE_OFF
                other.isSimulatingDebrisPhysics = false
                other:SetWorldTransform(PropArray[data].originPosition)
                other:SetVelocity(Vector3.New(0,0,0))
                Task.Wait(1)
                other.visibility = Visibility.FORCE_ON
                other.isSimulatingDebrisPhysics = true
            end
        end
end

for i, trigger in pairs(TRIGGER_GROUP:GetChildren()) do
    trigger.beginOverlapEvent:Connect(OnBeginOverlap)
end

