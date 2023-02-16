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

function OnHarvestCast(ability)
    
end

function OnHarvestInterrupted(ability)
    isInterrupted = true
end

function OnHarvestReady(ability)
    currentCycles = currentCycles + 1
    if currentCycles >= RequiredCycles and not isInterrupted then
        --TODO connect to server to proceed the node mining success
        Events.Broadcast("Harvest.Complete",ability.owner)
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
    --TODO connect to server to lock node
    --and client to show progress bar
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
table.insert(handles,HARVEST_ABILITY.castEvent:Connect(OnHarvestCast))
table.insert(handles,ROOT.destroyEvent:Connect(Cleanup))
table.insert(handles,Events.Connect("Harvest.Start",OnHarvestStartRequest))
table.insert(handles,Events.ConnectForPlayer("Harvest.Cancel",OnHarvestCancel))