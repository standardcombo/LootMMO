GameId: "5cb37e207ed34d6794d33e642a3ac595"
ClientVersion: "1.0.249-prod-s"
Name: "Loot MMO"
Description: "Your travels lead you to an isolated tavern nestled in the arid plateaus of Ka Unka. As you approach, whimsical puffs of smoke ascend gracefully from its chimney. The warmth beckons you to enter. You knock on the door and are soon enveloped by a sudden rush of magik, tugging on your belongings and drawing you indoors. Inside, you discover Loot MMO - an action-packed RPG with crafting, tactical combat and an ever-expanding world! Get ready for an adventure like no other.\r\n\r\nJoin the community at:\r\ndiscord.LootMMO.com"
IsOpenForEdit: true
Tags: "RPG"
Tags: "SocialHub"
Tags: "Cooperative"
Tags: "Fantasy"
Tags: "Action"
ScreenshotPaths: "D:\\CORE\\Maps\\LootMMO\\Framework\\Screenshots\\Loot Tavern KeyArt.jpg"
ScreenshotPaths: "D:\\CORE\\Maps\\LootMMO\\Framework\\Screenshots\\UI\\Character Classes\\LootMMO_Rogue_Solo.png"
ScreenshotPaths: "D:\\CORE\\Maps\\LootMMO\\Framework\\Screenshots\\UI\\Character Classes\\LootMMO_Paladin_Solo.png"
ScreenshotPaths: "D:\\CORE\\Maps\\LootMMO\\Framework\\Screenshots\\UI\\Character Classes\\LootMMO_Shaman_Solo.png"
ScreenshotPaths: "D:\\CORE\\Maps\\LootMMO\\Framework\\Screenshots\\UI\\Character Classes\\LootMMO_Healer_Solo.png"
ReleaseNotes: "**Version 1.2.0**\r\nChanges\r\n- Players can now mount inside the tavern. This was changed to avoid a Core bug related to the playerJoinedEvent not firing.\r\n- Players killed inside the tavern now respawn in the hallway instead of in-place.\r\n- Redesigned layout for the cup dispenser behind the bar.\r\n- Any Pint being carried is now removed when you press [Play] on the Map of Adventures.\r\n- Framework: Added \'name\' column to the Loot items data table.\r\n\r\nBalance\r\n- Animorph Potion effect duration changed from [0.5 -> 2] to [2 -> 7] seconds.\r\n\r\nImprovements\r\n- New map quest: Ruffians.\r\n- Updated descriptions on most of the abilities.\r\n- Inventory screen reworked: Materials are grouped at the bottom, added hover card and better handling for different screen sizes.\r\n- Improved performance and roboustness of equipment system.\r\n- Improvements to cheats. Added /tp to abbreviate /teleport. Removed /progress.\r\n- Updated some deprecated API related to old player bindings.\r\n- Updated all weapons to use the Input Action system, instead of player bindings.\r\n- Optimized ability HUD performance.\r\n- Polished and improved performance of the Cauldron UI.\r\n- Cleaned up unnecessary files.\r\n\r\nBugs\r\n- The Eagle now unspawns correctly when switching characters or leaving the game.\r\n- Inventory item details now shows the display name for items instead of their ID.\r\n- Fixed a bug where portalling between scenes in preview mode could get stuck in a bad state.\r\n- Fixed a bug in Poker where winning would not advance the quest.\r\n- Fixed an issue with throwable chairs where they would not respawn if thrown off the world.\r\n- Fixed interactions between the Pinball game and character abilities.\r\n- Fixed cursor visibility issues related to Pinball.\r\n- Fixed a bug where the door to crafting room could remain permanently open.\r\n- Fixed the \"Door Locked\" message that could sometimes appear when the door was open.\r\n- Fixed a bug where your potions would persist if changing characters.\r\n- Fixed a bug where ability upgrade points were subtracting by 2 instead of by 1.\r\n- Fixed a bug in the ability HUD where it could show the wrong star rating for abilities.\r\n- Fixed a visual issue with ability cooldowns when switching characters.\r\n- Fixed mesh-merge warning and smart materials in the Mace/Shield equipment.\r\n- Cleaned up warnings related to attempts to un-mount when sitting down or playing Pinball."
OwnerId: "cf0c4aa3f2b14c26bd8649b034d0cca8"
SerializationVersion: 4
PublishedState: Public
SceneNameToSceneIdMap {
  key: "Crypts n Caverns - 3055"
  value: "27533ca74ab9393321aca39b928ba0f8"
}
SceneNameToSceneIdMap {
  key: "Dungeon Tile Tests"
  value: "49ea95d249969d52886d31b086bca188"
}
SceneNameToSceneIdMap {
  key: "Main"
  value: "d39f6bdf46fc7b191c9e4e9cd00a0e18"
}
SceneNameToSceneIdMap {
  key: "Map Outline Renderer"
  value: "6778d748443c5aad3bd732a6dad33850"
}
SceneNameToSceneIdMap {
  key: "Weapon Tests"
  value: "08092a2645c8ff75a726c28f78ab19f9"
}
SceneNameToSceneIdMap {
  key: "Whitebox"
  value: "79b467e847f512ca8de474a96f0fe3e6"
}
MaxPlayersForMainScene: 20
EnableForPC: true
