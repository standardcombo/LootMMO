Assets {
  Id: 656092136457464680
  Name: "Custom Asphalt 01"
  PlatformAssetType: 13
  SerializationVersion: 118
  CustomMaterialAsset {
    BaseMaterialId: 4848432830553094634
    ParameterOverrides {
      Overrides {
        Name: "material_scale"
        Float: 10
      }
      Overrides {
        Name: "curvature_brightness"
        Float: 1
      }
      Overrides {
        Name: "gradient_color"
        Color {
          R: 2
          G: 2
          B: 2
          A: 1
        }
      }
      Overrides {
        Name: "gradient_falloff"
        Float: 0.579849601
      }
      Overrides {
        Name: "gradient_direction"
        Vector {
          Z: -1
        }
      }
      Overrides {
        Name: "gradient_shift"
        Float: 0
      }
    }
    Assets {
      Id: 4848432830553094634
      Name: "Asphalt 01"
      PlatformAssetType: 2
      PrimaryAsset {
        AssetType: "MaterialAssetRef"
        AssetId: "mi_gen_asphault_001"
      }
    }
  }
}
