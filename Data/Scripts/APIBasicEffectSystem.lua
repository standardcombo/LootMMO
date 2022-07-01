local API = {}

function API.RegisterEffectsManagerServer(effectFunctions)
    if _G.APIBasicEffectSystem and _G.APIBasicEffectSystem.registeredOnServer then
		error("A game cannot have multiple effect managers")
    end

    _G.APIBasicEffectSystem = {}
    _G.APIBasicEffectSystem.registeredOnServer = true
    _G.APIBasicEffectSystem.effectApply = effectFunctions.effectApply
    _G.APIBasicEffectSystem.effectRemove = effectFunctions.effectRemove
    _G.APIBasicEffectSystem.effectUpdate = effectFunctions.effectUpdate
    _G.APIBasicEffectSystem.effectClear = effectFunctions.effectClear
    _G.APIBasicEffectSystem.settingsSet = effectFunctions.settingsSet
    _G.APIBasicEffectSystem.settingsReset = effectFunctions.settingsReset
end

function API.ApplyEffect(player, effectName, effectTable)
    if not _G.APIBasicEffectSystem then
		warn("Cannot apply effect with no effect manager registered")
		return nil
	end

	return _G.APIBasicEffectSystem.effectApply(player, effectName, effectTable)
end

function API.RemoveEffect(player, effectName)
    if not _G.APIBasicEffectSystem then
		warn("Cannot remove effect with no effect manager registered")
		return nil
	end

	return _G.APIBasicEffectSystem.effectRemove(player, effectName)
end

function API.ClearAllEffects(player)
    if not _G.APIBasicEffectSystem then
		warn("Cannot clear effects with no effect manager registered")
		return nil
	end

	return _G.APIBasicEffectSystem.effectClear(player)
end

function API.UpdateEffects(player)
    if not _G.APIBasicEffectSystem then
		warn("Cannot update effects with no effect manager registered")
		return nil
	end

	return _G.APIBasicEffectSystem.effectUpdate(player)
end

function API.SetDefaultSettings(player, settings)
    if not _G.APIBasicEffectSystem then
		warn("Cannot set settings with no effect manager registered")
		return nil
	end

	return _G.APIBasicEffectSystem.settingsSet(player, settings)
end

function API.ResetDefaultSettings(player)
    if not _G.APIBasicEffectSystem then
		warn("Cannot reset settings with no effect manager registered")
		return nil
	end

	return _G.APIBasicEffectSystem.settingsReset(player)
end

return API