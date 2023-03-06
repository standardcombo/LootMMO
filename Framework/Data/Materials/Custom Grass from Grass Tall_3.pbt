Assets {
  Id: 4452622202414081919
  Name: "Custom Grass from Grass Tall_3"
  PlatformAssetType: 13
  SerializationVersion: 125
  CustomMaterialAsset {
    BaseMaterialId: 10665935622760157020
    ParameterOverrides {
      Overrides {
        Name: "wind_weight"
        Float: 0
      }
      Overrides {
        Name: "color"
        Color {
          R: 0.338000029
          G: 0.161165655
          A: 1
        }
      }
      Overrides {
        Name: "color_roots"
        Color {
          R: 0.37500003
          G: 0.208609223
          A: 1
        }
      }
      Overrides {
        Name: "sss"
        Color {
          R: 0.28
          G: 0.194702044
          A: 1
        }
      }
      Overrides {
        Name: "color_variation_primary"
        Color {
          R: 0.350000024
          G: 0.229470342
          A: 1
        }
      }
    }
    Assets {
      Id: 10665935622760157020
      Name: "Grass (default)"
      PlatformAssetType: 2
      PrimaryAsset {
        AssetType: "MaterialAssetRef"
        AssetId: "mi_grass_dynamic_001_uv"
      }
    }
  }
}
