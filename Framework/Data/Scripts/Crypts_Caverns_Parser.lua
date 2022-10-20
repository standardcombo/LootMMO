local BASE_64 = require(script:GetCustomProperty("Base64"))
local JSON = require(script:GetCustomProperty("JSON"))

local Crypts_Caverns_Parser = {}

function Crypts_Caverns_Parser:base64_to_metadata()
	return JSON.decode(BASE_64.decode(self.token_data))
end

function Crypts_Caverns_Parser:base64_to_svg()
	local start_pos, end_pos = string.find(self.meta_data.image, "base64,", 1, true)

	return BASE_64.decode(string.sub(self.meta_data.image, end_pos + 1))
end

function Crypts_Caverns_Parser:create_map(size)
	self.map = {}

	for c = 1, size do
		local col = {}

		for r = 1, size do
			col[r] = string.sub("-", 1)
		end

		table.insert(self.map, col)
	end
end

function Crypts_Caverns_Parser:print()
	local str = ""

	for r = 1, #self.map do
		str = str .. "["

		for c = 1, #self.map[r] do
			str = str .. (c == 1 and "" or ", ") .. "" .. string.sub(tostring(self.map[r][c]), 1, 1) .. ""
 		end

		str = str .. "]\n"
	end

	print(str)
end

function Crypts_Caverns_Parser:get_map(as_string)
	return as_string and JSON.encode(self.map) or self.map
end

function Crypts_Caverns_Parser:svg_to_map(svg_data)
	for item in svg_data:gmatch("(<rect.-.-/>)") do
		if(not item:find("100%%") and not item:find("stroke")) then
			local x = item:match("x=.?(%d+).?")
			local y = item:match("y=.?(%d+).?")
			local width = item:match("width=.?(%d+).?")
			local height = item:match("height=.?(%d+).?")
			local color = item:match("fill=.?#(%w+).?")

			local row = math.ceil(y / height)
			local column = math.ceil(x / height)
			local cell_columns = math.floor(width / height)
			local total_columns = math.floor(self.width / height)

			if(self.map == nil) then
				self:create_map(total_columns)
			end

			for c = 1, total_columns do
				if(c >= column and c <= (cell_columns + column - 1)) then
					self.map[row][c] = color
				end
			end
		elseif(item:find("100%%") and not item:find("stroke")) then
			self.floor_color = item:match("fill=.?#(%w+).?")
		end
	end
end

function Crypts_Caverns_Parser:get_floor_color()
	return self.floor_color
end

function Crypts_Caverns_Parser:get_name()
	return self.meta_data.name
end

function Crypts_Caverns_Parser:get_description()
	return self.meta_data.description
end

function Crypts_Caverns_Parser:get_attributes(as_string)
	return as_string and JSON.encode(self.meta_data.attributes) or self.meta_data.attributes
end

function Crypts_Caverns_Parser:get_svg_data(as_string)
	return as_string and JSON.encode(self.svg_data) or self.svg_data
end

function Crypts_Caverns_Parser:get_token_data(as_string)
	return as_string and JSON.encode(self.token_data) or self.token_data
end

function Crypts_Caverns_Parser:get_meta_data(as_string)
	return as_string and JSON.encode(self.meta_data) or self.meta_data
end

function Crypts_Caverns_Parser:new(map_data)
	self.__index = self

	local m_table = setmetatable({}, self)

	self.width = 500
	self.height = 500
	self.token_data = map_data
	self.meta_data = m_table:base64_to_metadata()
	self.svg_data = m_table:base64_to_svg()

	m_table:svg_to_map(m_table.svg_data)

	return m_table
end

return Crypts_Caverns_Parser