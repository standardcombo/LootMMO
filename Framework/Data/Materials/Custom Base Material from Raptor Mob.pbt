Assets {
  Id: 14613388703599485266
  Name: "Raptor Material (Legendary)"
  PlatformAssetType: 13
  SerializationVersion: 119
  CustomMaterialAsset {
    BaseMaterialId: 15250497644409609103
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
          R: 0.51
          A: 1
        }
      }
      Overrides {
        Name: "tertiary color"
        Color {
          R: 0.24000001
          G: 0.788609
          B: 1
          A: 1
        }
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
        Name: "fresnel_emissive_boost"
        Float: 1
      }
      Overrides {
        Name: "fresnel_power"
        Float: 1
      }
      Overrides {
        Name: "fresnel_sharpness"
        Float: 0.40263167
      }
    }
    Assets {
      Id: 15250497644409609103
      Name: "Raptor Body Material"
      PlatformAssetType: 2
      PrimaryAsset {
        AssetType: "MaterialAssetRef"
        AssetId: "npc_raptor_body_001_mi_ref"
      }
    }
  }
}
