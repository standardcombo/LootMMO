Assets {
  Id: 111310029656468413
  Name: "Crystal Ball"
  PlatformAssetType: 13
  SerializationVersion: 118
  CustomMaterialAsset {
    BaseMaterialId: 6717054932271956401
    ParameterOverrides {
      Overrides {
        Name: "color b"
        Color {
          R: 0.0600000024
          G: 1
          B: 0.159602761
          A: 1
        }
      }
      Overrides {
        Name: "specular"
        Float: 1
      }
      Overrides {
        Name: "roughness"
        Float: 0
      }
      Overrides {
        Name: "color c"
        Color {
          G: 0.122052729
          B: 0.97
          A: 1
        }
      }
    }
    Assets {
      Id: 6717054932271956401
      Name: "Magic Glass"
      PlatformAssetType: 2
      PrimaryAsset {
        AssetType: "MaterialAssetRef"
        AssetId: "fxmi_magic_glass"
      }
    }
  }
}
