Assets {
  Id: 13786852880729742002
  Name: "Custom Emissive Container Liquid"
  PlatformAssetType: 13
  SerializationVersion: 118
  CustomMaterialAsset {
    BaseMaterialId: 18280303351516875622
    ParameterOverrides {
      Overrides {
        Name: "color"
        Color {
          R: 0.36
          A: 1
        }
      }
      Overrides {
        Name: "inner color"
        Color {
          R: 0.25
          A: 1
        }
      }
      Overrides {
        Name: "top color"
        Color {
          R: 0.580000043
          A: 1
        }
      }
      Overrides {
        Name: "surface height"
        Float: 0.45665434
      }
      Overrides {
        Name: "edge power"
        Float: 0.745795369
      }
      Overrides {
        Name: "edge width"
        Float: 1.15828896
      }
      Overrides {
        Name: "surface foam"
        Float: 0.66665113
      }
      Overrides {
        Name: "top edge foam"
        Float: 0.411655039
      }
      Overrides {
        Name: "top edge foam distance"
        Float: 0
      }
      Overrides {
        Name: "foam color"
        Color {
          R: 0.36
          A: 1
        }
      }
      Overrides {
        Name: "bubbles"
        Float: 0.224157929
      }
      Overrides {
        Name: "scale"
        Float: 5.20798874
      }
      Overrides {
        Name: "wave scale multiplier"
        Float: 0.973307729
      }
      Overrides {
        Name: "wave height"
        Float: 9.03628254
      }
      Overrides {
        Name: "foam edge speed"
        Float: 2.35827065
      }
      Overrides {
        Name: "foam thickness"
        Float: 18.6658497
      }
      Overrides {
        Name: "speed"
        Float: 8.16648769
      }
      Overrides {
        Name: "bubble direction"
        Vector {
          Z: -4
        }
      }
      Overrides {
        Name: "surface displacement amount"
        Float: 0.928308427
      }
    }
    Assets {
      Id: 18280303351516875622
      Name: "Emissive Container Liquid"
      PlatformAssetType: 2
      PrimaryAsset {
        AssetType: "MaterialAssetRef"
        AssetId: "fxmi_emissive_cutoff_liquid"
      }
    }
  }
}
