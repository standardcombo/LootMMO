Assets {
  Id: 11429609362427302143
  Name: "Custom Base Material from Fantasy Human Guy 1"
  PlatformAssetType: 13
  SerializationVersion: 118
  CustomMaterialAsset {
    BaseMaterialId: 14393302181922871114
    ParameterOverrides {
      Overrides {
        Name: "primary color"
        Color {
          R: 0.47549665
          G: 1
          B: 0.279999971
          A: 1
        }
      }
      Overrides {
        Name: "secondary color"
        Color {
          R: 1.66490042
          G: 3
          B: 1.56
          A: 1
        }
      }
      Overrides {
        Name: "emissive_boost"
        Float: 0
      }
      Overrides {
        Name: "specular"
        Float: 1
      }
      Overrides {
        Name: "fresnel_emissive_boost"
        Float: 0
      }
    }
    Assets {
      Id: 14393302181922871114
      Name: "Guy Body Material"
      PlatformAssetType: 2
      PrimaryAsset {
        AssetType: "MaterialAssetRef"
        AssetId: "npc_guy_basic_head_002_mi_ref"
      }
    }
  }
}
