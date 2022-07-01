--[[
Copyright 2019 Manticore Games, Inc.

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated
documentation files (the "Software"), to deal in the Software without restriction, including without limitation the
rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit
persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the
Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE
WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR
COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR
OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
--]]

-- The folder containing a list of songs to pick from.
local SONG_LIST = script.parent:GetCustomProperty("SongList"):WaitForObject()

-- The maximum time a song is allowed to play for before switching
local ALLOWED_PLAY_TIME = script.parent:GetCustomProperty("MaxSongTime")

-- If the song should fade in and out.
local FADE_IN_OUT = true

-- Sets all songs to be non-spatialized, preferred setting for background music
local FORCE_NON_SPATIALIZED = script.parent:GetCustomProperty("ForceNonSpatialized")

-- Duration of the fade in and out.
local FADE_IN_TIME = script.parent:GetCustomProperty("FadeInTime")
local FADE_OUT_TIME = script.parent:GetCustomProperty("FadeOutTime")

local songs = SONG_LIST:GetChildren()
local current

local totalPlayTime = 0

-- Attempt to find a song that wasn't played previously.
local function GetRandomSong()
    local song

    if current == nil then
        song = songs[math.random(1, #songs)]
    else
        if #songs == 1 then
            song = songs[1]
        else
            repeat
                song = songs[math.random(1, #songs)]
            until song ~= current
        end
    end

	if FORCE_NON_SPATIALIZED and song.isSpatializationEnabled == true then
		song.isSpatializationEnabled = false
	end
	
    return song
end

local function PlaySong()
	Task.Wait(1)
    if current ~= nil then
        if FADE_IN_OUT then
            current:FadeOut(FADE_OUT_TIME)
        else
            current:Stop()
        end
    end

    totalPlayTime = 0
    current = GetRandomSong()

    if FADE_IN_OUT then
        current:FadeIn(FADE_IN_TIME)
    else
        current:Play()

    end
--    UI.PrintToScreen("Current Song: " .. tostring(current))
--    UI.PrintToScreen("Song ID: " .. current.pitch)    
end

-- Keep track of how long the song has been playing for.
function Tick(dt)
    if current ~= nil then

        if totalPlayTime > ALLOWED_PLAY_TIME then
            PlaySong()
        else
            if not current.isPlaying then
                totalPlayTime = 0
            else
                totalPlayTime = totalPlayTime + dt
            end
        end
    end
end

PlaySong()