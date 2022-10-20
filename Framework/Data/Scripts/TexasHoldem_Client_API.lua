local TEXAS_POKER_SETTINGS = require(script:GetCustomProperty("TexasPoker_Settings"))
local LOCAL_PLAYER = Game.GetLocalPlayer()


function GrabUtils()
	local endtime = time() + 1
	while not _G.CC_Util do
		-- statements
		Task.Wait()
		if endtime < time() then
			error('No CC_Util found')
			return
		end
	end
	return _G.CC_Util
end

local utils = GrabUtils()
local luaEvents = utils:WaitForlibrary('Lua Event', 1)
local isPlaying = false


local API = {
	playingChangedEvent = luaEvents.New()
}
 
function UpdatePlaying(p, key)
	if key == TEXAS_POKER_SETTINGS.storageKey then
		local data = LOCAL_PLAYER:GetPrivateNetworkedData(TEXAS_POKER_SETTINGS.storageKey)
		local hasChanged = isPlaying 
		if data then
			if (data.players or {})[LOCAL_PLAYER.name] then

				isPlaying = true
			else
				isPlaying = false
			end
		else
			isPlaying = false
		end
		if hasChanged ~= isPlaying then
			API.playingChangedEvent:Trigger(isPlaying)
		end
	end
end

LOCAL_PLAYER.privateNetworkedDataChangedEvent:Connect(UpdatePlaying)


function API.isPlaying()
	return isPlaying
end

return API
