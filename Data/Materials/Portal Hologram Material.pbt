Assets {
  Id: 14828601614524287400
  Name: "Portal Hologram Material"
  PlatformAssetType: 13
  SerializationVersion: 118
  CustomMaterialAsset {
    BaseMaterialId: 5526862240614970452
    ParameterOverrides {
      Overrides {
        Name: "flicker intensity"
        Float: 5
      }
      Overrides {
        Name: "fresnel power"
        Float: 3.5
      }
    }
    Assets {
      Id: 5526862240614970452
      Name: "Basic Hologram"
      PlatformAssetType: 2
      PrimaryAsset {
        AssetType: "MaterialAssetRef"
        AssetId: "fxmi_basic_hologram"
      }
    }
  }
}
