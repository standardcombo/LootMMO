local API_RE = require(script:GetCustomProperty("APIReliableEvents"))

local API = {}

local rectangles = {}

local function pointsAreOnSameSideOfLine(point1, point2, A, B) -- point1 and point2 are on the same side of line AB
	return ((B - A) ^ (point1 - A)) .. ((B - A) ^ (point2 - A)) >= 0 -- scalar quadruple product is nonnegative
end

local function pointIsInTriangle(P, A, B, C) -- point P is inside triangle ABC
	return  pointsAreOnSameSideOfLine(P, A, B, C) -- P and A are on the same side of BC
		and pointsAreOnSameSideOfLine(P, B, A, C) -- P and B are on the same side of AC
		and pointsAreOnSameSideOfLine(P, C, A, B) -- P and C are on the same side of AB
end

local function closestPointOnLineSegment(point, lineStart, lineEnd)
	local alpha = ((point - lineStart) .. (lineEnd - lineStart)) / (lineEnd - lineStart).sizeSquared
	return lineStart + (lineEnd - lineStart) * math.max(0, math.min(1, alpha))
end

local function closestPointsBetweenTwoLineSegments(start1, end1, start2, end2)
	--[[ the closest two points on two lines define a line that is perpendicular to both
		u = end1 - start1 -- line 1
		v = end2 - start2 -- line 2
		w = (start1 + s*u) - (start2 + t*v) -- the line between them
		w .. u = w .. v = 0 -- perpendicular to both
	]]
	
	local u = end1 - start1 -- vector representing the first line segment
	local v = end2 - start2 -- vector representing the second line segment
	local w = start1 - start2 -- vector offset between the two line segments
	
	local numerator1 =  (u..v)*(v..w) - v.sizeSquared*(u..w)
	local numerator2 = -(u..v)*(u..w) + u.sizeSquared*(v..w)
	local denominator = u.sizeSquared * v.sizeSquared - (u..v)^2 -- = (|u||v|sin t)^2 (zero if u and v are collinear)
	
	if denominator == 0 then return end -- line segments are collinear, return nil and let the caller decide what to do
	
	if numerator1 < 0 then -- closest points are not within the bounds of the segments
		return start1, closestPointOnLineSegment(start1, start2, end2)
	elseif numerator1 > denominator then
		return end1, closestPointOnLineSegment(end1, start2, end2)
	elseif numerator2 < 0 then
		return start2, closestPointOnLineSegment(start2, start1, end1)
	elseif numerator2 > denominator then
		return end2, closestPointOnLineSegment(end2, start1, end1)
	end
	
	local closest1 = start1 + u*numerator1/denominator
	local closest2 = start2 + v*numerator2/denominator
	
	return closest1, closest2
end

local function closestPointOnRectangle(point, rectangle)
	-- project the point onto the plane. if it's inside the rectangle then that's the closest point, otherwise find the closest point on the closest edge
	local vertex1, vertex2, vertex3, vertex4 = table.unpack(rectangle.vertices)
	local projection = point - rectangle.normal * (rectangle.normal .. (point - vertex1))
	if pointIsInTriangle(projection, vertex1, vertex2, vertex3) or pointIsInTriangle(projection, vertex3, vertex4, vertex1) then
		return projection -- projection is already inside of the rectangle
	else -- find the closest point on the closest edge of the rectangle
		local closestOnEdge1 = closestPointOnLineSegment(point, vertex1, vertex2)
		local closestOnEdge2 = closestPointOnLineSegment(point, vertex2, vertex3)
		local closestOnEdge3 = closestPointOnLineSegment(point, vertex3, vertex4)
		local closestOnEdge4 = closestPointOnLineSegment(point, vertex4, vertex1)
		local distanceSquaredToEdge1 = (point - closestOnEdge1).sizeSquared
		local distanceSquaredToEdge2 = (point - closestOnEdge2).sizeSquared
		local distanceSquaredToEdge3 = (point - closestOnEdge3).sizeSquared
		local distanceSquaredToEdge4 = (point - closestOnEdge4).sizeSquared
		if distanceSquaredToEdge1 < distanceSquaredToEdge2 and distanceSquaredToEdge1 < distanceSquaredToEdge3 and distanceSquaredToEdge1 < distanceSquaredToEdge4 then
			return closestOnEdge1
		elseif distanceSquaredToEdge2 < distanceSquaredToEdge3 and distanceSquaredToEdge2 < distanceSquaredToEdge4 then
			return closestOnEdge2
		elseif distanceSquaredToEdge3 < distanceSquaredToEdge4 then
			return closestOnEdge3
		else
			return closestOnEdge4
		end
	end
end

