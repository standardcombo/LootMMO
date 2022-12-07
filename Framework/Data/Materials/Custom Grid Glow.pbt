Assets {
  Id: 16964231697785591697
  Name: "Custom Grid Glow"
  PlatformAssetType: 13
  SerializationVersion: 121
  CustomMaterialAsset {
    BaseMaterialId: 9578978721665608895
    ParameterOverrides {
      Overrides {
        Name: "roughness_multiplier"
        Float: 10
      }
      Overrides {
        Name: "roughness"
        Float: 2
      }
      Overrides {
        Name: "color_accent"
        Color {
          R: 0.269000024
          G: 0.269000024
          B: 0.269000024
          A: 1
        }
      }
      Overrides {
        Name: "color"
        Color {
          R: 0.0150000006
          G: 0.0150000006
          B: 0.0150000006
          A: 1
        }
      }
      Overrides {
        Name: "metallic"
        Float: 0
      }
      Overrides {
        Name: "color_lights"
        Color {
          R: 0.248000011
          G: 0.248000011
          B: 0.248000011
          A: 1
        }
      }
      Overrides {
        Name: "emissive_boost"
        Float: 0
      }
    }
    Assets {
      Id: 9578978721665608895
      Name: "Grid Basic"
      PlatformAssetType: 2
      PrimaryAsset {
        AssetType: "MaterialAssetRef"
        AssetId: "grid_blue_001"
      }
    }
  }
}
