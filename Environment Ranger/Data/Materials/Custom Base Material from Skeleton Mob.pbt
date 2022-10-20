Assets {
  Id: 9030509924215157151
  Name: "Custom Base Material from Skeleton Mob"
  PlatformAssetType: 13
  SerializationVersion: 118
  CustomMaterialAsset {
    BaseMaterialId: 1274111350102996015
    ParameterOverrides {
      Overrides {
        Name: "glow color"
        Color {
          R: 1
          B: 0.973509312
          A: 1
        }
      }
      Overrides {
        Name: "emissive_boost"
        Float: 50
      }
      Overrides {
        Name: "fresnel_emissive_boost"
        Float: 0
      }
      Overrides {
        Name: "specular"
        Float: 1
      }
      Overrides {
        Name: "fresnel_power"
        Float: 0
      }
      Overrides {
        Name: "fresnel_sharpness"
        Float: 1
      }
    }
    Assets {
      Id: 1274111350102996015
      Name: "Skeleton Material"
      PlatformAssetType: 2
      PrimaryAsset {
        AssetType: "MaterialAssetRef"
        AssetId: "skeletonBody"
      }
    }
  }
}
