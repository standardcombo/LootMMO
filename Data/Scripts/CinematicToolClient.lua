--[[
	Cinematic Tool - Client
	v1.1
	by: standardcombo
	
	See the CinematicShot_README for usage info.
--]]

local ROOT = script:GetCustomProperty("Root"):WaitForObject()

local CAMERA = ROOT:GetCustomProperty("CameraStart"):WaitForObject()
local END = ROOT:GetCustomProperty("CameraEnd"):WaitForObject()

-- Look options
local LOOK_AT_TARGET = ROOT:GetCustomProperty("LookAtTarget")
local LOOK_AT_PLAYER = ROOT:GetCustomProperty("LookAtPlayer")
local TARGET = ROOT:GetCustomProperty("Target"):WaitForObject()

-- Playback options
KEY_BINDING = ROOT:GetCustomProperty("PlayOnKey") -- Default is 'M'
local LISTEN_TO_EVENT = ROOT:GetCustomProperty("PlayOnEvent")
SEQUENCE_NUMBER = ROOT:GetCustomProperty("SequenceNumber")
local DURATION = ROOT:GetCustomProperty("Duration") or 5

-- Path options
local LINEAR_PATH = ROOT:GetCustomProperty("LinearPath")
local ORBIT_SHORT_PATH = ROOT:GetCustomProperty("OrbitShortPath")
local ORBIT_LONG_PATH = ROOT:GetCustomProperty("OrbitLongPath")

-- Easeing options
local USE_EASE_FUNCTION = ROOT:GetCustomProperty("UseEaseFunction")
local EASE_STRENGTH = ROOT:GetCustomProperty("EaseStrength") -- Higher values make a steeper slope and flatter ends.

-- Runtime constants
local START_POS = CAMERA:GetWorldPosition()
local END_POS = END:GetWorldPosition()
local START_ROT = Quaternion.New(CAMERA:GetWorldRotation())
local END_ROT = Quaternion.New(END:GetWorldRotation())
local START_FOV = CAMERA.fieldOfView
local END_FOV = END.fieldOfView

-- State control variables
local isPlaying = false
local elapsedTime = 0

local startDistanceToTarget = 0

-- Rotation pre-work
local r1 = Rotation.New(START_ROT)
local r2 = Rotation.New(END_ROT)
local v1 = Vector3.New(r1.x, r1.y, r1.z)
local v2 = Vector3.New(r2.x, r2.y, r2.z)

isHeadTake = false
nextTake = nil


function Tick(deltaTime)
	if not isPlaying then return end
	
	-- Time
	elapsedTime = elapsedTime + deltaTime
	
	if (elapsedTime > DURATION) then
		Next()
		return
	end
	
	local t = elapsedTime / DURATION
	
	-- Easing of time
	if USE_EASE_FUNCTION then
		t = (t^EASE_STRENGTH) / ((t^EASE_STRENGTH) + ((1-t) ^ EASE_STRENGTH))
	end
	
	-- Position
	local pos = Vector3.Lerp(START_POS, END_POS, t)
	local targetPos = TARGET:GetWorldPosition()
	
	if ORBIT_SHORT_PATH or ORBIT_LONG_PATH then
		-- Center of the orbital path depends on the look options
		local orbitCenter = ROOT:GetWorldPosition()
		if LOOK_AT_PLAYER and Game.GetLocalPlayer() then
			orbitCenter = Game.GetLocalPlayer():GetWorldPosition()
			
		elseif LOOK_AT_TARGET then
			orbitCenter = targetPos
		end
		
		local v1 = Vector3.New(START_POS.x - orbitCenter.x, START_POS.y - orbitCenter.y, 0)
		local v2 = Vector3.New(END_POS.x - orbitCenter.x, END_POS.y - orbitCenter.y, 0)
		local q = Quaternion.New(v1, v2)
		q = q * -1
		q = SlerpBothWays(Quaternion.IDENTITY, q, t, ORBIT_SHORT_PATH)
		local v = (q * v1):GetNormalized()
		local endDist = (END_POS - targetPos).size
		local dist = CoreMath.Lerp(startDistanceToTarget, endDist, t)
		orbitCenter.z = CoreMath.Lerp(START_POS.z, END_POS.z, t)
		pos = orbitCenter + v * dist
		
	elseif (not LINEAR_PATH) then
		local v = (pos - targetPos):GetNormalized()
		local endDist = (END_POS - targetPos).size
		local dist = CoreMath.Lerp(startDistanceToTarget, endDist, t)
		pos = targetPos + v * dist
	end
	
	CAMERA:SetWorldPosition(pos)
	
	-- Rotation
	if LOOK_AT_PLAYER and Game.GetLocalPlayer() then
		CAMERA:LookAt(Game.GetLocalPlayer():GetWorldPosition())
		
	elseif LOOK_AT_TARGET then
		CAMERA:LookAt(targetPos)
	else
		local LERP_SPEED = 0.04
		if math.abs(v1.z - v2.z) > 270 then
			-- Linear interpolation is not possible in this edge-case
			rot = Rotation.New( Quaternion.Slerp(START_ROT, END_ROT, t) )
		else
			-- Primary method is linear interpolation between the rotators
			local vt = Vector3.Lerp(v1, v2, t)
			rot = Rotation.New(vt.x, vt.y, vt.z)
		end
		CAMERA:SetWorldRotation(rot)
		
	end
	
	-- Field of View
	local fov = CoreMath.Lerp(START_FOV, END_FOV, t)
	CAMERA.fieldOfView = fov