local function closestPointsBetweenLineSegmentAndRectangle(lineStart, lineEnd, rectangle)
	-- case 1: line and rectangle are parallel. return nil and let the caller decide what to do
	-- case 2: line segment intersects rectangle. calculate the intersection
	-- case 3: line segment intersects the plane but not the rectangle. find the closest point on the rectangle's perimeter
	-- case 4: line segment does not intersect the plane. find the closest point on the rectangle's perimeter and also try point-to-rectangle distances of the endpoints.
	
	local scalarProjection = (lineEnd - lineStart) .. rectangle.normal
	if scalarProjection == 0 then -- line is perpendicular to the normal, which means the line and rectangle are parallel
		return -- let the caller decide what to do
	else
		local vertex1, vertex2, vertex3, vertex4 = table.unpack(rectangle.vertices)
		local alpha = (rectangle.normal .. (vertex1 - lineStart)) / scalarProjection -- [0, 1] if the intersection is within the line segment
		local lineSegmentIntersectsPlane = 0 <= alpha and alpha <= 1
		local checkLineSegmentEnds = true
		if lineSegmentIntersectsPlane then
			local intersection = lineStart + (lineEnd - lineStart) * alpha -- intersection between the line segment and the plane the rectangle is on
			lineIntersectsRectangle = pointIsInTriangle(intersection, vertex1, vertex2, vertex3) or pointIsInTriangle(intersection, vertex3, vertex4, vertex1)
			if lineIntersectsRectangle then -- intersection is inside the rectangle
				return intersection, intersection -- intersection is on the line and on the rectangle, it is the closest point on both
			else -- line segment intersects the plane outside of where the rectangle is
				checkLineSegmentEnds = false -- only need to check the ends when the line segment doesn't intersect the plane
			end
		end
		local options = { -- pairs of candidate points on the line and rectangle for finding the closest pair
			{closestPointsBetweenTwoLineSegments(lineStart, lineEnd, vertex1, vertex2)}, -- line to perimeter edge 1
			{closestPointsBetweenTwoLineSegments(lineStart, lineEnd, vertex2, vertex3)}, -- line to perimeter edge 2
			{closestPointsBetweenTwoLineSegments(lineStart, lineEnd, vertex3, vertex4)}, -- line to perimeter edge 3
			{closestPointsBetweenTwoLineSegments(lineStart, lineEnd, vertex4, vertex1)}  -- line to perimeter edge 4
		}
		if checkLineSegmentEnds then -- the ends of the line segment might be closer to the middle of the rectangle than the edges
			options[#options + 1] = {lineStart, closestPointOnRectangle(lineStart, rectangle)} -- line start point to rectangle
			options[#options + 1] = {lineEnd, closestPointOnRectangle(lineEnd, rectangle)} -- line end point to rectangle
		end
		local shortestDistanceSquared, pointOnLine, pointOnRectangle = math.huge
		for i = 1, #options do
			if options[i][1] and options[i][2] then -- didn't return nil for some edge case
				local distance = (options[i][2] - options[i][1]).sizeSquared
				if distance < shortestDistanceSquared then
					shortestDistanceSquared, pointOnLine, pointOnRectangle = distance, options[i][1], options[i][2]
				end
			end
		end
		return pointOnLine, pointOnRectangle
	end
end

local function intersectionsBetweenRectangles(rect1, rect2) -- list each 0-dimenional intersection between the two rectangles
	local intersectionPoints = {}
	local function addIntersectionPoint(point)
		local isUnique = true -- check that this intersection point hasn't already been found
		for _, other in pairs(intersectionPoints) do
			if (other - point).sizeSquared < 1 then
				isUnique = false
				break
			end
		end
		if isUnique then
			intersectionPoints[#intersectionPoints + 1] = point
		end
	end
	
	if (rect1.normal ^ rect2.normal).sizeSquared < 0.01 then -- rectangles are parallel, just calculate edge-edge intersections
		for _, edge1 in pairs(rect1.edges) do
			for _, edge2 in pairs(rect2.edges) do
				local a, b = closestPointsBetweenTwoLineSegments(edge1[1], edge1[2], edge2[1], edge2[2])
				if a and (a - b).sizeSquared < 1 then -- edges intersect, or close enough
					addIntersectionPoint(a)
				end
			end
		end
	else -- calculate edge-face intersections
		for _, edge in pairs(rect1.edges) do
			local a, b = closestPointsBetweenLineSegmentAndRectangle(edge[1], edge[2], rect2)
			if a and (a - b).sizeSquared < 1 then
				addIntersectionPoint(a)
			end
		end
		for _, edge in pairs(rect2.edges) do
			local a, b = closestPointsBetweenLineSegmentAndRectangle(edge[1], edge[2], rect1)
			if a and (a - b).sizeSquared < 1 then
				addIntersectionPoint(a)
			end
		end
	end
	
	return intersectionPoints
end

function pointToNode(point) -- get a "node" from the point by projecting it onto the nearest rectangle
	local minDistanceSquared, closestPoint, closestRectangle = math.huge
	for _, rectangle in pairs(rectangles) do
		local projection = closestPointOnRectangle(point, rectangle)
		local distanceSquared = (point - projection).sizeSquared
		if distanceSquared < minDistanceSquared then
			minDistanceSquared, closestPoint, closestRectangle = distanceSquared, projection, rectangle
		end
	end
	return {position = closestPoint, connectedRectangles = {closestRectangle}}
end

local MinHeap = {New = function()
	local heap = {}
	return {Insert = function(self, value)
		local valueIndex = #heap + 1
		while true do -- bubble up
			local parentIndex = valueIndex//2
			if parentIndex == 0 or value >= heap[parentIndex] then
				heap[valueIndex] = value
				break
			else
				heap[valueIndex], valueIndex = heap[parentIndex], parentIndex
			end
		end
	end, Extract = function(self)
		local value, parent, parentIndex = heap[1], table.remove(heap), 1
		while true do -- bubble down
			local leftChild, rightChild = heap[parentIndex*2], heap[parentIndex*2+1]
			if not leftChild or (parent <= leftChild and (not rightChild or parent <= rightChild)) then
				if parentIndex ~= #heap+1 then heap[parentIndex] = parent end
				return value
			elseif parent > leftChild and (not rightChild or leftChild <= rightChild) then
				heap[parentIndex], parentIndex = leftChild, parentIndex*2
			elseif parent > rightChild then
				heap[parentIndex], parentIndex = rightChild, parentIndex*2+1
			end
		end
	end, heap = heap}
end}

function API.RegisterRectangles(rectangleFolder)
	if #rectangles > 0 then
		error("Cannot register rectangles multiple times for pathing.")
		return
	end

	-- turn the cube meshes in rectangleFolder into a list of rectangles
	for _, part in pairs(rectangleFolder:GetChildren()) do
		local rect = {}
		rectangles[#rectangles + 1] = rect
		
		local partCenter = part:GetWorldPosition()
		local partRotation = part:GetWorldRotation()
		local partSize = part:GetWorldScale() * 100 -- based on cube mesh size
		rect.vertices = {
			partCenter + partRotation * (partSize * Vector3.New(.5, -.5, 1)), -- front left
			partCenter + partRotation * (partSize * Vector3.New(.5, .5, 1)), -- front right
			partCenter + partRotation * (partSize * Vector3.New(-.5, .5, 1)), -- back right
			partCenter + partRotation * (partSize * Vector3.New(-.5, -.5, 1)) -- back left
		}
		
		rect.edges = {}
		for i = 1, 4 do
			local vertex1 = rect.vertices[i]
			local vertex2 = rect.vertices[i%4 + 1] -- wraps around to 1
			rect.edges[#rect.edges + 1] = {vertex1, vertex2}
		end
		
		rect.nodes = {}
		
		 -- the cross product of two adjacent edges of a polygon is perpendicular to its face
		rect.normal = ((rect.vertices[2] - rect.vertices[1]) ^ (rect.vertices[3] - rect.vertices[1])):GetNormalized()
	end

	-- determine intersections between pairs of rectangles, or adjacency within some epsilon distance
	local intersectionCount = 0
	local generationStart = os.clock()
	for i = 1, #rectangles do
		local rect1 = rectangles[i]
		for j = i+1, #rectangles do
			local rect2 = rectangles[j]
			
			local fastSpawnConnection -- don't take any chances with the instruction limit, spam new tasks
			fastSpawnConnection = API_RE.Connect("fastSpawn", function()
				fastSpawnConnection:Disconnect()
				local intersectionPoints = intersectionsBetweenRectangles(rect1, rect2)
				for _, point in pairs(intersectionPoints) do
					local newNode = {position = point, connectedRectangles = {rect1, rect2}}
					
					rect1.nodes[#rect1.nodes + 1] = newNode
					rect2.nodes[#rect2.nodes + 1] = newNode
					intersectionCount = intersectionCount + 1
				end
			end)
			API_RE.Broadcast("fastSpawn")
			
		end
	end
end

function API.GetPath(startPosition, endPosition)
	local startNode = pointToNode(startPosition)
	local endNode = pointToNode(endPosition)

	local startFlyDistance = (startPosition - startNode.position).size
	local endFlyDistance = (endPosition - endNode.position).size
	local straightFlyDistance = (endPosition - startPosition).size

	-- If we are already flying, don't run back to the navmesh unless that means less flying
	if straightFlyDistance < startFlyDistance + endFlyDistance then
		return {endPosition}
	end

	local endRectangle = endNode.connectedRectangles[1]

	local pathNodeMetatable = {
		__le = function(a, b) return a.lengthPlusHeuristic <= b.lengthPlusHeuristic end,
		__lt = function(a, b) return a.lengthPlusHeuristic < b.lengthPlusHeuristic end
	}
	
	local priorityQueue = MinHeap.New()
	priorityQueue:Insert(setmetatable({path = {startNode}, length = 0, lengthPlusHeuristic = 0}, pathNodeMetatable))
	local visitedNodes = {}
	
	local clock = os.clock()
	local solutionPath = nil
	local iterations = 0
	while priorityQueue.heap[1] and not solutionPath do
		iterations = iterations + 1
		local currentElement = priorityQueue:Extract()
		local currentNode = currentElement.path[#currentElement.path]
		if not visitedNodes[currentNode] then
			visitedNodes[currentNode] = true
			for _, rectangle in pairs(currentNode.connectedRectangles) do
				if rectangle == endRectangle then
					solutionPath = currentElement.path
					solutionPath[#solutionPath + 1] = endNode
					break
				end
				for _, node in pairs(rectangle.nodes) do
					if not visitedNodes[node] then
						local newPath = {table.unpack(currentElement.path)}
						newPath[#newPath + 1] = node
						local newLength = currentElement.length + (currentNode.position - node.position).size
						priorityQueue:Insert(setmetatable({
							path = newPath,
							length = newLength,
							lengthPlusHeuristic = newLength + (node.position - endNode.position).size
						}, pathNodeMetatable))
					end
				end
			end
		end
	end
	
	if solutionPath then
		-- remove unnecessary nodes when a straight line is possible
		-- changes in elevation like ramps are a complicated edge case. todo
		
		local startNodeIndex = 1
		while startNodeIndex <= #solutionPath - 2 do			
			local node1 = solutionPath[startNodeIndex]
			
			local importantRectangleDict = {}
			for _, rect in pairs(node1.connectedRectangles) do
				importantRectangleDict[rect] = true
			end
			
			while solutionPath[startNodeIndex + 2] do
				local node2 = solutionPath[startNodeIndex + 2]
				-- check if the line exits the walkable space. if it doesn't then remove the node in-between
				for _, rect in pairs(solutionPath[startNodeIndex + 1].connectedRectangles) do
					importantRectangleDict[rect] = true -- also list rectangles connected to the in-between node
				end
				for _, rect in pairs(node2.connectedRectangles) do
					importantRectangleDict[rect] = true
				end
				local intersections = {} -- list all intersections with the rectangles in importantRectangleDict. order them by distance from one end of the line segment.
				for rect in pairs(importantRectangleDict) do
					local linePoint, rectPoint = closestPointsBetweenLineSegmentAndRectangle(node1.position, node2.position, rect)
					if linePoint then -- not coplanar
						if (linePoint - rectPoint).sizeSquared < 1 then
							intersections[#intersections + 1] = linePoint
						end
					else -- line is on the same plane as the rectangle, do edge intersection checks instead
						for _, edge in pairs(rect.edges) do
							local linePoint, edgePoint = closestPointsBetweenTwoLineSegments(node1.position, node2.position, edge[1], edge[2])
							if linePoint and (linePoint - edgePoint).sizeSquared < 1 then -- line intersects this edge
								intersections[#intersections + 1] = linePoint
							end
						end
					end
				end
				table.sort(intersections, function(a, b)
					return (a - node1.position).sizeSquared < (b - node1.position).sizeSquared
				end)
				
				local canSkipNode = true -- iterate over each adjacent pair of intersections and ensure the midpoint between them is on a walkable surface.
				for i = 1, #intersections - 1 do
					local point1, point2 = intersections[i], intersections[i+1]
					local midpoint = (point1 + point2) / 2
					local isOnSurface = false
					for rect in pairs(importantRectangleDict) do -- check whether the midpoint is on a rectangle
						if (closestPointOnRectangle(midpoint, rect) - midpoint).sizeSquared < 1 then
							isOnSurface = true -- found a rectangle that the midpoint is on
							break
						end
					end
					if not isOnSurface then -- the midpoint of these intersections is outside the walkable space
						canSkipNode = false
					end
				end
				if canSkipNode then
					table.remove(solutionPath, startNodeIndex + 1)
				else
					break
				end
			end
			
			startNodeIndex = startNodeIndex + 1
		end
		
		for i = 1, #solutionPath do -- convert nodes to positions
			solutionPath[i] = solutionPath[i].position
		end

		-- We fly to the target if needed
		table.insert(solutionPath, endPosition)

		return solutionPath
	else
		return {endPosition}
	end
end

return API
