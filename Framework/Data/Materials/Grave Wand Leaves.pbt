Assets {
  Id: 12014003355559678959
  Name: "Grave Wand Leaves"
  PlatformAssetType: 13
  SerializationVersion: 121
  CustomMaterialAsset {
    BaseMaterialId: 8180797745802022317
    ParameterOverrides {
      Overrides {
        Name: "wind_weight"
        Float: 0.1
      }
      Overrides {
        Name: "wind_intensity"
        Float: 0.2
      }
      Overrides {
        Name: "wind_speed"
        Float: 0.1
      }
    }
    Assets {
      Id: 8180797745802022317
      Name: "Birch Branch (default)"
      PlatformAssetType: 2
      PrimaryAsset {
        AssetType: "MaterialAssetRef"
        AssetId: "mi_foliage_leaves_001_uv"
      }
    }
  }
}
