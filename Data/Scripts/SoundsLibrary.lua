local SOUNDS = script:GetCustomProperty("Sounds"):WaitForObject()
local AllSounds = {}
for index, value in ipairs(SOUNDS:GetChildren()) do
	AllSounds[value.name] = value
end

local function StopSound(id)
	if AllSounds[id] then
		AllSounds[id]:Stop()
	end
end

local function PlaySound(id)
	if AllSounds[id] then
		AllSounds[id]:Play()
	end
end

Events.Connect("Sounds.PlaySound", PlaySound)
Events.Connect("Sounds.StopSound", StopSound)
