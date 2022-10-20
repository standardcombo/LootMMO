Assets {
  Id: 5796050898176429071
  Name: "Kustom Material Nature Blend 3"
  PlatformAssetType: 13
  SerializationVersion: 118
  CustomMaterialAsset {
    BaseMaterialId: 16485899958035862466
    ParameterOverrides {
      Overrides {
        Name: "cmp:Material1"
        AssetReference {
          Id: 9387801286218820563
        }
      }
      Overrides {
        Name: "cmp:Material2"
        AssetReference {
          Id: 8585823823871753485
        }
      }
      Overrides {
        Name: "cmpc:Material2"
        Color {
          R: 0.843000054
          G: 0.843000054
          B: 0.843000054
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
      Id: 9387801286218820563
      Name: "Forest Floor 01"
      PlatformAssetType: 2
      PrimaryAsset {
        AssetType: "MaterialAssetRef"
        AssetId: "forest-floor_001"
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
