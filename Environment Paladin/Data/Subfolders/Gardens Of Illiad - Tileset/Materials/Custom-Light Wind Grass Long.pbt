Assets {
  Id: 13512169741063228662
  Name: "Custom-Light Wind Grass Long"
  PlatformAssetType: 13
  SerializationVersion: 118
  CustomMaterialAsset {
    BaseMaterialId: 6786320184079655535
    ParameterOverrides {
      Overrides {
        Name: "wind_weight"
        Float: 0.2
      }
      Overrides {
        Name: "dist_rotation"
        Float: 0.5
      }
      Overrides {
        Name: "dist_radius"
        Float: 0.643
      }
      Overrides {
        Name: "SSS"
        Color {
          G: 0.0599999428
          B: 0.03496686
          A: 1
        }
      }
      Overrides {
        Name: "color"
        Color {
          G: 0.0800000429
          B: 0.0370861068
          A: 1
        }
      }
      Overrides {
        Name: "color_roots"
        Color {
          G: 0.0399999619
          B: 0.0201324373
          A: 1
        }
      }
    }
    Assets {
      Id: 6786320184079655535
      Name: "Grass (default)"
      PlatformAssetType: 2
      PrimaryAsset {
        AssetType: "MaterialAssetRef"
        AssetId: "mi_grass_dynamic_001_uv"
      }
    }
  }
}
