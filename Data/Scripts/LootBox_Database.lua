local TEXTURA_ATLAS_API = require(script:GetCustomProperty('TexturaAtlasApi'))

local LootboxDatabase = {
    Entries = {}
}

function LootboxDatabase:Add(Source, imagedex, x, y, width, height)
    local newEntry = {
        portalLink = Source,
        index = imagedex,
        position = Vector2.New(x, y),
        scale = Vector2.New(width, height)
    }

    table.insert(self.Entries, newEntry)
end

function LootboxDatabase:GetLength()
    return #self.Entries
end

function LootboxDatabase:GetEntry(index)
    return self.Entries[index]
end
function LootboxDatabase:GetRandomIndex()
    return math.random(#self.Entries)
end

function LootboxDatabase:GetRandomEntry()
    return self.Entries[math.random(#self.Entries)]
end

function LootboxDatabase:SetImage(image, index)
    local entry = self:GetEntry(index)
    if image and entry then
        TEXTURA_ATLAS_API:SetUIImage(image, entry.portalLink, entry.index, entry.position, entry.scale)
    end
end

LootboxDatabase:Add('771dae/pokernight', 3, 360 * 0, 360 * 0, 360, 360)
LootboxDatabase:Add('771dae/pokernight', 3, 360 * 1, 360 * 0, 360, 360)
LootboxDatabase:Add('771dae/pokernight', 3, 360 * 2, 360 * 0, 360, 360)
LootboxDatabase:Add('771dae/pokernight', 3, 360 * 0, 360 * 1, 360, 360)
LootboxDatabase:Add('771dae/pokernight', 3, 360 * 1, 360 * 1, 360, 360)
LootboxDatabase:Add('771dae/pokernight', 3, 360 * 2, 360 * 1, 360, 360)
return LootboxDatabase
