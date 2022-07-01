
local UIPANEL = script:GetCustomProperty("UIPanel"):WaitForObject()
local TITLE_PANEL = script:GetCustomProperty("TitlePanel"):WaitForObject()
local TITLE_TEXT = script:GetCustomProperty("TitleText"):WaitForObject()
local SUBTITLE_TEXT = script:GetCustomProperty("SubtitleText"):WaitForObject()
local BORDER_IMAGE = script:GetCustomProperty("BorderImage")
local POINT_OF_INTEREST = script:GetCustomProperty("PointOfInterest")
local DOOR = script:GetCustomProperty("Door")

local REFERENCE_GRID_SIZE = 14
local REFERENCE_TILE_SIZE = 19

local borderPiecePool = {}
local activeBorderPieces = {}
local activePointsOfInterest = {}

local color = TITLE_TEXT:GetColor()


function Load(mapModel)
	Cleanup()
	
	local svgData = mapModel:get_svg_data()
	
	--print(tostring(svgData))
	
	-- Title
	TITLE_TEXT.text = mapModel:get_attributes()[1].value
	-- Subtitle
	SUBTITLE_TEXT.text = mapModel:get_name()
	
	--Task.Wait()
	local titleSize = TITLE_TEXT:ComputeApproximateSize()
	TITLE_PANEL.width = titleSize.x + 40
	
	local map = mapModel:get_map()
	
	-- Find the bounds and background value
	local bgValue
	local iStart = #map
	local jStart = #map
	local iEnd = 0
	local jEnd = 0
	local endLoop
	for j = 4, #map - 4 do
		local row = map[j]
		for i = 4, #row - 4 do
			local value = row[i]
			if value == "-" then
				if iStart > i then
					iStart = i
				end
				if iEnd < i then
					iEnd = i
				end
				if jStart > j then
					jStart = j
				end
				if jEnd < j then
					jEnd = j 
				end
				
			elseif not bgValue then
				bgValue = value
			end
		end
	end
	
	-- Calculate scale values
	local gridSize = iEnd - iStart + 1
	local scale = REFERENCE_GRID_SIZE / gridSize
	local tileSize = math.floor(REFERENCE_TILE_SIZE * scale)
	local offsetX = tileSize * (iEnd - iStart + 1) / 2 + tileSize * iStart
	local offsetY = tileSize * (jEnd - jStart + 1) / 2 + tileSize * jStart
	
	-- Build borders
	for j = jStart, jEnd do
		for i = iStart, iEnd do
			if map[j][i] ~= bgValue then
				-- Top edge
				if map[j - 1] and map[j - 1][i] == bgValue then
					local image = NewBorderPiece()
					image.x = i * tileSize - 1 -offsetX
					image.y = j * tileSize - 1 -offsetY
					image.width = tileSize + 2
					image.height = 2
					
					table.insert(activeBorderPieces, image)
				end
				
				-- Bottom edge
				if map[j + 1] and map[j + 1][i] == bgValue then
					local image = NewBorderPiece()
					image.x = i * tileSize - 1 -offsetX
					image.y = (j + 1) * tileSize - 1 -offsetY
					image.width = tileSize + 2
					image.height = 2
					
					table.insert(activeBorderPieces, image)
				end
				
				-- Left edge
				if map[j][i - 1] == bgValue then
					local image = NewBorderPiece()
					image.x = i * tileSize - 1 -offsetX
					image.y = j * tileSize - 1 -offsetY
					image.width = 2
					image.height = tileSize + 2
					
					table.insert(activeBorderPieces, image)
				end
				
				-- Right edge
				if map[j][i + 1] == bgValue then
					local image = NewBorderPiece()
					image.x = (i + 1) * tileSize - 1 -offsetX
					image.y = j * tileSize - 1 -offsetY
					image.width = 2
					image.height = tileSize + 2
					
					table.insert(activeBorderPieces, image)
				end
			end
		end
	end
	
	-- Add points of interest
	for j = jStart, jEnd do
		for i = iStart, iEnd do
			local image = nil
			if map[j][i] == "006669" then
				image = World.SpawnAsset(DOOR, {parent = UIPANEL})
				
			elseif map[j][i] ~= bgValue and map[j][i] ~= "-" then
				image = World.SpawnAsset(POINT_OF_INTEREST, {parent = UIPANEL})
			end
			if image then
				image.x = i * tileSize -offsetX
				image.y = j * tileSize -offsetY
				image.width = CoreMath.Round(image.width * scale)
				image.height = CoreMath.Round(image.height * scale)
				image:SetColor(color)
				
				table.insert(activePointsOfInterest, image)
			end
		end
	end
end

function NewBorderPiece()
	local image
	if #borderPiecePool > 0 then
		image = borderPiecePool[1]
		table.remove(borderPiecePool, 1)
		image.visibility = Visibility.INHERIT
	else
		image = World.SpawnAsset(BORDER_IMAGE, {parent = UIPANEL})
		image:SetColor(color)
	end
	return image
end

function Cleanup()
	for _,image in ipairs(activeBorderPieces) do
		image.visibility = Visibility.FORCE_OFF
		table.insert(borderPiecePool, image)
	end
	activeBorderPieces = {}
	
	for _,image in ipairs(activePointsOfInterest) do
		image:Destroy()
	end
	activePointsOfInterest = {}
end



