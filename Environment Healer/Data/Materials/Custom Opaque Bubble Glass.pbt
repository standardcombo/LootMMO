Assets {
  Id: 17492744645214510808
  Name: "Custom Opaque Bubble Glass"
  PlatformAssetType: 13
  SerializationVersion: 118
  CustomMaterialAsset {
    BaseMaterialId: 6414569565439168134
    ParameterOverrides {
      Overrides {
        Name: "Roughness"
        Float: 0.5
      }
      Overrides {
        Name: "Scale"
        Float: 5.00476456
      }
      Overrides {
        Name: "Gradient Exponent"
        Float: 0.293574542
      }
      Overrides {
        Name: "Smooth Glaze"
        Float: 1
      }
      Overrides {
        Name: "Smooth Glaze Roughness"
        Float: 0
      }
      Overrides {
        Name: "surface displacement amount"
        Float: 0
      }
      Overrides {
        Name: "surface height"
        Float: 1
      }
      Overrides {
        Name: "wave height"
        Float: 0
      }
      Overrides {
        Name: "wave scale multiplier"
        Float: 0
      }
      Overrides {
        Name: "bubble direction"
        Vector {
          X: 0.3
          Z: 1
        }
      }
      Overrides {
        Name: "color"
        Color {
          A: 1
        }
      }
      Overrides {
        Name: "inner color"
        Color {
          A: 1
        }
      }
      Overrides {
        Name: "bubbles"
        Float: 0.25
      }
      Overrides {
        Name: "scale"
        Float: 5
      }
      Overrides {
        Name: "speed"
        Float: 50
      }
      Overrides {
        Name: "virtual plane orientation vector"
        Vector {
        }
      }
      Overrides {
        Name: "surface foam"
        Float: 0
      }
      Overrides {
        Name: "foam thickness"
        Float: 0
      }
      Overrides {
        Name: "foam edge speed"
        Float: 0
      }
      Overrides {
        Name: "top edge foam"
        Float: 0
      }
      Overrides {
        Name: "top edge foam distance"
        Float: 0
      }
    }
    Assets {
      Id: 6414569565439168134
      Name: "Emissive Container Liquid"
      PlatformAssetType: 2
      PrimaryAsset {
        AssetType: "MaterialAssetRef"
        AssetId: "fxmi_emissive_cutoff_liquid"
      }
    }
  }
}
