--[[
	Treasure Drop
	v1.0 - 2022/10/20
	by: standardcombo
]]

local ROOT = script:GetCustomProperty("Root"):WaitForObject()
local PHYSICS_OBJECT = script:GetCustomProperty("PhysicsObject"):WaitForObject()
local TRIGGER = script:GetCustomProperty("Trigger"):WaitForObject()
local LID = script:GetCustomProperty("Lid"):WaitForObject()
local IMPACT_SFX = script:GetCustomProperty("ImpactSfx"):WaitForObject()
local OPEN_SFX = script:GetCustomProperty("OpenSfx"):WaitForObject()
local OPEN_VFX = script:GetCustomProperty("OpenVfx"):WaitForObject()
local NORMAL_GEO = script:GetCustomProperty("NormalGeo"):WaitForObject()
local FADE_GEO = script:GetCustomProperty("FadeGeo"):WaitForObject()
local POP_ANGULAR_IMPULSE = script:GetCustomProperty("PopAngularImpulse")
local OPEN_DELAY = script:GetCustomProperty("OpenDelay")
local VFX_DELAY = script:GetCustomProperty("VfxDelay")
local PICKUP_DELAY = script:GetCustomProperty("PickupDelay")
local PICKUP_SFX = script:GetCustomProperty("PickupSfx"):WaitForObject()

local TREASURE_PICKUP_EVENT = "Treasure.PickedUp"


if not TRIGGER.isClientOnly then
	warn("Treasure drop ".. ROOT.id .." should not be added directly to hiearchy.")
	return
end
TRIGGER.collision = Collision.FORCE_OFF

local lastImpactSfxTime = 0
local impactSfxRemaining = 3


function OnObjectCollided(obj, hitResult)
	if time() - lastImpactSfxTime > 0.15 then
		lastImpactSfxTime = time()
		
		impactSfxRemaining = impactSfxRemaining - 1
		if impactSfxRemaining >= 0 then
			IMPACT_SFX:Play()
		end
	end
end

PHYSICS_OBJECT.collidedEvent:Connect(OnObjectCollided)


Task.Wait(OPEN_DELAY)


-- Open the lid
local rightVector = Quaternion.New(PHYSICS_OBJECT:GetWorldRotation()):GetRightVector()

local aVel = PHYSICS_OBJECT:GetAngularVelocity()
aVel = aVel + rightVector * POP_ANGULAR_IMPULSE
PHYSICS_OBJECT:SetAngularVelocity(aVel)

local r = LID:GetRotation()
r.x = -135
LID:RotateTo(r, 0.3, true)

-- Play the opening SFX
OPEN_SFX:Play()

-- Play the opening VFX
Task.Wait(VFX_DELAY)
OPEN_VFX:Play()


-- Allow pickup
Task.Wait(PICKUP_DELAY)


function OnBeginOverlap(trigger, player)
	if not player:IsA("Player") then return end
	if player ~= Game.GetLocalPlayer() then return end
	
	Events.Broadcast(TREASURE_PICKUP_EVENT, ROOT, player)
	
	if PICKUP_SFX then
		PICKUP_SFX:Play()
	end
	
	NORMAL_GEO.visibility = Visibility.FORCE_OFF
	FADE_GEO.visibility = Visibility.FORCE_ON
	FADE_GEO.parent = nil
	PHYSICS_OBJECT.collision = Collision.FORCE_OFF
	
	local fadeChildren = FADE_GEO:GetChildren()
	local startTime = time()
	local startColor = Color.YELLOW
	while true do
		local t = (time() - startTime) + 0.5
		
		if t > 1 then
			PHYSICS_OBJECT:Destroy()
			ROOT:Destroy()
			FADE_GEO:Destroy()
			
			break
		else
			local color = Color.Lerp(startColor, Color.TRANSPARENT, t)
			for _,obj in ipairs(fadeChildren) do
				obj:SetColor(color)
			end
			
			Task.Wait()
		end
	end
end

TRIGGER.beginOverlapEvent:Connect(OnBeginOverlap)
TRIGGER.collision = Collision.INHERIT


