--[[
	Combat Events (server)
	v0.14.0 - 2022/10/25
	by: standardcombo
	
	Allows connecting functions to combat events, with the addition of priority
	order. Higher priority connections are called first. Default priority is 100.
	
	
	API
	===
	.goingToTakeDamageEvent
		:Connect(function callback, int priority) - returns EventListener
		
	.damageTakenEvent
		:Connect(function callback, int priority) - returns EventListener
		
	.objectHasDiedEvent
		:Connect(function callback, int priority) - returns EventListener
	
	
	Example
	=======
	function OnGoingToTakeDamage(attackData)
		-- Damage logic here
	end
	
	local damageListener = _G.CombatEvents.goingToTakeDamageEvent:Connect(
		OnGoingToTakeDamage, 200)
	
	local destroyListener = script.destroyEvent:Connect(function()
		damageListener:Disconnect()
		destroyListener:Disconnect()
	end)
	
]]

local API = {}
_G.CombatEvents = API

local function Init()
	API.goingToTakeDamageEvent = {
		Connect = Connect_OnGoingToTakeDamage
	}
	API.damageTakenEvent = {
		Connect = Connect_OnDamageTaken
	}
	API.objectHasDiedEvent = {
		Connect = Connect_OnObjectHasDied
	}
end


local wrappersGoingToTakeDamage = {}
local wrappersDamageTaken = {}
local wrappersObjectHasDied = {}


function Connect_OnGoingToTakeDamage(_, callback, priority)
	if not callback then
		error("Invalid callback passed to CombatEvents.goingToTakeDamageEvent:Connect()")
	end
	priority = priority or 100
	
	return ConnectToTable(wrappersGoingToTakeDamage, callback, priority)
end

function Connect_OnDamageTaken(_, callback, priority)
	if not callback then
		error("Invalid callback passed to CombatEvents.damageTakenEvent:Connect()")
	end
	priority = priority or 100
	
	return ConnectToTable(wrappersDamageTaken, callback, priority)
end

function Connect_OnObjectHasDied(_, callback, priority)
	if not callback then
		error("Invalid callback passed to CombatEvents.objectHasDiedEvent:Connect()")
	end
	priority = priority or 100
	
	return ConnectToTable(wrappersObjectHasDied, callback, priority)
end


local function OnGoingToTakeDamage(attackData)
	for _,wr in ipairs(wrappersGoingToTakeDamage) do
		wr.callback(attackData)
	end
end

local function OnDamageTaken(attackData)
	for _,wr in ipairs(wrappersDamageTaken) do
		wr.callback(attackData)
	end
end

local function OnObjectHasDied(attackData)
	for _,wr in ipairs(wrappersObjectHasDied) do
		wr.callback(attackData)
	end
end

Events.Connect("CombatWrapAPI.GoingToTakeDamage", OnGoingToTakeDamage)
Events.Connect("CombatWrapAPI.OnDamageTaken", OnDamageTaken)
Events.Connect("CombatWrapAPI.ObjectHasDied", OnObjectHasDied)


function ConnectToTable(wrapperTable, callback, priority)
	local wr = MakeWrappedEventListener(wrapperTable)
	
	wr.callback = callback
	wr.priority = priority
	
	local i = 1
	for _,searchEntry in ipairs(wrapperTable) do
		if priority > searchEntry.priority then
			break
		end
		i = i + 1
	end
	table.insert(wrapperTable, i, wr)
	return wr
end


function MakeWrappedEventListener(wrapperTable)
	local wrapper = {}
	
	wrapper.isConnected = true
	
	wrapper.Disconnect = function(wr)
		wr.isConnected = false
		for i,searchEntry in ipairs(wrapperTable) do
			if searchEntry == wr then
				table.remove(wrapperTable, i)
				break
			end
		end
	end
	return wrapper
end

Init()

