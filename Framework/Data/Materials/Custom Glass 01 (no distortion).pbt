Assets {
  Id: 14134805363128394837
  Name: "Custom Glass 01 (no distortion)"
  PlatformAssetType: 13
  SerializationVersion: 120
  CustomMaterialAsset {
    BaseMaterialId: 16845241941935487831
    ParameterOverrides {
      Overrides {
        Name: "color"
        Color {
          R: 0.5
          G: 0.5
          B: 0.5
          A: 0.904000044
        }
      }
      Overrides {
        Name: "opacity"
        Float: 0.35
      }
      Overrides {
        Name: "curvature_roughness"
        Float: 0.5
      }
    }
    Assets {
      Id: 16845241941935487831
      Name: "Glass 01 (no distortion)"
      PlatformAssetType: 2
      PrimaryAsset {
        AssetType: "MaterialAssetRef"
        AssetId: "mi_basic_glass_001"
      }
    }
  }
}
