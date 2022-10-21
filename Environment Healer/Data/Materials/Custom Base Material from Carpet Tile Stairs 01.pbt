Assets {
  Id: 12370800804709706898
  Name: "Custom Base Material from Carpet Tile Stairs 01"
  PlatformAssetType: 13
  SerializationVersion: 119
  CustomMaterialAsset {
    BaseMaterialId: 4007710442181875633
    ParameterOverrides {
      Overrides {
        Name: "color"
        Color {
          R: 0.317960978
          G: 0.34872064
          B: 0.441
          A: 1
        }
      }
      Overrides {
        Name: "color_secondary"
        Color {
          R: 0.317960978
          G: 0.34872064
          B: 0.441
          A: 1
        }
      }
      Overrides {
        Name: "b_invert_metallic"
        Bool: true
      }
      Overrides {
        Name: "roughness_multiplier"
        Float: 1
      }
      Overrides {
        Name: "u_offset"
        Float: 0
      }
    }
    Assets {
      Id: 4007710442181875633
      Name: "Carpet 01"
      PlatformAssetType: 2
      PrimaryAsset {
        AssetType: "MaterialAssetRef"
        AssetId: "mi_carpets_001_uv"
      }
    }
  }
}
