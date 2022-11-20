Name: "Beastbone1"
RootId: 8582341886694200393
Objects {
  Id: 17825933916611105975
  Name: "Enemy Spawn"
  Transform {
    Location {
      X: 251.026
      Y: 918.132324
      Z: -138.537827
    }
    Rotation {
      Yaw: 107.896622
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 8582341886694200393
  UnregisteredParameters {
    Overrides {
      Name: "bp:Y Scale"
      Float: 1.5
    }
    Overrides {
      Name: "bp:X Scale"
      Float: 1.5
    }
    Overrides {
      Name: "bp:Z Scale"
      Float: 1.5
    }
    Overrides {
      Name: "bp:Type"
      Enum {
        Value: "mc:evolumetype:1"
      }
    }
    Overrides {
      Name: "bp:Color"
      Color {
        R: 1
        A: 1
      }
    }
    Overrides {
      Name: "bp:Absolute Scale"
      Bool: false
    }
  }
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  EditorIndicatorVisibility {
    Value: "mc:eindicatorvisibility:visiblewhenselected"
  }
  Blueprint {
    BlueprintAsset {
      Id: 15895911216899816748
    }
    TeamSettings {
    }
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 16167517995918407850
  Name: "Enemy Spawn"
  Transform {
    Location {
      X: -1100.5863
      Y: 1155.7041
      Z: -138.537582
    }
    Rotation {
      Yaw: 107.896622
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 8582341886694200393
  UnregisteredParameters {
    Overrides {
      Name: "bp:Y Scale"
      Float: 1.5
    }
    Overrides {
      Name: "bp:X Scale"
      Float: 1.5
    }
    Overrides {
      Name: "bp:Z Scale"
      Float: 1.5
    }
    Overrides {
      Name: "bp:Type"
      Enum {
        Value: "mc:evolumetype:1"
      }
    }
    Overrides {
      Name: "bp:Color"
      Color {
        R: 1
        A: 1
      }
    }
    Overrides {
      Name: "bp:Absolute Scale"
      Bool: false
    }
  }
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  EditorIndicatorVisibility {
    Value: "mc:eindicatorvisibility:visiblewhenselected"
  }
  Blueprint {
    BlueprintAsset {
      Id: 15895911216899816748
    }
    TeamSettings {
    }
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 9050638010619642501
  Name: "Enemy Spawn"
  Transform {
    Location {
      X: -444.651611
      Y: 663.242188
      Z: -138.537338
    }
    Rotation {
      Yaw: 107.896622
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 8582341886694200393
  UnregisteredParameters {
    Overrides {
      Name: "bp:Y Scale"
      Float: 1.5
    }
    Overrides {
      Name: "bp:X Scale"
      Float: 1.5
    }
    Overrides {
      Name: "bp:Z Scale"
      Float: 1.5
    }
    Overrides {
      Name: "bp:Type"
      Enum {
        Value: "mc:evolumetype:1"
      }
    }
    Overrides {
      Name: "bp:Color"
      Color {
        R: 1
        A: 1
      }
    }
    Overrides {
      Name: "bp:Absolute Scale"
      Bool: false
    }
  }
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  EditorIndicatorVisibility {
    Value: "mc:eindicatorvisibility:visiblewhenselected"
  }
  Blueprint {
    BlueprintAsset {
      Id: 15895911216899816748
    }
    TeamSettings {
    }
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 6991949249591253754
  Name: "Waypoints"
  Transform {
    Location {
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 8582341886694200393
  ChildIds: 100722311444837611
  ChildIds: 14457390408175935931
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  EditorIndicatorVisibility {
    Value: "mc:eindicatorvisibility:visiblewhenselected"
  }
  Folder {
    IsGroup: true
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 14457390408175935931
  Name: "NPC Waypoint - 1"
  Transform {
    Location {
      X: -1173.0686
      Y: 57.6889648
    }
    Rotation {
      Yaw: -60.7810669
    }
    Scale {
      X: 15.1358566
      Y: 5.09599686
      Z: 4.65565157
    }
  }
  ParentId: 6991949249591253754
  ChildIds: 3281923471161275642
  UnregisteredParameters {
    Overrides {
      Name: "cs:NPCWaypoint"
      ObjectReference {
        SelfId: 6991949249591253754
      }
    }
    Overrides {
      Name: "cs:NPCWaypoint0"
      ObjectReference {
        SelfId: 100722311444837611
      }
    }
    Overrides {
      Name: "cs:NPCWaypoint:isrep"
      Bool: false
    }
    Overrides {
      Name: "cs:NPCWaypoint:ml"
      Bool: false
    }
  }
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Trigger {
    TeamSettings {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    TriggerShape_v2 {
      Value: "mc:etriggershape:box"
    }
    InteractionTemplate {
    }
    BreadcrumbTemplate {
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 3281923471161275642
  Name: "NPCWaypoint"
  Transform {
    Location {
    }
    Rotation {
    }
    Scale {
      X: 0.109479882
      Y: 0.0892771408
      Z: 0.214792699
    }
  }
  ParentId: 14457390408175935931
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Script {
    ScriptAsset {
      Id: 12402776060914387729
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 100722311444837611
  Name: "NPC Waypoint - 0"
  Transform {
    Location {
    }
    Rotation {
      Yaw: -60.7810669
    }
    Scale {
      X: 15.1358566
      Y: 5.09599686
      Z: 4.65565157
    }
  }
  ParentId: 6991949249591253754
  ChildIds: 7029780559941968090
  UnregisteredParameters {
    Overrides {
      Name: "cs:NPCWaypoint"
      ObjectReference {
        SelfId: 6991949249591253754
      }
    }
    Overrides {
      Name: "cs:NPCWaypoint1"
      ObjectReference {
        SelfId: 14457390408175935931
      }
    }
    Overrides {
      Name: "cs:NPCWaypoint:isrep"
      Bool: false
    }
    Overrides {
      Name: "cs:NPCWaypoint:ml"
      Bool: false
    }
  }
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Trigger {
    TeamSettings {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    TriggerShape_v2 {
      Value: "mc:etriggershape:box"
    }
    InteractionTemplate {
    }
    BreadcrumbTemplate {
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 7029780559941968090
  Name: "NPCWaypoint"
  Transform {
    Location {
    }
    Rotation {
    }
    Scale {
      X: 0.109479882
      Y: 0.0892771408
      Z: 0.214792699
    }
  }
  ParentId: 100722311444837611
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Script {
    ScriptAsset {
      Id: 12402776060914387729
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 1794445369434329174
  Name: "Enemy Spawn"
  Transform {
    Location {
      X: -995.258362
      Y: 46.4775391
      Z: -138.537338
    }
    Rotation {
      Yaw: 107.896622
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 8582341886694200393
  UnregisteredParameters {
    Overrides {
      Name: "bp:Y Scale"
      Float: 1.5
    }
    Overrides {
      Name: "bp:X Scale"
      Float: 1.5
    }
    Overrides {
      Name: "bp:Z Scale"
      Float: 1.5
    }
    Overrides {
      Name: "bp:Type"
      Enum {
        Value: "mc:evolumetype:1"
      }
    }
    Overrides {
      Name: "bp:Color"
      Color {
        R: 1
        A: 1
      }
    }
    Overrides {
      Name: "bp:Absolute Scale"
      Bool: false
    }
  }
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  EditorIndicatorVisibility {
    Value: "mc:eindicatorvisibility:visiblewhenselected"
  }
  Blueprint {
    BlueprintAsset {
      Id: 15895911216899816748
    }
    TeamSettings {
    }
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 11593198444010110503
  Name: "Enemy Spawn"
  Transform {
    Location {
      Z: -172.13237
    }
    Rotation {
      Yaw: 107.896622
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 8582341886694200393
  UnregisteredParameters {
    Overrides {
      Name: "bp:Y Scale"
      Float: 1.5
    }
    Overrides {
      Name: "bp:X Scale"
      Float: 1.5
    }
    Overrides {
      Name: "bp:Z Scale"
      Float: 1.5
    }
    Overrides {
      Name: "bp:Type"
      Enum {
        Value: "mc:evolumetype:1"
      }
    }
    Overrides {
      Name: "bp:Color"
      Color {
        R: 1
        A: 1
      }
    }
    Overrides {
      Name: "bp:Absolute Scale"
      Bool: false
    }
  }
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  EditorIndicatorVisibility {
    Value: "mc:eindicatorvisibility:visiblewhenselected"
  }
  Blueprint {
    BlueprintAsset {
      Id: 15895911216899816748
    }
    TeamSettings {
    }
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 15563885271742730982
  Name: "Quest Area"
  Transform {
    Location {
    }
    Rotation {
    }
    Scale {
      X: 36.9037285
      Y: 36.9037285
      Z: 36.9037285
    }
  }
  ParentId: 8582341886694200393
  UnregisteredParameters {
    Overrides {
      Name: "bp:Y Scale"
      Float: 1.5
    }
    Overrides {
      Name: "bp:X Scale"
      Float: 1.5
    }
    Overrides {
      Name: "bp:Z Scale"
      Float: 1.5
    }
    Overrides {
      Name: "bp:Type"
      Enum {
        Value: "mc:evolumetype:1"
      }
    }
    Overrides {
      Name: "bp:Absolute Scale"
      Bool: false
    }
    Overrides {
      Name: "bp:Shape Visibility"
      Enum {
        Value: "mc:evolumevisibility:newenumerator0"
      }
    }
    Overrides {
      Name: "bp:Color"
      Color {
        R: 1
        G: 0.5
        A: 1
      }
    }
    Overrides {
      Name: "bp:Visible In Preview"
      Bool: true
    }
  }
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  EditorIndicatorVisibility {
    Value: "mc:eindicatorvisibility:visiblewhenselected"
  }
  Blueprint {
    BlueprintAsset {
      Id: 15895911216899816748
    }
    TeamSettings {
    }
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 16917563927452919541
  Name: "ObjectiveEventListener"
  Transform {
    Location {
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 8582341886694200393
  UnregisteredParameters {
    Overrides {
      Name: "cs:QuestID"
      String: "Beastbone1"
    }
    Overrides {
      Name: "cs:ObjectiveIndex"
      Int: 1
    }
    Overrides {
      Name: "cs:EventID"
      String: "Quest.NPCDied"
    }
    Overrides {
      Name: "cs:ObjectID"
      String: "Beastbone"
    }
  }
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  EditorIndicatorVisibility {
    Value: "mc:eindicatorvisibility:visiblewhenselected"
  }
  Script {
    ScriptAsset {
      Id: 9246345034586664616
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 3141559192745470728
  Name: "ObjectiveEncounterSpawn - VileVersion"
  Transform {
    Location {
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 8582341886694200393
  UnregisteredParameters {
    Overrides {
      Name: "cs:EnemyIDs"
      String: "Beastbone1, Beastbone2"
    }
    Overrides {
      Name: "cs:MinPlayerLevel"
      Int: 1
    }
    Overrides {
      Name: "cs:EnemyCount"
      Int: 5
    }
    Overrides {
      Name: "cs:ChanceEpicEnemy"
      Float: 0
    }
    Overrides {
      Name: "cs:ChanceLegendaryEnemy"
      Float: 0
    }
    Overrides {
      Name: "cs:AdditionalRadius"
      Int: 22000
    }
    Overrides {
      Name: "cs:CommonLootId"
      String: "SkeletonCommon"
    }
    Overrides {
      Name: "cs:RareLootId"
      String: "SkeletonRare"
    }
    Overrides {
      Name: "cs:EpicLootId"
      String: "SkeletonEpic"
    }
    Overrides {
      Name: "cs:LegendaryLootId"
      String: "SkeletonLegendary"
    }
    Overrides {
      Name: "cs:MaxPlayerLevel"
      Int: 9999
    }
    Overrides {
      Name: "cs:ChanceRareEnemy"
      Float: 0
    }
    Overrides {
      Name: "cs:DespawnDelay"
      Float: 15
    }
  }
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  EditorIndicatorVisibility {
    Value: "mc:eindicatorvisibility:visiblewhenselected"
  }
  Script {
    ScriptAsset {
      Id: 5101381884167888089
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
