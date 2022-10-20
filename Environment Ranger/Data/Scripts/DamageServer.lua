local API_D = require(script:GetCustomProperty("APIDamage"))
local API_ID = require(script:GetCustomProperty("API_ID"))
local API_RE = require(script:GetCustomProperty("APIReliableEvents"))

-- We use 8 entries to minimize the cases where a value changes twice before the client notices and an event is missed
local N_ENTRIES = 8

local currentIndex = 1
local cachedProperties = {}

function ReplicateEvent(sourceCharacter, targetCharacter, effectiveAmount, overAmount, tags, typeCharacter)
    local sourceId = API_ID.GetIdFromObject(sourceCharacter)
    local targetId = API_ID.GetIdFromObject(targetCharacter)
    local propertyName = string.format("Entry%d", currentIndex)
    local encodedValue = string.format("%s|%s|%s|%.1f|%.1f|%d", typeCharacter, sourceId, targetId, effectiveAmount, overAmount, tags)

    -- Some basic avoidance of missed events
    if encodedValue == cachedProperties[currentIndex] then
        encodedValue = encodedValue .. "|"
    end

    cachedProperties[currentIndex] = encodedValue
    script:SetNetworkedCustomProperty(propertyName, encodedValue)
    currentIndex = currentIndex % N_ENTRIES + 1
end

function ReplicateDamage(sourceCharacter, targetCharacter, effectiveAmount, overkill, tags)
    API_RE.Broadcast("DamageDone", sourceCharacter, targetCharacter, effectiveAmount, overkill, tags)
    ReplicateEvent(sourceCharacter, targetCharacter, effectiveAmount, overkill, tags, "D")
end

function ReplicateHealing(sourceCharacter, targetCharacter, effectiveAmount, overheal, tags)
    API_RE.Broadcast("HealingDone", sourceCharacter, targetCharacter, effectiveAmount, overheal, tags)
    ReplicateEvent(sourceCharacter, targetCharacter, effectiveAmount, overheal, tags, "H")
end

API_D.RegisterReplicatorFunctions({ReplicateDamage = ReplicateDamage, ReplicateHealing = ReplicateHealing})
