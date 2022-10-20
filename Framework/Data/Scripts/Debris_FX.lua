
-- Custom 
local DEBRIS_GROUP = script:GetCustomProperty("DebrisGroup"):WaitForObject() ---@type Folder
local EXPLOSIVE_POWER = script:GetCustomProperty("EXPLOSIVE_POWER")
local RNG = RandomStream.New()

for _, mesh in pairs(DEBRIS_GROUP:GetChildren()) do
    if mesh and mesh:IsA("StaticMesh") then
        if mesh.isSimulatingDebrisPhysics then
            mesh.collision = Collision.FORCE_ON
            mesh.cameraCollision = Collision.FORCE_OFF
            local randomNumber = RNG:GetNumber(5,10)
            mesh.lifeSpan = randomNumber
            local vel = RNG:GetVector3FromCone(Vector3.UP, 90) * EXPLOSIVE_POWER
            mesh:SetVelocity(vel)
            Task.Spawn(function()
                local max = 10*randomNumber
                for i = 0, max do
                    --mesh:ScaleTo(mesh:GetScale(),randomNumber,true)
                    if Object.IsValid(mesh) then
                        mesh:SetScale(mesh:GetScale() * (1-(i/max)) )
                        Task.Wait()
                    else
                        break
                    end
                end
            end,2)
        end
    else
        mesh:Destroy()
    end
end