Assets {
  Id: 4876042108172592054
  Name: "Custom Electric Surface - Copy"
  PlatformAssetType: 13
  SerializationVersion: 118
  CustomMaterialAsset {
    BaseMaterialId: 5215797868799648906
    ParameterOverrides {
      Overrides {
        Name: "arc inner color"
        Color {
          R: 2
          B: 3
          A: 1
        }
      }
      Overrides {
        Name: "emissiveboost"
        Float: 255
      }
      Overrides {
        Name: "texture scale"
        Float: 15
      }
      Overrides {
        Name: "enablefullfresnel"
        Bool: false
      }
      Overrides {
        Name: "arc speed"
        Float: 0.4
      }
      Overrides {
        Name: "bolt distortion scale"
        Float: 0.74736011
      }
      Overrides {
        Name: "arc outer color"
        Color {
          R: 3
          B: 4
          A: 1
        }
      }
      Overrides {
        Name: "shape 1"
        Float: 0
      }
    }
    Assets {
      Id: 5215797868799648906
      Name: "Electric Surface"
      PlatformAssetType: 2
      PrimaryAsset {
        AssetType: "MaterialAssetRef"
        AssetId: "fxma_electrical_surface"
      }
    }
  }
}
