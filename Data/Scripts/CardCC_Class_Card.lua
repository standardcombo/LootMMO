local WorldSpawnCard = script:GetCustomProperty('WorldSpawnCard')

---@class Card
local Card = {
    name = '',
    id = '',
    data = {
        ability = {
            activate = function(self, ...)
                return
            end
        },
        image = nil,
        front = nil,
        back = nil
    },
    listeners = {}
}
local function WriteCardData(currentCard, obj)
    local typeHandler = {
        ['UIText'] = {
            ['string'] = function(elemet, input)
                elemet.text = input
            end,
            ['number'] = function(elemet, input)
                elemet.text = tostring(input)
            end,
            ['Color'] = function(elemet, input)
                elemet:SetColor(input)
            end
        },
        ['UIImage'] = {
            ['string'] = function(elemet, input)
                local art = World.SpawnAsset(input, {parent = elemet})
                elemet:SetColor(Color.New(0,0,0,0))
                if art:IsA('UIControl') then
                    art.width = elemet.width
                    art.height = elemet.height
                    art:ReorderBeforeSiblings()
                end
            end,
            ['Color'] = function(elemet, input)
                elemet:SetColor(input)
            end
        }
    }
    local function HandleEntry(entry, item)
        if item then
            local handle = typeHandler[entry.type]
            local typ = type(item)
            if typ == 'table' then
                local _, key = CoreString.Split(entry.name, '.')
                HandleEntry(entry, item[key])
                return
            end

            if typ == 'userdata' then
                typ = item.type
            end
            if handle and handle[typ] then
                handle[typ](entry, item)
            end
        end
    end

    for index, writableFolder in ipairs(obj:FindDescendantsByName('Writables')) do
        for _, entry in ipairs(writableFolder:FindDescendantsByType('UIControl')) do
            for _, name in pairs({CoreString.Split(entry.name, '/')}) do
                if name == 'image' then
                    currentCard:SetImage(entry)
                else
                    local item = currentCard.data[CoreString.Split(name, '.')]
                    HandleEntry(entry, item)
                end
            end
        end
    end
end

function Card:Actvate(...)
    self.data.ability.Activate(self, ...)
end
function Card:Destroy()
    if self.destroyEvent then
        self.destroyEvent:Trigger(self)
    end
    for key, listener in ipairs(self.listeners) do
        if listener.isConnected then
            listener:Disconnect()
        end
    end
    self.listeners = {}
    if self.updateTick then
        self.updateTick:Cancel()
        self.updateTick = nil
    end
end
function Card:SetImage(uiImage)
    if uiImage:IsA('UIControl') and self.data.image then
        local art = World.SpawnAsset(self.data.image, {parent = uiImage})
        if art:IsA('UIControl') then
            art.width = uiImage.width
            art.height = uiImage.height
            art:ReorderBeforeSiblings()
        end
    end
end
function Card:RenderFront(optinalParams)
    if not self.data.front then
        return warn('No card front found')
    end

    local newCardArt = World.SpawnAsset(self.data.front, optinalParams)
    WriteCardData(self, newCardArt)
    return newCardArt
end
function Card:RenderBack(optinalParams)
    if not self.data.back then
        return warn('No card back found')
    end

    local newCardArt = World.SpawnAsset(self.data.back, optinalParams)
    WriteCardData(self, newCardArt)
    return newCardArt
end
function Card:RenderWorld(optinalParams)
    if not WorldSpawnCard then
        return warn('No card world render found')
    end

    local newCardArt = World.SpawnAsset(WorldSpawnCard, optinalParams)
    self:RenderFront({parent = newCardArt:GetChildren()[1]})
    self:RenderBack({parent = newCardArt:GetChildren()[2]})
    return newCardArt
end
function Card:RefreshCardData(obj)
    WriteCardData(self, obj)
end
Card.__tostring = function(self)
    return self.data.name
end

return Card
