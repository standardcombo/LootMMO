--[[

    ------------------------------
    ---       OVERVIEW         ---
    ------------------------------

    This project contains many concepts that may be unfamiliar, and a lot of features that can be customized to your
    specific game's needs. Therefore, there are many things to learn! To get you started, I am giving a suggested order
    that you may want to explore the examples in.

    We have broken up this project by dividing it into scenes. Open your "Scenes" panel under "Window" at the top of
    your Core editor. Click on the name of the scene in that list to visit it, other options can be accessed with the
    three dot menu on the right of the scene panel.

    If you have any questions or feedback please feel free to let us know!

        - Creators Discord: https://discord.gg/core-creators
        - Forums: https://forums.coregames.com/

    ------------------------------
    ---        GUIDE           ---
    ------------------------------

    1. Producers and Buffs: The first thing to do, is get an understanding of what possibilities are provided by this
    set of examples. So open the main scene and hit play. Now find your player lot (signs are above the archways) and
    head over to explore it. I recommend going example to example, reading the signs, and trying out the interactions
    that they suggest.

    2. Basic Camp Fire Example: Next, let's load up the campfire scene. You will see that it has been stripped down to
    just the parts used for the fire and cooking. Try everything out, then see if you can figure out how to add a new
    cookable food to the scene, lets say a potato. I advise giving it a shot on your own, but if you are stuck you can
    read the Baked Potato Walkthrough included in the Camp Fire Example.

    3. Isometric Town Builder is the scene I would explore next. You can look at the settings on the Power and
    Happiness Buffs, and then look over how the Producers are recieving and giving off the Buffs. Try messing around
    with this scene, maybe even add a coal mine that needs to give off a fuel Buff for the power plant to recieve before
    it can give off power ;)

        Global Database
        |___ Producers
        |   |___ Power Station
        |   |	  |___ OutputBuffs
        |   |		    |___ Power
        |   |___ House
        |   |	  |___ InputBuffs
        |   |	  |	  |___ Power
        |   |	  |___ OutputBuffs
        |   |		    |___ Happiness
        |   |___ Bank
        |       |___ InputBuffs
        |           |___ Power
        |           |___ Happiness
    		|___ Buffs
            |___ Power
            |___ Happiness

    4. Producer and Buff Data Example: This example is a bit crazy, since it has all the possible data bits you can
    add to Producers and Buffs, as well as some small scripts that can make visible changes to your objects when Buffs
    are detected. If you are ever unsure what kinds of data you can put under something, this is a good scene to check.
    Also, it has an example of just using a regular placed item that is not a Producer to give off a Buff (the statue).
    Look inside "Producer Base - Square Dirt (Client) to find examples of little scripts that can react to Buffs.

    5. The final scene to explore is Areas and player Lots. Every example you have explored so far, has Player Lots
    in it. They are needed to store which items the Player has placed in the world and what state they are in. They can
    also be used and combined with Areas in more advanced ways. Areas can be used without Player Lots, they are
    basically a way of loading up art when you go through a portal to a new place. So you can have the furniture in your
    castle not load up until the Player visits, this will greatly reduce your scene object counts! There are several
    examples of different lot/area combinations in this scene. If you are wondering what loads up the objects and how to
    specify the templates, trying looking for "Area Object Loader" and "Player Lot Object Loader" and then check the
    custom properties.

  	Have fun exploring and builidng! :)

--]]