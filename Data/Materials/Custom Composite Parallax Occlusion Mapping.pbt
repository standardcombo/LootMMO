Assets {
  Id: 10386283110713640090
  Name: "Custom Composite Parallax Occlusion Mapping"
  PlatformAssetType: 13
  SerializationVersion: 118
  CustomMaterialAsset {
    BaseMaterialId: 12109271015351684801
    ParameterOverrides {
      Overrides {
        Name: "curvature_brightness"
        Float: 1
      }
      Overrides {
        Name: "height_ratio"
        Float: 0.02
      }
      Overrides {
        Name: "min_steps"
        Float: 4
      }
      Overrides {
        Name: "max_steps"
        Float: 8
      }
      Overrides {
        Name: "b_invert_metallic"
        Bool: false
      }
      Overrides {
        Name: "desaturation_albedo"
        Float: 1
      }
      Overrides {
        Name: "brightness_albedo"
        Float: 1
      }
    }
    Assets {
      Id: 12109271015351684801
      Name: "Composite Parallax Occlusion Mapping"
      PlatformAssetType: 2
      PrimaryAsset {
        AssetType: "MaterialAssetRef"
        AssetId: "mi_pom_single_composite_basic_001_uv_ref"
      }
    }
  }
}
