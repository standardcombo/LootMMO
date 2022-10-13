Events.Connect("ClassSelection.Class", function(classChoice)
	Events.Broadcast("CCselection", classChoice)
end)


Events.Connect("ClassSelection.Subclass", function(subclassChoice)
	Events.Broadcast("CCselection", subclassChoice)
end)
