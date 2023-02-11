Assets {
  Id: 5452415450039309828
  Name: "Level_Api"
  PlatformAssetType: 3
  TextAsset {
    CustomParameters {
      Overrides {
        Name: "cs:XPCurve"
        SimpleCurve {
          Keys {
            Interpolation {
              Value: "mc:erichcurveinterpmode:rcim_cubic"
            }
            TangentMode {
              Value: "mc:erichcurvetangentmode:rctm_auto"
            }
          }
          Keys {
            Interpolation {
              Value: "mc:erichcurveinterpmode:rcim_cubic"
            }
            TangentMode {
              Value: "mc:erichcurvetangentmode:rctm_user"
            }
            Time: 25
            Value: 34000
            ArriveTangent: 230.718506
            LeaveTangent: 230.718506
          }
          Keys {
            Interpolation {
              Value: "mc:erichcurveinterpmode:rcim_linear"
            }
            TangentMode {
              Value: "mc:erichcurvetangentmode:rctm_auto"
            }
            Time: 35
            Value: 67100
          }
          PreExtrapolation {
            Value: "mc:erichcurveextrapolation:rcce_constant"
          }
          PostExtrapolation {
            Value: "mc:erichcurveextrapolation:rcce_constant"
          }
        }
      }
      Overrides {
        Name: "cs:Level"
        AssetReference {
          Id: 16979731221139693802
        }
      }
    }
  }
  SerializationVersion: 123
  VirtualFolderPath: "Loot"
  VirtualFolderPath: "Dependancies"
}
