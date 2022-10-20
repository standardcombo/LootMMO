Assets {
  Id: 16046144744956508255
  Name: "Custom Wood Raw"
  PlatformAssetType: 13
  SerializationVersion: 118
  CustomMaterialAsset {
    BaseMaterialId: 7754470856388882901
    ParameterOverrides {
      Overrides {
        Name: "desaturation_albedo"
        Float: 1
      }
      Overrides {
        Name: "b_invert_metallic"
        Bool: false
      }
      Overrides {
        Name: "gradient_color"
        Color {
          R: 0.208
          G: 0.106516801
          B: 0.059487991
          A: 1
        }
      }
      Overrides {
        Name: "gradient_shift"
        Float: 0.0891833454
      }
      Overrides {
        Name: "gradient_falloff"
        Float: 1
      }
      Overrides {
        Name: "brightness_albedo"
        Float: 1
      }
      Overrides {
        Name: "curvature_roughness"
        Float: 0
      }
      Overrides {
        Name: "curvature_brightness"
        Float: 1
      }
      Overrides {
        Name: "gradient_worldspace"
        Bool: false
      }
      Overrides {
        Name: "u_offset"
        Float: 0
      }
    }
    Assets {
      Id: 7754470856388882901
      Name: "Wood Raw"
      PlatformAssetType: 2
      PrimaryAsset {
        AssetType: "MaterialAssetRef"
        AssetId: "mi_wood_raw_001_uv"
      }
    }
  }
}
