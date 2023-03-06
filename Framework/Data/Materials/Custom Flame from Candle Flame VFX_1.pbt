Assets {
  Id: 1163440238968447388
  Name: "Custom Flame from Candle Flame VFX_1"
  PlatformAssetType: 13
  SerializationVersion: 125
  CustomMaterialAsset {
    BaseMaterialId: 1580899145783672584
    ParameterOverrides {
      Overrides {
        Name: "color a"
        Color {
          G: 0.411655456
          B: 0.419999957
          A: 1
        }
      }
      Overrides {
        Name: "color b"
        Color {
          G: 0.73
          B: 0.425430536
          A: 1
        }
      }
      Overrides {
        Name: "color c"
        Color {
          R: 1
          G: 1
          B: 1
          A: 1
        }
      }
    }
    Assets {
      Id: 1580899145783672584
      Name: "Candle Flame"
      PlatformAssetType: 2
      PrimaryAsset {
        AssetType: "MaterialAssetRef"
        AssetId: "fxmi_candleflame_a"
      }
    }
  }
}
