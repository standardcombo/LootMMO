Assets {
  Id: 537294124127399462
  Name: "Custom Grass from Grass Short_2"
  PlatformAssetType: 13
  SerializationVersion: 124
  CustomMaterialAsset {
    BaseMaterialId: 10665935622760157020
    ParameterOverrides {
      Overrides {
        Name: "wind_weight"
        Float: 0.0210392587
      }
      Overrides {
        Name: "color"
        Color {
          R: 0.0361951441
          G: 0.0690000057
          B: 0.00494513568
          A: 1
        }
      }
      Overrides {
        Name: "color_roots"
        Color {
          R: 0.0141633162
          G: 0.027
          B: 0.00193505292
          A: 1
        }
      }
      Overrides {
        Name: "SSS"
        Color {
          R: 0.284
          G: 0.0959205
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
