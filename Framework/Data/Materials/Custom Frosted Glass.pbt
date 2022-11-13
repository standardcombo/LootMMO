Assets {
  Id: 11599434222777075769
  Name: "Custom Frosted Glass"
  PlatformAssetType: 13
  SerializationVersion: 120
  CustomMaterialAsset {
    BaseMaterialId: 18029764489011244134
    ParameterOverrides {
      Overrides {
        Name: "Thickness"
        Float: 0
      }
      Overrides {
        Name: "color"
        Color {
          R: 1
          G: 0.453373015
          B: 0.0500000715
          A: 1
        }
      }
      Overrides {
        Name: "Clarity"
        Float: 0.5492118
      }
    }
    Assets {
      Id: 18029764489011244134
      Name: "Frosted Glass"
      PlatformAssetType: 2
      PrimaryAsset {
        AssetType: "MaterialAssetRef"
        AssetId: "fxma_frosted_glass"
      }
    }
  }
}
