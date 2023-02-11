--[[
	NPC Waypoint
	v1.1
	by: standardcombo

The waypoint detects NPCs entering its trigger and directs them to move to the next objective.
Can be used for patrolling behaviors, random folks in town, traffic lanes, etc.

See the "Waypoint Example" template that is part of this package.

Any object that enters the waypoint is evaluated as a possible NPC. It works if the object conforms
to these rules:
1. The object is part of a template.
2. The template contains a script.
3. The script has a function called SetObjective(Vector3).
4a. Both the template and the waypoint's trigger are on the same team
4b.   or, one of the two has team = 0 (neutral).

Waypoint setups can be as simple as two pointing at each other, or a complex network of travel points.
To setup a network of waypoints:
1. Add waypoints to the map and resize their triggers to fit the level design.
   (Don't move the triggers around. Keep them at local position 0,0,0. Move the whole waypoint instead)
2. Deinstance the waypoints
3. In the hierarchy, select a waypoint that is supposed to send NPCs to the next one
4. Drag another waypoint from the hierarchy onto the Properties, to create a destination custom property.
5. You can add multiple custom property destinations to have it select one at random.
6. Any Core Objects can be used as destinations, not just other waypoints.
7. If you don't add any destinations in this way the waypoint will behave as a "dead end".
8. A waypoint can have itself as a custom property. NPCs will patrol the internal space of the waypoint.
--]]

local ROOT = script.parent
local TRIGGER = ROOT
if not TRIGGER:IsA("Trigger") then
	TRIGGER = ROOT:FindDescendantByType("Trigger")
end
local TRIGGER_SCALE = TRIGGER:GetWorldScale()
destinationRadius = math.min(TRIGGER_SCALE.x, TRIGGER_SCALE.y) * 50


function FindAiScript(obj)
	if not obj.FindTemplateRoot then return end
	
	local templateRoot = obj:FindTemplateRoot()
	if (templateRoot == nil) then
		templateRoot = obj.parent
	end
	if templateRoot then
		-- Team mismatch exit condition
		local team = templateRoot:GetCustomProperty("Team") or 0
		if (team ~= 0 and TRIGGER.team ~= 0 and team ~= TRIGGER.team) then
			return nil
		end
		
		-- Search for AI script
		local scripts = templateRoot:FindDescendantsByType("Script")
		for _,s in ipairs(scripts) do
			if s.context.SetObjective then
				return s
			end
		end
	end
	return nil
end


function GetDestination()
	local key,value = GetRandomCustomProperty(ROOT)
	if value and value:IsA("CoreObjectReference") then
		local obj = value:GetObject()
		local targetPos = obj:GetWorldPosition()
		
		local radius = destinationRadius
		local scripts = obj:FindDescendantsByType("Script")
		for _,s in ipairs(scripts) do
			if s.context.destinationRadius then
				radius = s.context.destinationRadius
				break
			end
		end
		
		local rngAngle = math.random() * 2 * math.pi
		local rngRadius = radius * math.sqrt(math.random())
		targetPos.x = targetPos.x + rngRadius * math.cos(rngAngle)
		targetPos.y = targetPos.y + rngRadius * math.sin(rngAngle)
		
		return targetPos
		
	else
		UI.PrintToScreen("ERROR: NPCWaypoint has no destinations. Add CoreObject references as custom properties.")
	end
	return nil
end


function GetRandomCustomProperty(obj)
	local allProperties = obj:GetCustomProperties()
	local propertyCount = 0
	for _,_ in pairs(allProperties) do
		propertyCount = propertyCount + 1
	end

	if (propertyCount > 0) then
		local selectedIndex = math.random(1, propertyCount)

		local i = 0
		for key,value in pairs(allProperties) do
			i = i + 1
			if selectedIndex == i then
				return key,value
			end
		end
	end
	return nil,nil
end


function OnBeginOverlap(theTrigger, obj)
	--print("OnBeginOverlap obj = " .. tostring(obj))
	local aiScript = FindAiScript(obj)
	if aiScript then
		local destination = GetDestination()
		if destination then
			aiScript.context.SetObjective(destination)
		end
	end
end
TRIGGER.beginOverlapEvent:Connect(OnBeginOverlap)

