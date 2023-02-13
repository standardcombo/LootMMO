local ROOT = script:FindAncestorByType("Equipment")
if not ROOT then warn("Harvest Ability script has to be a child of an equipment object") return end

--wait for owner to be synced
while ROOT.owner == nil do
    Task.Wait()
end

local HARVEST_ABILITIES = ROOT:GetAbilities()
if #HARVEST_ABILITIES == 0 then
    Task.Wait(.1)
    HARVEST_ABILITIES = ROOT:GetAbilities()
    if  #HARVEST_ABILITIES == 0 then warn("Harvest Ability script needs equipment with abilities") return end
end

local HARVEST_ABILITY = HARVEST_ABILITIES[1]
if HARVEST_ABILITY == nil then
    Task.Wait(.1)
    HARVEST_ABILITY = HARVEST_ABILITIES[1]
    print(ROOT)
    if HARVEST_ABILITY == nil then warn("Harvest Ability script needs equipment with one ability") return end
end

local handles = {}

function OnHarvestCast(ability)
    
end

function OnHarvestInterrupted(ability)
    
end

function OnHarvesExecuted(ability)
    
end

function OnHarvestReady(ability)

end

function Cleanup()
    for _,h in pairs(handles) do
        h:Disconnect()
    end
    handles = nil
end


--handles
table.insert(handles,HARVEST_ABILITY.readyEvent:Connect(OnHarvestReady))
table.insert(handles,HARVEST_ABILITY.castEvent:Connect(OnHarvestCast))
table.insert(handles,HARVEST_ABILITY.executeEvent:Connect(OnHarvesExecuted))
table.insert(handles,HARVEST_ABILITY.interruptedEvent:Connect(OnHarvestInterrupted))
table.insert(handles,ROOT.destroyEvent:Connect(Cleanup))