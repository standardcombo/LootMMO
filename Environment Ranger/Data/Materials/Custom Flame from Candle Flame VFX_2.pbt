Assets {
  Id: 9161145500600929117
  Name: "Custom Flame from Candle Flame VFX_2"
  PlatformAssetType: 13
  SerializationVersion: 118
  CustomMaterialAsset {
    BaseMaterialId: 789535111028700882
    ParameterOverrides {
      Overrides {
        Name: "emissiveboost"
        Float: 10.6330633
      }
      Overrides {
        Name: "speed"
        Float: 2.17077351
      }
      Overrides {
        Name: "color c"
        Color {
          R: 0.350000024
          A: 1
        }
      }
    }
    Assets {
      Id: 789535111028700882
      Name: "Candle Flame"
      PlatformAssetType: 2
      PrimaryAsset {
        AssetType: "MaterialAssetRef"
        AssetId: "fxmi_candleflame_a"
      }
    }
  }
}
