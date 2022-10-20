Assets {
  Id: 9152389824360131058
  Name: "Custom Waterfall from Waterfall Straight"
  PlatformAssetType: 13
  SerializationVersion: 118
  CustomMaterialAsset {
    BaseMaterialId: 7202725917912533241
    ParameterOverrides {
      Overrides {
        Name: "deep color"
        Color {
          R: 0.0885740072
          G: 0.105119862
          B: 0.134
          A: 0.8
        }
      }
      Overrides {
        Name: "foam color"
        Color {
          R: 0.0780030042
          G: 0.0851082131
          B: 0.107000008
          A: 0.723
        }
      }
      Overrides {
        Name: "shallow color"
        Color {
          R: 0.045423
          G: 0.0481057502
          B: 0.0490000024
          A: 0.46
        }
      }
      Overrides {
        Name: "bottombreakupmax"
        Float: 1
      }
      Overrides {
        Name: "foamnormalstrength"
        Float: 1
      }
      Overrides {
        Name: "foamtightness"
        Float: 5
      }
      Overrides {
        Name: "arc"
        Float: 0.5
      }
      Overrides {
        Name: "fadeleftedge"
        Float: 0
      }
      Overrides {
        Name: "colordepthblend"
        Float: 100
      }
      Overrides {
        Name: "roughness"
        Float: 0.027632311
      }
      Overrides {
        Name: "textureedgeblenddistance"
        Float: 0.290385574
      }
    }
    Assets {
      Id: 7202725917912533241
      Name: "Waterfall"
      PlatformAssetType: 2
      PrimaryAsset {
        AssetType: "MaterialAssetRef"
        AssetId: "fxmi_waterfall"
      }
    }
  }
}
