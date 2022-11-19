Name: "NPCs"
RootId: 6804530064966610888
Objects {
  Id: 391839035132011454
  Name: "ChatStorage"
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
  ParentId: 6804530064966610888
  UnregisteredParameters {
    Overrides {
      Name: "cs:TalkingHeads"
      AssetReference {
        Id: 10159611685153542937
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
      Id: 7966580671495656518
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 15708785284759483235
  Name: "Talking Heads"
  Transform {
    Location {
      X: 350.099609
      Y: 145.250809
      Z: -3.81469727e-06
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 6804530064966610888
  UnregisteredParameters {
    Overrides {
      Name: "cs:InCurve"
      SimpleCurve {
        Keys {
          Interpolation {
            Value: "mc:erichcurveinterpmode:rcim_cubic"
          }
          TangentMode {
            Value: "mc:erichcurvetangentmode:rctm_user"
          }
          ArriveTangent: 5.449
          LeaveTangent: 5.44941473
        }
        Keys {
          Interpolation {
            Value: "mc:erichcurveinterpmode:rcim_cubic"
          }
          TangentMode {
            Value: "mc:erichcurvetangentmode:rctm_user"
          }
          Time: 1
          Value: 1
          ArriveTangent: 0.187505588
          LeaveTangent: 0.187505588
        }
        PreExtrapolation {
          Value: "mc:erichcurveextrapolation:rcce_constant"
        }
        PostExtrapolation {
          Value: "mc:erichcurveextrapolation:rcce_constant"
        }
        DefaultValue: 3.40282347e+38
      }
    }
    Overrides {
      Name: "cs:OutCurve"
      SimpleCurve {
        Keys {
          Interpolation {
            Value: "mc:erichcurveinterpmode:rcim_cubic"
          }
          TangentMode {
            Value: "mc:erichcurvetangentmode:rctm_user"
          }
          ArriveTangent: -0.188
          LeaveTangent: -0.188
        }
        Keys {
          Interpolation {
            Value: "mc:erichcurveinterpmode:rcim_cubic"
          }
          TangentMode {
            Value: "mc:erichcurvetangentmode:rctm_user"
          }
          Time: 1
          Value: 1
          ArriveTangent: 5.449
          LeaveTangent: 5.449
        }
        PreExtrapolation {
          Value: "mc:erichcurveextrapolation:rcce_constant"
        }
        PostExtrapolation {
          Value: "mc:erichcurveextrapolation:rcce_constant"
        }
        DefaultValue: 3.40282347e+38
      }
    }
    Overrides {
      Name: "cs:InDuration"
      Float: 0.8
    }
    Overrides {
      Name: "cs:OutDuration"
      Float: 0.1
    }
    Overrides {
      Name: "cs:WriteText"
      Bool: true
    }
    Overrides {
      Name: "cs:CanSkipWriting"
      Bool: true
    }
    Overrides {
      Name: "cs:TextSpeed"
      Float: 0.02
    }
    Overrides {
      Name: "cs:BackgroundColor"
      Color {
        A: 1
      }
    }
    Overrides {
      Name: "cs:LightIntensity"
      Float: 7
    }
    Overrides {
      Name: "cs:InCurve:tooltip"
      String: "The curve for the in animation of the panel."
    }
    Overrides {
      Name: "cs:OutCurve:tooltip"
      String: "The curve of the out animation of the panel."
    }
    Overrides {
      Name: "cs:InDuration:tooltip"
      String: "The duration of the in animation."
    }
    Overrides {
      Name: "cs:OutDuration:tooltip"
      String: "The duration of the out animation."
    }
    Overrides {
      Name: "cs:WriteText:tooltip"
      String: "If enabled, the text will be printed out 1 character at a time."
    }
    Overrides {
      Name: "cs:TextSpeed:tooltip"
      String: "The writing speed of the text animation."
    }
    Overrides {
      Name: "cs:BackgroundColor:tooltip"
      String: "The background color of the background behind the actor."
    }
    Overrides {
      Name: "cs:LightIntensity:tooltip"
      String: "The light intensity of the point light behind the actor."
    }
    Overrides {
      Name: "cs:CanSkipWriting:tooltip"
      String: "If enabled, the player can press the left mouse button to skip the writing effect."
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
  Folder {
    IsFilePartition: true
    FilePartitionName: "Talking Heads"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 7310799070998751848
  Name: "TalkingHeadsResponse"
  Transform {
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 6804530064966610888
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  TemplateInstance {
    ParameterOverrideMap {
      key: 15446655707859290587
      value {
        Overrides {
          Name: "Name"
          String: "TalkingHeadsResponse"
        }
        Overrides {
          Name: "Position"
          Vector {
          }
        }
        Overrides {
          Name: "Rotation"
          Rotator {
          }
        }
      }
    }
    TemplateAsset {
      Id: 5680331693140989911
    }
  }
}
Objects {
  Id: 9858247834619470046
  Name: "NPC1"
  Transform {
    Location {
      X: 952.928467
      Y: -6480.93311
      Z: 75.401123
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 6804530064966610888
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
    IsFilePartition: true
    FilePartitionName: "NPC1"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 2450179119937356925
  Name: "Greeter"
  Transform {
    Location {
      X: -2874.9939
      Y: -22257.3926
      Z: 2582.13428
    }
    Rotation {
      Pitch: 4.50795889
      Yaw: 169.997574
      Roll: -6.019104
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 6804530064966610888
  ChildIds: 13781026987187032289
  ChildIds: 4306925911175813128
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
  Id: 4306925911175813128
  Name: "NPCgeo"
  Transform {
    Location {
    }
    Rotation {
      Yaw: -66.2981
    }
    Scale {
      X: 2.88
      Y: 2.88
      Z: 2.88
    }
  }
  ParentId: 2450179119937356925
  ChildIds: 6806576216077729781
  ChildIds: 17373180581747013269
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
  Id: 17373180581747013269
  Name: "Signals"
  Transform {
    Location {
      X: -0.53903991
      Y: 0.957767189
      Z: 48.1050835
    }
    Rotation {
      Yaw: 12.2446556
    }
    Scale {
      X: 1.04166663
      Y: 1.04166663
      Z: 1.04166663
    }
  }
  ParentId: 4306925911175813128
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:forceoff"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  EditorIndicatorVisibility {
    Value: "mc:eindicatorvisibility:visiblewhenselected"
  }
  Folder {
    IsFilePartition: true
    FilePartitionName: "Signals"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 6806576216077729781
  Name: "Greeter"
  Transform {
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 4306925911175813128
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  TemplateInstance {
    ParameterOverrideMap {
      key: 5339325576282374243
      value {
        Overrides {
          Name: "Name"
          String: "Greeter"
        }
        Overrides {
          Name: "Position"
          Vector {
            X: -18.0772438
            Y: 4.87397242
            Z: 3.09546471
          }
        }
        Overrides {
          Name: "Rotation"
          Rotator {
            Pitch: -1.93063354
            Yaw: 32.9542046
            Roll: -3.81777954
          }
        }
        Overrides {
          Name: "Scale"
          Vector {
            X: 0.360407203
            Y: 0.360407203
            Z: 0.360407203
          }
        }
      }
    }
    ParameterOverrideMap {
      key: 10287565876482648880
      value {
        Overrides {
          Name: "Color"
          Color {
            R: 1
            G: 0.314
            B: 0.314
            A: 1
          }
        }
        Overrides {
          Name: "Intensity"
          Float: 11.3161497
        }
      }
    }
    TemplateAsset {
      Id: 6566379502194667695
    }
  }
}
Objects {
  Id: 13781026987187032289
  Name: "LocalLogic"
  Transform {
    Location {
      X: -25.6984863
      Y: -19.3632812
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 2450179119937356925
  ChildIds: 8811408917068771163
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
  NetworkContext {
    Type: Local
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 8811408917068771163
  Name: "Trigger"
  Transform {
    Location {
    }
    Rotation {
      Yaw: -54.0534706
    }
    Scale {
      X: 3
      Y: 3
      Z: 3
    }
  }
  ParentId: 13781026987187032289
  ChildIds: 12835239215145585284
  Collidable_v2 {
    Value: "mc:ecollisionsetting:forceon"
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
  Trigger {
    Interactable: true
    InteractionLabel: "Chat"
    TeamSettings {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    TriggerShape_v2 {
      Value: "mc:etriggershape:box"
    }
    InteractionTemplate {
      Id: 841534158063459245
    }
    BreadcrumbTemplate {
      Id: 841534158063459245
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 12835239215145585284
  Name: "ChatNPC"
  Transform {
    Location {
    }
    Rotation {
      Yaw: 3.4150944e-06
    }
    Scale {
      X: 0.333333343
      Y: 0.333333343
      Z: 0.333333343
    }
  }
  ParentId: 8811408917068771163
  UnregisteredParameters {
    Overrides {
      Name: "cs:ChatID"
      String: "Greeter"
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
      Id: 8180739351578799712
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
