---@type Queue
local Queue = require(script:GetCustomProperty("Queue"))

local ROOT = script:GetCustomProperty("Root"):WaitForObject()

local PANEL = script:GetCustomProperty("Panel"):WaitForObject()
local IMAGE = script:GetCustomProperty("Image"):WaitForObject()
local NAME = script:GetCustomProperty("Name"):WaitForObject()
local MESSAGE = script:GetCustomProperty("Message"):WaitForObject()
local CAMERA = script:GetCustomProperty("Camera"):WaitForObject()
local TALKING_HEADS = require(script:GetCustomProperty("TalkingHeads"))
local CONTAINER = script:GetCustomProperty("Container"):WaitForObject()

local IN_CURVE = ROOT:GetCustomProperty("InCurve")
local IN_DURATION = ROOT:GetCustomProperty("InDuration")
local OUT_CURVE = ROOT:GetCustomProperty("OutCurve")
local OUT_DURATION = ROOT:GetCustomProperty("OutDuration")

local WRITE_TEXT = ROOT:GetCustomProperty("WriteText")
local TEXT_SPEED = ROOT:GetCustomProperty("TextSpeed")
local CAN_SKIP_WRITING = ROOT:GetCustomProperty("CanSkipWriting")

local BACKGROUND_COLOR = ROOT:GetCustomProperty("BackgroundColor")
local BACKGROUND = script:GetCustomProperty("Background"):WaitForObject()

local LIGHT_INTENSITY = ROOT:GetCustomProperty("LightIntensity")
local POINT_LIGHT = script:GetCustomProperty("PointLight"):WaitForObject()

POINT_LIGHT.intensity = LIGHT_INTENSITY
BACKGROUND:SetColor(BACKGROUND_COLOR)

local current_x = PANEL.x

PANEL.x = -PANEL.width - 20

local actor = nil
local audio = nil
local capture = nil
local show = false
local hide = false
local start_x = PANEL.x
local end_x = PANEL.x - current_x
local elapsed = 0
local queue = Queue:new()
local has_item = false
local skip_writing = false
local panel_height = PANEL.height

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

		local delay = false
		local animation = nil

		if(string.len(row.Stance) > 0) then
			Task.Spawn(function()
				if(row.AnimationDelay > 0) then
					Task.Wait(row.AnimationDelay)
				end

				actor.animationStance = row.Stance
				play_audio(row.Audio)
			end)

			if(Object.IsValid(world_actor)) then
				Task.Spawn(function()
					world_actor.animationStance = row.Stance
				end, world_delay)
			end
		elseif(string.len(row.Animation) > 0) then
			Task.Spawn(function()
				if(row.AnimationDelay > 0) then
					Task.Wait(row.AnimationDelay)
				end

				actor:PlayAnimation(row.Animation, { shouldLoop = row.AnimationLoop })

				if(Object.IsValid(world_actor)) then
					world_actor:PlayAnimation(row.Animation, { shouldLoop = row.AnimationLoop })
				end

				play_audio(row.Audio)
			end)

			if(Object.IsValid(world_actor)) then
				Task.Spawn(function()
					world_actor:PlayAnimation(row.Animation, { shouldLoop = row.AnimationLoop })
				end, world_delay)
			end
		else
			play_audio(row.Audio)
		end

		if(row.PanelHeight > 0) then
			PANEL.height =  row.PanelHeight
		end

		if(row.PanelWidth > 0) then
			PANEL.width =  row.PanelWidth
		end

		Task.Spawn(function()
			Task.Wait(row.DisplayDuration > 0 and row.DisplayDuration or 6)
			hide = true
			Task.Wait(OUT_DURATION)
			PANEL.visibility = Visibility.FORCE_OFF
			Task.Wait(.5)
			has_item = false
		end)
	end
end

local function on_action_pressed(player, action)
	if(action == "Skip Writing" and Object.IsValid(actor)) then
		skip_writing = true
	end
end

function Tick(dt)
	if(not has_item and queue:length() > 0) then
		has_item = true
		queue:pop()()
	end

	if(capture) then
		capture:Refresh()
	end

	if(show) then
		if(elapsed < IN_DURATION) then
			elapsed = elapsed + dt
			PANEL.x = start_x + (math.abs(end_x) * IN_CURVE:GetValue(elapsed / IN_DURATION))
		else
			show = false
			elapsed = 0
		end
	elseif(hide) then
		if(elapsed < OUT_DURATION) then
			elapsed = elapsed + dt
			PANEL.x = current_x - (math.abs(start_x) * OUT_CURVE:GetValue(elapsed / OUT_DURATION))
		else
			hide = false
			elapsed = 0
			_G.Talking_Head = ""
		end
	end
end

local function add_to_queue(key, actor, delay)
	queue:push(function()
		play_talking_head(key, actor, delay)
	end)
end

Events.Connect("Talking.Heads", add_to_queue)

Input.actionPressedEvent:Connect(on_action_pressed)
