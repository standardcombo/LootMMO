-- Internal custom properties
local API = require(script:GetCustomProperty("API"))
local Ease3D = require(script:GetCustomProperty("Ease3D"))
local UTIL = require(script:GetCustomProperty("CoreWorldUtilities"))

-- Exposed custom properties
local CRATE_BODY = script:GetCustomProperty("CrateBody"):WaitForObject()
local BODY_CENTER = script:GetCustomProperty("CrateBodyCenter"):WaitForObject()
local TRIGGER = script:GetCustomProperty("Trigger"):WaitForObject()
local CRATE_INSTRUCTION_PANEL = script:GetCustomProperty("CrateInstructionPanel"):WaitForObject()

local GET = function (obj, value) return obj:GetCustomProperty(value):WaitForObject() end
local READY_COLOR = CRATE_INSTRUCTION_PANEL:GetCustomProperty("ReadyColor")
local WAIT_COLOR = CRATE_INSTRUCTION_PANEL:GetCustomProperty("WaitColor")
local INFO_BACKGROUND = GET(CRATE_INSTRUCTION_PANEL, "InfoBackground")
local INFO_TEXT = GET(CRATE_INSTRUCTION_PANEL, "InfoText")
local INFO_SUB_TEXT = GET(CRATE_INSTRUCTION_PANEL, "InfoSubText")

local SLIDING_LID_RIGHT = script:GetCustomProperty("SlidingLidRight"):WaitForObject()
local SLIDING_LID_LEFT = script:GetCustomProperty("SlidingLidLeft"):WaitForObject()
local MEDAL_FRONT = script:GetCustomProperty("MedalFront"):WaitForObject()
local MEDAL_BACK = script:GetCustomProperty("MedalBack"):WaitForObject()
local LASERS = script:GetCustomProperty("Lasers"):WaitForObject()

local CRATE_MEDAL = script:GetCustomProperty("CrateMedal"):WaitForObject()
local OPEN_EFFECT = script:GetCustomProperty("OpenEffect"):WaitForObject()
local CLOSE_EFFECT = script:GetCustomProperty("CloseEffect"):WaitForObject()
local CALLOUT_EFFECT = script:GetCustomProperty("CalloutEffect"):WaitForObject()
local APPEAR_EFFECT = script:GetCustomProperty("AppearEffect"):WaitForObject()
local DISAPPEAR_EFFECT = script:GetCustomProperty("DisappearEffect"):WaitForObject()

-- Settings
local CRATE_SETTINGS = script:GetCustomProperty("CrateSettings"):WaitForObject()
local TIERS_SETTINGS = script:GetCustomProperty("TiersSettings"):WaitForObject()

local SETTINGS = CRATE_SETTINGS:GetCustomProperties()
local TIERS = API.GenerateTableFromChildren(TIERS_SETTINGS, true)

-- Constant variable
local LOCAL_PLAYER = Game.GetLocalPlayer()

local BODY_CENTER_POS = BODY_CENTER:GetPosition()
local LID_RIGHT_POS = SLIDING_LID_RIGHT:GetPosition()
local LID_LEFT_POS = SLIDING_LID_LEFT:GetPosition()
local MEDAL_FRONT_ROT = MEDAL_FRONT:GetRotation()
local MEDAL_BACK_ROT = MEDAL_BACK:GetRotation()

local INTERACTIVITY_COOLDOWN = 1.2

-- Internal variables
local isOpened = false
local inTrigger = false
-- TUTORIAL DISABLED 2022/09/02, standardcombo
local tutorialComplete = true--false
local inCorrectTutorial = false

--[[ local rewardInfo = {}
local rewardIndex = 1 ]]
local tierSetting = {}

local lastTime = 0
local isShaking = false
local canShake = false
local shakeInfluenceAmount = 0

local lastTriggerInteractivityTime = time()
local isTriggerInteractable = false

local debugIndex = 0

