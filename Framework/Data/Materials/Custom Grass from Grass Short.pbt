Assets {
  Id: 1273597337524082124
  Name: "Custom Grass from Grass Short_Dead"
  PlatformAssetType: 13
  SerializationVersion: 125
  CustomMaterialAsset {
    BaseMaterialId: 2741801649775178741
    ParameterOverrides {
      Overrides {
        Name: "wind_intensity"
        Float: 0
      }
      Overrides {
        Name: "color"
        Color {
          R: 0.230000019
          G: 0.132516563
          A: 1
        }
      }
      Overrides {
        Name: "color_roots"
        Color {
          R: 0.179999948
          G: 0.0750993192
          A: 1
        }
      }
    }
    Assets {
      Id: 2741801649775178741
      Name: "Grass (default)"
      PlatformAssetType: 2
      PrimaryAsset {
        AssetType: "MaterialAssetRef"
        AssetId: "mi_grass_dynamic_001_uv"
      }
    }
  }
}
