Assets {
  Id: 17665578001252776500
  Name: "WoodPlanks_InvertedMetallic"
  PlatformAssetType: 13
  SerializationVersion: 116
  CustomMaterialAsset {
    BaseMaterialId: 10634098119816284342
    ParameterOverrides {
      Overrides {
        Name: "b_invert_metallic"
        Bool: true
      }
      Overrides {
        Name: "brightness_albedo"
        Float: 1
      }
      Overrides {
        Name: "desaturation_albedo"
        Float: 0.0789611638
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
