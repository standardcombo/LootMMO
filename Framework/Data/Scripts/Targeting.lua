--[[
	Targeting System - Client
	v1.0
	by: blaking, standardcombo
	
	Allows players to focus on nearby enemies.
--]]

local TARGETING_API = require(script:GetCustomProperty('Targeting_API'))
local UI_CONTAINER = script:GetCustomProperty('UIContainer'):WaitForObject()
local UI_IMAGE = script:GetCustomProperty('UIImage'):WaitForObject()
local LOOK_SPEED = script:GetCustomProperty('LookSpeed')
local ROTATION_SPEED = script:GetCustomProperty('RotationSpeed')

-- 34 meters
local MAX_RANGE = 3400 ^ 2

local LOCAL_PLAYER = Game.GetLocalPlayer()

local CurrentTarget = nil


function ClosestPointOnInfinateLine(vectorStart, vectorEnd, vectorPoint)
	local directionToLastNode = (vectorEnd - vectorStart)
	local dotA = directionToLastNode:GetNormalized() .. (vectorPoint - vectorStart)
	local intersection = vectorStart + directionToLastNode:GetNormalized() * dotA
	return intersection
end

function Tick(dt)
	if not Object.IsValid(CurrentTarget) 
	or CurrentTarget.context == nil 
	or CurrentTarget.context.IsDead()
	then
		CurrentTarget = nil
	end
	if not CurrentTarget then
		local Start = Quaternion.New(LOCAL_PLAYER:GetLookWorldRotation())
		local End = Quaternion.New(Rotation.New(LOCAL_PLAYER:GetLookWorldRotation() * Vector3.FORWARD, Vector3.UP))
		local Slerpy = Quaternion.Slerp(Start, End, dt * 4)

		LOCAL_PLAYER:SetLookWorldRotation(Rotation.New(Slerpy))
		UI_CONTAINER.visibility = Visibility.FORCE_OFF
		return
	end
	
	-- Update UI Container
	UI_CONTAINER.visibility = Visibility.INHERIT
	-- Position
	UI_CONTAINER:SetWorldPosition(CurrentTarget:GetWorldPosition())
	-- Billboard
	UI_CONTAINER:SetWorldRotation(
		Rotation.New(Quaternion.New(LOCAL_PLAYER:GetViewWorldRotation()) * Quaternion.New(Vector3.UP, 0)))
	-- Rotate
	UI_IMAGE.rotationAngle = UI_IMAGE.rotationAngle + dt * ROTATION_SPEED
	
	-- Update Camera
	local LookPos = LOCAL_PLAYER:GetViewWorldPosition() + Vector3.UP
	local viewVector = CurrentTarget:GetWorldPosition() - LookPos
	local viewDist = viewVector.sizeSquared
	
	if viewDist > MAX_RANGE then
		CurrentTarget = nil
		return
	end
	if viewDist < 30000 then
		return
	end
	local Start = Quaternion.New(LOCAL_PLAYER:GetLookWorldRotation())
	local End = Quaternion.New(Rotation.New(viewVector:GetNormalized(), Vector3.UP))
	local Slerpy = Quaternion.Slerp(Start, End, dt * LOOK_SPEED)

	LOCAL_PLAYER:SetLookWorldRotation(Rotation.New(Slerpy))
end

function SelectTarget()
	local smallestTarget = nil
	local smallestSize = MAX_RANGE + 1
	local LookPos = LOCAL_PLAYER:GetViewWorldPosition() 
	local LookDir = LOCAL_PLAYER:GetLookWorldRotation() * Vector3.FORWARD
	local LookEnd = LookPos + LookDir
	
	for index, target in ipairs(TARGETING_API.GetTargets()) do
		if target.context and target.context.IsDead() then
			goto continue
		end
		
		local targetPos = target:GetWorldPosition()
		
		local viewVector = targetPos - LookPos
		local viewDist = viewVector.sizeSquared
		
		if viewDist < MAX_RANGE then
			local pointPosition = ClosestPointOnInfinateLine(LookPos, LookEnd, targetPos)
			local newRange = Vector3.New(targetPos - pointPosition).sizeSquared
			if newRange < smallestSize and (LookDir .. (targetPos - LookPos):GetNormalized()) > 0 then
				smallestSize = newRange
				smallestTarget = target
			end
		end
		
		:: continue ::
	end
	
	CurrentTarget = smallestTarget
	
	if not CurrentTarget then
		UI.ShowFlyUpText("No target found", 
			LOCAL_PLAYER:GetWorldPosition() + Vector3.UP * 110,
			{isBig = true, duration = 1})
	end
	
	if _G.EnemyTopBar and Object.IsValid(CurrentTarget) then
		local npc = CurrentTarget:FindAncestorByType("DamageableObject")
		if npc then
			local params = {
				player = LOCAL_PLAYER,
				npc = npc,
				priority = 200,
			}
			_G.EnemyTopBar.ShowToPlayer(params)
		end
	end
end

function DeselectTarget()
	CurrentTarget = nil
end

function ActionPressed(_, action)
	if action == 'Target' then
		if CurrentTarget then
			DeselectTarget()
			return
		end
		SelectTarget()
	end
end

Input.actionPressedEvent:Connect(ActionPressed)
