local API_D = require(script:GetCustomProperty("APIDamage"))
local API_ID = require(script:GetCustomProperty("API_ID"))
local API_NPC = require(script:GetCustomProperty("API_NPC"))
local API_RE = require(script:GetCustomProperty("APIReliableEvents"))

local CONTAINER = script:GetCustomProperty("Container"):WaitForObject()
local ELEMENT_TEMPLATE = script:GetCustomProperty("ElementTemplate")

local SLIDING_OVERLAP_DELAY = 0.3
local STICKY_OVERLAP_DELAY = 2.2
local FULL_ALPHA_TIME = 0.8
local FADE_TIME = 0.4
local COLUMN_WIDTH = 75.0

local LOCAL_PLAYER = Game.GetLocalPlayer()

-- Column indices: 1 is center, 2 right, 3 left, 4 more right, alternating sides..
local lastSlidingSpawnTimes = {}		-- target -> table | column index -> float, for non crits that slide up
local lastStickySpawnTimes = {}			-- target -> table | column index -> float, for crits that stick in place

function GetColumnOffset(columnIndex)
	local offsetSize = columnIndex // 2 * COLUMN_WIDTH

	if columnIndex % 2 == 0 then
		return offsetSize
	else
		return -offsetSize
	end
end

function ShowText(targetCharacter, amount, over, color, tags, extraText)
	if API_D.HasTag(tags, API_D.TAG_HIDDEN) then
		return
	end

	Task.Spawn(function()
		local element = World.SpawnAsset(ELEMENT_TEMPLATE, {parent = CONTAINER})

		if over > 0.0 then
			element.text = string.format("%.0f (%.0f)%s", amount, over, extraText)
		else
			element.text = string.format("%.0f%s", amount, extraText)
		end

		local isCrit = API_D.HasTag(tags, API_D.TAG_CRIT)
		local isSmall = API_D.HasTag(tags, API_D.TAG_MINOR) or API_D.HasTag(tags, API_D.TAG_PERIODIC)
		local animationRight
		
		if math.random() > 0.5 then
			animationRight = 1
		else 
		    animationRight = -1
		end
		
		if isSmall then
			element.fontSize = 22
		end

		element:SetColor(color)

		local startTime = os.clock()
		local columnIndex = 1
		local t = 0.0

		if not lastSlidingSpawnTimes[targetCharacter] then
			lastSlidingSpawnTimes[targetCharacter] = {}
		end

		if not lastStickySpawnTimes[targetCharacter] then
			lastStickySpawnTimes[targetCharacter] = {}
		end

		if isCrit then
			while lastStickySpawnTimes[targetCharacter][columnIndex] and lastStickySpawnTimes[targetCharacter][columnIndex] + STICKY_OVERLAP_DELAY > startTime do
				columnIndex = columnIndex + 1
			end
		
			lastStickySpawnTimes[targetCharacter][columnIndex] = startTime
		else
			while lastSlidingSpawnTimes[targetCharacter][columnIndex] and lastSlidingSpawnTimes[targetCharacter][columnIndex] + SLIDING_OVERLAP_DELAY > startTime do
				columnIndex = columnIndex + 1
			end

			lastSlidingSpawnTimes[targetCharacter][columnIndex] = startTime
		end

		while t < FULL_ALPHA_TIME + FADE_TIME do
			t = os.clock() - startTime
			
			if not Object.IsValid(targetCharacter) then
				break
			end

			local worldPosition = targetCharacter:GetWorldPosition()

			if targetCharacter:IsA("Player") then
				local playerScale = targetCharacter:GetWorldScale().z

				if targetCharacter == LOCAL_PLAYER then
					-- Local player doesn't have nameplates
					worldPosition = worldPosition + Vector3.UP * playerScale * 125.0
				else
					worldPosition = worldPosition + Vector3.UP * playerScale * 170.0
				end
			else
				local capsuleHeight = API_NPC.GetAllNPCData()[targetCharacter].capsuleHeight
				
				if capsuleHeight > 400.0 then
					worldPosition = worldPosition + Vector3.UP * 250.0
				else
					worldPosition = worldPosition + Vector3.UP * capsuleHeight * 1.25
				end
			end

			local position = UI.GetScreenPosition(worldPosition)

			if position then
				if targetCharacter == LOCAL_PLAYER then
					position = position + Vector2.New(0.0, 90.0)
				else
					position = position - Vector2.New(0.0, 60.0)
				end

				element.x = position.x + GetColumnOffset(columnIndex)

				-- Some hardcoded animations
				if isCrit then
					if t < 0.15 then
						element.y = position.y - math.sin(t / 0.15 * math.pi / 2) * 50.0
						element.fontSize = 22.0 + t * 480.0
					else
						if t < 0.35 then
							element.fontSize = 40.0 + (0.35 - t) * 180.0
						else
							element.fontSize = 40.0
						end
						element.y = position.y - 50.0
						
					end

					if isSmall then
						element.fontSize = element.fontSize * 0.6
					end

					element.height = element.fontSize * 2.0
				else
					if targetCharacter == LOCAL_PLAYER then
						element.x = position.x + t * 50 * animationRight
						element.y = position.y - 150.0 * t + 200.0 * t ^ 2
					else
						element.y = position.y - t * 100.0
					end
				end

				element.visibility = Visibility.INHERIT

				
				local alpha = CoreMath.Clamp(1.0 - (t - FULL_ALPHA_TIME) / FADE_TIME)
				local fadeColor = color
				fadeColor.a = alpha
				element:SetColor(fadeColor)
			else
				element.visibility = Visibility.FORCE_OFF
			end

			Task.Wait()
		end

		element:Destroy()
	end)
end

-- In general the main number should show the total, including overkill and heal
function OnDamageDone(sourceCharacter, targetCharacter, amount, overkill, tags)
	if targetCharacter == LOCAL_PLAYER then
		ShowText(targetCharacter, amount + overkill, 0.0, Color.RED, tags, "")
	elseif sourceCharacter == LOCAL_PLAYER then
		-- For damage you deal, we don't even bother showing overkill
		if API_D.HasTag(tags, API_D.TAG_CRIT) then
			ShowText(targetCharacter, amount + overkill, 0.0, Color.ORANGE, tags, "")
		else
			ShowText(targetCharacter, amount + overkill, 0.0, Color.WHITE, tags, "")
		end
	end
end

function OnHealingDone(sourceCharacter, targetCharacter, amount, overheal, tags)
	if sourceCharacter == LOCAL_PLAYER or targetCharacter == LOCAL_PLAYER then
		if sourceCharacter and sourceCharacter ~= LOCAL_PLAYER and sourceCharacter:IsA("Player") then
			ShowText(targetCharacter, amount + overheal, 0.0, Color.GREEN, tags, string.format(" (%s)", sourceCharacter.name))
		else
			ShowText(targetCharacter, amount + overheal, overheal, Color.GREEN, tags, "")
		end
	end
end

API_RE.Connect("DamageDone", OnDamageDone)
API_RE.Connect("HealingDone", OnHealingDone)
