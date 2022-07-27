local Root = script:GetCustomProperty("Root"):WaitForObject()
local Trap = script:GetCustomProperty("Trap"):WaitForObject()
local Jaw = script:GetCustomProperty("Jaw"):WaitForObject()
local JawOffset = script:GetCustomProperty("JawOffset"):WaitForObject()
local LockSFX = script:GetCustomProperty("LockSFX"):WaitForObject()
local PlacementFX = script:GetCustomProperty("PlacementFX"):WaitForObject()
local Ease3D = require(script:GetCustomProperty("Ease3D"))

local LOCAL_PLAYER = Game.GetLocalPlayer()

function OnNetworkPropertyChanged(thisObject, name)
	Task.Wait()
	local ownerID = Root:GetCustomProperty("OwnerID")
	local TrapOwner
	for _, player in pairs(Game.GetPlayers()) do
		if player.id == ownerID then
			TrapOwner = player
			break
		end
	end
	local OwnerTeam = TrapOwner.team
	
	if LOCAL_PLAYER.team == OwnerTeam then
		Trap.visibility = Visibility.INHERIT
	end
	
	--Task.Wait(2)
	Ease3D.EasePosition(Trap, Vector3.New(0, 0, 0), .75, Ease3D.EasingEquation.BOUNCE, Ease3D.EasingDirection.OUT)
	Ease3D.EaseRotation(Jaw, Rotation.New(0, 0, 0), .75, Ease3D.EasingEquation.BOUNCE, Ease3D.EasingDirection.OUT)
	Task.Wait(.1)
	if LOCAL_PLAYER.team == OwnerTeam then
		LockSFX:Play()
		PlacementFX:Play()
	end
	Ease3D.EaseRotation(Trap, Rotation.New(0, 0, 0), .75, Ease3D.EasingEquation.BOUNCE, Ease3D.EasingDirection.OUT)
	Ease3D.EaseRotation(JawOffset, Rotation.New(0, 0, 180), .75, Ease3D.EasingEquation.BOUNCE, Ease3D.EasingDirection.OUT)
end

Root.networkedPropertyChangedEvent:Connect( OnNetworkPropertyChanged )

