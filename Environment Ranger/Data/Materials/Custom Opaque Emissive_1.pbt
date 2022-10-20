Assets {
  Id: 7025537426303936580
  Name: "Custom Opaque Emissive_1"
  PlatformAssetType: 13
  SerializationVersion: 118
  CustomMaterialAsset {
    BaseMaterialId: 5351428073291024820
    ParameterOverrides {
      Overrides {
        Name: "color"
        Color {
          R: 0.895364404
          G: 0.209999979
          B: 1
          A: 1
        }
      }
      Overrides {
        Name: "emissiveboost"
        Float: 12.3928051
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
