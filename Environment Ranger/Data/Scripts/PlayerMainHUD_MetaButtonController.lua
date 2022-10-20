local API_RE = require(script:GetCustomProperty("APIReliableEvents"))

local TalentSelectorUtility = require(script:GetCustomProperty("TalentSelectorUtility"))
local BUTTON_LOOT = script:GetCustomProperty("ButtonLoot"):WaitForObject()
local BUTTON_TALENTS = script:GetCustomProperty("ButtonTalents"):WaitForObject()
local BOUNCE_SCALE = script:GetCustomProperty("BounceScale")
local BOUNCE_DURATION = script:GetCustomProperty("BounceDuration")
local BLINK_PERIOD = script:GetCustomProperty("BlinkPeriod")
local BLINK_COLOR = script:GetCustomProperty("BlinkColor")

--------------------------------------------------------------------------------------------------------
local LOCAL_PLAYER = Game.GetLocalPlayer()
while not LOCAL_PLAYER.clientUserData.inventory do Task.Wait() end
local inventory = LOCAL_PLAYER.clientUserData.inventory

--------------------------------------------------------------------------------------------------------
local buttonStates = {}

local function SetupButtonAnimationState(name, root)
    local state = {}
    state.root = root
    state.blinkElement = root:GetCustomProperty("BlinkElement"):WaitForObject()
    state.baseColor = state.blinkElement:GetColor()
    state.baseWidth = state.root.width
    state.baseHeight = state.root.height
    state.timer = nil
    buttonStates[name] = state
end

local function CueButtonAnimation(name)
    buttonStates[name].timer = 0
end

local function StopButtonAnimation(name)
    buttonStates[name].timer = nil
end

local function UpdateButtonAnimationState(state, dt)
    if state.timer then
        state.timer = state.timer + dt
        -- Bounce.
        if state.timer < BOUNCE_DURATION then
            local bounceFraction = math.sin(math.pi * state.timer / BOUNCE_DURATION)
            state.root.width = CoreMath.Lerp(state.baseWidth, BOUNCE_SCALE * state.baseWidth, bounceFraction) // 1
            state.root.height = CoreMath.Lerp(state.baseHeight, BOUNCE_SCALE * state.baseHeight, bounceFraction) // 1
        else    
            state.root.width = state.baseWidth
            state.root.height = state.baseHeight
        end
        -- Blink.
        local blinkFraction = math.abs(math.sin(0.5 * math.pi * state.timer / BLINK_PERIOD))
        local color = Color.Lerp(state.baseColor, BLINK_COLOR, blinkFraction)
        state.blinkElement:SetColor(color)
    else
        state.blinkElement:SetColor(state.baseColor)
        state.root.width = state.baseWidth
        state.root.height = state.baseHeight
    end
end

local function UpdateAnimations(dt)
    for _,state in pairs(buttonStates) do
        UpdateButtonAnimationState(state, dt)
    end 
end

--------------------------------------------------------------------------------------------------------
SetupButtonAnimationState("Loot", BUTTON_LOOT)
SetupButtonAnimationState("Talents", BUTTON_TALENTS)

--------------------------------------------------------------------------------------------------------
local function OnLootDroppedForPlayer(player, item)
    if player == LOCAL_PLAYER then
        CueButtonAnimation("Loot")
    end
end
API_RE.Connect("LootDroppedForPlayer", OnLootDroppedForPlayer)

local function UpdateLootButtonAnimationState()
    local hasUnclaimedLoot = nil
    for _,lootInfo in pairs(inventory:GetLootInfos()) do
        if not lootInfo.isClaimed then
            hasUnclaimedLoot = true
            break
        end
    end
    if not hasUnclaimedLoot then
        StopButtonAnimation("Loot")
    end
end

--------------------------------------------------------------------------------------------------------
local prevUnspentTalentPoints = nil
local function UpdateTalentsButtonAnimationState()
    local unspentTalentPoints = TalentSelectorUtility.GetPlayerTalentPoints(LOCAL_PLAYER)
    if unspentTalentPoints > 0 and TalentSelectorUtility.DoesPlayerHaveUnlockableTalents(LOCAL_PLAYER) then
        if unspentTalentPoints ~= prevUnspentTalentPoints  then
            CueButtonAnimation("Talents")
        end
    else
        StopButtonAnimation("Talents")
    end
    prevUnspentTalentPoints = unspentTalentPoints
end

--------------------------------------------------------------------------------------------------------
function Tick(dt)
    UpdateLootButtonAnimationState()
    UpdateTalentsButtonAnimationState()
    UpdateAnimations(dt)
end
