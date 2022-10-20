Assets {
  Id: 16979495039428093234
  Name: "Custom Base Material from Rock Flat 02"
  PlatformAssetType: 13
  SerializationVersion: 118
  CustomMaterialAsset {
    BaseMaterialId: 2123329003442731892
    ParameterOverrides {
      Overrides {
        Name: "edge_wear"
        Float: 5
      }
      Overrides {
        Name: "gradient_color"
        Color {
          G: 0.00463575358
          B: 0.028
          A: 1
        }
      }
      Overrides {
        Name: "gradient_worldspace"
        Bool: true
      }
      Overrides {
        Name: "gradient_falloff"
        Float: 1
      }
      Overrides {
        Name: "gradient_shift"
        Float: 0.32112664
      }
    }
    Assets {
      Id: 2123329003442731892
      Name: "Rock Flat 01 (default)"
      PlatformAssetType: 2
      PrimaryAsset {
        AssetType: "MaterialAssetRef"
        AssetId: "mi_rock_default_flat_002"
      }
    }
  }
}