-- Get colorizable objects and materials
local colorizableObjects = {}
local colorizableMaterials = {}

for index, value in ipairs(CRATE_BODY:FindDescendantsByType("StaticMesh")) do
    if value:GetCustomProperty("Colorize") then
        table.insert(colorizableObjects, value)
    end

    local prop = value:GetCustomProperty("ColorizeMaterial")
    if prop ~= nil then
        local slotName = "Shared_BaseMaterial"
        if type(prop) == "string" then
            slotName = prop
        end

        local slotInfo = {
            obj = value,
            materialSlot = value:GetMaterialSlot(slotName)
        }
        slotInfo.obj.clientUserData.slotColor = slotInfo.materialSlot:GetColor()
        table.insert(colorizableMaterials, slotInfo)
    end
end
for index, value in ipairs(BODY_CENTER:FindDescendantsByType("SmartObject")) do
    if value:GetCustomProperty("Colorize") then
        table.insert(colorizableObjects, value)
    end
end

function Tick()
    CheckShake()

    if inTrigger and UI.IsSocialMenuEnabled() then
        UI.SetSocialMenuEnabled(false)
    end

    -- Check crate status for info display
    if inTrigger then
        -- Press f to portal
        if API.IsReadyToClaim() then
-- TUTORIAL DISABLED 2022/09/02, standardcombo
--            tutorialComplete = LOCAL_PLAYER:GetResource("TutorialComplete") == 1
            inCorrectTutorial = LOCAL_PLAYER:GetResource("TutorialProgress") == 4

            if tutorialComplete or inCorrectTutorial then
                INFO_BACKGROUND:SetColor(READY_COLOR)
                INFO_TEXT.text = "READY"
                INFO_SUB_TEXT.text = "OPEN CRATE TO EARN RP"
            else
                INFO_BACKGROUND:SetColor(WAIT_COLOR)
                INFO_TEXT.text = "COMPLETE TUTORIALS"
                INFO_SUB_TEXT.text = "TO OPEN CRATE"
            end
        else
            INFO_BACKGROUND:SetColor(WAIT_COLOR)
            INFO_TEXT.text = "REFRESHES IN "..UTIL.ConvertTimeToClockText(API.GetRemainingTime())
            INFO_SUB_TEXT.text = "SOCIAL RP RECEIVED "..string.format("%d/%d", LOCAL_PLAYER:GetResource(API.SOCIAL_COUNT_RESOURCE), API.GetMaxSocialBonusCount())
        end
    end
end

function CheckShake()
    if canShake then
        isShaking = true
        shakeInfluenceAmount = tierSetting.ShakeInfluenceCurve:GetValue((time() - lastTime)/tierSetting.BuildupDuration)
        -- simple shake formula
        ------ center + vect3PosDir * sin(time * speed) * amount * curveAmount
        local posX = SETTINGS.ShakeInfluence * Vector3.FORWARD * (math.sin(time() * SETTINGS.ShakeSpeed) * tierSetting.ShakeAmount * shakeInfluenceAmount)
        local posY = SETTINGS.ShakeInfluence * Vector3.RIGHT * (math.cos(time() * SETTINGS.ShakeSpeed) * tierSetting.ShakeAmount * shakeInfluenceAmount)
        local posZ = SETTINGS.ShakeInfluence * Vector3.UP * (math.sin(time() * SETTINGS.ShakeSpeed) * tierSetting.ShakeAmount * shakeInfluenceAmount)

        BODY_CENTER:SetPosition(BODY_CENTER_POS + posX + posY + posZ)
    else
        if isShaking then
            BODY_CENTER:MoveTo(BODY_CENTER_POS, .1, true)
            isShaking = false
        end
    end
end

function SpawnEffect(effectAsset)
    if not effectAsset then return end
    World.SpawnAsset(effectAsset, {position = BODY_CENTER:GetWorldPosition()})
end

