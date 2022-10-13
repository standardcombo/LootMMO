local Ease3D = require(script:GetCustomProperty("Ease3D"))
local Equipment = script:GetCustomProperty("Equipment"):WaitForObject()

local DURATION = script:GetCustomProperty("DURATION")

local Body = script:GetCustomProperty("Body"):WaitForObject()
local Front = script:GetCustomProperty("Front"):WaitForObject()
local Back = script:GetCustomProperty("Back"):WaitForObject()
local Seat = script:GetCustomProperty("Seat"):WaitForObject()
local FrontLeftTop = script:GetCustomProperty("FrontLeftTop"):WaitForObject()
local FrontLeftMid = script:GetCustomProperty("FrontLeftMid"):WaitForObject()
local FrontLeftBot = script:GetCustomProperty("FrontLeftBot"):WaitForObject()
local FrontRightTop = script:GetCustomProperty("FrontRightTop"):WaitForObject()
local FrontRightMid = script:GetCustomProperty("FrontRightMid"):WaitForObject()
local FrontRightBot = script:GetCustomProperty("FrontRightBot"):WaitForObject()
local BackLeftTop = script:GetCustomProperty("BackLeftTop"):WaitForObject()
local BackLeftMid = script:GetCustomProperty("BackLeftMid"):WaitForObject()
local BackLeftBot = script:GetCustomProperty("BackLeftBot"):WaitForObject()
local BackRightTop = script:GetCustomProperty("BackRightTop"):WaitForObject()
local BackRightMid = script:GetCustomProperty("BackRightMid"):WaitForObject()
local BackRightBot = script:GetCustomProperty("BackRightBot"):WaitForObject()
local FrontTopROT_MIN = script:GetCustomProperty("FrontTopROT_MIN")
local FrontTopROT_MAX = script:GetCustomProperty("FrontTopROT_MAX")
local FrontMidROT_MIN = script:GetCustomProperty("FrontMidROT_MIN")
local FrontMidROT_MAX = script:GetCustomProperty("FrontMidROT_MAX")
local FrontBotROT_MIN = script:GetCustomProperty("FrontBotROT_MIN")
local FrontBotROT_MAX = script:GetCustomProperty("FrontBotROT_MAX")
local BackTopROT_MIN = script:GetCustomProperty("BackTopROT_MIN")
local BackTopROT_MAX = script:GetCustomProperty("BackTopROT_MAX")
local BackMidROT_MIN = script:GetCustomProperty("BackMidROT_MIN")
local BackMidROT_MAX = script:GetCustomProperty("BackMidROT_MAX")
local BackBotROT_MIN = script:GetCustomProperty("BackBotROT_MIN")
local BackBotROT_MAX = script:GetCustomProperty("BackBotROT_MAX")
local FrontTopPOS_MIN = script:GetCustomProperty("FrontTopPOS_MIN")
local FrontTopPOS_MAX = script:GetCustomProperty("FrontTopPOS_MAX")
local BackTopPOS_MIN = script:GetCustomProperty("BackTopPOS_MIN")
local BackTopPOS_MAX = script:GetCustomProperty("BackTopPOS_MAX")
local FrontPOS_MIN = script:GetCustomProperty("FrontPOS_MIN")
local FrontPOS_MAX = script:GetCustomProperty("FrontPOS_MAX")
local BackPOS_MIN = script:GetCustomProperty("BackPOS_MIN")
local BackPOS_MAX = script:GetCustomProperty("BackPOS_MAX")
local BodyPOS_MIN = script:GetCustomProperty("BodyPOS_MIN")
local BodyPOS_MAX = script:GetCustomProperty("BodyPOS_MAX")
local SeatROT_MIN = script:GetCustomProperty("SeatROT_MIN")
local SeatROT_MAX = script:GetCustomProperty("SeatROT_MAX")

local ROT_DEFAULT = Rotation.New(0, 0, 0)
local BodyPOS_DEFAULT = Body:GetPosition()
local FrontPOS_DEFAULT = Front:GetPosition()
local BackPOS_DEFAULT = Back:GetPosition()
local FrontLeftTopPOS_DEFAULT = FrontLeftTop:GetPosition()
local FrontRightTopPOS_DEFAULT = FrontRightTop:GetPosition()
local BackLeftTopPOS_DEFAULT = BackLeftTop:GetPosition()
local BackRightTopPOS_DEFAULT = BackRightTop:GetPosition()

