Assets {
  Id: 17782618371318282688
  Name: "Material_Roof_1"
  PlatformAssetType: 13
  SerializationVersion: 118
  CustomMaterialAsset {
    BaseMaterialId: 13447502163439920460
    ParameterOverrides {
      Overrides {
        Name: "color"
        Color {
          R: 3
          G: 3
          B: 3
          A: 1
        }
      }
      Overrides {
        Name: "gradient_color"
        Color {
          R: 0.593000054
          G: 0.593000054
          B: 0.593000054
          A: 1
        }
      }
      Overrides {
        Name: "gradient_falloff"
        Float: 1
      }
      Overrides {
        Name: "gradient_shift"
        Float: 0.226087481
      }
      Overrides {
        Name: "gradient_worldspace"
        Bool: true
      }
    }
    Assets {
      Id: 13447502163439920460
      Name: "Craftsman Roof Shingles"
      PlatformAssetType: 2
      PrimaryAsset {
        AssetType: "MaterialAssetRef"
        AssetId: "mi_trim_craftsman_roof"
      }
    }
  }
}
