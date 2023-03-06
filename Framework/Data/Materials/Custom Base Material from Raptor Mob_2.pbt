Assets {
  Id: 5019062407752867817
  Name: "Raptor Material (Epic)"
  PlatformAssetType: 13
  SerializationVersion: 125
  CustomMaterialAsset {
    BaseMaterialId: 3169661351917430096
    ParameterOverrides {
      Overrides {
        Name: "primary color"
        Color {
          R: 0.673642695
          G: 0.120000005
          B: 1
          A: 1
        }
      }
      Overrides {
        Name: "secondary color"
        Color {
          R: 0.241059601
          B: 0.350000024
          A: 1
        }
      }
      Overrides {
        Name: "fresnel_color"
        Color {
          R: 0.99
          B: 0.924436748
          A: 1
        }
      }
      Overrides {
        Name: "fresnel_sharpness"
        Float: 0.523062348
      }
      Overrides {
        Name: "fresnel_emissive_boost"
        Float: 3.73253679
      }
      Overrides {
        Name: "tertiary color"
        Color {
          R: 0.261324465
          G: 1
          B: 0.220000029
          A: 1
        }
      }
      Overrides {
        Name: "fresnel_power"
        Float: 0.213956982
      }
    }
    Assets {
      Id: 3169661351917430096
      Name: "Raptor Body Material"
      PlatformAssetType: 2
      PrimaryAsset {
        AssetType: "MaterialAssetRef"
        AssetId: "npc_raptor_body_001_mi_ref"
      }
    }
  }
}
