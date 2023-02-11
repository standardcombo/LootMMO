--[[
	Combat Dependencies - Template
	v1.3.0 - 2022/10/25
	by: standardcombo, WaveParadigm
	
	Compatible with the NPC AI Kit v1.0.
	Add a copy of the Combat Dependencies template to the hierarchy.
	
	Included components:
	
	- Combat Wrap API
	  Generalizes combat between players and NPCs.

	- Combat Events
	  Implements priority order on top of events fired by the Wrap API.

	- Combat Accountant
	  Keeps track of who dealt damage to what, and how much. Used for crediting assists.

	- Player Homing Targets
	  Allows NPCs and weapons to use homing shots against players.
	  
	- Cross Context Caller
	  Allows Static/Server contexts to execute code onto the default network context.
	  	  
	- NPC Kit Kill Feed Adapter
	  Allows a game with kill feed to show the name of the NPC that killed a player.
	  
	- Damage Feedback server/client
	  Detects when players deal damage and shows the damage flyup numbers.
--]]