function Colorize(color)
    for _, value in ipairs(colorizableObjects) do
        if value:IsA("Vfx") then
            value:SetSmartProperty("Color", color)
        elseif value:IsA("SmartObject") then
            if value:GetSmartProperty("Color") then
                value:SetSmartProperty("Color", color)
            end
            if value:GetSmartProperty("Color A") then
                value:SetSmartProperty("Color A", color)
            end
            value:SetSmartProperty("Color B", color)
            value:SetSmartProperty("Color C", color)
        elseif value:IsA("StaticMesh") then
            value:SetColor(color)
        end
    end
end

function ColorizeMaterials(color)
    for _, slotInfo in ipairs(colorizableMaterials) do
        slotInfo.materialSlot:SetColor(color)
    end
end

function ResetColorizedMaterials()
    for _, slotInfo in ipairs(colorizableMaterials) do
        slotInfo.materialSlot:SetColor(slotInfo.obj.clientUserData.slotColor)
    end
end

function TryToOpenCrate()
    API.TryDrawLootCrate(script.id)
end

function OpenCrate(rewardIndex, id)
    if id and id ~= script.id then
        return
    end
    Events.Broadcast("DailyRPCrateOpening", rewardIndex)
    isOpened = true

    local rewardInfo = API.GetRewardsList()[rewardIndex]
    tierSetting = TIERS[rewardInfo.Type]

    -- BUILDUP ANIMATION
    local buildupDuration = tierSetting.BuildupDuration

    -- Spawn buildup animation 
    SpawnEffect(tierSetting.ChargeEffectAsset)

    -- Enable shake during buildup
    lastTime = time()
    canShake = true

    -- Turn the lock + sound
    Ease3D.EaseRotation(MEDAL_FRONT, Rotation.New(360, MEDAL_FRONT_ROT.y, MEDAL_FRONT_ROT.z), buildupDuration, Ease3D.EasingEquation.EXPONENTIAL, Ease3D.EasingDirection.OUT)
    Ease3D.EaseRotation(MEDAL_BACK, Rotation.New(360, MEDAL_BACK_ROT.y, MEDAL_BACK_ROT.z), buildupDuration, Ease3D.EasingEquation.EXPONENTIAL, Ease3D.EasingDirection.OUT)
    UTIL.PlayEffect(MEDAL_FRONT, true)
    UTIL.PlayEffect(MEDAL_BACK, true)

    -- Shortened the lasers
    for index, value in ipairs(LASERS:GetChildren()) do
        local newScale = Vector3.New(0, value:GetScale().y, value:GetScale().z)
        value:ScaleTo(newScale, buildupDuration)
    end

    ----------
    Task.Wait(buildupDuration)

    -- OPEN ANIMATION
    local openDuration = tierSetting.OpenDuration
    canShake = false

    -- Open the chest
    Ease3D.EasePosition(SLIDING_LID_RIGHT, SETTINGS.LidRightOpenPos, openDuration, Ease3D.EasingEquation.EXPONENTIAL, Ease3D.EasingDirection.IN)
    Ease3D.EasePosition(SLIDING_LID_LEFT, SETTINGS.LidLeftOpenPos, openDuration, Ease3D.EasingEquation.EXPONENTIAL, Ease3D.EasingDirection.IN)
    UTIL.PlayEffect(OPEN_EFFECT, true)

    Colorize(rewardInfo.Color)
    APPEAR_EFFECT:SetPosition(Vector3.UP * (tierSetting.MedalPopUpHeight - 180))
    DISAPPEAR_EFFECT:SetPosition(Vector3.UP * (tierSetting.MedalPopUpHeight - 180))

    -- Delay to Sequence 3
    Task.Wait(openDuration)

    -- MEDAL POP ANIMATION
    local medalPopDuration = tierSetting.MedalPopDuration

    -- Show effect based on loot
    CRATE_MEDAL:SetPosition(Vector3.ZERO)
    CRATE_MEDAL:SetScale(Vector3.ZERO)

    UTIL.PlayEffect(APPEAR_EFFECT, true)

    -- Medal pop up based on set distance
    Ease3D.EasePosition(CRATE_MEDAL, Vector3.UP * tierSetting.MedalPopUpHeight, medalPopDuration, Ease3D.EasingEquation.EXPONENTIAL, Ease3D.EasingDirection.OUT)
    Ease3D.EaseRotation(CRATE_MEDAL, Rotation.New(0,0,270), medalPopDuration, Ease3D.EasingEquation.EXPONENTIAL, Ease3D.EasingDirection.OUT)
    Ease3D.EaseScale(CRATE_MEDAL, Vector3.ONE * 1, .1, Ease3D.EasingEquation.EXPONENTIAL, Ease3D.EasingDirection.IN)

    ----------
    Task.Wait(medalPopDuration)

    UTIL.PlayEffect(DISAPPEAR_EFFECT, true)
    Task.Wait(1)

    Ease3D.EaseScale(CRATE_MEDAL, Vector3.ZERO, .2, Ease3D.EasingEquation.EXPONENTIAL, Ease3D.EasingDirection.IN)
    Task.Wait(tierSetting.MedalCloseDuration)

    API.ReadyToGrant()
    Events.Broadcast("DailyRPCrateOpened", rewardIndex)

    ----------
    -- CLOSE THE CRATE
    Task.Wait(SETTINGS.WaitBeforeCloseDuration)
    CloseCrate()

    if TRIGGER:IsOverlapping(LOCAL_PLAYER) then
        SetInteractableTrigger(true)
    end
