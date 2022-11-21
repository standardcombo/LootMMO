Name: "Beastbone2"
RootId: 938137775794850649
Objects {
  Id: 3319898056793361364
  Name: "Enemy Spawn"
  Transform {
    Location {
      X: 16.5605469
      Y: 387.842285
      Z: -143.81897
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
      X: 61.9928398
      Y: 61.9928398
      Z: 61.9928398
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
      Int: 10000
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
Objects {
  Id: 18292984034545998979
  Name: "Waypoints"
  Transform {
    Location {
      X: -1515.93201
      Y: -1275.91064
      Z: -36.9673
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
  ChildIds: 10560550312039638472
  ChildIds: 16065331125516423584
  ChildIds: 8406879459548988547
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
  Id: 8406879459548988547
  Name: "NPC Waypoint - 1"
  Transform {
    Location {
      X: 1744.16711
      Y: 937.743164
      Z: -158.68663
    }
    Rotation {
      Yaw: -45.3571777
    }
    Scale {
      X: 3.22514391
      Y: 3.22514391
      Z: 3.22514391
    }
  }
  ParentId: 18292984034545998979
  ChildIds: 7242846876447624868
  UnregisteredParameters {
    Overrides {
      Name: "cs:NPCWaypoint0"
      ObjectReference {
        SelfId: 16065331125516423584
      }
    }
    Overrides {
      Name: "cs:NPCWaypoint0:isrep"
      Bool: false
    }
    Overrides {
      Name: "cs:NPCWaypoint0:ml"
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
      Value: "mc:etriggershape:sphere"
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
  Id: 7242846876447624868
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
  ParentId: 8406879459548988547
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
  Id: 16065331125516423584
  Name: "NPC Waypoint - 0"
  Transform {
    Location {
      X: 1357.03357
      Y: 2369.51074
      Z: -129.314133
    }
    Rotation {
      Yaw: -45.3571472
    }
    Scale {
      X: 2.58423162
      Y: 2.58423162
      Z: 2.58423162
    }
  }
  ParentId: 18292984034545998979
  ChildIds: 16042332347793280946
  UnregisteredParameters {
    Overrides {
      Name: "cs:NPCWaypoint1"
      ObjectReference {
        SelfId: 8406879459548988547
      }
    }
    Overrides {
      Name: "cs:NPCWaypoint1:isrep"
      Bool: false
    }
    Overrides {
      Name: "cs:NPCWaypoint1:ml"
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
      Value: "mc:etriggershape:sphere"
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
  Id: 16042332347793280946
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
  ParentId: 16065331125516423584
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
  Id: 10560550312039638472
  Name: "NPC Waypoint - Start"
  Transform {
    Location {
      X: 1659.44543
      Y: 1767.49902
      Z: -129.314102
    }
    Rotation {
      Yaw: -73.9331055
    }
    Scale {
      X: 24.1966591
      Y: 11.409338
      Z: 10.4375563
    }
  }
  ParentId: 18292984034545998979
  ChildIds: 8176365872575341336
  UnregisteredParameters {
    Overrides {
      Name: "cs:NPCWaypoint1"
      ObjectReference {
        SelfId: 8406879459548988547
      }
    }
    Overrides {
      Name: "cs:NPCWaypoint0"
      ObjectReference {
        SelfId: 16065331125516423584
      }
    }
    Overrides {
      Name: "cs:NPCWaypoint1:isrep"
      Bool: false
    }
    Overrides {
      Name: "cs:NPCWaypoint1:ml"
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
  Id: 8176365872575341336
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
  ParentId: 10560550312039638472
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
