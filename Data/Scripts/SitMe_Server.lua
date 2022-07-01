local ROOT = script:GetCustomProperty("Root"):WaitForObject()
local PLAYER_SIT_ME_POSITION = script:GetCustomProperty("PlayerSitMePosition"):WaitForObject()
local TRIGGER = script:GetCustomProperty("Trigger"):WaitForObject()
-- ROOT PROPS
local SIT_ME_ID = ROOT.id
local PLAYER_STANCE = ROOT:GetCustomProperty("PlayerStance")
local RAGDOLL_LEGS = ROOT:GetCustomProperty("RagdollLegs")

--[[ --These are mainly for client context, listed here for reference if needed
local TRIGGER_TEXT = ROOT:GetCustomProperty("TriggerText")
local PRIMARY_ACTION = ROOT:GetCustomProperty("PrimaryAction")
local SECONDARY_ACTION = ROOT:GetCustomProperty("SecondaryAction")
]]

--internal vars
local occupyingPlayer = nil
local playerRestoreMove = nil
local playerRestoreStance = nil
local SitMePos = PLAYER_SIT_ME_POSITION:GetWorldPosition()
local SitMeRot = PLAYER_SIT_ME_POSITION:GetWorldRotation()

function UpdateSitMeStatus()
    if occupyingPlayer == nil then
        for _,p in ipairs(Game.GetPlayers())do
            p:SetPrivateNetworkedData(SIT_ME_ID,"")
        end
    elseif occupyingPlayer:IsA("Player") then
        for _,p in ipairs(Game.GetPlayers())do
            p:SetPrivateNetworkedData(SIT_ME_ID,occupyingPlayer.id)
        end
    end
end

function PlayerLeftSitMe(player)
    if occupyingPlayer ~= player then return end
    --print("player left sitme")
    occupyingPlayer = nil
    --restore stats
    player.isMovementEnabled = playerRestoreMove
    if _G.StanceStack then
    	_G.StanceStack.Remove(player, PLAYER_STANCE)
    else
    	player.animationStance = playerRestoreStance
    end
    --restore ragdoll (but killed while sitting)
    if player.isDead == false then player:DisableRagdoll() end
    UpdateSitMeStatus()
end

function PlayerActivatedSitMe(player)
    if player == occupyingPlayer then PlayerLeftSitMe(player) return end
    --print("player entered sitme")
    occupyingPlayer = player
    player:SetMounted(false)
    playerRestoreMove = player.isMovementEnabled
    playerRestoreStance = player.animationStance
    player:ResetVelocity()
    player:SetWorldPosition(SitMePos)
    player:SetWorldRotation(SitMeRot)
    player.isMovementEnabled = false
    
    print(PLAYER_STANCE)
    
    if _G.StanceStack then
    	_G.StanceStack.Add(player, PLAYER_STANCE)
    else
    	player.animationStance = PLAYER_STANCE
    end
    
    if RAGDOLL_LEGS == true then
        player:EnableRagdoll("right_knee", .6)
        player:EnableRagdoll("left_knee", .6)
    end
    UpdateSitMeStatus()
end

function OnSitMe(player, SitMeId)
    --condition order matters, logic and cheapest first
    if SitMeId ~= SIT_ME_ID then return end
    if occupyingPlayer == player then PlayerLeftSitMe(player) return end
    if occupyingPlayer ~= nil then return end
    if TRIGGER:IsOverlapping(player) == false then return end
    --print("server got stit  event")
    PlayerActivatedSitMe(player)
end


Events.ConnectForPlayer("SitMe",OnSitMe)
Game.playerJoinedEvent:Connect(function (player)
    if occupyingPlayer == nil then
        player:SetPrivateNetworkedData(SIT_ME_ID,"")
    elseif occupyingPlayer:IsA("Player") then
        player:SetPrivateNetworkedData(SIT_ME_ID,occupyingPlayer.id)
    end
end)
Game.playerLeftEvent:Connect(function (player)
    PlayerLeftSitMe(player)
end)