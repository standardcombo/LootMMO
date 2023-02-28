Assets {
  Id: 16306474826725342056
  Name: "Custom Wood Planks"
  PlatformAssetType: 13
  SerializationVersion: 125
  CustomMaterialAsset {
    BaseMaterialId: 10634098119816284342
    ParameterOverrides {
      Overrides {
        Name: "b_invert_metallic"
        Bool: true
      }
      Overrides {
        Name: "roughness_multiplier"
        Float: 1
      }
      Overrides {
        Name: "desaturation_albedo"
        Float: 0
      }
      Overrides {
        Name: "brightness_albedo"
        Float: 1.2340672
      }
    }
    Assets {
      Id: 10634098119816284342
      Name: "Wood Planks"
      PlatformAssetType: 2
      PrimaryAsset {
        AssetType: "MaterialAssetRef"
        AssetId: "mi_wood_planks_dark_001_uv"
      }
    }
  }
}
