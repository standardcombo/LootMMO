local L = require(script:GetCustomProperty("APILocale"))
local propTutorialStart = script:GetCustomProperty("TutorialStart"):WaitForObject()
local propTutorialComplete = script:GetCustomProperty("TutorialComplete"):WaitForObject()
local propProgressStart = script:GetCustomProperty("ProgressStart"):WaitForObject()
local propProgressComplete = script:GetCustomProperty("ProgressComplete"):WaitForObject()

local APITutorial = require(script:GetCustomProperty("APITutorial"))

local LOCAL_PLAYER = Game.GetLocalPlayer()

function OnStartTutorial()
    propTutorialStart:Play()
end
function OnEndTutorial()
    propTutorialComplete:Play()
    local text = "{player} completed the tutorial!"

	-- Translation check and text substitution
	text = "✓ "..L[text]
	text = string.gsub(text, "{player}", LOCAL_PLAYER.name)

    Events.Broadcast("ActivityFeedLine", {activity = text, color = Color.PINK})
end
function OnTutorialComplete(player)
    if player ~= LOCAL_PLAYER then
        local text = "{player} completed the tutorial!"

        -- Translation check and text substitution
        text = "✓ "..L[text]
        text = string.gsub(text, "{player}", player.name)

        Events.Broadcast("ActivityFeedLine", {activity = text, color = Color.PINK})
    end
end
function OnTutorialProgressStart(index)
    if (APITutorial.GetTutorialList()[index] and APITutorial.GetTutorialList()[index].playSoundOnStart) then
        propProgressStart:Play()
    end
end
function OnTutorialProgressComplete(index)
    if (APITutorial.GetTutorialList()[index] and APITutorial.GetTutorialList()[index].playSoundOnComplete) then
        propProgressComplete:Play()
    end
end

Events.Connect("StartTutorial", OnStartTutorial)
Events.Connect("EndTutorial", OnEndTutorial)
Events.Connect("TutorialProgressStart", OnTutorialProgressStart)
Events.Connect("TutorialProgressComplete", OnTutorialProgressComplete)

Events.Connect("TutorialComplete", OnTutorialComplete)
