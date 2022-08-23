local APISTATUS_EFFECTS = require(script:GetCustomProperty('APIStatusEffects'))

function ApplyStatusEffect(...)
    APISTATUS_EFFECTS.ApplyStatusEffect(...)
end

function RemoveStatusEffect(...)
    APISTATUS_EFFECTS.RemoveStatusEffect(...)
end

Events.Connect('StatusEffect_Apply', ApplyStatusEffect)
Events.Connect('StatusEffect_Remove', RemoveStatusEffect)
