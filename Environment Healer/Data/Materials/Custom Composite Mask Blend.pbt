Assets {
  Id: 9775902456316911730
  Name: "Custom Composite Mask Blend"
  PlatformAssetType: 13
  SerializationVersion: 119
  CustomMaterialAsset {
    BaseMaterialId: 14496936826203266768
    ParameterOverrides {
      Overrides {
        Name: "cmp:Material1"
        AssetReference {
          Id: 11864132048273176555
        }
      }
      Overrides {
        Name: "cmp:Material2"
        AssetReference {
          Id: 9571902954734362392
        }
      }
      Overrides {
        Name: "blend_amount"
        Float: 0.255246609
      }
      Overrides {
        Name: "roughness_multiplier_m2"
        Float: 1
      }
      Overrides {
        Name: "roughness_multiplier_m1"
        Float: 1.5
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
      Id: 11864132048273176555
      Name: "Rocks River Bed 01"
      PlatformAssetType: 2
      PrimaryAsset {
        AssetType: "MaterialAssetRef"
        AssetId: "puddle_river_bed_001"
      }
    }
    Assets {
      Id: 9571902954734362392
      Name: "Moss 01"
      PlatformAssetType: 2
      PrimaryAsset {
        AssetType: "MaterialAssetRef"
        AssetId: "mi_moss_001_uv"
      }
    }
  }
}