end

function CloseCrate()
    Events.Broadcast("DailyRPCrateClosing")
    if isOpened then
        -- Close the chest
        Ease3D.EasePosition(SLIDING_LID_RIGHT, LID_RIGHT_POS, .8, Ease3D.EasingEquation.EXPONENTIAL, Ease3D.EasingDirection.IN)
        Ease3D.EasePosition(SLIDING_LID_LEFT, LID_LEFT_POS, .8, Ease3D.EasingEquation.EXPONENTIAL, Ease3D.EasingDirection.IN)
        UTIL.PlayEffect(CLOSE_EFFECT, true)
        UTIL.StopEffect(CALLOUT_EFFECT, true)

        isOpened = false
    end

    Task.Wait(1)

    -- Turn the lock + sound
    Ease3D.EaseRotation(MEDAL_FRONT, MEDAL_FRONT_ROT, 1, Ease3D.EasingEquation.EXPONENTIAL, Ease3D.EasingDirection.OUT)
    Ease3D.EaseRotation(MEDAL_BACK, MEDAL_BACK_ROT, 1, Ease3D.EasingEquation.EXPONENTIAL, Ease3D.EasingDirection.OUT)
    UTIL.PlayEffect(MEDAL_FRONT, true)
    UTIL.PlayEffect(MEDAL_BACK, true)

    -- Shorten the lasers
    for index, value in ipairs(LASERS:GetChildren()) do
        local newScale = Vector3.New(SETTINGS.LasersScaleX, value:GetScale().y, value:GetScale().z)
        value:ScaleTo(newScale, .6)
    end

    Events.Broadcast("DailyRPCrateClosed")
    ResetCrate()
end

function ResetCrate()
    if API.IsReadyToClaim() then
        UTIL.PlayEffect(CALLOUT_EFFECT, true)
        ResetColorizedMaterials()
    else
        UTIL.StopEffect(CALLOUT_EFFECT, true)
        ColorizeMaterials(Color.RED)
    end

    CRATE_MEDAL:SetPosition(Vector3.ZERO)
    CRATE_MEDAL:SetScale(Vector3.ZERO)

    SLIDING_LID_RIGHT:SetPosition(LID_RIGHT_POS)
    SLIDING_LID_LEFT:SetPosition(LID_LEFT_POS)
