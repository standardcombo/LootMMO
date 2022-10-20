Assets {
  Id: 15499362868924797527
  Name: "Custom Additive Soft Edge"
  PlatformAssetType: 13
  SerializationVersion: 118
  CustomMaterialAsset {
    BaseMaterialId: 11952196949818611935
    ParameterOverrides {
      Overrides {
        Name: "blend distance"
        Float: 100
      }
      Overrides {
        Name: "exponent"
        Float: 10
      }
      Overrides {
        Name: "u fade"
        Float: 1
      }
      Overrides {
        Name: "v fade"
        Float: 1
      }
      Overrides {
        Name: "color"
        Color {
          R: 3
          G: 10
          B: 9.16557217
          A: 1
        }
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
