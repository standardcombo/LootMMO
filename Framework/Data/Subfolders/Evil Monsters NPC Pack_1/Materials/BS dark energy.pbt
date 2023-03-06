Assets {
  Id: 5595281316289087827
  Name: "BS dark energy"
  PlatformAssetType: 13
  SerializationVersion: 125
  CustomMaterialAsset {
    BaseMaterialId: 8678051747435424214
    ParameterOverrides {
      Overrides {
        Name: "color"
        Color {
          A: 1
        }
      }
      Overrides {
        Name: "metallic"
        Float: 1
      }
      Overrides {
        Name: "roughness"
        Float: 0
      }
      Overrides {
        Name: "fresnel_color"
        Color {
          G: 0.940000057
          B: 0.118278131
          A: 1
        }
      }
      Overrides {
        Name: "fresnel_emissive_boost"
        Float: 25.4705486
      }
      Overrides {
        Name: "fresnel_sharpness"
        Float: 0.149669409
      }
      Overrides {
        Name: "faceted"
        Bool: false
      }
    }
    Assets {
      Id: 8678051747435424214
      Name: "Advanced Material"
      PlatformAssetType: 2
      PrimaryAsset {
        AssetType: "MaterialAssetRef"
        AssetId: "universal_material_001"
      }
    }
  }
}
