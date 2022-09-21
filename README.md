# LootMMO

v0.1 (early access)

LootMMO.com

The goal of Loot MMO is to build an open source MMORPG based on the
Loot (for Adventurers) NFT collection. In this project, data from NFTs is seen as an advantage and provokes interesting design constraints.

The project is community owned and developed.
Tools, MMO framework and social hub are by Manticore Games.


Design Direction
================

Gameplay
- Third-person, action RPG ("western RPG").
- Multiplayer co-op, with some PvP areas.
- Fighting, treasures, harvesting, crafting, building.
- Deep and multi-dimensional character/item progression.

NFT Ownership
- Free to play. To fully enjoy the game it's not required to own a Loot bag NFT.
- Owners of Loot bag NFTs should have small, but meaningful benefits.
- F2P players should not be at a disadvantage compared to Loot owners.
- The player's on-boarding experience should be smooth, regardless of NFT ownership.
- The game should support the various Lootverse derivative collections.


Social Hub
==========

A starting point for Loot MMO, the social hub has been designed as a cozy space where players and builders can meet, discuss Loot and form parties to head off on adventures. Doors, maps and other interactive objects double as connection points── portals into the experiences created by the community. Where this "home base" evolves will be up to everyone to decide.

- Bag selection screen - Choose your Loot bag, or a free daily one.
- Lobby - Can see the non-weapon items for you and others in the hub.
- Main area - Socialize, form parties and go on adventures.
- Tavern - Drink serving mini-game. Throwable chairs.
- Poker table - Fully playable poker game.
- Pinball - Fully playable pinball game.


Distance Relevance 
==========

Distance Relevance is set in the 'Game Settings' object in the hierarchy. Mesh and Decal Relevance on 'High' is currently set to a distance of 45,000. The purpose for this is so the exterior of the social space will still be rendered at the farthest parts of the map, but won't be rendered if you are inside the interior social space. Use Medium or Low relevance for distance culling of objects near the player. (Far underground)

(work in progress)
