Assets {
  Id: 10044473527013964890
  Name: "MP_roof_Composite"
  PlatformAssetType: 13
  SerializationVersion: 118
  CustomMaterialAsset {
    BaseMaterialId: 14496936826203266768
    ParameterOverrides {
      Overrides {
        Name: "cmp:Material2"
        AssetReference {
          Id: 1074325996530918974
        }
      }
      Overrides {
        Name: "cmpc:Material2"
        Color {
          R: 0.494791657
          G: 0.493744284
          B: 0.166828528
          A: 1
        }
      }
      Overrides {
        Name: "rotate_material2"
        Float: 90
      }
      Overrides {
        Name: "v_tiles2"
        Float: 1.2
      }
      Overrides {
        Name: "u_tiles2"
        Float: 0.5
      }
      Overrides {
        Name: "cmp:Material1"
        AssetReference {
          Id: 13707562474042671468
        }
      }
      Overrides {
        Name: "cmpc:Material1"
        Color {
          R: 0.880208313
          G: 0.258136541
          B: 0.155870155
          A: 1
        }
      }
      Overrides {
        Name: "gradient_worldspace"
        Bool: true
      }
      Overrides {
        Name: "gradient_shift"
        Float: 0
      }
      Overrides {
        Name: "gradient_falloff"
        Float: 0.434339613
      }
      Overrides {
        Name: "blend_amount"
        Float: 0.273883283
      }
      Overrides {
        Name: "invert_height"
        Bool: true
      }
      Overrides {
        Name: "mask_scale"
        Float: 0.5
      }
      Overrides {
        Name: "rotate_material"
        Float: 90
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
      Id: 1074325996530918974
      Name: "Hay 02"
      PlatformAssetType: 2
      PrimaryAsset {
        AssetType: "MaterialAssetRef"
        AssetId: "mi_fan_hay_002_uv"
      }
    }
    Assets {
      Id: 13707562474042671468
      Name: "Roof Square Shingles 01"
      PlatformAssetType: 2
      PrimaryAsset {
        AssetType: "MaterialAssetRef"
        AssetId: "mi_roof_square_shingles_001_uv"
      }
    }
  }
}
