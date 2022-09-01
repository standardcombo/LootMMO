local API = require(script:GetCustomProperty("API"))
local ROOT = script:GetCustomProperty("Root"):WaitForObject() ---@type Folder
local INDICATOR_PANEL = script:GetCustomProperty("IndicatorPanel"):WaitForObject() ---@type UIPanel
local OFFSET_UP = script:GetCustomProperty("OffsetUp")
local TUTORIAL_BEAM = script:GetCustomProperty("TutorialBeam"):WaitForObject() ---@type Vfx
local MIN_MAX_DISTANCE = script:GetCustomProperty("MinMaxDistance") ---@type Vector2
local SNAP_TO_SCREEN = script:GetCustomProperty("SnapToScreen")

-- Constant variable
local LOCAL_PLAYER = Game.GetLocalPlayer()
local CRATE_POSITION = ROOT:GetWorldPosition()
local PANEL_SNAP_SIZE = math.floor(INDICATOR_PANEL.height / 2)

-- Internal variables
local canShow = false
local tutorialComplete = false
local inCorrectTutorial = false

local screenPosition = nil
local screenSize = UI.GetScreenSize()

local distance = 0
local distancePercentage = 0

function GetDistance(pos1, pos2)
    return (pos2 - pos1).size
end

function Tick()
    if API.IsReadyToClaim() and canShow then
        tutorialComplete = LOCAL_PLAYER:GetResource("TutorialComplete") == 1
        inCorrectTutorial = LOCAL_PLAYER:GetResource("TutorialProgress") == 4

        if tutorialComplete or inCorrectTutorial then
            -- Gather distances 
            distance = GetDistance(LOCAL_PLAYER:GetWorldPosition(), CRATE_POSITION)
            distancePercentage = CoreMath.Clamp((distance - MIN_MAX_DISTANCE.x) / (MIN_MAX_DISTANCE.y), 0, 1)

            -- Update the crate indicator
            screenPosition = UI.GetScreenPosition(CRATE_POSITION + Vector3.UP * OFFSET_UP)
            screenSize = UI.GetScreenSize()

            -- Show indicator only if the position is available on screen
            if screenPosition then
                INDICATOR_PANEL.visibility = Visibility.INHERIT
    
                INDICATOR_PANEL.x = screenPosition.x
                INDICATOR_PANEL.y = screenPosition.y
    
                -- Clamp the indicator position if clamp is enabled
                if SNAP_TO_SCREEN then
                    INDICATOR_PANEL.x = CoreMath.Clamp(INDICATOR_PANEL.x, PANEL_SNAP_SIZE, screenSize.x - PANEL_SNAP_SIZE)
                    INDICATOR_PANEL.y = CoreMath.Clamp(INDICATOR_PANEL.y, PANEL_SNAP_SIZE, screenSize.y - PANEL_SNAP_SIZE)
                end
            else
                INDICATOR_PANEL.visibility = Visibility.FORCE_OFF
            end

            -- Update the transaparency of indicator
            INDICATOR_PANEL.opacity = distancePercentage
            
            -- Beam controller
            AttachBeam()
        else
            INDICATOR_PANEL.visibility = Visibility.FORCE_OFF
            DetachBeam()
        end
    else
        INDICATOR_PANEL.visibility = Visibility.FORCE_OFF
        DetachBeam()
    end
end

function AttachBeam()
    if TUTORIAL_BEAM.parent == INDICATOR_PANEL then
        TUTORIAL_BEAM:AttachToPlayer(LOCAL_PLAYER, "lower_spine")
    end
end

function DetachBeam()
    if TUTORIAL_BEAM.parent ~= INDICATOR_PANEL then
        TUTORIAL_BEAM:Detach()
        TUTORIAL_BEAM.parent = INDICATOR_PANEL
    end
end

-- Init
while not API.IsRegistered() do
    Task.Wait()
end

INDICATOR_PANEL.visibility = Visibility.FORCE_OFF
INDICATOR_PANEL.x = 0
INDICATOR_PANEL.y = 0

Events.Connect("LoadingScreenEnded", function()
    canShow = true
end)
Events.Connect("DailyRPCrateOpening", function()
    canShow = false
end)
Events.Connect("DailyRPCrateClosed", function()
    canShow = true
end)

TUTORIAL_BEAM:SetSmartProperty("Target Scene Object Reference", ROOT)

