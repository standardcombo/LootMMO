Assets {
  Id: 6769692121287850005
  Name: "Custom Electric Surface_1"
  PlatformAssetType: 13
  SerializationVersion: 118
  CustomMaterialAsset {
    BaseMaterialId: 5215797868799648906
    ParameterOverrides {
      Overrides {
        Name: "emissiveboost"
        Float: 50
      }
      Overrides {
        Name: "texture scale"
        Float: 0.1
      }
      Overrides {
        Name: "shape 1"
        Float: 0.278491884
      }
      Overrides {
        Name: "arc speed"
        Float: 0.127215937
      }
      Overrides {
        Name: "offsetamount"
        Float: 1.1474762
      }
      Overrides {
        Name: "bolt distortion scale"
        Float: 0.185661256
      }
      Overrides {
        Name: "arc inner color"
        Color {
          R: 0.927152157
          B: 1
          A: 1
        }
      }
      Overrides {
        Name: "arc outer color"
        Color {
          R: 0.949669063
          G: 0.0500000119
          B: 1
          A: 1
        }
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
