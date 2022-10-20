--[[
	Screenshot Atlas
	v1.0
	by: standardcombo

	Loads an image from another game's screenshot and crops it to a sub-image (atlas index).
	Currently supports only atlas with 6 sub-images, in a 3x2 grid.
	Each sub-image should be 360x360 pixels.
	The total size of screenshot images should be 1280x720.

	Setup
		Place one copy of the `ScreenshotAtlas` script into the hierarchy.

	Usage
		Call `SpawnImage()` to receive a UI Panel that contains the cropped image. Set the panel's
		parent to one of your game's UI elements to display it.

	API
		SpawnImage(params) - returns UIPanel
			`params` is a table that contains `gameId`, `screenshotIndex`, atlasIndex` and `imageSize`.
			Spawns a UI Panel that contains a UI Image. The panel clips the child image, so
			the designated atlas index is within the panel's visible window.

		UpdateImage(uiImage, params) - no return value
			`uiImage` is an image or UI Panel previously created by `SpawnImage()`.
			`params` is a table that contains `gameId`, `screenshotIndex`, atlasIndex` and `imageSize`.
			Updates an existing image/panel to a new set of data.
--]]

local API = {}
_G.ScreenshotAtlas = API

local IMAGE_TEMPLATE = script:GetCustomProperty("ImageTemplate")


function API.SpawnImage(params)
	local imagePanel = World.SpawnAsset(IMAGE_TEMPLATE)

	API.UpdateImage(imagePanel, params)

	return imagePanel
end


function API.UpdateImage(uiImage, params)
	if uiImage:IsA("UIPanel") then
		uiImage.width = params.imageSize
		uiImage.height = params.imageSize
		uiImage = uiImage:FindDescendantByType("UIImage")
		return API.UpdateImage(uiImage, params)
	end

	-- Unpack the parameters locally, to make things simpler and faster
	local gameId = params.gameId
	local screenshotIndex = params.screenshotIndex
	local atlasIndex = params.atlasIndex
	local size = params.imageSize

	-- Screenshot
	uiImage:SetGameScreenshot(gameId, screenshotIndex)
	-- Width
	uiImage.width = math.ceil(size * 3.55555)
	-- Height
	uiImage.height = math.ceil(size * 2)
	-- X coordinate on atlas
	if atlasIndex == 1 or atlasIndex == 4 then
		uiImage.x = 0

	elseif atlasIndex == 2 or atlasIndex == 5 then
		uiImage.x = -size
	else
		uiImage.x = -(size * 2)
	end
	-- Y coordinate on atlas
	if atlasIndex == 1 or atlasIndex == 2 or atlasIndex == 3 then
		uiImage.y = 0
	else
		uiImage.y = -size
	end
end

