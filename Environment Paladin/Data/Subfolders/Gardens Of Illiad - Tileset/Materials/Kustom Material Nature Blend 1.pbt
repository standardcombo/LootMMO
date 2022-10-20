Assets {
  Id: 1805794317177611173
  Name: "Kustom Material Nature Blend 1"
  PlatformAssetType: 13
  SerializationVersion: 118
  CustomMaterialAsset {
    BaseMaterialId: 16485899958035862466
    ParameterOverrides {
      Overrides {
        Name: "cmp:Material1"
        AssetReference {
          Id: 9569711623119264080
        }
      }
      Overrides {
        Name: "cmp:Material2"
        AssetReference {
          Id: 9387801286218820563
        }
      }
      Overrides {
        Name: "invert_height"
        Bool: true
      }
      Overrides {
        Name: "cmpc:Material2"
        Color {
          R: 0.569455922
          G: 0.927000046
          B: 0.362456948
          A: 1
        }
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
      Id: 9569711623119264080
      Name: "Forest Floor 02"
      PlatformAssetType: 2
      PrimaryAsset {
        AssetType: "MaterialAssetRef"
        AssetId: "forest-floor_002"
      }
    }
    Assets {
      Id: 9387801286218820563
      Name: "Forest Floor 01"
      PlatformAssetType: 2
      PrimaryAsset {
        AssetType: "MaterialAssetRef"
        AssetId: "forest-floor_001"
      }
    }
  }
}
