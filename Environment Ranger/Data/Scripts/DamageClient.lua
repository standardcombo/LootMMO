local API_ID = require(script:GetCustomProperty("API_ID"))
local API_RE = require(script:GetCustomProperty("APIReliableEvents"))

local SERVER_SCRIPT = script:GetCustomProperty("ServerScript"):WaitForObject()

function OnNetworkedPropertyChangedEvent(object, propertyName)
	local newValue = SERVER_SCRIPT:GetCustomProperty(propertyName)
	local tokens = {CoreString.Split(newValue, "|")}
	assert(#tokens >= 6)		-- Extra tokens used to force changes when the event is identical
	local sourceCharacter = API_ID.GetObjectFromId(tokens[2])
	local targetCharacter = API_ID.GetObjectFromId(tokens[3])
	local effectiveAmount = tonumber(tokens[4])
	local overAmount = tonumber(tokens[5])
	local tags = tonumber(tokens[6])

	if tokens[1] == "D" then
    	API_RE.Broadcast("DamageDone", sourceCharacter, targetCharacter, effectiveAmount, overAmount, tags)
	elseif tokens[1] == "H" then
    	API_RE.Broadcast("HealingDone", sourceCharacter, targetCharacter, effectiveAmount, overAmount, tags)
	end
end

SERVER_SCRIPT.networkedPropertyChangedEvent:Connect(OnNetworkedPropertyChangedEvent)
