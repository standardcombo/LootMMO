--[[
    DDPathfinding
    v0.8.0
    by: truedarkdev (DarkDev#3167 at discord)

    This is WIP, check out the roadmap for what's to come and hit me up for any questions/bugs/feedback you may have.

    Introduction
    ============

    DDPathfinding is a generic all purpose pathfinding solution for core games, built with the following core principles in mind:

        - Little to no manual work for getting it up and running.
        - A genric solution for all types of games, worlds, assets.
        - Scaleable, works for large worlds and with multiple seekers at acceptable performance.


    Current features:

        - Works out of the box with NPC AI Kit by standardcombo.
        - Automatically creates navmeshes that works for pretty much anything.
        - Multiple pathfinding algoritms.
        - Handles multiple navmeshes for different purposes (different unit sizes, locations etc.)


    Notable games using this:

        - Hazard Pay (https://www.coregames.com/games/8a69c9/hazard-pay)
        - Want to have a link to your game here? Contact me on discord!


    Compatibility
    =============

    - NPC AI Kit by standardcombo


    Setup
    =====

    For getting it up and running there are only two requirements:
    - There must exist only one DDPathfindingManager.
    - There must exists at least one DDNavMeshGenerator, but there are no upper limit.

    Drag and drop the DDPathfindingManager template in the world, location doesn't matter.

    Drag and drop the DDNavMeshGenerator template in the world. The NavMeshArea trigger child is defining the volume where the navmesh will be generated.
    Feel free to move it around and scale it however you want, but it can't be rotated (the NavMeshGenerator expects it to be axis aligned).
    It is however recommended to only scale the area and move around the template root, so all children moves along with it.

    After starting the game (start it in editor, preferably without multiplayer preview enabled) open the "Event Log" window.
    You should see progress text regarding how far the generator have come, there are currently 4 stages before it's done:
        - CalculateNavGrid, does the inital voxelization of the grid, takes a long time to finish.
        - PostProcessNavGrid, does some minor cleaning of the grid and prepares the navmesh, finishes pretty fast.
        - CalculateNavMesh, starts to connect each voxels to its neighbours which creates the navmesh, takes a long time to finish.
        - PostProcessNavMesh, does some cleaning and some toggable features like "Island removing", finishes pretty fast.
    When the 4 stages have finished it prints the saving string to the log. Copy the text inside the block (one row per finished NavMesh) and
        paste it in DDNavMeshDataStore.lua inside the marked block at the top of the file (IMPORTANT NOTE: If this is an imported pack, open the file inside the directory called "Subfolders", not in the "CommunityContent" directory).
    There's a script reference to DDNavMeshDataStore in the DDPathfindingManager template root as a custom property, which you can use for quicker access to it.
    If you have multiple NavMeshes in the level they will generate one after another and the save string will only appear when all of them have finished.

    Start the game again and it should now load the navmesh instead of generating a new one.
    If you want to look at the generated navmesh either toggle on "VerboseDebug" on the placed DDPathfindingManager or "AutoStartNavMeshVisualization" on the placed DDNavMeshGenerator.

    That should be it! If you already have the NPC AI Kit in the level the AI should automatically start requesting and following paths on the navmesh.

    I highly recommend that you read through the rest of this readme as it contains some handy to know information regarding how the pathfinder works and some additional features that can be activated.


    Good to know
    ============

    Use an external text editor:

        When generating large navmeshes, the resulting save string can become quite large. Using the internal script editor in core for saving it doesn't work that well (which can in certain cases make the whole editor freeze).
        My recommendation is to use a well performant external text editor, for example Visual Code (my choice of tool), but I can also recommend Sublime or Notepad++ if you prefer those.


    Working with multiple navmeshes:

        The pathfinder have support for handling multiple active navmeshes at the same time, which have some great implications on what you can do (but also some disadvantages compared to just generate one big navmesh).

        First of all, it's good to understand that the pathfinder doesn't understand connections between navmeshes. This means that if you request a path that overlaps multiple navmeshes,
            it will not generate a path all the way but it will find a path on the current navmesh to the closest point on it to the requested target.
        This may work fine, for example on open areas, as the closest point may be a good path to the requested target.
        Or it may be a terrible path which ends up getting the seeker into a cul-de-sac.

        So when should you use multiple navmeshes?
            - If you have distinct areas with no traversable paths between then (or at least no intention of having the AI traverse said path), it's better to generate a navmesh for each area.
            - If you have seekers with different requirements (size, traversable sloping etc.) you can generate multiple navmeshes for the same area and the seeker will
                pick the best fitting navmesh (NOTE: This feature exists but NPC AI Kit doesn't currently use it).
            - If you want to have a large low resolution navmesh covering the whole map, but you have for example an indoor area that require higher resolution,
                then you could generate a seperate navmesh for that indoor area (seekers will automatically pick the highest resolution navmesh that fits their requirements).
            - If navmesh generation is too slow then having multiple navmeshes that fits better with the map can improve generation performance.
                This is mostly not recommended because of the pathfinding problem between navmeshes, but if you go down this route then try to not make the navmeshes too
                    small and make sure there are no obvious collision on the borders between them.


    Additional Features
    ===================

    DDDontAffectNavMesh:

        One problem that exist with the navmesh generator is that it needs to run while the game is active, which means there's a possibility for dynamic objects to be in the way.
        For example, doors will by default block the navmesh but you probably want npcs to be able to walk through them.
        To fix this there's a script called "DDDontAffectNavMesh". It will disable the collision while the generator is running, and afterwards enable it again so gameplay isn't affected.

        How to set it up:
            - Place the script as a child or parent to any mesh in the hierarchy (preferably in its template).

        The navmesh generator will find all meshes inside its area and then disable collision on the direct parent for all of these scripts.
        It's important to understand that the script:
            - Must be placed as a child or parent to the mesh which have the collision.
            - Disables the collision (not on the mesh itself necessarily but) on the direct parent to the script.
            - The direct parent must be networked, otherwise it won't be able to disable the collision on it.

        If you have any ideas to how this workflow could be improved let me know, it works but it's a bit messy. Also the scripts keeps existing even after generation is done, which could have performance implications.


    Island Remover:

        Because of the voxelization nature of the navmesh generator, it has a tendency to generate a lot of paths that are not reachable from the main part (this is called islands).
        There are multiple problems with this, if an npc somehow manages to get into one of these islands it will get stuck.
        An even bigger problem is when a player enters an island. A npc that is trying to get to the player will request a path from the pathfinder, which will in turn fail.
        The pathfinder doesn't understand that the path is unreachable unless it searches through the whole navmesh, which is very costly.
        (If you notice warnings in the log regarding paths that fails because it took to long time, this could probably mean that someone is trying to find a path to an island).

        How to set it up:
            - Go to the navmesh generator that you want to enable this for, toggle the property "RemoveIslands" to true.
            - The navmesh generator template has an child called "IslandRemoverStartPos". Place this a bit above the ground in a place you know your main navmesh will be (preferably where your player spawn location is).

        It will send a raycast downwards, find the navmesh, and expand from that location. Anything not connected to that initial node will be removed.
        This now means that you now have a single connected navmesh which always can ensure it will find a path between two nodes on it.


    Pathfinding Algorithms
    =====================

    There are currently 3 different algorithms for generating paths, they all have advantages and disadvantages so select the best one depending on your situation:

    - DDAStar, standard astar implementation. Fast but generates not that optimal and unorganic paths. Recommended for long and difficult paths.
    - DDLazyThetaStar, medium performance, generates pretty good and straight paths most of the time. This is the recommended default algoritm and works well for most cases.
    - DDThetaStar, slow but generates the best paths. A lot of the time DDLazyTheta will perform just as good as this, so this is mostly recommended for short or easy paths.


    Known problems
    ============

    Problem: Navmesh doesn't work with foliage.
        Make sure you have enabled collision on your foliage layer. Then enable "FoliageNavMeshGenerationFix" on either the pathfinding manager or the navmesh generator.

    Problem: Changing the tilesize makes some path not work anymore.
        The only guaranteed tilesize to work well enough right now is 100. Anything close to it should work fine. This is something that I'll improve in later versions.


    Credits
    =======

    - PriorityQueue, original version made by Lucas de Morais Siqueira -> https://gist.github.com/LukeMS/89dc587abd786f92d60886f4977b1953


    Roadmap
    =======

    Note: This roadmap is not set in stone and may change.

    Not version specific:
    - Look into AI (NPC AI Kit) walking up and down slopes and if it can be improved
    - Add a "known problems" section to readme
    - Add descriptions to custom properties
    - Make this open source

    v0.9:
    - EASY: Calculate multiple paths at the same time, add a priority system
    - EASY: Limit pathfinding time per frame more when running in editor (smoother testing)
    - MEDIUM: Block and unblock paths at runtime
    - MEDIUM: Custom tooling for blocking and unblocking parts of the navmesh that have been calculated incorrectly (offline)

    v1.0:
    - VERY EASY: Add api section to readme
    - EASY: Scale number or raycasts for navmesh generation when increasing unit size
    - EASY: Fix NavMesh connect path function for detecting irregular slopes, will slow preprocessing performance
    - MEDIUM: Regenerate selected region of the navmesh (makes it easier to work with large areas)
    - MEDIUM: Fix so tile size works well with different values (atleast from 50 - 200 in resolution) (expose more internal generation values that can be changed)
    - MEDIUM: Weighted regions (slow/speed up areas), changeable online

    v2.0:
    - HARD: Flying navgrid

    NEXT AHEAD (I intend to do these, but with no specified timeline):
    - EASY: Different colors for navmesh visualization with overlapping navmeshes
    - HARD: If a path overlaps a navmesh with higher resolution, switch to it (only generate a path to the overlapping location)

    FUTURE WORK (Has low priority if not requested a lot):
    - EASY: Post smoothing for paths (line-of-sight)
    - MEDIUM: Replace island remover with island id floodfill (easily detect if they are reachable)
    - MEDIUM: JPS for fast long distance paths (using this will disable changeable weights and custom nongrid nodes)
    - HARD: Quality setting on navmesh generation, overall optimization of it (hard to do really well, easy for just enabling a fast but inaccurate preview)
    - HARD: Regenerate subparts of the navmesh online
    - VERY HARD: Custom placeable nodes which doesn't need to fit the grid, can be used for special actions path like jumping/falling/flying etc.
    - VERY HARD: Connect multiple navmeshes together automatically

    COULD BE DONE (Most likely will never be implemented):
    - INSANE: Hierarchical pathfinding preprocessing for long distance paths (adds additional preprocessing time)
    - INSANE: Generate a optimized non grid navmesh from the initial grid one


    Patch Log
    =========

    v0.8.0
    - LazyThetaStar has been fixed and is now the default pathfinding algorithm (2x speedup compared to ThetaStar)
    - FitPathAgainstNavMeshZ path postprocessing have been improved, paths up and down slopes is now completely straight and follow ground a lot better
    - Optimized CalcNavMeshGrid generation stage (1.3x speedup on demo map)
    - Implemented workaround for the foliage collision problem (check out the property "FoliageNavMeshGenerationFix")
    - FindPath works for both self and non-self calls
    - Updated roadmap with more detail in regards to each future version

    v0.7.5
    - Fixed path processing timer bug where it would deadlock (stop generating paths) if the path tasks took to long to spawn (reported by @Arrinity)

    v0.7.4
    - Fixed bug where the top layer in each navmesh would always be culled (reported by @Arivenzys)
    - Some minor optimization in navmesh generation and save string compression

    v0.7.3
    - Added navmesh resolution into the navmesh picker priority
    - Reverted change from v0.7.2 and did an better fix for the same problem (reported by @Elzean)
    - Added readme text regarding how to work with multiple navmeshes

    v0.7.2
    - Fixed error/bug where CalcNavGrid would offset raycast too much so it overlapped the above tile (reported by @slimychiken6969)

    v0.7.1
    - Optimized CalcNavMeshGrid generation stage, is about 2x faster on the demo map
    - Moved custom properties into template root (requested by @FearTheDev)
    - Added additional documentation to readme

    v0.7.0
    - Initial release

]]--