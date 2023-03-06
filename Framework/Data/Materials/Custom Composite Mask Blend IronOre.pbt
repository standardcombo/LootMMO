Assets {
  Id: 12478815513514975796
  Name: "Custom Composite Mask Blend IronOre"
  PlatformAssetType: 13
  SerializationVersion: 125
  CustomMaterialAsset {
    BaseMaterialId: 14496936826203266768
    ParameterOverrides {
      Overrides {
        Name: "cmp:Material1"
        AssetReference {
          Id: 17118136979191323600
        }
      }
      Overrides {
        Name: "cmp:Material2"
        AssetReference {
          Id: 998074920267973145
        }
      }
      Overrides {
        Name: "cmpc:Material2"
        Color {
          R: 0.62
          A: 1
        }
      }
      Overrides {
        Name: "u_tiles2"
        Float: 8
      }
      Overrides {
        Name: "u_tiles"
        Float: 3
      }
      Overrides {
        Name: "rotate_material2"
        Float: 0
      }
      Overrides {
        Name: "blend_amount"
        Float: 0.75
      }
      Overrides {
        Name: "invert_height"
        Bool: true
      }
      Overrides {
        Name: "mask_scale"
        Float: 0.25
      }
      Overrides {
        Name: "gradient_color"
        Color {
          R: 0.2
          A: 1
        }
      }
      Overrides {
        Name: "gradient_worldspace"
        Bool: true
      }
      Overrides {
        Name: "b_invert_metallic_m2"
        Bool: false
      }
      Overrides {
        Name: "b_invert_metallic_m1"
        Bool: false
      }
      Overrides {
        Name: "roughness_multiplier_m1"
        Float: 1
      }
      Overrides {
        Name: "desaturation_albedo_m1"
        Float: 0
      }
      Overrides {
        Name: "material1_scale"
        Float: 1
      }
      Overrides {
        Name: "u_offset"
        Float: 0
      }
      Overrides {
        Name: "v_tiles2"
        Float: 4
      }
      Overrides {
        Name: "u_offset2"
        Float: 0
      }
      Overrides {
        Name: "material2_scale"
        Float: 0.5
      }
      Overrides {
        Name: "gradient_shift"
        Float: 0.5
      }
      Overrides {
        Name: "gradient_falloff"
        Float: 0.5
      }
    }
    Assets {
      Id: 14496936826203266768
      Name: "Composite Mask Blend"
      PlatformAssetType: 2
      PrimaryAsset {
        AssetType: "MaterialAssetRef"
        AssetId: "mi_composite_mask_blend_001_uv"
      }
    }
    Assets {
      Id: 17118136979191323600
      Name: "Metal Iron 01"
      PlatformAssetType: 2
      PrimaryAsset {
        AssetType: "MaterialAssetRef"
        AssetId: "mi_metal_iron_001"
      }
    }
    Assets {
      Id: 998074920267973145
      Name: "Cliff 01"
      PlatformAssetType: 2
      PrimaryAsset {
        AssetType: "MaterialAssetRef"
        AssetId: "mi_cliff_001_uv"
      }
    }
  }
}
