Name: "Poker"
RootId: 2480062710975198621
Objects {
  Id: 11304594499370001756
  Name: "Quest - Poker"
  Transform {
    Location {
      X: -2659.41431
      Y: -5447.90918
      Z: 3699.69971
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 2480062710975198621
  ChildIds: 11413897589867695472
  ChildIds: 16607989145858920735
  Collidable_v2 {
    Value: "mc:ecollisionsetting:forceoff"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:forceoff"
  }
  EditorIndicatorVisibility {
    Value: "mc:eindicatorvisibility:visiblewhenselected"
  }
  NetworkContext {
    MinDetailLevel {
      Value: "mc:edetaillevel:low"
    }
    MaxDetailLevel {
      Value: "mc:edetaillevel:ultra"
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 16607989145858920735
  Name: "Basic Water Splash VFX"
  Transform {
    Location {
    }
    Rotation {
    }
    Scale {
      X: 3.91404438
      Y: 3.91404438
      Z: 3.91404438
    }
  }
  ParentId: 11304594499370001756
  UnregisteredParameters {
    Overrides {
      Name: "bp:Enable Mist"
      Bool: false
    }
    Overrides {
      Name: "bp:Looping"
      Bool: true
    }
    Overrides {
      Name: "bp:Enable Drops"
      Bool: false
    }
    Overrides {
      Name: "bp:Color"
      Color {
        R: 4
        G: 3.15066671
        B: 0.0799999237
        A: 1
      }
    }
    Overrides {
      Name: "bp:Loop Duration"
      Float: 0.75
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
      Id: 3336018558241619144
    }
    TeamSettings {
    }
    Vfx {
      AutoPlay: true
    }
  }
  Relevance {
    Value: "mc:eproxyrelevance:medium"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 11413897589867695472
  Name: "QuestObjectiveSelectedObject"
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
  ParentId: 11304594499370001756
  UnregisteredParameters {
    Overrides {
      Name: "cs:QuestID"
      String: "Poker"
    }
    Overrides {
      Name: "cs:ObjectiveIndex"
      Int: 1
    }
    Overrides {
      Name: "cs:Object"
      ObjectReference {
        SelfId: 16607989145858920735
      }
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
      Id: 15213057634937597698
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 4842498084638152350
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
  ParentId: 2480062710975198621
  UnregisteredParameters {
    Overrides {
      Name: "cs:QuestID"
      String: "Poker"
    }
    Overrides {
      Name: "cs:ObjectiveIndex"
      Int: 3
    }
    Overrides {
      Name: "cs:ObjectID"
      String: "Win"
    }
    Overrides {
      Name: "cs:EventID"
      String: "Quest.Poker"
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
  Id: 17129259308638386985
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
  ParentId: 2480062710975198621
  UnregisteredParameters {
    Overrides {
      Name: "cs:QuestID"
      String: "Poker"
    }
    Overrides {
      Name: "cs:ObjectiveIndex"
      Int: 2
    }
    Overrides {
      Name: "cs:ObjectID"
      String: "Play"
    }
    Overrides {
      Name: "cs:EventID"
      String: "Quest.Poker"
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
  Id: 3651298315817814983
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
  ParentId: 2480062710975198621
  UnregisteredParameters {
    Overrides {
      Name: "cs:QuestID"
      String: "Poker"
    }
    Overrides {
      Name: "cs:ObjectiveIndex"
      Int: 1
    }
    Overrides {
      Name: "cs:ObjectID"
      String: "Sit"
    }
    Overrides {
      Name: "cs:EventID"
      String: "Quest.Poker"
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
