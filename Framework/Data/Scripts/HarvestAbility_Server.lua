-----------------------------------------
-- HARVESTING SYSTEM FOR LootMMO
-- By Morituri_SK, v 1.0
-----------------------------------------
-- Harvesting ability server script
--
-- Animates the harvesting and sends completed event
-- for HarvestingSystem_Server script
-----------------------------------------

local ROOT = script:FindAncestorByType("Equipment")
if not ROOT then warn("Harvest Ability script has to be a child of an equipment object") return end

local HARVEST_ABILITIES = ROOT:GetAbilities()
if HARVEST_ABILITIES == nil then warn("Harvest Ability script needs equipment with abilities") return end

local HARVEST_ABILITY = HARVEST_ABILITIES[1]
if HARVEST_ABILITY == nil then warn("Harvest Ability script needs equipment with one ability") return end

local handles = {}
local RequiredCycles = 0
local currentCycles = 0
local isInterrupted = false

local FullDuration =
HARVEST_ABILITY.castPhaseSettings.duration +
HARVEST_ABILITY.executePhaseSettings.duration +
HARVEST_ABILITY.recoveryPhaseSettings.duration +
HARVEST_ABILITY.cooldownPhaseSettings.duration

local PlayerCurrentEquipment = {}

function ShowItemsInHands(isVisible)
    for _,e in ipairs(PlayerCurrentEquipment)do
        if Object.IsValid(e) then
            if e.name == "HarvestingTool" then
                if isVisible == true then
                    e.visibility = Visibility.FORCE_OFF
                else
                    e.visibility = Visibility.INHERIT
                end
            elseif e.socket == "left_prop" or e.socket == "right_prop" then
                if isVisible == true then
                    e.visibility = Visibility.INHERIT
                else
                    e.visibility = Visibility.FORCE_OFF
                end
            end
        end
    end
end

function OnHarvestInterrupted(ability)
    isInterrupted = true
    ShowItemsInHands(true)
end

function OnHarvestReady(ability)
    currentCycles = currentCycles + 1
    if currentCycles >= RequiredCycles and not isInterrupted then
        Events.Broadcast("Harvest.Complete",ability.owner)
        ShowItemsInHands(true)
    elseif not isInterrupted then
        HARVEST_ABILITY:Activate()
    end
    isInterrupted = false
end

function OnHarvestStartRequest(player,cycles)
    if player ~= HARVEST_ABILITY.owner then return end
    RequiredCycles = cycles
    currentCycles = 0
    HARVEST_ABILITY:Activate()
    --send ability total duration for client progress bar
    local TTL = time() + FullDuration * RequiredCycles
    Events.BroadcastToPlayer(HARVEST_ABILITY.owner,"Harvest.FinTime",TTL)
    --save equipped items for later
    PlayerCurrentEquipment = HARVEST_ABILITY.owner:GetEquipment()
    --hide weapons in hands
    ShowItemsInHands(false)
end

function OnHarvestCancel(player)
    if player ~= HARVEST_ABILITY.owner then return end
    HARVEST_ABILITY:Interrupt()
end

function Cleanup()
    for _,h in pairs(handles) do
        h:Disconnect()
    end
    handles = nil
end

--handles
table.insert(handles,HARVEST_ABILITY.readyEvent:Connect(OnHarvestReady))
table.insert(handles,HARVEST_ABILITY.interruptedEvent:Connect(OnHarvestInterrupted))
table.insert(handles,ROOT.destroyEvent:Connect(Cleanup))
table.insert(handles,Events.Connect("Harvest.Start",OnHarvestStartRequest))
table.insert(handles,Events.ConnectForPlayer("Harvest.Cancel",OnHarvestCancel))