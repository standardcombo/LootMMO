local Util = {}

function Util.IsEffect(obj)
    return obj:IsA("Audio") or obj:IsA("SmartAudio") or obj:IsA("Vfx")
end

function Util.PlayEffect(obj, includeChildren)
    if Util.IsEffect(obj) then obj:Play() end

    if includeChildren then        
        for _, value in ipairs(obj:GetChildren()) do
            if Util.IsEffect(value) then 
                if value:GetCustomProperty("Delay") then 
                    Task.Spawn(function() value:Play() end, value:GetCustomProperty("Delay"))
                else
                    value:Play()
                end
            end
        end
    end
end

function Util.StopEffect(obj, includeChildren)
    if Util.IsEffect(obj) then obj:Stop() end

    if includeChildren then        
        for _, value in ipairs(obj:GetChildren()) do
            if Util.IsEffect(value) then value:Stop() end
        end
    end
end

function Util.ConvertTimeToTimeText(timeInSeconds)
    local result = ""
    local hours = math.floor(timeInSeconds) // 3600 % 60
    local minutes = math.floor(timeInSeconds) // 60 % 60
    local seconds = math.floor(timeInSeconds) % 60

    if hours > 0 then
        result = string.format("%d hr %d min %d sec", hours, minutes, seconds)
    elseif hours == 0 and minutes > 0 then
        result = string.format("%d min %d sec", minutes, seconds)
    else
        result = string.format("%d sec", seconds)
    end

    return result
end

function Util.ConvertTimeToClockText(timeInSeconds)
    local result = ""
    local hours = math.floor(timeInSeconds) // 3600 % 60
    local minutes = math.floor(timeInSeconds) // 60 % 60
    local seconds = math.floor(timeInSeconds) % 60

    if hours > 0 then
        result = string.format("%02d:%02d:%02d", hours, minutes, seconds)
    elseif hours == 0 and minutes > 0 then
        result = string.format("%02d:%02d", minutes, seconds)
    else
        result = string.format("%02d", seconds)
    end

    return result
end

function Util.FormatNumber(n)
    n = tostring(n)
    return n:reverse():gsub("...","%0,",math.floor((#n-1)/3)):reverse()
end

return Util