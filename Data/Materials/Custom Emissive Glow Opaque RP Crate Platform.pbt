Assets {
  Id: 9163955970956586735
  Name: "Custom Emissive Glow Opaque RP Crate Platform"
  PlatformAssetType: 13
  SerializationVersion: 118
  CustomMaterialAsset {
    BaseMaterialId: 5351428073291024820
    ParameterOverrides {
      Overrides {
        Name: "color"
        Color {
          R: 0.98
          G: 0.214172199
          A: 1
        }
      }
      Overrides {
        Name: "emissiveboost"
        Float: 5
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
