Assets {
  Id: 15053574073305526264
  Name: "Custom Base Material from Whelp Mob"
  PlatformAssetType: 13
  SerializationVersion: 125
  CustomMaterialAsset {
    BaseMaterialId: 8082551051744776500
    ParameterOverrides {
      Overrides {
        Name: "secondary color"
        Color {
          R: 1
          G: 0.540728509
          B: 0.0500000119
          A: 1
        }
      }
      Overrides {
        Name: "fresnel_color"
        Color {
          R: 0.97
          G: 0.655231833
          A: 1
        }
      }
      Overrides {
        Name: "fresnel_power"
        Float: 0.402594864
      }
      Overrides {
        Name: "specular"
        Float: 0.261825293
      }
      Overrides {
        Name: "fresnel_sharpness"
        Float: 0.8
      }
      Overrides {
        Name: "fresnel_emissive_boost"
        Float: 31.6779881
      }
      Overrides {
        Name: "tertiary color"
        Color {
          R: 1
          G: 0.540728509
          B: 0.0500000119
          A: 1
        }
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
