
local TARGETING_API = require(script:GetCustomProperty('Targeting_API'))
local TARGERT_RENDER = script:GetCustomProperty('TargertRender'):WaitForObject()

-- 30 meters
local MAX_RANGE = 3000 ^ 2

local LOCAL_PLAYER = Game.GetLocalPlayer()

local CurrentTarget = nil


function ClosestPointOnInfinateLine(vectorStart, vectorEnd, vectorPoint)
	local directionToLastNode = (vectorEnd - vectorStart)
	local dotA = directionToLastNode:GetNormalized() .. (vectorPoint - vectorStart)
	local intersection = vectorStart + directionToLastNode:GetNormalized() * dotA
	return intersection
end

function Tick(dt)
	if not Object.IsValid(CurrentTarget) then
		CurrentTarget = nil
	end
	if not CurrentTarget then
		local Start = Quaternion.New(LOCAL_PLAYER:GetLookWorldRotation())
		local End = Quaternion.New(Rotation.New(LOCAL_PLAYER:GetLookWorldRotation() * Vector3.FORWARD, Vector3.UP))
		local Slerpy = Quaternion.Slerp(Start, End, dt * 4)

		LOCAL_PLAYER:SetLookWorldRotation(Rotation.New(Slerpy))
		TARGERT_RENDER.visibility = Visibility.FORCE_OFF
		return
	end
	TARGERT_RENDER.visibility = Visibility.INHERIT
	TARGERT_RENDER:SetWorldPosition(CurrentTarget:GetWorldPosition())
	
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
	local Slerpy = Quaternion.Slerp(Start, End, dt * 4)

	LOCAL_PLAYER:SetLookWorldRotation(Rotation.New(Slerpy))
end

function SelectTarget()
	local smallestTarget = nil
	local smallestSize = MAX_RANGE + 1
	local LookPos = LOCAL_PLAYER:GetViewWorldPosition() 
	local LookDir = LOCAL_PLAYER:GetLookWorldRotation() * Vector3.FORWARD
	local LookEnd = LookPos + LookDir
	
	for index, target in ipairs(TARGETING_API.GetTargets()) do
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
