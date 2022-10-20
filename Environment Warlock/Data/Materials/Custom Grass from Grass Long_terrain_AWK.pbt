Assets {
  Id: 3120293655181933284
  Name: "Custom Grass from Grass Long_terrain_AWK"
  PlatformAssetType: 13
  SerializationVersion: 118
  CustomMaterialAsset {
    BaseMaterialId: 1563348608840874008
    ParameterOverrides {
      Overrides {
        Name: "dist_radius"
        Float: 1
      }
      Overrides {
        Name: "dist_rotation"
        Float: 0.1
      }
      Overrides {
        Name: "color"
        Color {
          R: 0.323
          G: 0.243154407
          B: 0.0235789865
          A: 1
        }
      }
      Overrides {
        Name: "color_roots"
        Color {
          R: 0.135
          G: 0.13335751
          B: 0.03645
          A: 1
        }
      }
      Overrides {
        Name: "color_variation_primary"
        Color {
          R: 0.0961687341
          G: 0.213000014
          B: 0.0609179959
          A: 1
        }
      }
      Overrides {
        Name: "color_variation_secondary"
        Color {
          R: 0.120973267
          G: 0.312
          B: 0.0633359849
          A: 1
        }
      }
    }
    Assets {
      Id: 1563348608840874008
      Name: "Grass (default)"
      PlatformAssetType: 2
      PrimaryAsset {
        AssetType: "MaterialAssetRef"
        AssetId: "mi_grass_dynamic_001_uv"
      }
    }
  }
}
