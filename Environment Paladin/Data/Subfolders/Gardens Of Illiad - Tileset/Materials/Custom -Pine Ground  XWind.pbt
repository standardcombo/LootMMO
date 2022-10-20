Assets {
  Id: 11245568793843898093
  Name: "Custom -Pine Ground  XWind"
  PlatformAssetType: 13
  SerializationVersion: 118
  CustomMaterialAsset {
    BaseMaterialId: 10429772325125277138
    ParameterOverrides {
      Overrides {
        Name: "wind_weight"
        Float: 0.02
      }
      Overrides {
        Name: "wind_intensity"
        Float: 0.2
      }
      Overrides {
        Name: "wind_speed"
        Float: 0.1
      }
    }
    Assets {
      Id: 10429772325125277138
      Name: "Redwood Branch (default)"
      PlatformAssetType: 2
      PrimaryAsset {
        AssetType: "MaterialAssetRef"
        AssetId: "mi_foliage_redwood_001_uv"
      }
    }
  }
}
