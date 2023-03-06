Assets {
  Id: 16768160451417428872
  Name: "Custom Cloth from Short Banner Manticore"
  PlatformAssetType: 13
  SerializationVersion: 125
  CustomMaterialAsset {
    BaseMaterialId: 8960969514190589221
    ParameterOverrides {
      Overrides {
        Name: "color_secondary"
        Color {
          R: 0.144188821
          G: 0.064944
          B: 0.164
          A: 1
        }
      }
      Overrides {
        Name: "color_tertiary"
        Color {
          R: 1
          G: 0.755332589
          B: 0.633
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
          R: 1
          G: 0.755332589
          B: 0.633
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
