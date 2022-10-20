Assets {
  Id: 17063680294569419028
  Name: "Custom Base Material from Rock Flat 01"
  PlatformAssetType: 13
  SerializationVersion: 118
  CustomMaterialAsset {
    BaseMaterialId: 7997802453061447057
    ParameterOverrides {
      Overrides {
        Name: "edge_wear"
        Float: 1
      }
      Overrides {
        Name: "material_scale"
        Float: 9
      }
      Overrides {
        Name: "roughness_multiplier"
        Float: 1
      }
      Overrides {
        Name: "gradient_worldspace"
        Bool: true
      }
      Overrides {
        Name: "gradient_shift"
        Float: 0
      }
      Overrides {
        Name: "gradient_color"
        Color {
          A: 1
        }
      }
      Overrides {
        Name: "gradient_falloff"
        Float: 1
      }
    }
    Assets {
      Id: 7997802453061447057
      Name: "Rock Flat 01 (default)"
      PlatformAssetType: 2
      PrimaryAsset {
        AssetType: "MaterialAssetRef"
        AssetId: "mi_rock_default_flat_001"
      }
    }
  }
}
