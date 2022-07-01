--[[
This CC contains small changes to the original nav mesh solution. Only use this version for runtime nav mesh generation.

Depending on your tile size, it can take quite some time to build the nav mesh, so I have added in events so you
can hook into the progress of the grid and mesh generation.

See Example script.

It's important you set the Nav Mesh Area size and position so it fills your procedural level. Or nothing
will happen as the generator will halt until it has received them.

It is very important that you send the scale and position once your map has been generated.

Example:

_G.NavMeshArea = {
	
	scale = Vector3.New(x, y, z),
	position = Vector3.New(z, y, z)

}

To get the progress of the grid, mesh, and when it is complete:

Events.Connect("NavMeshGenerated", function()
	print("Nav Mesh Generated")
end)

Events.Connect("NavMeshProgress", function(v, is_grid)
	if(is_grid) then
		print("Nav Mesh [Grid] Progress: ", v)
	else
		print("Nav Mesh [Mesh] Progress: ", v)
	end	
end)

--]]