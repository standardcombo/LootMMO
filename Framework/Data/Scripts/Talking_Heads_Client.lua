local ROOT = script:GetCustomProperty("Root"):WaitForObject()

local PANEL = script:GetCustomProperty("Panel"):WaitForObject()
local IMAGE = script:GetCustomProperty("Image"):WaitForObject()
local NAME = script:GetCustomProperty("Name"):WaitForObject()
local MESSAGE = script:GetCustomProperty("Message"):WaitForObject()
local CAMERA = script:GetCustomProperty("Camera"):WaitForObject()
local TALKING_HEADS = require(script:GetCustomProperty("TalkingHeads"))
local CONTAINER = script:GetCustomProperty("Container"):WaitForObject()

local WRITE_TEXT = ROOT:GetCustomProperty("WriteText")
local TEXT_SPEED = ROOT:GetCustomProperty("TextSpeed")
local CAN_SKIP_WRITING = ROOT:GetCustomProperty("CanSkipWriting")

local BACKGROUND_COLOR = ROOT:GetCustomProperty("BackgroundColor")
local BACKGROUND = script:GetCustomProperty("Background"):WaitForObject()

local LIGHT_INTENSITY = ROOT:GetCustomProperty("LightIntensity")
local POINT_LIGHT = script:GetCustomProperty("PointLight"):WaitForObject()

POINT_LIGHT.intensity = LIGHT_INTENSITY
BACKGROUND:SetColor(BACKGROUND_COLOR)

local actor = nil
local audio = nil
local capture = nil
local show = false
local hide = false
local skip_writing = false

_G.Talking_Head = ""

local LOCAL_PLAYER = Game.GetLocalPlayer()

local function parse_message(message)
	local replacements = {

		{ replace = "{name}", with = LOCAL_PLAYER.name },
		{ replace = "{hitpoints}", with = LOCAL_PLAYER.hitPoints },
		{ replace = "{maxhitpoints}", with = LOCAL_PLAYER.maxHitPoints },
		{ replace = "{kills}", with = LOCAL_PLAYER.kills },
		{ replace = "{deaths}", with = LOCAL_PLAYER.deaths }

	}

	for _, r in pairs(replacements) do
		message = string.gsub(message, r.replace, r.with)
	end

	return message
end

local function display_message(message)
	local txt = parse_message(message)

	if(WRITE_TEXT) then
		Task.Spawn(function()
			for i = 1, string.len(txt) do
				if(skip_writing and CAN_SKIP_WRITING) then
					MESSAGE.text = txt
					skip_writing = false
					break
				else
					MESSAGE.text = string.sub(txt, 1, i)
					Task.Wait(TEXT_SPEED)
				end
			end

			skip_writing = false
		end)
	else
		MESSAGE.text = txt
	end
end

local function play_audio(asset)
	if(asset == nil) then
		return
	end

	audio = World.SpawnAsset(asset, { parent = CONTAINER })
	audio.isAttenuationEnabled = false
	audio.isOcclusionEnabled = false
	audio.isSpatializationEnabled = false
	audio:Play()
end

local function play_talking_head(key, world_actor, world_delay)
	Events.Broadcast("FlipInteraction")
	if(Object.IsValid(actor)) then
		actor:Destroy()
		capture:Release()
		capture = nil
	end

	if(Object.IsValid(audio)) then
		audio:Destroy()
	end

	local row = TALKING_HEADS[key]

	if(row ~= nil) then
		local message = row.Message

		if(row.RandomMessages ~= nil) then
			message = row.RandomMessages[math.random(#row.RandomMessages)].Message
		end

		display_message(message)

		NAME.text = row.Name

		actor = World.SpawnAsset(row.Actor, { parent = CONTAINER, position = row.PositionOffset })
		capture = CAMERA:Capture(CameraCaptureResolution.LARGE)
		IMAGE:SetCameraCapture(capture)

		show = true
		_G.Talking_Head = row.Key
		PANEL.visibility = Visibility.INHERIT

		if(string.len(row.Stance) > 0) then
			actor.animationStance = row.Stance
			play_audio(row.Audio)
			if(Object.IsValid(world_actor)) then
				world_actor.animationStance = row.Stance
			end
		elseif(string.len(row.Animation) > 0) then
			actor:PlayAnimation(row.Animation, { shouldLoop = row.AnimationLoop })
			if(Object.IsValid(world_actor)) then
				world_actor:PlayAnimation(row.Animation, { shouldLoop = row.AnimationLoop })
			end
			play_audio(row.Audio)
		else
			play_audio(row.Audio)
		end

		if(row.ResponseTable) then
			Events.Broadcast("Talking.GetResponse", row.ResponseTable, row.DisplayDuration, key)
		end

		if (row.DisplayDuration > -1) then
			Task.Wait(row.DisplayDuration > 0 and row.DisplayDuration or 4)
			CloseHead()
		end
	else
		print("No response set")
		CloseHead()
	end
end

local function on_action_pressed(player, action)
	if(action == "Skip Writing" and Object.IsValid(actor)) then
		skip_writing = true
	end
end

function Tick(dt)
	if(capture) then
		capture:Refresh()
	end

	if(show) then
		show = false
	elseif(hide) then
		hide = false
		_G.Talking_Head = ""
	end
end

function CloseHead()
	hide = true
	PANEL.visibility = Visibility.FORCE_OFF
	Events.Broadcast("FlipInteraction")
end

Events.Connect("Talking.Heads", play_talking_head)
Events.Connect("CloseHeads", CloseHead)

Input.actionPressedEvent:Connect(on_action_pressed)
