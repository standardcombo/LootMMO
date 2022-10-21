Assets {
  Id: 5857183004658558326
  Name: "Custom Gel Opaque"
  PlatformAssetType: 13
  SerializationVersion: 119
  CustomMaterialAsset {
    BaseMaterialId: 4025020864912872534
    ParameterOverrides {
      Overrides {
        Name: "color"
        Color {
          R: 2
          A: 1
        }
      }
      Overrides {
        Name: "inner color"
        Color {
          R: 0.480000019
          A: 1
        }
      }
      Overrides {
        Name: "bubble brightness"
        Float: 0
      }
      Overrides {
        Name: "metallic"
        Float: 0
      }
      Overrides {
        Name: "specular"
        Float: 0.952381
      }
    }
    Assets {
      Id: 4025020864912872534
      Name: "Gel Opaque"
      PlatformAssetType: 2
      PrimaryAsset {
        AssetType: "MaterialAssetRef"
        AssetId: "fxmi_gel_opaque"
      }
    }
  }
}
