Assets {
  Id: 12490803274073903427
  Name: "Stone Floor_sand"
  PlatformAssetType: 13
  SerializationVersion: 120
  CustomMaterialAsset {
    BaseMaterialId: 14496936826203266768
    ParameterOverrides {
      Overrides {
        Name: "cmp:Material1"
        AssetReference {
          Id: 15281399694292404596
        }
      }
      Overrides {
        Name: "cmp:Material2"
        AssetReference {
          Id: 12293427156744400159
        }
      }
      Overrides {
        Name: "material1_scale"
        Float: 3
      }
      Overrides {
        Name: "invert_height"
        Bool: true
      }
      Overrides {
        Name: "blend_amount"
        Float: 0.840368807
      }
      Overrides {
        Name: "cmpc:Material2"
        Color {
          R: 0.765625
          G: 0.765625
          B: 0.765625
          A: 1
        }
      }
      Overrides {
        Name: "cmpc:Material1"
        Color {
          R: 0.8125
          G: 0.8125
          B: 0.8125
          A: 1
        }
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
      Id: 15281399694292404596
      Name: "Sand 01"
      PlatformAssetType: 2
      PrimaryAsset {
        AssetType: "MaterialAssetRef"
        AssetId: "mi_sand_001_uv"
      }
    }
    Assets {
      Id: 12293427156744400159
      Name: "Bricks Rough Stone Floor 01"
      PlatformAssetType: 2
      PrimaryAsset {
        AssetType: "MaterialAssetRef"
        AssetId: "mi_brick_stone_floor_rough_001"
      }
    }
  }
}
