Assets {
  Id: 3663196600611606098
  Name: "Custom Wood Floor Dark"
  PlatformAssetType: 13
  SerializationVersion: 118
  CustomMaterialAsset {
    BaseMaterialId: 8544926105542791882
    ParameterOverrides {
      Overrides {
        Name: "desaturation_albedo"
        Float: 0.852402627
      }
      Overrides {
        Name: "b_invert_metallic"
        Bool: false
      }
      Overrides {
        Name: "roughness_multiplier"
        Float: 1.25
      }
      Overrides {
        Name: "material_scale"
        Float: 4
      }
      Overrides {
        Name: "curvature_brightness"
        Float: 1
      }
      Overrides {
        Name: "brightness_albedo"
        Float: 1
      }
    }
    Assets {
      Id: 8544926105542791882
      Name: "Wood Floor Dark"
      PlatformAssetType: 2
      PrimaryAsset {
        AssetType: "MaterialAssetRef"
        AssetId: "mi_wood_floor_dark_001_uv"
      }
    }
  }
}
