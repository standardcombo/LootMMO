Assets {
  Id: 14126596837228232231
  Name: "Dragon Material (Rare)"
  PlatformAssetType: 13
  SerializationVersion: 125
  CustomMaterialAsset {
    BaseMaterialId: 8082551051744776500
    ParameterOverrides {
      Overrides {
        Name: "primary color"
        Color {
          G: 0.179549962
          B: 0.513
          A: 1
        }
      }
      Overrides {
        Name: "secondary color"
        Color {
          R: 1
          G: 0.87324512
          B: 0.13
          A: 1
        }
      }
      Overrides {
        Name: "tertiary color"
        Color {
          G: 0.0378806926
          B: 0.26
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
          G: 0.643499851
          B: 0.99
          A: 1
        }
      }
      Overrides {
        Name: "fresnel_power"
        Float: 0.337914497
      }
      Overrides {
        Name: "fresnel_emissive_boost"
        Float: 3
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
