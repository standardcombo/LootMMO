local VFX = script.parent
local ITEM = VFX:GetCustomProperty("Item")
local LIFE = VFX:GetCustomProperty("Life")
local DESNITY = VFX:GetCustomProperty("Density")
local MIN_VEL = VFX:GetCustomProperty("MinVelocity")
local MAX_VEL = VFX:GetCustomProperty("MaxVelocity")
local PSM = VFX:GetCustomProperty("ParticleScaleMultiplier")
local LOCAL_SPACE = VFX:GetCustomProperty("LocalSpace")

local DPS = script:GetCustomProperty("DefaultParticleScale")
local STAGGER = script:GetCustomProperty("StaggerDelay")

for i = 1, DESNITY do
  local randomRot = Rotation.New(math.random(0, 359), math.random(0, 359), math.random(0, 359))

  local item = World.SpawnAsset(ITEM, {position = VFX:GetWorldPosition() + (Vector3.UP * PSM * 10), rotation = randomRot, scale = DPS * PSM})

  item.cameraCollision = Collision.FORCE_OFF
  item.lifeSpan = LIFE * math.random(90, 100) / 100

  item.isTeamCollisionEnabled = false
  item.team = 3

  item.isSimulatingDebrisPhysics = true

  local randomVel = Vector3.New(math.random(MIN_VEL.x, MAX_VEL.x), math.random(MIN_VEL.y, MAX_VEL.y), math.random(MIN_VEL.z, MAX_VEL.z))

  if LOCAL_SPACE then
    randomVel = VFX:GetWorldRotation() * randomVel
  end

  item:SetVelocity(randomVel)

  if STAGGER > 0 then
    Task.Wait(STAGGER)
  end
end
