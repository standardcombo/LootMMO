
if not Environment.IsClient() then return end

local ROOT = script.parent
local UICONTAINER = script:GetCustomProperty("UIContainer"):WaitForObject()
local SCALE_LERP_SPEED = 14

local defaultScale = UICONTAINER:GetScale()
local localPlayer = Game.GetLocalPlayer()

function Tick(deltaTime)
	if not ROOT.clientUserData then return end
	
	local player = ROOT.clientUserData.player
	if not Object.IsValid(player) then return end
	
	if player ~= localPlayer then
		Task.Wait(30)
		return
	end
	
	local playerForward = Quaternion.New(player:GetWorldRotation()):GetForwardVector()
	local viewForward = Quaternion.New(localPlayer:GetViewWorldRotation()):GetForwardVector()
	local dot = playerForward .. viewForward
	
	if dot < -0.5 then
		targetScale = defaultScale
	else
		targetScale = Vector3.ONE * 0.001
	end
	local t = CoreMath.Clamp(deltaTime * SCALE_LERP_SPEED)
	local scale = UICONTAINER:GetScale()
	scale = Vector3.Lerp(scale, targetScale, t)
	UICONTAINER:SetScale(scale)
end

