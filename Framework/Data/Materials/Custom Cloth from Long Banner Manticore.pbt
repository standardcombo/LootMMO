Assets {
  Id: 13555409310507388924
  Name: "Custom Cloth from Long Banner Manticore"
  PlatformAssetType: 13
  SerializationVersion: 123
  CustomMaterialAsset {
    BaseMaterialId: 8960969514190589221
    ParameterOverrides {
      Overrides {
        Name: "color_secondary"
        Color {
          R: 0.598958313
          A: 1
        }
      }
      Overrides {
        Name: "emissive_boost_color-2"
        Float: 0
      }
      Overrides {
        Name: "color"
        Color {
          R: 0.947916687
          A: 1
        }
      }
    }
    Assets {
      Id: 8960969514190589221
      Name: "Banner (default)"
      PlatformAssetType: 2
      PrimaryAsset {
        AssetType: "MaterialAssetRef"
        AssetId: "mi_banners_001_uv"
      }
    }
  }
}
