
local API = {}
_G.Enemies = API

local DATA_TABLE = require(script:GetCustomProperty("DataTable"))

-- Pre-process
local templateToDefinitionMap = {}
local templateToRarityMap = {}
function AddTemplateToDefinition(muid, def, rarity)
	if muid then
		local key, assetName = CoreString.Split(muid, ":")
		templateToDefinitionMap[key] = def
		templateToRarityMap[key] = rarity
	end
end
for k,def in pairs(DATA_TABLE) do
	AddTemplateToDefinition(def.commonTemplate, def, "Common")
	AddTemplateToDefinition(def.rareTemplate, def, "Rare")
	AddTemplateToDefinition(def.epicTemplate, def, "Epic")
	AddTemplateToDefinition(def.legendaryTemplate, def, "Legendary")
end

-- GetDefinition(string id - primary key)
function API.GetDefinition(id)
	return DATA_TABLE[id]
end

-- GetDefinitionFromMUID(string template asset ID)
function API.GetDefinitionFromMUID(templateId)
	return templateToDefinitionMap[templateId]
end

-- GetRarityFromMUID(string template asset ID)
function API.GetRarityFromMUID(templateId)
	return templateToRarityMap[templateId]
end

