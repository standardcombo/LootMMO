local MAIN_CLASS = require(script:GetCustomProperty('Main_Class'))
local SUB_CLASS = require(script:GetCustomProperty('Sub_Class'))
local CLASS_DESCRIPTION = require(script:GetCustomProperty('Class_Description'))

local CompletedClasses = {}

for key, value in pairs(SUB_CLASS) do
	CompletedClasses[key] = value
	if MAIN_CLASS[value['MainClass']] then
		CompletedClasses[key]['MainClass'] = MAIN_CLASS[value['MainClass']]
	end
	if CLASS_DESCRIPTION[key] then
		CompletedClasses[key]['Description'] = CLASS_DESCRIPTION[key]['Description']
		CompletedClasses[key]['BackgroundArt'] = CLASS_DESCRIPTION[key]['BackgroundArt']
	end
end

local Api = {}
function Api.GetClass(name)
	return CompletedClasses[name]
end

function Api.GetSubclassOfMainClass(name)
	return CompletedClasses[name]
end

function Api.GetMainClass(name)
	return MAIN_CLASS[name]
end

function Api.GetMainClasses()
	return MAIN_CLASS
end

function Api.GetClasses()
	return CompletedClasses
end

_G['Character.Classes'] = Api
