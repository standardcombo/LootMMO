Assets {
  Id: 7269114581625013663
  Name: "Cemetery Granite 01"
  PlatformAssetType: 13
  SerializationVersion: 118
  CustomMaterialAsset {
    BaseMaterialId: 20869844249961710
    ParameterOverrides {
      Overrides {
        Name: "material_scale"
        Float: 3
      }
      Overrides {
        Name: "roughness_multiplier"
        Float: 0.8
      }
      Overrides {
        Name: "gradient_color"
        Color {
          R: 0.439983
          G: 0.589000046
          B: 0.489655435
          A: 1
        }
      }
      Overrides {
        Name: "gradient_shift"
        Float: 0.212389335
      }
      Overrides {
        Name: "gradient_worldspace"
        Bool: true
      }
      Overrides {
        Name: "gradient_falloff"
        Float: 0.5
      }
    }
    Assets {
      Id: 20869844249961710
      Name: "Granite 01"
      PlatformAssetType: 2
      PrimaryAsset {
        AssetType: "MaterialAssetRef"
        AssetId: "mi_rock_granite_001_uv_ref"
      }
    }
  }
}
