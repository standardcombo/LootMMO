Assets {
  Id: 494272504214527441
  Name: "Custom Emissive Container Liquid"
  PlatformAssetType: 13
  SerializationVersion: 124
  CustomMaterialAsset {
    BaseMaterialId: 6414569565439168134
    ParameterOverrides {
      Overrides {
        Name: "wave height"
        Float: 9.03628254
      }
      Overrides {
        Name: "foam thickness"
        Float: 20
      }
      Overrides {
        Name: "surface foam"
        Float: 0
      }
      Overrides {
        Name: "speed"
        Float: 5
      }
      Overrides {
        Name: "bubbles"
        Float: 0
      }
      Overrides {
        Name: "bubble direction"
        Vector {
          Z: -1
        }
      }
      Overrides {
        Name: "wave scale multiplier"
        Float: 0.45
      }
      Overrides {
        Name: "edge power"
        Float: 1.5
      }
    }
    Assets {
      Id: 6414569565439168134
      Name: "Emissive Container Liquid"
      PlatformAssetType: 2
      PrimaryAsset {
        AssetType: "MaterialAssetRef"
        AssetId: "fxmi_emissive_cutoff_liquid"
      }
    }
  }
}
