Name: "Logic"
RootId: 16313518309989094715
Objects {
  Id: 391839035132011454
  Name: "ChatStorage"
  Transform {
    Location {
      X: -175.049805
      Y: -72.6254044
      Z: 3.81469727e-06
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 16313518309989094715
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
  Id: 7310799070998751848
  Name: "TalkingHeadsResponse"
  Transform {
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 16313518309989094715
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
            X: -175.049805
            Y: -72.6254044
            Z: 3.81469727e-06
          }
        }
        Overrides {
          Name: "Rotation"
          Rotator {
          }
        }
        Overrides {
          Name: "Scale"
          Vector {
            X: 1
            Y: 1
            Z: 1
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
  Id: 15708785284759483235
  Name: "Talking Heads"
  Transform {
    Location {
      X: 175.049805
      Y: 72.6254044
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 16313518309989094715
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
