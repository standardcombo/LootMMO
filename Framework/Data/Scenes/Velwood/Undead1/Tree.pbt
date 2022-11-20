Name: "Undead1"
RootId: 9624353609936486314
Objects {
  Id: 13205863163364740704
  Name: "Enemy Spawn"
  Transform {
    Location {
      X: 9887.31348
      Y: 7733.03662
      Z: -290.623047
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
  ParentId: 9624353609936486314
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
  Id: 13159583299352947505
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
  ParentId: 9624353609936486314
  ChildIds: 15803162157657002746
  ChildIds: 17815500684813116474
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
  Id: 17815500684813116474
  Name: "NPC Waypoint - 1"
  Transform {
    Location {
      X: -3728.1084
      Y: 13603.7324
      Z: -105.517944
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
  ParentId: 13159583299352947505
  ChildIds: 16348211809068139129
  UnregisteredParameters {
    Overrides {
      Name: "cs:NPCWaypoint"
      ObjectReference {
        SelfId: 13159583299352947505
      }
    }
    Overrides {
      Name: "cs:NPCWaypoint0"
      ObjectReference {
        SelfId: 15803162157657002746
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
  Id: 16348211809068139129
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
  ParentId: 17815500684813116474
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
  Id: 15803162157657002746
  Name: "NPC Waypoint - 0"
  Transform {
    Location {
      X: -6399.3457
      Y: 13081.2949
      Z: -105.517944
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
  ParentId: 13159583299352947505
  ChildIds: 10287228328418110001
  UnregisteredParameters {
    Overrides {
      Name: "cs:NPCWaypoint"
      ObjectReference {
        SelfId: 13159583299352947505
      }
    }
    Overrides {
      Name: "cs:NPCWaypoint1"
      ObjectReference {
        SelfId: 17815500684813116474
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
  Id: 10287228328418110001
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
  ParentId: 15803162157657002746
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
  Id: 4559407830211579113
  Name: "Enemy Spawn"
  Transform {
    Location {
      X: -5969.47266
      Y: 13434.0215
      Z: -252.831726
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
  ParentId: 9624353609936486314
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
  Id: 11639066491259598054
  Name: "Quest Area"
  Transform {
    Location {
      X: -3796.63867
      Y: 17300.1914
      Z: -0.00134277344
    }
    Rotation {
      Yaw: -157.500031
    }
    Scale {
      X: 151.468979
      Y: 104.742249
      Z: 104.742226
    }
  }
  ParentId: 9624353609936486314
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
  Id: 3761253294815525223
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
  ParentId: 9624353609936486314
  UnregisteredParameters {
    Overrides {
      Name: "cs:QuestID"
      String: "Undead1"
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
      String: "Undead"
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
  Id: 11993688065166011093
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
  ParentId: 9624353609936486314
  UnregisteredParameters {
    Overrides {
      Name: "cs:EnemyIDs"
      String: "Skeleton4, Skeleton5"
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
      Float: 25
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
