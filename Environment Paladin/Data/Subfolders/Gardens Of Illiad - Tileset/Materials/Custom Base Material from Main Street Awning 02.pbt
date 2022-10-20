Assets {
  Id: 12317808825635762353
  Name: "Custom Base Material from Main Street Awning 02"
  PlatformAssetType: 13
  SerializationVersion: 118
  CustomMaterialAsset {
    BaseMaterialId: 15600793114373802361
    ParameterOverrides {
      Overrides {
        Name: "color"
        Color {
          R: 0.107091665
          G: 0.181000009
          B: 0.0923100039
          A: 1
        }
      }
      Overrides {
        Name: "roughness_multiplier"
        Float: 1
      }
      Overrides {
        Name: "gradient_worldspace"
        Bool: false
      }
      Overrides {
        Name: "gradient_shift"
        Float: 0.175486639
      }
      Overrides {
        Name: "wind_intensity"
        Float: 35
      }
      Overrides {
        Name: "wind_speed"
        Float: 0.5
      }
      Overrides {
        Name: "gradient_falloff"
        Float: 0.706795394
      }
      Overrides {
        Name: "rotate_material"
        Float: 0
      }
      Overrides {
        Name: "gradient_color"
        Color {
          G: 0.205297232
          B: 1
          A: 1
        }
      }
    }
    Assets {
      Id: 15600793114373802361
      Name: "Awning"
      PlatformAssetType: 2
      PrimaryAsset {
        AssetType: "MaterialAssetRef"
        AssetId: "mi_awning_002_uv_ref"
      }
    }
  }
}
