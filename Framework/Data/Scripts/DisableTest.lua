while not _G['Ability_Disabler'] do
    Task.Wait()
end

local Disabler = _G['Ability_Disabler']

Task.Wait(2)

print("Locked")
for key, value in pairs(Game.GetPlayers()) do
    Disabler.RegisterAll(value, script.id)
end


Task.Wait(5)


print("Unlock")
for key, value in pairs(Game.GetPlayers()) do
    Disabler.UnregisterAll(value, script.id)
end


