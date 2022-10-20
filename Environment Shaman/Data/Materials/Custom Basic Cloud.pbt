Assets {
  Id: 4968214594482896515
  Name: "Custom Basic Cloud"
  PlatformAssetType: 13
  SerializationVersion: 118
  CustomMaterialAsset {
    BaseMaterialId: 4126669356347415822
    ParameterOverrides {
      Overrides {
        Name: "sss thickness"
        Float: 1
      }
      Overrides {
        Name: "smooth noise"
        Float: 61.9712219
      }
      Overrides {
        Name: "noise scale"
        Float: 1
      }
      Overrides {
        Name: "displacement scale"
        Float: 300
      }
      Overrides {
        Name: "displacement max"
        Float: 300
      }
      Overrides {
        Name: "roughness"
        Float: 1
      }
    }
    Assets {
      Id: 4126669356347415822
      Name: "Basic Cloud"
      PlatformAssetType: 2
      PrimaryAsset {
        AssetType: "MaterialAssetRef"
        AssetId: "fxma_generic_cloud_nonadaptive"
      }
    }
  }
}
