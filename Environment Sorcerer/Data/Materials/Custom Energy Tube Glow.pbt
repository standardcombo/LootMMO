Assets {
  Id: 2563783282720770136
  Name: "Custom Energy Tube Glow"
  PlatformAssetType: 13
  SerializationVersion: 118
  CustomMaterialAsset {
    BaseMaterialId: 2506956793400130868
    ParameterOverrides {
      Overrides {
        Name: "glow intensity"
        Float: 1
      }
      Overrides {
        Name: "pulse speed"
        Float: 0.15753977
      }
      Overrides {
        Name: "noise speed"
        Vector {
          Z: 30
        }
      }
      Overrides {
        Name: "noise amount"
        Float: 1
      }
    }
    Assets {
      Id: 2506956793400130868
      Name: "Energy Tube Glow"
      PlatformAssetType: 2
      PrimaryAsset {
        AssetType: "MaterialAssetRef"
        AssetId: "Energy_Tube_Glow"
      }
    }
  }
}
