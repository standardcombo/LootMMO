--[[

    ------------------------------
    ---       OVERVIEW         ---
    ------------------------------

    There are limits on these systems that you need to work within. We have tried to optimize everything as much as
    possible, but it is still very easy to start pushing those limits if you aren't careful.

    These recommendations are also not going to work in every game. Your game may have other systems in it taking up
    resources as well, so be mindful that these recommended limits are made on the assumption that our systems are being
    used in isolation.

    If you have any questions or feedback please feel free to let us know!

        - Creators Discord: https://discord.gg/core-creators
        - Forums: https://forums.coregames.com/

    ------------------------------
    ---        LIMITS          ---
    ------------------------------

    1. Producers (loaded at once)

        - About 500 active Producers can exist at once in a scene. They depend on Replicators which use Private
        Networked Data. Since only active Producers impact this limit, you can break your Producers into groups using
        the Areas system to allow for a larger amount across your entire game. For example, in a shared space with 
        eight player lots, you would only want to let each player have up to 62 producers each. And less if you had
        some already in the enviroment that are not player owned! But if you are using the area system, to give the
        players back yard lots (so that their lot would be the only thing loaded) then then could have 500 producers
        in that yard. See the Areas README for details.
        
        - Another note to keep in mind, gatherables are "cheaper" than producers, but will still effect the limit.
        It is a good idea to do some test games that have what ever limitations you put in place fully maxed out to 
        make sure that it works!
        
    2. Producers (per storage key)
    
    	- You can also store around 500 (player owned and placed) producers on a single storage key. But again, if 
    	you have other things saving to that storage key then it will fill up faster. By default, our systems are using
    	shared storage. So your inventory, your producers, and any gatherables you have placed in the player lot are
    	all on the same key. If you want the player to be able to have a lot of placeables, you will definately want to
    	change the settings on the replicators so that they are using their own keys! Find the feild to set the key on 
    	the Player Lot Replicator Loader.

--]]