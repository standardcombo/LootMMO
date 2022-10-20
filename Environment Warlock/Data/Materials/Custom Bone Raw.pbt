Assets {
  Id: 4596466045819808091
  Name: "Custom Bone Raw"
  PlatformAssetType: 13
  SerializationVersion: 118
  CustomMaterialAsset {
    BaseMaterialId: 1990455693608981934
    ParameterOverrides {
      Overrides {
        Name: "desaturation_albedo"
        Float: 1
      }
      Overrides {
        Name: "color_ao"
        Color {
          R: 0.025
          G: 0.015242
          B: 0.003689
          A: 1
        }
      }
      Overrides {
        Name: "curvature_roughness"
        Float: 0.687084913
      }
      Overrides {
        Name: "curvature_brightness"
        Float: 0
      }
      Overrides {
        Name: "b_invert_metallic"
        Bool: false
      }
      Overrides {
        Name: "gradient_color"
        Color {
          R: 1
          G: 1
          B: 1
          A: 1
        }
      }
      Overrides {
        Name: "gradient_worldspace"
        Bool: false
      }
    }
    Assets {
      Id: 1990455693608981934
      Name: "Bone Raw"
      PlatformAssetType: 2
      PrimaryAsset {
        AssetType: "MaterialAssetRef"
        AssetId: "mi_bone_raw_001_uv_ref"
      }
    }
  }
}
