Assets {
  Id: 1953915388599350318
  Name: "Kustom Material Nature Blend 2"
  PlatformAssetType: 13
  SerializationVersion: 118
  CustomMaterialAsset {
    BaseMaterialId: 16485899958035862466
    ParameterOverrides {
      Overrides {
        Name: "cmp:Material1"
        AssetReference {
          Id: 5753650174951431963
        }
      }
      Overrides {
        Name: "cmp:Material2"
        AssetReference {
          Id: 8585823823871753485
        }
      }
      Overrides {
        Name: "blend_amount"
        Float: 0.352589577
      }
      Overrides {
        Name: "cmpc:Material2"
        Color {
          R: 0.891000032
          G: 0.891000032
          B: 0.891000032
          A: 1
        }
      }
      Overrides {
        Name: "rotate_material2"
        Float: 0
      }
      Overrides {
        Name: "material2_scale"
        Float: 1
      }
    }
    Assets {
      Id: 16485899958035862466
      Name: "Composite Mask Blend"
      PlatformAssetType: 2
      PrimaryAsset {
        AssetType: "MaterialAssetRef"
        AssetId: "mi_composite_mask_blend_001_uv"
      }
    }
    Assets {
      Id: 5753650174951431963
      Name: "Grass Basic"
      PlatformAssetType: 2
      PrimaryAsset {
        AssetType: "MaterialAssetRef"
        AssetId: "mi_grass_001_uv"
      }
    }
    Assets {
      Id: 8585823823871753485
      Name: "Grass Clumps"
      PlatformAssetType: 2
      PrimaryAsset {
        AssetType: "MaterialAssetRef"
        AssetId: "mi_grass_002_uv"
      }
    }
  }
}
