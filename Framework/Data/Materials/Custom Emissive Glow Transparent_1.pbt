Assets {
  Id: 4914654279456870721
  Name: "Custom Emissive Glow Transparent"
  PlatformAssetType: 13
  SerializationVersion: 123
  CustomMaterialAsset {
    BaseMaterialId: 15761460511220986007
    ParameterOverrides {
      Overrides {
        Name: "emissive_boost"
        Float: 0
      }
      Overrides {
        Name: "color"
        Color {
          R: 1
          B: 0.005
          A: 1
        }
      }
    }
    Assets {
      Id: 15761460511220986007
      Name: "Emissive Glow Transparent"
      PlatformAssetType: 2
      PrimaryAsset {
        AssetType: "MaterialAssetRef"
        AssetId: "mi_basic_emissive_001"
      }
    }
  }
}
