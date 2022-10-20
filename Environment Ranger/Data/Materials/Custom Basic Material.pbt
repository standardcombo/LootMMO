Assets {
  Id: 10120512676309829011
  Name: "Custom Basic Material"
  PlatformAssetType: 13
  SerializationVersion: 118
  CustomMaterialAsset {
    BaseMaterialId: 10184847056121543272
    ParameterOverrides {
      Overrides {
        Name: "color"
        Color {
          A: 1
        }
      }
      Overrides {
        Name: "metallic"
        Float: 0
      }
      Overrides {
        Name: "specular"
        Float: 0
      }
      Overrides {
        Name: "roughness"
        Float: 0
      }
      Overrides {
        Name: "fresnel_emissive_boost"
        Float: 0
      }
      Overrides {
        Name: "fresnel_sharpness"
        Float: 1
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
