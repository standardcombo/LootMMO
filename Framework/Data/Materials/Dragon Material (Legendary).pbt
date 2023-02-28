Assets {
  Id: 2965201484768663535
  Name: "Dragon Material (Legendary)"
  PlatformAssetType: 13
  SerializationVersion: 125
  CustomMaterialAsset {
    BaseMaterialId: 8082551051744776500
    ParameterOverrides {
      Overrides {
        Name: "primary color"
        Color {
          R: 0.98
          G: 0.311523199
          A: 1
        }
      }
      Overrides {
        Name: "secondary color"
        Color {
          R: 0.24000001
          G: 0.788609
          B: 1
          A: 1
        }
      }
      Overrides {
        Name: "tertiary color"
        Color {
          R: 0.51
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
          R: 0.940000057
          G: 0.597615957
          A: 1
        }
      }
      Overrides {
        Name: "fresnel_power"
        Float: 1
      }
      Overrides {
        Name: "fresnel_sharpness"
        Float: 0.40263167
      }
      Overrides {
        Name: "fresnel_emissive_boost"
        Float: 1
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
