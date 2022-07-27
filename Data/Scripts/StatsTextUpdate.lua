local UITEXT_BOX = script:GetCustomProperty("UITextBox"):WaitForObject()

function Tick()
    UITEXT_BOX.text = tostring(Game.GetLocalPlayer():GetPrivateNetworkedData("Level") or 1 )  
end