local Start_SFX = script:GetCustomProperty("Start_SFX")
local Step_SFX = script:GetCustomProperty("Step_SFX")
local Stop_SFX = script:GetCustomProperty("Stop_SFX")

local isMoving = false
local isActive = false



local function QuadAnimation(DURATION)

	--World.SpawnAsset(Step_SFX, {parent = Equipment})
	Ease3D.EasePosition(Body, BodyPOS_MIN, DURATION/2, Ease3D.EasingEquation.QUADRATIC, Ease3D.EasingDirection.INOUT)
	Ease3D.EasePosition(Front, FrontPOS_MAX, DURATION/2, Ease3D.EasingEquation.QUADRATIC, Ease3D.EasingDirection.INOUT)
	Ease3D.EasePosition(Back, BackPOS_MIN, DURATION/2, Ease3D.EasingEquation.SINE, Ease3D.EasingDirection.INOUT)
	Ease3D.EaseRotation(Seat, SeatROT_MIN, DURATION/2, Ease3D.EasingEquation.SINE, Ease3D.EasingDirection.INOUT)
	--Position of the Legs
	Ease3D.EasePosition(FrontLeftTop, FrontTopPOS_MIN, DURATION, Ease3D.EasingEquation.BACK, Ease3D.EasingDirection.OUT)
	Ease3D.EasePosition(FrontRightTop, FrontTopPOS_MAX, DURATION, Ease3D.EasingEquation.BACK, Ease3D.EasingDirection.OUT)
	Ease3D.EasePosition(BackLeftTop, BackTopPOS_MIN, DURATION, Ease3D.EasingEquation.BACK, Ease3D.EasingDirection.OUT)
	Ease3D.EasePosition(BackRightTop, BackTopPOS_MAX, DURATION, Ease3D.EasingEquation.BACK, Ease3D.EasingDirection.OUT)
	--Rotation of the Legs
	Ease3D.EaseRotation(FrontLeftTop, FrontTopROT_MIN, DURATION, Ease3D.EasingEquation.CUBIC, Ease3D.EasingDirection.INOUT)
	Ease3D.EaseRotation(FrontRightTop, FrontTopROT_MAX, DURATION, Ease3D.EasingEquation.CUBIC, Ease3D.EasingDirection.INOUT)
	Ease3D.EaseRotation(BackLeftTop, BackTopROT_MIN, DURATION, Ease3D.EasingEquation.CUBIC, Ease3D.EasingDirection.INOUT)
	Ease3D.EaseRotation(BackRightTop, BackTopROT_MAX, DURATION, Ease3D.EasingEquation.CUBIC, Ease3D.EasingDirection.INOUT)
	--Rotation of the Knees
	Ease3D.EaseRotation(FrontRightMid, FrontMidROT_MAX, DURATION/2, Ease3D.EasingEquation.SINE, Ease3D.EasingDirection.INOUT)
	--Ease3D.EaseRotation(BackLeftMid, BackMidROT_MIN, DURATION, Ease3D.EasingEquation.SINE, Ease3D.EasingDirection.INOUT)
	Ease3D.EaseRotation(BackRightMid, BackMidROT_MAX, DURATION/2, Ease3D.EasingEquation.SINE, Ease3D.EasingDirection.INOUT)
	--Rotation of the Ankles
	Ease3D.EaseRotation(FrontLeftBot, FrontBotROT_MIN, DURATION, Ease3D.EasingEquation.CUBIC, Ease3D.EasingDirection.INOUT)
	Ease3D.EaseRotation(FrontRightBot, FrontBotROT_MAX, DURATION, Ease3D.EasingEquation.CUBIC, Ease3D.EasingDirection.INOUT)
	--Ease3D.EaseRotation(BackLeftBot, BackBotROT_MIN, DURATION, Ease3D.EasingEquation.CUBIC, Ease3D.EasingDirection.OUT)
	Ease3D.EaseRotation(BackRightBot, BackBotROT_MAX, DURATION/2, Ease3D.EasingEquation.CUBIC, Ease3D.EasingDirection.OUT)
	
	Task.Wait(DURATION/2)
	--Position and Rotation of the Chassis
	Ease3D.EasePosition(Body, BodyPOS_MAX, DURATION/2, Ease3D.EasingEquation.QUADRATIC, Ease3D.EasingDirection.INOUT)
	Ease3D.EasePosition(Front, FrontPOS_MIN, DURATION/2, Ease3D.EasingEquation.QUADRATIC, Ease3D.EasingDirection.INOUT)
	Ease3D.EasePosition(Back, BackPOS_MAX, DURATION/2, Ease3D.EasingEquation.SINE, Ease3D.EasingDirection.INOUT)
	Ease3D.EaseRotation(Seat, SeatROT_MAX, DURATION/2, Ease3D.EasingEquation.SINE, Ease3D.EasingDirection.INOUT)
	--Offset Rotation of the Knees
	Ease3D.EaseRotation(FrontRightMid, FrontMidROT_MIN, DURATION, Ease3D.EasingEquation.CUBIC, Ease3D.EasingDirection.IN)
	Ease3D.EaseRotation(BackRightMid, BackMidROT_MIN, DURATION, Ease3D.EasingEquation.CUBIC, Ease3D.EasingDirection.IN)
	--Offset Rotation of the Ankles
	Ease3D.EaseRotation(BackRightBot, BackBotROT_MIN, DURATION, Ease3D.EasingEquation.CUBIC, Ease3D.EasingDirection.OUT)
	Task.Wait(DURATION/2)

	--World.SpawnAsset(Step_SFX, {parent = Equipment})
	--LEFT SIDE to MAX
	--RIGHT SIDE to MIN
	--Position and Rotation of the Chassis
	Ease3D.EasePosition(Body, BodyPOS_MIN, DURATION/2, Ease3D.EasingEquation.QUADRATIC, Ease3D.EasingDirection.INOUT)
	Ease3D.EasePosition(Front, FrontPOS_MAX, DURATION/2, Ease3D.EasingEquation.QUADRATIC, Ease3D.EasingDirection.INOUT)
	Ease3D.EasePosition(Back, BackPOS_MIN, DURATION/2, Ease3D.EasingEquation.SINE, Ease3D.EasingDirection.INOUT)
	Ease3D.EaseRotation(Seat, SeatROT_MIN, DURATION/2, Ease3D.EasingEquation.SINE, Ease3D.EasingDirection.INOUT)
	--Position of the Legs
	Ease3D.EasePosition(FrontLeftTop, FrontTopPOS_MAX, DURATION, Ease3D.EasingEquation.BACK, Ease3D.EasingDirection.OUT)
	Ease3D.EasePosition(FrontRightTop, FrontTopPOS_MIN, DURATION, Ease3D.EasingEquation.BACK, Ease3D.EasingDirection.OUT)
	Ease3D.EasePosition(BackLeftTop, BackTopPOS_MAX, DURATION, Ease3D.EasingEquation.BACK, Ease3D.EasingDirection.OUT)
	Ease3D.EasePosition(BackRightTop, BackTopPOS_MIN, DURATION, Ease3D.EasingEquation.BACK, Ease3D.EasingDirection.OUT)
	--Rotation of the Legs
	Ease3D.EaseRotation(FrontLeftTop, FrontTopROT_MAX, DURATION, Ease3D.EasingEquation.CUBIC, Ease3D.EasingDirection.INOUT)
	Ease3D.EaseRotation(FrontRightTop, FrontTopROT_MIN, DURATION, Ease3D.EasingEquation.CUBIC, Ease3D.EasingDirection.INOUT)
	Ease3D.EaseRotation(BackLeftTop, BackTopROT_MAX, DURATION, Ease3D.EasingEquation.CUBIC, Ease3D.EasingDirection.INOUT)
	Ease3D.EaseRotation(BackRightTop, BackTopROT_MIN, DURATION, Ease3D.EasingEquation.CUBIC, Ease3D.EasingDirection.INOUT)
	--Rotation of the Knees
	Ease3D.EaseRotation(FrontLeftMid, FrontMidROT_MAX, DURATION/2, Ease3D.EasingEquation.SINE, Ease3D.EasingDirection.INOUT)
	Ease3D.EaseRotation(BackLeftMid, BackMidROT_MAX, DURATION/2, Ease3D.EasingEquation.SINE, Ease3D.EasingDirection.INOUT)
	--Ease3D.EaseRotation(BackRightMid, BackMidROT_MIN, DURATION, Ease3D.EasingEquation.SINE, Ease3D.EasingDirection.INOUT)
	--Rotation of the Ankles
	Ease3D.EaseRotation(FrontLeftBot, FrontBotROT_MAX, DURATION, Ease3D.EasingEquation.CUBIC, Ease3D.EasingDirection.INOUT)
	Ease3D.EaseRotation(FrontRightBot, FrontBotROT_MIN, DURATION, Ease3D.EasingEquation.CUBIC, Ease3D.EasingDirection.INOUT)
	Ease3D.EaseRotation(BackLeftBot, BackBotROT_MAX, DURATION/2, Ease3D.EasingEquation.CUBIC, Ease3D.EasingDirection.OUT)
	--Ease3D.EaseRotation(BackRightBot, BackBotROT_MIN, DURATION, Ease3D.EasingEquation.CUBIC, Ease3D.EasingDirection.OUT)
	
	Task.Wait(DURATION/2)
	--Position and Rotation of the Chassis
	Ease3D.EasePosition(Body, BodyPOS_MAX, DURATION/2, Ease3D.EasingEquation.QUADRATIC, Ease3D.EasingDirection.INOUT)
	Ease3D.EasePosition(Front, FrontPOS_MIN, DURATION/2, Ease3D.EasingEquation.QUADRATIC, Ease3D.EasingDirection.INOUT)
	Ease3D.EasePosition(Back, BackPOS_MAX, DURATION/2, Ease3D.EasingEquation.SINE, Ease3D.EasingDirection.INOUT)
	Ease3D.EaseRotation(Seat, SeatROT_MAX, DURATION/2, Ease3D.EasingEquation.SINE, Ease3D.EasingDirection.INOUT)
	--Offset Rotation of the Knees
	Ease3D.EaseRotation(FrontLeftMid, FrontMidROT_MIN, DURATION, Ease3D.EasingEquation.CUBIC, Ease3D.EasingDirection.IN)
	Ease3D.EaseRotation(BackLeftMid, BackMidROT_MIN, DURATION, Ease3D.EasingEquation.CUBIC, Ease3D.EasingDirection.IN)
	--Offset Rotation of the Ankles
	Ease3D.EaseRotation(BackLeftBot, BackBotROT_MIN, DURATION, Ease3D.EasingEquation.CUBIC, Ease3D.EasingDirection.OUT)
	Task.Wait(DURATION/2)
	
