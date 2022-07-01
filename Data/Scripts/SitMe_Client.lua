local ROOT = script:GetCustomProperty("Root"):WaitForObject()
local TRIGGER = script:GetCustomProperty("Trigger"):WaitForObject()
local IK_ANCHORS = script:GetCustomProperty("IKAnchors"):WaitForObject()
local UITEMPLATE = script:GetCustomProperty("UITemplate")

-- ROOT PROPS
local SIT_ME_ID = ROOT.id
local PLAYER_STANCE = ROOT:GetCustomProperty("PlayerStance") --this is being set on server, this is just as a reference, if needed
local TRIGGER_TEXT = ROOT:GetCustomProperty("TriggerText")
local RAGDOLL_LEGS = ROOT:GetCustomProperty("RagdollLegs") --this is being set on server, this is just as a reference, if needed
local PRIMARY_ACTION = ROOT:GetCustomProperty("PrimaryAction")
local SECONDARY_ACTION = ROOT:GetCustomProperty("SecondaryAction")

local SIT_ME_PANEL = _G.SIT_ME_PANEL
if not SIT_ME_PANEL then
	SIT_ME_PANEL = World.SpawnAsset(UITEMPLATE)
	_G.SIT_ME_PANEL = SIT_ME_PANEL
	SIT_ME_PANEL.clientUserData.visibleCount = 0
	SIT_ME_PANEL.visibility = Visibility.FORCE_OFF
	SIT_ME_PANEL.clientUserData.text = SIT_ME_PANEL:GetCustomProperty("SitMeText"):WaitForObject()
end

--internal Vars
local LOCAL_PLAYER = Game.GetLocalPlayer()
local occupyingPlayer
local IKAs = IK_ANCHORS:GetChildren()
local activateSitMeHandle
local deactivateByMovement = true --to be used as parameter TODO
local isShowingPanel = false

function ToggleIKAs(activ)
    if occupyingPlayer == nil then warn("Call ToggkeIKAs() always prior to setting occupyingPlayer = nil") return end
    for _,ika in ipairs(IKAs)do
    	if _G.IkStack then
	        if activ then
	            _G.IkStack.Add(occupyingPlayer, ika)
	        else
	            _G.IkStack.Remove(occupyingPlayer, ika)
	        end
    	else
	        if activ then
	            ika:Activate(occupyingPlayer)
	        else
	            ika:Deactivate()
	        end
	    end
    end
end

function GetPlayerFromID(pid)
    for _,p in ipairs(Game.GetPlayers()) do
        if p.id == pid then return p end
    end
    return false
end

function EmptySitMe()
    if occupyingPlayer then
        ToggleIKAs(false)
    end
    if occupyingPlayer == LOCAL_PLAYER then DeactivateSitMeHandle() end
    occupyingPlayer = nil
end

function OccupySitMe(p)
    occupyingPlayer = p
    if p == LOCAL_PLAYER then ActivateSitMeHandle() end
    ToggleSitMePanel(false)
    ToggleIKAs(true)
    ActivateSitMeHandle()
end

function ToggleSitMePanel(show)
	if show == isShowingPanel then return end
	isShowingPanel = show
	
    if show then
    	SIT_ME_PANEL.clientUserData.visibleCount = SIT_ME_PANEL.clientUserData.visibleCount + 1
    else
    	SIT_ME_PANEL.clientUserData.visibleCount = SIT_ME_PANEL.clientUserData.visibleCount - 1
    end
    
    if SIT_ME_PANEL.clientUserData.visibleCount == 0 then
        SIT_ME_PANEL.visibility = Visibility.FORCE_OFF
    else
        SIT_ME_PANEL.visibility = Visibility.INHERIT
    end
    SIT_ME_PANEL.clientUserData.text.text = TRIGGER_TEXT
end

function UpdateSitMeState(player,key)
    if key ~= SIT_ME_ID then return end
    local currentOwner = LOCAL_PLAYER:GetPrivateNetworkedData(key)
    --print("currentOwner",currentOwner)
    currentOwner = GetPlayerFromID(currentOwner)
    if currentOwner == false then
        EmptySitMe()
    elseif currentOwner:IsA("Player") then
        OccupySitMe(currentOwner)
    end
end

function ActivateSitMeHandle()
    --print("prior activation reset")
    DeactivateSitMeHandle()
    --print("activating handle")
    activateSitMeHandle = Input.actionPressedEvent:Connect(function (player, action, value)
        if action == PRIMARY_ACTION or action == SECONDARY_ACTION
            or (deactivateByMovement == true and occupyingPlayer == LOCAL_PLAYER and action == "Move") then
                DeactivateSitMeHandle()
                Events.BroadcastToServer("SitMe",SIT_ME_ID)
            end
    end)
end

function DeactivateSitMeHandle()
    --print("dectivating handle")
    if activateSitMeHandle then
        activateSitMeHandle:Disconnect()
    end
end

function OnSitMeTriggerOverlapStart(trigger, other)
    if other ~= LOCAL_PLAYER then return end
    if occupyingPlayer then return end
    ToggleSitMePanel(true)
    ActivateSitMeHandle()
end

function OnSitMeTriggerOverlapEnds(trigger, other)
    if other ~= LOCAL_PLAYER then return end
    ToggleSitMePanel(false)
    DeactivateSitMeHandle()
end


--wait for data
while LOCAL_PLAYER:GetPrivateNetworkedData(SIT_ME_ID) == nil do
    Task.Wait()
end

--update status
UpdateSitMeState(LOCAL_PLAYER, SIT_ME_ID)

--connect events
TRIGGER.beginOverlapEvent:Connect(OnSitMeTriggerOverlapStart)
TRIGGER.endOverlapEvent:Connect(OnSitMeTriggerOverlapEnds)
LOCAL_PLAYER.privateNetworkedDataChangedEvent:Connect(UpdateSitMeState)