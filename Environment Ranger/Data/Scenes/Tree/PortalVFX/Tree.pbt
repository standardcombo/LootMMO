Name: "PortalVFX"
RootId: 11757146413210076652
Objects {
  Id: 14331314303902479279
  Name: "Cube - Bottom-Aligned"
  Transform {
    Location {
      X: 32128.0566
      Y: -8889.94727
      Z: 2232.31201
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 8.46683788
      Z: 9.96573353
    }
  }
  ParentId: 11757146413210076652
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:forceon"
  }
  CoreMesh {
    MeshAsset {
      Id: 13981696299924831856
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    DisableDistanceFieldLighting: true
    DisableCastShadows: true
    InteractWithTriggers: true
    StaticMesh {
      Physics {
        Mass: 100
        LinearDamping: 0.01
      }
      BoundsScale: 1
    }
  }
  Relevance {
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 159298914086031622
  Name: "Portal VFX"
  Transform {
    Location {
      X: 32073.3613
      Y: -9064.28516
      Z: 2626.84229
    }
    Rotation {
    }
    Scale {
      X: 1.2605505
      Y: 1.2605505
      Z: 1.2605505
    }
  }
  ParentId: 11757146413210076652
  UnregisteredParameters {
    Overrides {
      Name: "bp:Portal Shape"
      Int: 2
    }
    Overrides {
      Name: "bp:Background Texture"
      Enum {
        Value: "mc:eportalbackground:3"
      }
    }
    Overrides {
      Name: "bp:Color A"
      Color {
        G: 0.940000057
        B: 0.0249008
        A: 1
      }
    }
    Overrides {
      Name: "bp:Color B"
      Color {
        G: 0.799999952
        B: 0.259602726
        A: 1
      }
    }
    Overrides {
      Name: "bp:Color C"
      Color {
        G: 0.470000029
        B: 0.348609418
        A: 1
      }
    }
    Overrides {
      Name: "bp:Emissive Boost"
      Float: 6.83311319
    }
    Overrides {
      Name: "bp:Speed"
      Float: 0.740436316
    }
    Overrides {
      Name: "bp:Scene View Distortion Type"
      Enum {
        Value: "mc:eportalscenedistortiontype:newenumerator1"
      }
    }
    Overrides {
      Name: "bp:View Distortion Amount"
      Float: 0.0761107281
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
  Blueprint {
    BlueprintAsset {
      Id: 6677237403455816226
    }
    TeamSettings {
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
