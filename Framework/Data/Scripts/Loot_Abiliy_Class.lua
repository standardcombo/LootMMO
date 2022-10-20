--- @class CustomAbility
local Ability = {
    isEnabled = true,
    canActivateWhileDead = false,
    name = '',
    owner = nil,
    caster = nil,
    cycler = nil,
    cooldown = 0,
    currentAbilty = nil,
    isDestroyed = false,
    tableElemets = {
        'abilities',
        'abilityData',
        'abilityListeners',
        'properties',
        'modifiers',
        'lastStats',
        'data'
    },
    events = {
        'spawnedEvent',
        'activateEvent',
        'destroyEvent',
        'readyEvent',
        'recoveryEvent',
        'castEvent',
        'executeEvent',
        'statChangedEvent',
        'cooldownEvent',
        'interruptedEvent',
        'tickEvent',
        'equippedEvent',
        'unequippedEvent'
    }
}
function Ability:GetEntry()
    return self.currentAbilty
end
function Ability:IsA(type)
    return type == 'Ability'
end
function Ability:SetEnabled(bool)
    if type(bool) == 'boolean' then
        self.isEnabled = true
    end
end
function Ability:CalculateStats(stats)
    stats = stats or {}
    local newstats = {}
    for key, value in pairs(self.modifiers or {}) do
        if value.calculation then
            newstats[key] = value.calculation(self, stats)
        else
            newstats[key] = value.value or 0
        end
    end
    return newstats
end
function Ability:GetBaseStats()
    return self:CalculateStats({})
end
function Ability:DisconnectListeners()
    for key, value in pairs(self.abilityListeners or {}) do
        if value then
            value:Disconnect()
        end
    end
end
function Ability:ConnectListeners()
    self.abilityListeners = {}
    local function callEvent(event, ...)
        if event then
            event:Trigger(self, self.currentAbilty, ...)
        end
    end

    if self.currentAbilty then
        local newAbilities = {
            self.currentAbilty.executeEvent:Connect(
                function()
                    callEvent(self.executeEvent)
                    self:_Execute()
                end
            ),
            self.currentAbilty.readyEvent:Connect(
                function()
                    callEvent(self.readyEvent)
                end
            ),
            self.currentAbilty.castEvent:Connect(
                function()
                    callEvent(self.castEvent)
                    self:_Cast()
                end
            ),
            self.currentAbilty.recoveryEvent:Connect(
                function()
                    callEvent(self.recoveryEvent)
                    self:_Recovery()
                end
            ),
            self.currentAbilty.cooldownEvent:Connect(
                function()
                    callEvent(self.cooldownEvent)
                    self:_Cooldown()
                end
            ),
            self.currentAbilty.readyEvent:Connect(
                function()
                    callEvent(self.readyEvent)
                end
            ),
            self.currentAbilty.interruptedEvent:Connect(
                function()
                    callEvent(self.interruptedEvent)
                end
            ),
            self.currentAbilty.tickEvent:Connect(
                function()
                    callEvent(self.tickEvent)
                end
            )
        }
        for index, value in ipairs(newAbilities) do
            table.insert(self.abilityListeners, value)
        end
    end
end
function Ability:GetCurrentPhase()
    if self.currentAbilty then
        return self.currentAbilty:GetCurrentPhase()
    end
end
function Ability:SetCurrentAbility(newAbility)
    if not newAbility or not newAbility:IsA('Ability') then
        return
    end
    self:DisconnectListeners()
    self.currentAbilty = newAbility
    self:ConnectListeners()
end
function Ability:GetCurrentAbility()
    return self.currentAbilty
end
function Ability:Activate(stats)
    if not self.isEnabled then
        return
    end
    stats = stats or {}
    if not self:GetCurrentAbility() then
        return
    end
    if self.caster and self:GetCurrentAbility():GetCurrentPhase() == AbilityPhase.READY then
        local mod = self:CalculateStats(stats)
        local backupCooldown = self:GetCurrentAbility().cooldownPhaseSettings.duration
        self.cooldown = mod['Cooldown'] or backupCooldown or 100
        self.activateEvent:Trigger(self)
        self:SetStats(stats or {})
        Task.Spawn(
            function()
                self.caster.Activate(self, self.lastStats)
            end
        )
    end
end
function Ability:GetCooldown()
    return self.cooldown or 0
end
function Ability:Interrupt()
    if not self.currentAbilty then
        return
    end
    self.currentAbilty:Interrupt()
end
function Ability:Destroy()
    self.isEnabled = false
    self.isDestroyed = true
    if self.spawn then
        self:Destroy()
    end
end
function Ability:SetOwner(newOwner)
    if self.owner == newOwner then
        return
    end

    if self.owner and self.owner ~= newOwner then
        self:_UnEquip()
    end

    if newOwner then
        self:_Equip(newOwner)
    end
end
function Ability:SetStats(newStats)
    if not newStats then
        return
    end
    self.lastStats = newStats
    self.statChangedEvent:Trigger(self, newStats)
end
function Ability:Cast(stats)
end
function Ability:Execute(stats)
end
function Ability:Recovery(stats)
end
function Ability:Cooldown(stats)
end
function Ability:Equip(player)
end
function Ability:UnEquip()
end
function Ability:Spawn()
end
function Ability:Update(self)
end
function Ability:_Cast()
    self:Cast(self.lastStats)
end
function Ability:_Execute()
    self:Execute(self.lastStats)
end
function Ability:_Recovery()
    self:Recovery(self.lastStats)
end
function Ability:_Cooldown()
    Task.Spawn(
        function()
            if self:GetCurrentAbility() and self:GetCurrentAbility():GetCurrentPhase() == AbilityPhase.COOLDOWN then
                self:GetCurrentAbility():AdvancePhase()
            end
        end,
        self:GetCooldown()
    )
end
function Ability:_Equip(player)
    for key, SpawnAbility in pairs(self.abilities) do
        SpawnAbility.owner = player
    end
    self.owner = player
    self.equippedEvent:Trigger(self)
    self:Equip(player)
end
function Ability:_UnEquip()
    for key, SpawnAbility in pairs(self.abilities) do
        SpawnAbility.owner = nil
    end
    self.owner = nil
    self.unequippedEvent:Trigger(self)
    self:UnEquip()
end

if Environment.IsServer() then
    function Ability:Setup()
        for i = #self.abilities, 1, -1 do
            self.abilities[i]:Destroy()
            table.remove(self.abilities, i)
        end

        for _, ability in pairs(self.cycler:GetAbilities(self)) do
            local newability = World.SpawnAsset(ability, {networkContext = NetworkContextType.NETWORKED})
            table.insert(self.abilities, newability)
        end
        self:SetCurrentAbility(self.abilities[1])
        self.spawnedEvent:Trigger(self)
        self:Spawn()
        return self.currentAbilty
    end
end

return Ability
