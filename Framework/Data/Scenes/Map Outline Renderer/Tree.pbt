Name: "Root"
RootId: 4781671109827199097
Objects {
  Id: 4781671109827199097
  Name: "Root"
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
  ChildIds: 5881085871937268318
  ChildIds: 4754752694769203541
  UnregisteredParameters {
  }
  Collidable_v2 {
    Value: "mc:ecollisionsetting:forceon"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:forceon"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Folder {
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 4754752694769203541
  Name: "Raptor Mob"
  Transform {
    Location {
      X: 441.806824
      Y: 16.9244385
      Z: 80
    }
    Rotation {
      Yaw: 112.15963
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 4781671109827199097
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
  CoreMesh {
    MeshAsset {
      Id: 13150916590826836132
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    AnimatedMesh {
      AnimationStance: "unarmed_idle_relaxed"
      AnimationStanceShouldLoop: true
      AnimationPlaybackRateMultiplier: 1
      PlayOnStartAnimation {
        PlaybackRate: 1
      }
      SkinnedMeshes {
        Id: 841534158063459245
      }
      SkinnedMeshes {
        Id: 841534158063459245
      }
      SkinnedMeshes {
        Id: 841534158063459245
      }
      SkinnedMeshes {
        Id: 841534158063459245
      }
    }
  }
  Relevance {
    Value: "mc:edistancerelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 5881085871937268318
  Name: "Advanced Sketch Line Post Process"
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
  ParentId: 4781671109827199097
  UnregisteredParameters {
    Overrides {
      Name: "bp:Line Width"
      Float: 1
    }
    Overrides {
      Name: "bp:Ambient Occlusion Boost"
      Float: 1.3
    }
    Overrides {
      Name: "bp:Line Fade End"
      Float: -1
    }
    Overrides {
      Name: "bp:Background Color"
      Color {
        R: 1
        G: 0.440283358
        B: 0.218999982
        A: 1
      }
    }
    Overrides {
      Name: "bp:Visible In Preview"
      Bool: false
    }
    Overrides {
      Name: "bp:Multiply Line Color"
      Bool: false
    }
    Overrides {
      Name: "bp:Show Threshold Controls"
      Bool: true
    }
    Overrides {
      Name: "bp:Show Line Width Controls"
      Bool: true
    }
    Overrides {
      Name: "bp:Contour Threshold"
      Float: 0.0900463462
    }
    Overrides {
      Name: "bp:Show Depth Fade Controls"
      Bool: false
    }
    Overrides {
      Name: "bp:Crease Line Width"
      Float: 2
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
      Id: 10425791558739272703
    }
    TeamSettings {
    }
  }
  IsReplicationEnabledByDefault: true
}
