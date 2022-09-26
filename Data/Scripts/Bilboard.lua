local LOCAL_PLAYER = Game.GetLocalPlayer()
local ROTATE_OBJECT = script:GetCustomProperty('RotateObject'):WaitForObject()

function Tick()
    if ROTATE_OBJECT.visibility ~= Visibility.FORCE_OFF then
        ROTATE_OBJECT:SetWorldRotation(
            Rotation.New(Quaternion.New(LOCAL_PLAYER:GetViewWorldRotation()) * Quaternion.New(Vector3.UP, 0))
        )
    end
end
