
local ITEM_ID = "pint"

local TRIGGER = script:GetCustomProperty("Trigger"):WaitForObject()
local SURFACE_WIDTH = script:GetCustomProperty("SurfaceWidth")
local IK_POSE = script:GetCustomProperty("IKPose"):WaitForObject()
local SFX = script:GetCustomProperty("SFX"):WaitForObject()

local PLAYER = Game.GetLocalPlayer()
local TRIGGER_FORWARD = Quaternion.New(TRIGGER:GetWorldRotation()):GetForwardVector()


function Tick()
	Task.Wait(0.1)
	if not HasFullCup() then
		TRIGGER.isInteractable = false
		return
	end
	local playerForward = Quaternion.New(PLAYER:GetWorldRotation()):GetForwardVector()
	local dot = playerForward .. TRIGGER_FORWARD
	if dot > 0.6 then
		TRIGGER.isInteractable = true
	else
		TRIGGER.isInteractable = false
	end
end

function HasFullCup()
	for _,equip in ipairs(PLAYER:GetEquipment()) do
		local itemId, exists = equip:GetCustomProperty("itemId")
		if exists and itemId == ITEM_ID 
		and equip:GetCustomProperty("usesRemaining") > 0 then
			return true
		end
	end
	return false
end

function OnInteracted(trigger, player)
	local pos = FindServingPosition()
	if not pos then return end
	
	IK_POSE:SetWorldPosition(pos)
	
	IK_POSE.context.Play(player)
	
	Task.Wait(0.25)
	
	SFX:Play()
	
	local rot = script:GetWorldRotation()
	Events.BroadcastToServer("DeliverCup", pos, rot)
	
	Task.Wait(0.1)
	IK_POSE.context.Stop(player)
end
TRIGGER.interactedEvent:Connect(OnInteracted)


local PLANE_POS = script:GetWorldPosition()
local PLANE_NORM = Quaternion.New(script:GetWorldRotation()):GetForwardVector()

function FindServingPosition()
	local playerPos = PLAYER:GetWorldPosition()
	local dir = Quaternion.New(PLAYER:GetWorldRotation()):GetForwardVector()
	local p = LinePlaneIntersection(playerPos, dir, PLANE_POS, PLANE_NORM)
	if p then
		p.z = PLANE_POS.z
		if p.x - PLANE_POS.x > SURFACE_WIDTH then
			p.x = PLANE_POS.x + SURFACE_WIDTH
		elseif p.x - PLANE_POS.x < -SURFACE_WIDTH then
			p.x = PLANE_POS.x - SURFACE_WIDTH
		end
		return p
	end
	return nil
end

function LinePlaneIntersection(linePos, lineDir, planePos, planeNorm)
    local u = lineDir
    local dot = planeNorm .. u

    if math.abs(dot) > 0.00001 then
        local w = linePos - planePos
        local fac = -(planeNorm .. w) / dot
        u = u * fac
        return linePos + u
	end
    -- The segment is parallel to plane.
    return nil
end

function TestIntersection()
	local p = FindServingPosition()
	if p then
		local params = {thickness = 3, color = Color.RED}
		CoreDebug.DrawSphere(p, 5, params)
	end
end

