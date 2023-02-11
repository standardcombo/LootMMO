Assets {
  Id: 14937973355870707994
  Name: "Material_Forsaken Wood Plank_LootMMO"
  PlatformAssetType: 13
  SerializationVersion: 123
  CustomMaterialAsset {
    BaseMaterialId: 7754470856388882901
    ParameterOverrides {
      Overrides {
        Name: "roughness_multiplier"
        Float: 1
      }
      Overrides {
        Name: "brightness_albedo"
        Float: 1
      }
      Overrides {
        Name: "desaturation_albedo"
        Float: 0.331786692
      }
      Overrides {
        Name: "b_invert_metallic"
        Bool: false
      }
      Overrides {
        Name: "color"
        Color {
          R: 0.577
          G: 0.577
          B: 0.577
          A: 1
        }
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
