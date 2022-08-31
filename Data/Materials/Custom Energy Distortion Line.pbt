Assets {
  Id: 15555827561540487518
  Name: "Custom Energy Distortion Line"
  PlatformAssetType: 13
  SerializationVersion: 118
  CustomMaterialAsset {
    BaseMaterialId: 8985351201335818797
    ParameterOverrides {
      Overrides {
        Name: "emissive_boost"
        Float: 40
      }
    }
    Assets {
      Id: 8985351201335818797
      Name: "Energy Distortion Line"
      PlatformAssetType: 2
      PrimaryAsset {
        AssetType: "MaterialAssetRef"
        AssetId: "fxmi_trline_distortion_emissive"
      }
    }
  }
}
