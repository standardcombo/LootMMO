--[[
	Main scene README
	by: standardcombo
	
	The Main scene contains the Bag selection screen as well as the Social Hub.
	
	
	Fade Layer
	==========
	A top-level UI that obstructs the entire screen. This is what allows the game to
	fade in from black when starting up.
	To edit the scene, toggle visibility of the Fade Layer. The Fade Layer can be found
	in the "Top-Level UI" folder in the Hierarchy.

	See the FadeLayer script for more info.
	
	
	Poker
	=====
	Derived from the "Party Portals" community content package, by Manticore Games.
	
	
	Pinball
	=======
	Added from the "Playable Pinball: Pirates" community content package, by varglbargl.
	
	
	Quests
	======
	Loot MMO's quest system is advanced and data-driven. Quests are partially described
	in the hiearchy	(under the 'Quests' there is a sub-folder for each quest).
	A crucial component of quests are the data tables found in Project Content:
	
	QuestMetadata
		Defines the high-level information about quests. Each row in the table represents
		a separate quest.
		- id: Unique identifier for the quest. This string is refered to by scripts in
			the hierarchy.
		- icon: A 2D image to appear in the quest UI.
		- mapContent: Optional templates that are inserted into the Map of Adventurers. 
			If they are set, then it will appear in the map when the quest is unlocked.
		- isReplayable: Generally true for map quests.
		- rewards: A meta-script describing the sequence of rewards players receive when
			they complete and claim the quest. See the header of RewardsParser.lua for
			more info.
		- unlocks: A comma-separated list of quest IDs to unlock after this quest is
			completed and claimed.
		- gameId: The destination game for this quest. In this way, it's possible to
			receive a quest in one game then travel to another game to complete the steps.
		- spawnKey: Used in finding the correct spawn point to send players to, when
			they activate the quest.
		
	QuestObjectives
		Defines the individual steps of each quest. Some quests may have a single step,
		but usually they have multiple. The order of the rows in the table define the
		order in which steps are completed.
		- questId: Indicates which quest the objective belongs to. Note that this is not
			a unique ID. Multiple rows can have the same questId to indicate they are
			all part of a sequence for that quest. QuestObjectives have no unique IDs.
		- name: The title that appears in the small UI card to the left of the screen.
		- description: Text that appears below the title. Scales automatically to fit.
		- count: For quest steps that require doing X things (e.g. Collect 7 mushrooms),
			otherwise leave at 0, for singular objectives.
			
	Creating a new quest
		1. Open the QuestMetadata table and add a row to it. Fill out all the properties.
		2. For rewards, you can start with something simple, like "XP(10)", which gives
			the player a 10 XP reward, then expand that after it's all working.
		3. Open the QuestObjectives table and add one or more rows to it. Fill out all
			the properties, making the 'questId' equal to the 'id' from QuestMetadata.
		4. In the hierarchy, under the Quests folder, create a new folder for your quest.
			The order doesn't matter.
		5. Add script components to the folder and adjust their custom properties to
			configure each objective. Look at other quests as examples.
		6. If the quest involves defeating enemies, setup an encounter, with
			a) A spawn script.
			b) At least one spawn point (set a new spawnKey to match your quest data).
			c) At least one Quest Area object.
			d) At least one Enemy Spawn object. You probably want more Enemy Spawn points
				than the number of enemies needed for the encounter. This way, the spawn
				script can choose which points are best, depending on the direction the
				player approaches.
			e) Refer to quest 'Beasts1' as an example.
		7. For quests about picking up objects, refer to 'Map' as an example.
		8. For quests about walking to spots refer to 'Pinball' as an example.
		9. For custom behavior not yet supported by the framework, the script component
			'ObjectiveEventListener' is a general-purpose component that can listen to
			any event fired with `Events.Broadcast()` and forward the objective completion
			to the quest system.
			
	Testing a new quest
		The simplest way right now to test a new quest is to open the QuestMetadata table
		and change the 'unlocks' entry for the 'Welcome' quest (first row). Instead of
		unlocking 'Map' change it to unlock your quest ID, or keep map and add yours:
		"Map, MyQuestId". Then, start progress over, by pressing the small "Characters"
		button, found in the top-left of the Bag Selection screen. Creating a new
		character restarts all progression, including quests.
		
]]

