Name: "ThrowChair"
RootId: 2020934973811176208
Objects {
  Id: 9585919341651960233
  Name: "Quest - ThrowChair"
  Transform {
    Location {
      X: -2839.28979
      Y: -2210.34473
      Z: 3633.13745
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 2020934973811176208
  ChildIds: 3038150369857671256
  ChildIds: 10831113843908275835
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
  Id: 10831113843908275835
  Name: "Basic Water Splash VFX"
  Transform {
    Location {
      Z: -9.64746094
    }
    Rotation {
    }
    Scale {
      X: 3.91404438
      Y: 3.91404438
      Z: 3.91404438
    }
  }
  ParentId: 9585919341651960233
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
  Id: 3038150369857671256
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
  ParentId: 9585919341651960233
  UnregisteredParameters {
    Overrides {
      Name: "cs:QuestID"
      String: "ThrowChair"
    }
    Overrides {
      Name: "cs:ObjectiveIndex"
      Int: 1
    }
    Overrides {
      Name: "cs:Object"
      ObjectReference {
        SelfId: 10831113843908275835
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
  Id: 8269297730333729686
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
  ParentId: 2020934973811176208
  UnregisteredParameters {
    Overrides {
      Name: "cs:QuestID"
      String: "ThrowChair"
    }
    Overrides {
      Name: "cs:ObjectiveIndex"
      Int: 3
    }
    Overrides {
      Name: "cs:ObjectID"
      String: "Kill"
    }
    Overrides {
      Name: "cs:EventID"
      String: "Quest.ThrowChair"
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
  Id: 13951233564491959747
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
  ParentId: 2020934973811176208
  UnregisteredParameters {
    Overrides {
      Name: "cs:QuestID"
      String: "ThrowChair"
    }
    Overrides {
      Name: "cs:ObjectiveIndex"
      Int: 2
    }
    Overrides {
      Name: "cs:ObjectID"
      String: "Throw"
    }
    Overrides {
      Name: "cs:EventID"
      String: "Quest.ThrowChair"
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
  Id: 16878100559342146556
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
  ParentId: 2020934973811176208
  UnregisteredParameters {
    Overrides {
      Name: "cs:QuestID"
      String: "ThrowChair"
    }
    Overrides {
      Name: "cs:ObjectiveIndex"
      Int: 1
    }
    Overrides {
      Name: "cs:ObjectID"
      String: "Pickup"
    }
    Overrides {
      Name: "cs:EventID"
      String: "Quest.ThrowChair"
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
