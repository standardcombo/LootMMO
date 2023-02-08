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
ScreenshotPaths: "C:\\Users\\zemet\\OneDrive\\Documents\\My Games\\Core\\Saved\\Maps\\LootMMO\\Framework\\Screenshots\\CurretnTitle1.jpg"
ScreenshotPaths: "C:\\Users\\zemet\\OneDrive\\Documents\\My Games\\Core\\Saved\\Maps\\LootMMO\\Framework\\Screenshots\\CurretnTitle2.jpg"
ScreenshotPaths: "C:\\Users\\zemet\\OneDrive\\Documents\\My Games\\Core\\Saved\\Maps\\LootMMO\\Framework\\Screenshots\\CurretnTitle3.jpg"
ScreenshotPaths: "C:\\Users\\zemet\\OneDrive\\Documents\\My Games\\Core\\Saved\\Maps\\LootMMO\\Framework\\Screenshots\\CurretnTitle4.jpg"
ScreenshotPaths: "C:\\Users\\zemet\\OneDrive\\Documents\\My Games\\Core\\Saved\\Maps\\LootMMO\\Framework\\Screenshots\\CurretnTitle5.jpg"
ReleaseNotes: "**Version 1.3.0**\r\n\r\nImprovements\r\n- Equipment crafting UI completely redone.\r\n- Added confirmation dialog for upgrade and scrapping actions.\r\n- Class selection and ability level-up UI flow completely redone.\r\n- Crafting materials now appear in a dedicted inventory section and have a max stack size of 999.\r\n- Attack icon in HUD now appears as your weapon instead of the blue punch icon.\r\n- When no weapon is equipped the character now punches instead of using a quarterstaff.\r\n- New empty bottle appears in potion slot until it\'s crafted.\r\n- Potions now have descriptions if selected in the abilities screen.\r\n- New quest to each level 2 in first-time user experience.\r\n- New class description texts.\r\n- Poker: Removed some debug features that were live to players.\r\n- Increased robustness of chair throwing system.\r\n- Normalized code style across some sections of the code base.\r\n- Players now see an informative message if they try to upgrade an already maxed ability.\r\n- Added banners (from Banners project) to the tavern interior.\r\n- Players can no longer crouch with the [C] key.\r\n- Removed the mouse hover SFX in character selection UI.\r\n- Loading of Loot bags are now faster.\r\n- Removed the star ratings on ability icons in the HUD.\r\n- When taking damage, the block and health bars now have better animations.\r\n\r\nAbilities\r\n- Revised all icons and improved several of them.\r\n- Animorph Potion: Now uses Agility instead of Wisdom stat for its radius.\r\n- Blade Dash: Now uses Agility instead of Vitality stat for its crit chance.\r\n- Iceberg: Now uses Wisdom instead of Vitality stat for its healing.\r\n- Stone Wall: Duration increased from 2->5 to 3->8.\r\n- Rain of Arrows: New \'Radius\' modifier.\r\n- Rain of Arrows: Swapped usage of Agility and Vitality.\r\n- Swapped the unlock order between Landslide and Stone Wall.\r\n- Crit chance and multiply are now defined separately from damage.\r\n- Rock Strike: Fixed a bug where dead enemies hit by the rock could sometimes resurrect.\r\n\r\nFramework\r\n- Upgraded to NPC Kit v1.0. Mostly improvements to script quality.\r\n- Structural improvements to the targeting system.\r\n- Ability modifier system reworked, to speed up development and reduce mistakes.\r\n- The UI for Abilities, Inventory and Shop are now broken into separate templates, with a common parent template.\r\n- Deleted redundant hierarchy elements related to ability screen.\r\n- Deleted several unused assets and scripts.\r\n- Fixed use of deprecated blockchain API calls.\r\n- Cleaned up many warnings.\r\n- Simplified the logic of Reward Toast UI script.\r\n- Task.Wait() added to the JSON parser script, to avoid reaching the execution limit.\r\n- Fixed some structural inconsistencies in the templates for Blade Dash and Grimoire.\r\n- Stat modifiers table now has an \'id\' column, which is the new primary key.\r\n\r\nBugs\r\n- Disabled unintentional PvP damage in co-op situations.\r\n- Players can no longer channel the portal when dead.\r\n- Fixed camera collision on the Bandit NPCs.\r\n- Fixed the cooldown on Potions.\r\n- Fixed the spelling of \"Shadowmancer\".\r\n- Fixed the stat level up of several abilities.\r\n- Fixed the storage of upgraded NFT equipment.\r\n- Fixed the display of greatness number for upgraded NFT equipment.\r\n- Fixed a rare bug where players could get stuck in chairs or other seats.\r\n- Fixed a bug in the cheats system that could error when debugging in editor.\r\n- Fixed a progression bug where players were gaining an ability upgrade point on level 15, but it should be a potion unlock instead.\r\n- Fixed a bug where the quest UI would show wrong data when players switched character.\r\n- Solved an edge case in Winged Waterways in case the player took the portal after completing the quest, but *before* collecting the reward.\r\n- Fixed a bug where a map quest could be active multiple times.\r\n- Fixed the level-up HUD badges, so you get exactly 1 red badge per level up.\r\n- Fixed scrolling in the quest window in case you have many quests active.\r\n- Fixed a bug where a quest could remain in the"
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
