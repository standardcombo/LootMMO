--[[
	Damage Feedback - Server
	v1.2
	by: Wave Paradigm, standardcombo
	
	By default player damaged is server-only.
	This script listens for damage taken by players and broadcasts
	the damage information to the client of players receiving the damage.
	This allows client scripts to react and provide feedback.
	
	Listens to: CombatWrapAPI.OnDamageTaken
	Broadcasts: ShowDamageFeedback
--]]

local DEFAULT_COLOR = script:GetCustomProperty("Default") or Color.WHITE
local BLOCKED_COLOR = script:GetCustomProperty("Blocked") or Color.GRAY
local HEADSHOT_COLOR = script:GetCustomProperty("Headshot") or Color.YELLOW
local ARMOR_COLOR = script:GetCustomProperty("Armor") or Color.CYAN
local CRITICAL_COLOR = script:GetCustomProperty("Critical") or Color.RED
local HEAL_COLOR = script:GetCustomProperty("Heal") or Color.GREEN

function TAGS() return _G["standardcombo.Combat.Tags"] end


function SendToPlayer(player, value, pos, tags)
	local color = DEFAULT_COLOR
	
	-- Blocked?
	if value == 0 or value == "0" then
		color = BLOCKED_COLOR
		value = "Blocked"
	
	-- Heal?
	elseif type(value) == "number" and value < 0 then
		color = HEAL_COLOR
		value = "+"..(-value)

	-- Headshot?
	elseif TAGS().Contains(tags, "Headshot") then
		color = HEADSHOT_COLOR
		
	-- Armor damage?
	elseif TAGS().Contains(tags, "Armor") then
		color = ARMOR_COLOR
	
	-- Critical hit?
	elseif TAGS().Contains(tags, "Critical") then
		color = CRITICAL_COLOR
		value = value .. " !"
	end
	
	--local tagStr = TAGS().Serialize(tags)
	--print("Send to Player: ".. value ..", color: ".. tostring(color) ..", tags: ".. tagStr)
	
	Events.BroadcastToPlayer(player, "ShowDamageFeedback", value, pos, color)
end

Events.Connect("ShowDamageFeedback", SendToPlayer)


function OnDamageTaken(attackData)
	local player = attackData.source
	if player and player:IsA("Player") then
		local amount = math.floor(attackData.damage.amount)
		local pos = attackData.position
		
		-- Fix the position in case it's missing
		if not pos or pos == Vector3.ZERO then
			if attackData.damage.sourceAbility then
				pos = attackData.damage.sourceAbility:GetWorldPosition()
				if attackData.object then
					local targetPos = attackData.object:GetWorldPosition()
					pos.x = targetPos.x
					pos.y = targetPos.y
				end
			elseif attackData.object then
				pos = attackData.object:GetWorldPosition()
			else
				pos = player:GetWorldPosition()
			end
			attackData.position = pos
		end
		
		SendToPlayer(player, amount, pos, attackData.tags)
	end
end

Events.Connect("CombatWrapAPI.OnDamageTaken", OnDamageTaken)

