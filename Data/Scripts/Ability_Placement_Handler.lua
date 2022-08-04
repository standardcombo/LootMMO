local ROOT = script:GetCustomProperty('Root'):WaitForObject()
local ABILITY = script:GetCustomProperty('Ability'):WaitForObject()
local ALIGN_TO_NORMAL = script:GetCustomProperty('AlignToNormal')
local ALIGN_TO_ROTATION = script:GetCustomProperty('AlignToRotation')
local PREVIEW_OBJECT = script:GetCustomProperty('PreviewObject')
local DEFAULT_RANGE = script:GetCustomProperty('DefaultRange')
local DEFAULT_RADIUS = script:GetCustomProperty('DefaultRadius')

local function OverrideValues()
    DEFAULT_RANGE = ROOT.clientUserData.calculateModifier()['Range'] or DEFAULT_RANGE
    DEFAULT_RADIUS = ROOT.clientUserData.calculateModifier()['Radius'] or DEFAULT_RADIUS
end

function OnActionPressed(player, action, value)
    if ROOT.owner ~= player then
        return
    end
    if action == ROOT:GetCustomProperty('AbilityBinding') then
        OverrideValues()
        if ABILITY:GetCurrentPhase() == AbilityPhase.READY then
            Events.Broadcast(
                'Placeable_Object',
                ROOT,
                ABILITY,
                {
                    previewObject = PREVIEW_OBJECT,
                    alignToNormal = ALIGN_TO_NORMAL,
                    alignToRotation = ALIGN_TO_ROTATION,
                    range = DEFAULT_RANGE,
                    radius = DEFAULT_RADIUS
                }
            )
        end
    end
end

local inputEvent = nil

ROOT.equippedEvent:Connect(
    function(_, Player)
        if Player == Game.GetLocalPlayer() then
            inputEvent = Input.actionPressedEvent:Connect(OnActionPressed)
        end
    end
)

if not inputEvent then 
    if ROOT.owner == Game.GetLocalPlayer() then
        inputEvent = Input.actionPressedEvent:Connect(OnActionPressed)
    end
end 


ROOT.unequippedEvent:Connect(
    function()
        if inputEvent then
            inputEvent:Disconnect()
            inputEvent = nil
        end
    end
)
