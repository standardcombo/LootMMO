local ASCIIParser = {}

function ASCIIParser.Clean(map)
	for c = 1, string.len(map) do
		local character = string.sub(map, c, c)
	
		if not string.match(character, "[0-9a-zA-Z]+") then
			map = string.gsub(map, character, "")
		end
	end

	return map
end

function ASCIIParser.BuildMap(map, columnCount, rowCount)
	local tableMap = {}

	map = ASCIIParser.Clean(map)

	for r = 1, rowCount do
		table.insert(tableMap, {})

		for c = 1, columnCount do
			local index = (r - 1) * columnCount + c
			local character = string.sub(map, index, index)

			tableMap[r][c] = character
		end
	end

	return tableMap
end

return ASCIIParser