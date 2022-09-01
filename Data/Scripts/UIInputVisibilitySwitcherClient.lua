local KEYBOARD_OBJECT = script:GetCustomProperty("KeyboardObject")
local CONTROLLER_OBJECT = script:GetCustomProperty("ControllerObject")
local TOUCH_OBJECT = script:GetCustomProperty("TouchObject")

if KEYBOARD_OBJECT then
    KEYBOARD_OBJECT = KEYBOARD_OBJECT:WaitForObject()
    KEYBOARD_OBJECT.visibility = Visibility.FORCE_OFF
end
if CONTROLLER_OBJECT then
    CONTROLLER_OBJECT = CONTROLLER_OBJECT:WaitForObject()
    CONTROLLER_OBJECT.visibility = Visibility.FORCE_OFF
end
if TOUCH_OBJECT then
    TOUCH_OBJECT = TOUCH_OBJECT:WaitForObject()
    TOUCH_OBJECT.visibility = Visibility.FORCE_OFF
end

local LOCAL_PLAYER = Game.GetLocalPlayer()

function ToggleObject(obj, isVisible)
    if Object.IsValid(obj) then
        if isVisible then
            obj.visibility = Visibility.INHERIT
        else
            obj.visibility = Visibility.FORCE_OFF
        end
    end    
end

function OnInputTypeChanged(_, changedInputType)
    if changedInputType == InputType.KEYBOARD_AND_MOUSE then
        ToggleObject(KEYBOARD_OBJECT, true)
        ToggleObject(CONTROLLER_OBJECT, false)
        ToggleObject(TOUCH_OBJECT, false)
    elseif changedInputType == InputType.CONTROLLER then
        ToggleObject(KEYBOARD_OBJECT, false)
        ToggleObject(CONTROLLER_OBJECT, true)
        ToggleObject(TOUCH_OBJECT, false)
    elseif changedInputType == InputType.TOUCH then
        ToggleObject(KEYBOARD_OBJECT, false)
        ToggleObject(CONTROLLER_OBJECT, false)
        ToggleObject(TOUCH_OBJECT, true)
    end
end

Input.inputTypeChangedEvent:Connect(OnInputTypeChanged)
Task.Wait()
OnInputTypeChanged(nil, Input.GetCurrentInputType())