Assets {
  Id: 15993348833637153562
  Name: "Matte Metal"
  PlatformAssetType: 13
  SerializationVersion: 118
  CustomMaterialAsset {
    BaseMaterialId: 10184847056121543272
    ParameterOverrides {
      Overrides {
        Name: "specular"
        Float: 0
      }
      Overrides {
        Name: "roughness"
        Float: 1
      }
      Overrides {
        Name: "metallic"
        Float: 0
      }
      Overrides {
        Name: "color"
        Color {
          R: 0.04
          G: 0.04
          B: 0.04
          A: 1
        }
      }
    }
    Assets {
      Id: 10184847056121543272
      Name: "Basic Material"
      PlatformAssetType: 2
      PrimaryAsset {
        AssetType: "MaterialAssetRef"
        AssetId: "mi_basic_pbr_material_001"
      }
    }
  }
}
