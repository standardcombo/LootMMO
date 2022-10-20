Assets {
  Id: 2284792905074365003
  Name: "Custom Sand 01"
  PlatformAssetType: 13
  SerializationVersion: 118
  CustomMaterialAsset {
    BaseMaterialId: 15281399694292404596
    ParameterOverrides {
      Overrides {
        Name: "fresnel_brightness"
        Float: 0
      }
      Overrides {
        Name: "fresnel_exponent"
        Float: 7.87463
      }
      Overrides {
        Name: "fresnel_color"
        Color {
          A: 1
        }
      }
      Overrides {
        Name: "desaturation_albedo"
        Float: 1
      }
      Overrides {
        Name: "b_invert_metallic"
        Bool: false
      }
    }
    Assets {
      Id: 15281399694292404596
      Name: "Sand 01"
      PlatformAssetType: 2
      PrimaryAsset {
        AssetType: "MaterialAssetRef"
        AssetId: "mi_sand_001_uv"
      }
    }
  }
}
