--[[

    ------------------------------
    ---       OVERVIEW         ---
    ------------------------------

    SHORT ANSWER, PRESS "F1" while playing! (but also read below to learn why)

    One of the new concepts that may be unfamiliar is the idea of having to deal with data that is saved and persists
    through multiple game sessions. This sort of data adds new challenges to development, but also allows for a much
    wider variety of games to be made. In the case of this framework, we are using data stored on the player's account
    to remember what goes on their lot and in their inventory.

    If you have any questions or feedback please feel free to let us know!

        - Creators Discord: https://discord.gg/core-creators
        - Forums: https://forums.coregames.com/

    ------------------------------
    ---    PLAYER STORAGE      ---
    ------------------------------

    You can think about the data we have to deal with in two parts. The first is the data defined in the "Global
    Database" folder and a few other places throughout your project. This data lays out how things act and what they
    look like. The Items, Producers, Placeables, etc... are what makes up this part.

    The second part, is more about if the player has those objects out in the world or in their inventory, as well as
    what state those objects are in. That second part is what the scripts are adding to "Player Storage".

    We often have to add or change things that make a mismatch between data that is in Global Database (the data you
    control in the hierarchy) and the contents of the Player Storage (the data that is being stored on the player). Say
    the player starts with an axe and shovel, but you add a bucket to the starting items. The player has already been
    awarded their starting items, the system has no way of knowing they also now need to be given your new bucket. You
    need to either change their data to give them a thing (an advanced thing to do) or clear all the data and start them
    over (the easiest thing to do during development).

    ------------------------------
    ---      HOW TO FIX        ---
    ------------------------------

    During the early days of development while you are just working things out, you are going to cause these data
    issues constantly. That is normal, you don't know what things will look like, where they will be placed, how many
    objects players should start with, at least until you have done some experimenting and work. To make this easier
    to deal with, we have included the shortcut "F1" as a data reset.

    So basically, if your starting items are not showing up, or your new berry bush on your lot isn't appearing, try
    to hit "F1". That will clear the data and probably fix your problem.

    You would not want this solution in the final verion of the game! Then everyone would accidentally clear all of
    their stuff all the time. So make sure you disable F1 before you publish ;)

--]]