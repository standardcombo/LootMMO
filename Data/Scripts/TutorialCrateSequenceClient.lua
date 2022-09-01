local propCamera = script:GetCustomProperty("Camera"):WaitForObject()
local LOCAL_PLAYER = Game.GetLocalPlayer()

local UI_FADE_IN = .5
local UI_FADE_OUT = 2

local handle = nil

function OnTutorialCrateSequence()
    print("Create sequence started.")

    Events.Broadcast("TutorialCrateSequenceShot")

    Events.BroadcastToServer("ToggleUI", true)
    LOCAL_PLAYER.isVisibleToSelf = false
    
    handle = Events.Connect("DailyRPCrateOpening", function()
        Events.Broadcast("HideTutorialText")
        handle:Disconnect()
    end)
    
    Task.Wait(2)
    Events.BroadcastToServer("SpawnPlayer", "CenterCrate")
    
    Task.Wait(2 - UI_FADE_IN)

    Events.Broadcast("UI_Crate_FadeTransition", UI_FADE_IN, UI_FADE_OUT)
    LOCAL_PLAYER.isVisibleToSelf = true
    Events.BroadcastToServer("ToggleUI", false)
end

Events.Connect("TutorialCrateSequence", OnTutorialCrateSequence)