local CurrentTarget = nil
local Range = 2500 ^ 2
local LOCAL_PLAYER = Game.GetLocalPlayer()
local TARGETING_API = require(script:GetCustomProperty('Targeting_API'))
local TARGERT_RENDER = script:GetCustomProperty('TargertRender'):WaitForObject()
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
	local View = Vector3.New(CurrentTarget:GetWorldPosition() - LOCAL_PLAYER:GetViewWorldPosition() +Vector3.UP )
	local Distance = View.sizeSquared
	if Distance > Range then
		CurrentTarget = nil
		return
	end
	if Distance < 30000 then
		return
	end
	local Start = Quaternion.New(LOCAL_PLAYER:GetLookWorldRotation())
	local End = Quaternion.New(Rotation.New(View:GetNormalized(), Vector3.UP))
	local Slerpy = Quaternion.Slerp(Start, End, dt * 4)

	LOCAL_PLAYER:SetLookWorldRotation(Rotation.New(Slerpy))
end

function SelectTarget()
	local smallestTarget = nil
	local smallestSize = Range + 1
	local LookPos = LOCAL_PLAYER:GetViewWorldPosition() 
	local LookDir = LOCAL_PLAYER:GetLookWorldRotation() * Vector3.FORWARD
	local LookEnd = LookPos + LookDir
	for index, value in ipairs(TARGETING_API.GetTargets()) do
		local valuePos = value:GetWorldPosition()
		local pointPosition = ClosestPointOnInfinateLine(LookPos, LookEnd, valuePos)
		local newRange = Vector3.New(valuePos - pointPosition).sizeSquared
		if newRange < smallestSize and (LookDir .. (valuePos - LookPos):GetNormalized()) > 0 then
			smallestSize = newRange
			smallestTarget = value
		end
	end
	CurrentTarget = smallestTarget
	
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
