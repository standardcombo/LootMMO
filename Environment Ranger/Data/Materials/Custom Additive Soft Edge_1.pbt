Assets {
  Id: 3024965062932222998
  Name: "Custom Additive Soft Edge_1"
  PlatformAssetType: 13
  SerializationVersion: 118
  CustomMaterialAsset {
    BaseMaterialId: 11952196949818611935
    ParameterOverrides {
      Overrides {
        Name: "color"
        Color {
          R: 1
          G: 0.470000029
          B: 0.828013182
          A: 0.279
        }
      }
      Overrides {
        Name: "exponent"
        Float: 10
      }
      Overrides {
        Name: "blend distance"
        Float: 0
      }
      Overrides {
        Name: "u fade"
        Float: 0
      }
    }
    Assets {
      Id: 11952196949818611935
      Name: "Additive Soft Edge"
      PlatformAssetType: 2
      PrimaryAsset {
        AssetType: "MaterialAssetRef"
        AssetId: "fxma_additive_edgefade"
      }
    }
  }
}
