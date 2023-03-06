Assets {
  Id: 9523331630649202490
  Name: "Dragon Material (Epic)"
  PlatformAssetType: 13
  SerializationVersion: 125
  CustomMaterialAsset {
    BaseMaterialId: 8082551051744776500
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
          R: 0.261324465
          G: 1
          B: 0.220000029
          A: 1
        }
      }
      Overrides {
        Name: "tertiary color"
        Color {
          R: 0.241059601
          B: 0.350000024
          A: 1
        }
      }
      Overrides {
        Name: "specular"
        Float: 0.3
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
        Name: "fresnel_power"
        Float: 0.213956982
      }
      Overrides {
        Name: "fresnel_sharpness"
        Float: 0.523062348
      }
      Overrides {
        Name: "fresnel_emissive_boost"
        Float: 3.73253679
      }
    }
    Assets {
      Id: 8082551051744776500
      Name: "Whelp Body Material"
      PlatformAssetType: 2
      PrimaryAsset {
        AssetType: "MaterialAssetRef"
        AssetId: "npc_dragon_body_001_mi_ref"
      }
    }
  }
}
