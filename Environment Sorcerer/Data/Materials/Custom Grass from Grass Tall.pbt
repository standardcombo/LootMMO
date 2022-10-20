Assets {
  Id: 10143972513716348217
  Name: "Custom Grass from Grass Tall"
  PlatformAssetType: 13
  SerializationVersion: 118
  CustomMaterialAsset {
    BaseMaterialId: 5977269638912949587
    ParameterOverrides {
      Overrides {
        Name: "wind_weight"
        Float: 1
      }
      Overrides {
        Name: "color_roots"
        Color {
          R: 0.0540397465
          G: 0.120000005
          A: 1
        }
      }
      Overrides {
        Name: "SSS"
        Color {
          R: 0.0299999714
          G: 0.999999762
          B: 1
          A: 1
        }
      }
    }
    Assets {
      Id: 5977269638912949587
      Name: "Grass (default)"
      PlatformAssetType: 2
      PrimaryAsset {
        AssetType: "MaterialAssetRef"
        AssetId: "mi_grass_dynamic_001_uv"
      }
    }
  }
}
