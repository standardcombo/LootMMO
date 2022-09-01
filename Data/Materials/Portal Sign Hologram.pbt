Assets {
  Id: 7253681294427585277
  Name: "Portal Sign Hologram"
  PlatformAssetType: 13
  SerializationVersion: 118
  CustomMaterialAsset {
    BaseMaterialId: 5526862240614970452
    ParameterOverrides {
      Overrides {
        Name: "color"
        Color {
          R: 5
          G: 2.609272
          B: 0.25000006
          A: 1
        }
      }
      Overrides {
        Name: "scanline scale"
        Float: 0.3
      }
      Overrides {
        Name: "scanline min value"
        Float: 0
      }
      Overrides {
        Name: "scanline speed"
        Float: -0.5
      }
    }
    Assets {
      Id: 5526862240614970452
      Name: "Basic Hologram"
      PlatformAssetType: 2
      PrimaryAsset {
        AssetType: "MaterialAssetRef"
        AssetId: "fxmi_basic_hologram"
      }
    }
  }
}
