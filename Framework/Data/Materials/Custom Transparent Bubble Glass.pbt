Assets {
  Id: 8219149701339939263
  Name: "Custom Transparent Bubble Glass"
  PlatformAssetType: 13
  SerializationVersion: 123
  CustomMaterialAsset {
    BaseMaterialId: 18348694118958495716
    ParameterOverrides {
      Overrides {
        Name: "color"
        Color {
          R: 0.45
          G: 0.759602666
          B: 1
          A: 1
        }
      }
      Overrides {
        Name: "Inner Opacity"
        Float: 0.562645376
      }
      Overrides {
        Name: "Metallic"
        Float: 0.888202786
      }
      Overrides {
        Name: "Outer Opacity"
        Float: 0.93828851
      }
      Overrides {
        Name: "Roughness"
        Float: 0.103526033
      }
      Overrides {
        Name: "Specular"
        Float: 1
      }
    }
    Assets {
      Id: 18348694118958495716
      Name: "Transparent Bubble Glass"
      PlatformAssetType: 2
      PrimaryAsset {
        AssetType: "MaterialAssetRef"
        AssetId: "fxmi_transparent_bubble_glass"
      }
    }
  }
}
