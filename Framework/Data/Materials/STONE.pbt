Assets {
  Id: 12946987782778893177
  Name: "STONE"
  PlatformAssetType: 13
  SerializationVersion: 120
  CustomMaterialAsset {
    BaseMaterialId: 14496936826203266768
    ParameterOverrides {
      Overrides {
        Name: "cmp:Material1"
        AssetReference {
          Id: 1213324101088113781
        }
      }
      Overrides {
        Name: "brightness_albedo"
        Float: 3.55599093
      }
      Overrides {
        Name: "desaturation_albedo"
        Float: 0.501727462
      }
      Overrides {
        Name: "v_tiles"
        Float: 3.73632383
      }
      Overrides {
        Name: "u_tiles"
        Float: 9.28091335
      }
      Overrides {
        Name: "roughness_multiplier"
        Float: 0.458830476
      }
      Overrides {
        Name: "b_invert_metallic"
        Bool: false
      }
      Overrides {
        Name: "curvature_brightness"
        Float: 0.24846831
      }
      Overrides {
        Name: "curvature_roughness"
        Float: 0.149972335
      }
      Overrides {
        Name: "cmp:Material2"
        AssetReference {
          Id: 12354242434331605292
        }
      }
      Overrides {
        Name: "invert_height"
        Bool: false
      }
      Overrides {
        Name: "blend_amount"
        Float: 0.295821488
      }
      Overrides {
        Name: "roughness_multiplier_m1"
        Float: 0.810585558
      }
      Overrides {
        Name: "cmpc:Material1"
        Color {
          R: 0.60800004
          G: 0.60800004
          B: 0.60800004
          A: 1
        }
      }
      Overrides {
        Name: "cmpc:Material2"
        Color {
          R: 0.126665622
          G: 0.141
          B: 0.122811005
          A: 1
        }
      }
      Overrides {
        Name: "desaturation_albedo_m2"
        Float: 1
      }
      Overrides {
        Name: "brightness_albedo_m2"
        Float: 3.55598879
      }
      Overrides {
        Name: "roughness_multiplier_m2"
        Float: 0.690474093
      }
      Overrides {
        Name: "b_invert_metallic_m1"
        Bool: false
      }
      Overrides {
        Name: "brightness_albedo_m1"
        Float: 1
      }
      Overrides {
        Name: "desaturation_albedo_m1"
        Float: 0.450251073
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
      Id: 1213324101088113781
      Name: "Stone Basic"
      PlatformAssetType: 2
      PrimaryAsset {
        AssetType: "MaterialAssetRef"
        AssetId: "stone_001"
      }
    }
    Assets {
      Id: 12354242434331605292
      Name: "Stone Foundation 01"
      PlatformAssetType: 2
      PrimaryAsset {
        AssetType: "MaterialAssetRef"
        AssetId: "mi_stone_foundation_001_uv_ref"
      }
    }
  }
}
