local L = require(script:GetCustomProperty("APILocale"))


function TranslateUIObject(obj)
    local autoLocalize, isSet = obj:GetCustomProperty("AutoLocalize") 
    if isSet and autoLocalize == false then return end
	
    if not obj.clientUserData.originalText then
        obj.clientUserData.originalText = obj.text
    end

    local text = obj.clientUserData.originalText
    
    local iterated = false
    for matchText in string.gmatch(text, "{(.-)}") do
        text = text:gsub("{(.-)}", {[matchText] = L[matchText]})
        iterated = true
    end

    if iterated then
        obj.text = text
    else
        obj.text = L[text]
    end
end

function UpdateTexts()
    -- Find all ui objects with text
    local UITexts = World.FindObjectsByType("UIText")
    local UIButtons = World.FindObjectsByType("UIButton")
    -- Loop through the objects and translate them
    Task.Wait()
    for _, value in ipairs(UITexts) do
        TranslateUIObject(value)
    end
    Task.Wait()
    for _, value in ipairs(UIButtons) do
        TranslateUIObject(value)
    end
end

-- Initialize and listen for changes in the language
Task.Wait()
Events.Connect("LocaleChanged", UpdateTexts)
UpdateTexts()
