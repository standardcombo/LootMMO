Name: "Beastbone2"
RootId: 938137775794850649
Objects {
  Id: 12315252045508091512
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
  ParentId: 938137775794850649
  ChildIds: 17870163265915642175
  ChildIds: 9807728830051942563
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
  Id: 9807728830051942563
  Name: "NPC Waypoint - 1"
  Transform {
    Location {
      X: -499.983643
      Y: 107.266602
      Z: -6.10351562e-05
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
  ParentId: 12315252045508091512
  ChildIds: 1235143378752129292
  UnregisteredParameters {
    Overrides {
      Name: "cs:NPCWaypoint"
      ObjectReference {
        SelfId: 12315252045508091512
      }
    }
    Overrides {
      Name: "cs:NPCWaypoint0"
      ObjectReference {
        SelfId: 17870163265915642175
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
  Id: 1235143378752129292
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
  ParentId: 9807728830051942563
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
  Id: 17870163265915642175
  Name: "NPC Waypoint - 0"
  Transform {
    Location {
      X: 488.321777
      Y: -64.4453125
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
  ParentId: 12315252045508091512
  ChildIds: 8439390535437845540
  UnregisteredParameters {
    Overrides {
      Name: "cs:NPCWaypoint"
      ObjectReference {
        SelfId: 12315252045508091512
      }
    }
    Overrides {
      Name: "cs:NPCWaypoint1"
      ObjectReference {
        SelfId: 9807728830051942563
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
  Id: 8439390535437845540
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
  ParentId: 17870163265915642175
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
  Id: 3319898056793361364
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
  ParentId: 938137775794850649
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
  Id: 16457486484985197643
  Name: "Quest Area"
  Transform {
    Location {
    }
    Rotation {
    }
    Scale {
      X: 43.3540306
      Y: 43.3540306
      Z: 43.3540306
    }
  }
  ParentId: 938137775794850649
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
  Id: 6318908110235169623
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
  ParentId: 938137775794850649
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
  Id: 16823912948044366634
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
  ParentId: 938137775794850649
  UnregisteredParameters {
    Overrides {
      Name: "cs:EnemyIDs"
      String: "Beastbone4"
    }
    Overrides {
      Name: "cs:MinPlayerLevel"
      Int: 1
    }
    Overrides {
      Name: "cs:EnemyCount"
      Int: 1
    }
    Overrides {
      Name: "cs:ChanceEpicEnemy"
      Float: 0
    }
    Overrides {
      Name: "cs:ChanceLegendaryEnemy"
      Float: 100
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