end

local function QuadReset(DURATION)
	
	--World.SpawnAsset(Stop_SFX, {position = Equipment:GetWorldPosition()})
	Ease3D.EasePosition(Body, BodyPOS_DEFAULT, DURATION, Ease3D.EasingEquation.SINE, Ease3D.EasingDirection.INOUT)
	Ease3D.EasePosition(Front, FrontPOS_DEFAULT, DURATION, Ease3D.EasingEquation.SINE, Ease3D.EasingDirection.INOUT)
	Ease3D.EasePosition(Back, BackPOS_DEFAULT, DURATION, Ease3D.EasingEquation.SINE, Ease3D.EasingDirection.INOUT)
	Ease3D.EaseRotation(Seat, ROT_DEFAULT, DURATION, Ease3D.EasingEquation.SINE, Ease3D.EasingDirection.INOUT)
	
	Ease3D.EasePosition(FrontLeftTop, FrontLeftTopPOS_DEFAULT, DURATION, Ease3D.EasingEquation.SINE, Ease3D.EasingDirection.INOUT)
	Ease3D.EasePosition(FrontRightTop, FrontRightTopPOS_DEFAULT, DURATION, Ease3D.EasingEquation.SINE, Ease3D.EasingDirection.INOUT)
	Ease3D.EasePosition(BackLeftTop, BackLeftTopPOS_DEFAULT, DURATION, Ease3D.EasingEquation.SINE, Ease3D.EasingDirection.INOUT)
	Ease3D.EasePosition(BackRightTop, BackRightTopPOS_DEFAULT, DURATION, Ease3D.EasingEquation.SINE, Ease3D.EasingDirection.INOUT)
	
	Ease3D.EaseRotation(FrontLeftTop, ROT_DEFAULT, DURATION, Ease3D.EasingEquation.SINE, Ease3D.EasingDirection.INOUT)
	Ease3D.EaseRotation(FrontRightTop, ROT_DEFAULT, DURATION, Ease3D.EasingEquation.SINE, Ease3D.EasingDirection.INOUT)
	Ease3D.EaseRotation(BackLeftTop, ROT_DEFAULT, DURATION, Ease3D.EasingEquation.SINE, Ease3D.EasingDirection.INOUT)
	Ease3D.EaseRotation(BackRightTop, ROT_DEFAULT, DURATION, Ease3D.EasingEquation.SINE, Ease3D.EasingDirection.INOUT)
	
	Ease3D.EaseRotation(FrontLeftMid, ROT_DEFAULT, DURATION, Ease3D.EasingEquation.SINE, Ease3D.EasingDirection.INOUT)
	Ease3D.EaseRotation(BackLeftMid, ROT_DEFAULT, DURATION, Ease3D.EasingEquation.SINE, Ease3D.EasingDirection.INOUT)
	Ease3D.EaseRotation(BackRightMid, ROT_DEFAULT, DURATION, Ease3D.EasingEquation.SINE, Ease3D.EasingDirection.INOUT)
	Ease3D.EaseRotation(FrontRightMid, ROT_DEFAULT, DURATION, Ease3D.EasingEquation.SINE, Ease3D.EasingDirection.INOUT)
	
	Ease3D.EaseRotation(FrontLeftBot, ROT_DEFAULT, DURATION, Ease3D.EasingEquation.SINE, Ease3D.EasingDirection.INOUT)
	Ease3D.EaseRotation(FrontRightBot, ROT_DEFAULT, DURATION, Ease3D.EasingEquation.SINE, Ease3D.EasingDirection.INOUT)
	Ease3D.EaseRotation(BackLeftBot, ROT_DEFAULT, DURATION, Ease3D.EasingEquation.SINE, Ease3D.EasingDirection.INOUT)
	Ease3D.EaseRotation(BackRightBot, ROT_DEFAULT, DURATION, Ease3D.EasingEquation.SINE, Ease3D.EasingDirection.INOUT)
	
	Task.Wait(DURATION/2)
	
