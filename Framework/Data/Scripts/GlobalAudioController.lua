
local API = {}
_G.Audio = API


function API.MuteAllAudio()
	for _,a in ipairs(allAudio) do
		if Object.IsValid(a) and a.clientUserData 
		and a.clientUserData.defaultVolume then
--			local name = a.name
			a.volume = 0
		end
	end
end


function API.UnmuteAllAudio()
	for _,a in ipairs(allAudio) do
		if Object.IsValid(a) and a.clientUserData 
		and a.clientUserData.defaultVolume then
			a.volume = a.clientUserData.defaultVolume
		end
	end
end


function FindAllAudio()
	allAudio = World.FindObjectsByType("Audio")
	local smartAudio = World.FindObjectsByType("SmartAudio")
	for _, sa in ipairs(smartAudio) do
		table.insert(allAudio, sa)
	end
	for i, a in ipairs(allAudio) do
		if a == AUDIO_1 or a == AUDIO_2 then
			table.remove(allAudio, i)
			
		elseif a.clientUserData then
			a.clientUserData.defaultVolume = a.volume
		end
	end
end

Task.Wait()
FindAllAudio()

