Assets {
  Id: 17885961249823315681
  Name: "Custom Composite Triplanar Blend"
  PlatformAssetType: 13
  SerializationVersion: 118
  CustomMaterialAsset {
    BaseMaterialId: 15106124946997644542
    ParameterOverrides {
      Overrides {
        Name: "cmp:Sides"
        AssetReference {
          Id: 14672413409033496457
        }
      }
      Overrides {
        Name: "cmp:Top"
        AssetReference {
          Id: 10923474690862482182
        }
      }
    }
    Assets {
      Id: 15106124946997644542
      Name: "Composite Triplanar Blend"
      PlatformAssetType: 2
      PrimaryAsset {
        AssetType: "MaterialAssetRef"
        AssetId: "mi_composite_triplanar_wa"
      }
    }
    Assets {
      Id: 14672413409033496457
      Name: "Cliff 02"
      PlatformAssetType: 2
      PrimaryAsset {
        AssetType: "MaterialAssetRef"
        AssetId: "cliff_002"
      }
    }
    Assets {
      Id: 10923474690862482182
      Name: "Sand 01"
      PlatformAssetType: 2
      PrimaryAsset {
        AssetType: "MaterialAssetRef"
        AssetId: "mi_sand_001_uv"
      }
    }
  }
}