end


function Play()
	if GetActiveTake() then
		GetActiveTake().Stop()
	end
	
	SetActiveTake(script)
	isPlaying = true
	
	CAMERA:SetWorldPosition(START_POS)
	CAMERA.fieldOfView = START_FOV
	
	elapsedTime = 0
	
	startDistanceToTarget = (START_POS - TARGET:GetWorldPosition()).size
	
	local player = Game.GetLocalPlayer()
	player:SetOverrideCamera(CAMERA)
end


function Stop()
	if (not IsActiveTake()) then return end
	
	SetActiveTake(nil)
	isPlaying = false
	
	local player = Game.GetLocalPlayer()
	player:ClearOverrideCamera()
end


function Next()
	if (not IsActiveTake()) then return end
	
	if (nextTake) then
		SetActiveTake(nil)
		isPlaying = false
		
		nextTake.Play()
	else
		Stop()
	end
end


function GetActiveTake()
	return _G.CinematicTool["Active Take"]
end

function IsActiveTake()
	return GetActiveTake() == script.context
end

function SetActiveTake(whichTake)
	if whichTake then
		whichTake = whichTake.context
	end
	_G.CinematicTool["Active Take"] = whichTake
end


function OnBindingPressed(player, action)
	if (action == KEY_BINDING) then
		if isPlaying and elapsedTime > 0 then
			Next()
			
		elseif (isHeadTake and (GetActiveTake() == nil or GetActiveTake().KEY_BINDING ~= KEY_BINDING)) then
			Play()
		end
	end
end


function OnEvent()
	if isHeadTake then
		Play()
	end
end


function IsStringValid(s)
	return s ~= nil and s ~= ''
end


function Setup()
	if (not _G.CinematicTool) then
		_G.CinematicTool = {}
	end
	
	if IsStringValid(LISTEN_TO_EVENT) then
		EnqueWithID(LISTEN_TO_EVENT)
		
	elseif IsStringValid(KEY_BINDING) then
		EnqueWithID(KEY_BINDING)
	end
end

function EnqueWithID(id)
	if _G.CinematicTool[id] then
		local prevTake = _G.CinematicTool[id]
		
		if (prevTake.SEQUENCE_NUMBER > SEQUENCE_NUMBER) then
			-- New head
			_G.CinematicTool[id] = script.context
			prevTake.isHeadTake = false
			isHeadTake = true
			nextTake = prevTake
		else
			-- Insert between
			while (prevTake.nextTake and prevTake.nextTake.SEQUENCE_NUMBER <= SEQUENCE_NUMBER) do
				prevTake = prevTake.nextTake
			end
			nextTake = prevTake.nextTake
			prevTake.nextTake = script.context
		end
	else
		-- The first entry is the head
		_G.CinematicTool[id] = script.context
		isHeadTake = true
	end
end
Setup()


while not Game.GetLocalPlayer() do
	Task.Wait(1)
end
Game.GetLocalPlayer().bindingPressedEvent:Connect(OnBindingPressed)


if IsStringValid(LISTEN_TO_EVENT) then
	Events.Connect(LISTEN_TO_EVENT, OnEvent)
end


-- Used by the orbit path mode
function SlerpBothWays(q0, q1, t, shortArc)
	local v0 = Vector4.New(q0.x, q0.y, q0.z, q0.w)
	local v1 = Vector4.New(q1.x, q1.y, q1.z, q1.w)
    -- Only unit quaternions are valid rotations.
    -- Normalize to avoid undefined behavior.
    v0 = v0:GetNormalized()
    v1 = v1:GetNormalized()
    -- Compute the cosine of the angle between the two vectors.
    local dot = v0 .. v1
    -- If the dot product is negative, slerp won't take
    -- the shorter path. Note that v1 and -v1 are equivalent when
    -- the negation is applied to all four components. Fix by 
    -- reversing one quaternion.
    if (shortArc) then
		if (dot < 0.0) then
    	    v1 = -v1
	        dot = -dot
	    end
	else
	  if (dot > 0.0) then
    	    v1 = -v1
	        dot = -dot
	   end
	end
    local DOT_THRESHOLD = 0.9995
    if (dot > DOT_THRESHOLD) then
        -- If the inputs are too close for comfort, linearly interpolate
        -- and normalize the result.
        local result = v0 + t*(v1 - v0)
        result = result:GetNormalized()
        return result
    end
    -- Since dot is in range [0, DOT_THRESHOLD], acos is safe
    local theta_0 = math.acos(dot)			-- theta_0 = angle between input vectors
    local theta = theta_0*t					-- theta = angle between v0 and result
    local sin_theta = math.sin(theta)		-- compute this value only once
    local sin_theta_0 = math.sin(theta_0)	-- compute this value only once
    local s0 = math.cos(theta) - dot * sin_theta / sin_theta_0	-- == sin(theta_0 - theta) / sin(theta_0)
    local s1 = sin_theta / sin_theta_0
	local vOut = (s0 * v0) + (s1 * v1)
    return Quaternion.New(vOut.x, vOut.y, vOut.z, vOut.w)
end


