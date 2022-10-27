--[[
	Player Damage Override
	v1.0.1 - 2022/10/25
	by: Luapi
]]

local EquipAPI = _G["Character.EquipAPI"]
local MIN_HEADSHOT_MULT = 1.1
local MAX_HEADSHOT_MULT = 2.0

local function OnGoingToTakeDamage(attackData)
	local item = attackData.item
	if not Object.IsValid(item) then return end
	
	local damage = attackData.damage
	local dmgamout = damage.amount
	if dmgamout <= 0 then return end
	
	local source = attackData.source
	if not Object.IsValid(source) then return end
	if not source:IsA("Player") then return end
	
	local headshot = attackData.tags.Headshot

	--overrideDamage
	local char = EquipAPI.GetCurrentCharacter(source)
	if char then
		local stats = char:GetComponent("Stats")
		--Check if Headshot tag is applied
		if headshot then
			-- Formula: AP * (Min + (Max - Min) * AGI / 172)
			dmgamout = CoreMath.Round(stats:GetTempStat("AP") * (MIN_HEADSHOT_MULT + (MAX_HEADSHOT_MULT - MIN_HEADSHOT_MULT) * stats:GetStat("A") / 172))
		else
			dmgamout = CoreMath.Round(stats:GetTempStat("AP"))
		end
	end
	damage.amount = CoreMath.Round(dmgamout)
end

_G.CombatEvents.goingToTakeDamageEvent:Connect(OnGoingToTakeDamage, 200)
