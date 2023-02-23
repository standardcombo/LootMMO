Assets {
  Id: 8125427585267204809
  Name: "Minimalist Health Bar Material"
  PlatformAssetType: 13
  SerializationVersion: 124
  CustomMaterialAsset {
    BaseMaterialId: 5351428073291024820
    ParameterOverrides {
      Overrides {
        Name: "emissiveboost"
        Float: 1
      }
      Overrides {
        Name: "color"
        Color {
          R: 0.603000045
          A: 1
        }
      }
    }
    Assets {
      Id: 5351428073291024820
      Name: "Emissive Glow Opaque"
      PlatformAssetType: 2
      PrimaryAsset {
        AssetType: "MaterialAssetRef"
        AssetId: "fxma_opaque_emissive"
      }
    }
  }
}