end

function SetInteractableTrigger(isInteractable)
    if isInteractable then
        CRATE_INSTRUCTION_PANEL.visibility = Visibility.INHERIT
    else
        CRATE_INSTRUCTION_PANEL.visibility = Visibility.FORCE_OFF
    end

    isTriggerInteractable = isInteractable
end

function OnBeginOverlap(_, player)
    if player ~= LOCAL_PLAYER then return end

    inTrigger = true

    if not isOpened then
        SetInteractableTrigger(true)
    end

    UI.SetSocialMenuEnabled(false)
end

function OnEndOverlap(_, player)
    if player ~= LOCAL_PLAYER then return end

    inTrigger = false

    SetInteractableTrigger(false)
    UI.SetSocialMenuEnabled(true)
end

function OnActionPressed(player, action)
    if player ~= LOCAL_PLAYER then return end

    -- Prevents players to spam the portal or open close button
    if time() - lastTriggerInteractivityTime < INTERACTIVITY_COOLDOWN then
        return
    end

-- TUTORIAL DISABLED 2022/09/02, standardcombo
--    tutorialComplete = LOCAL_PLAYER:GetResource("TutorialComplete") == 1

    -- Press RMB to open or close
    if action == "Aim" and isTriggerInteractable then
        if tutorialComplete  then
            Events.Broadcast("PopupImage", "9d289f/home-world-banner-01", 3, "DAILY BONUS CRATE", 
            "Open the crate to receive Daily Reward Points. Earning Rare, Epic, or Legendary RP also grants a Celebration Bonus to other players nearby! You can receive up to three Celebration Bonuses per day.", nil,
            "2X Bonus Thursdays do not apply to the Daily Bonus Crate or Celebration Bonuses.")
        else
            Events.Broadcast("DailyRPCrateOpenFail")
        end
    end

    -- If the crate is within the crate step tutorial, then allow for interaction
    -- TODO: Grab tutorial list and check for RP Crate id instead of hardcode like this
    --      Also: allow debugging option?
    inCorrectTutorial = LOCAL_PLAYER:GetResource("TutorialProgress") == 4

    -- Press f to portal
    if action == "Interact" and isTriggerInteractable then
    	Events.BroadcastToServer("ObjectivePickup", "RPCrate", 1)
    	
        if API.IsReadyToClaim() and (tutorialComplete or inCorrectTutorial) then
            SetInteractableTrigger(false)
            TryToOpenCrate()
        else
            Events.Broadcast("DailyRPCrateOpenFail")
        end
    end

--[[     if SETTINGS.Debug then        
        if binding == "ability_extra_4" then
            debugIndex = 0
            UI.ShowFlyUpText("Default", player:GetWorldPosition(), {color = Color.CYAN})
        end
        if binding == "ability_extra_5" then
            debugIndex = 5
            UI.ShowFlyUpText("Rare", player:GetWorldPosition(), {color = Color.CYAN})
        end
        if binding == "ability_extra_6" then
            debugIndex = 6
            UI.ShowFlyUpText("Epic", player:GetWorldPosition(), {color = Color.PURPLE})
        end
        if binding == "ability_extra_7" then
            debugIndex = 7
            UI.ShowFlyUpText("Legendary", player:GetWorldPosition(), {color = Color.ORANGE})
        end
    end ]]
end

-- Initialize
while not API.IsRegistered() do
    Task.Wait()
end

-- Initiliaze
ResetCrate()
Events.Connect("DailyRPCrateAvailable", function() if not isOpened then ResetCrate() end end)
Events.Connect("CrateLootDrawResult", OpenCrate)

TRIGGER.beginOverlapEvent:Connect(OnBeginOverlap)
TRIGGER.endOverlapEvent:Connect(OnEndOverlap)

Input.actionPressedEvent:Connect(OnActionPressed)