end
--[[
local function DisplayMountUI()
	Mount_UI.visibility = Visibility.FORCE_ON
end

local function HideMountUI()
	Mount_UI.visibility = Visibility.FORCE_OFF
end
]]--
Task.Wait()
function Tick()
	
	if not Equipment.owner or not Object.IsValid(Equipment.owner) then
		return
	end
	
	local PLAYER_SPEED = Equipment.owner:GetVelocity()
	--print(PLAYER_SPEED.size)


	if PLAYER_SPEED.size == 0 then
		DURATION = .35
	elseif PLAYER_SPEED.size > 100 and PLAYER_SPEED.size < 400 then
		DURATION = .35
	elseif PLAYER_SPEED.size > 400 and PLAYER_SPEED.size < 600 then
		DURATION = .25
	elseif PLAYER_SPEED.size > 600 then
		DURATION = .25
	end
		
	--if LOCAL_PLAYER and Equipment and LOCAL_PLAYER == Equipment.owner then
		if not isActive then
			World.SpawnAsset(Start_SFX, {position = Equipment:GetWorldPosition()})
			Task.Wait()
			isActive = true
			isMoving = false
					
		elseif Equipment.owner.isAccelerating and isActive then
			isMoving = true
			--Task.Wait() --Good Practice
			--LEFT SIDE to MIN
			--RIGHT SIDE to MAX
			--Position and Rotation of the Chassis
			QuadAnimation(DURATION)
			
		elseif PLAYER_SPEED.size == 0 and isMoving then
			
			QuadReset(DURATION)
			isActive = false
			
		end
	--end
end