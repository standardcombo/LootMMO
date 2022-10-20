Assets {
  Id: 12637397553105789256
  Name: "Water"
  PlatformAssetType: 13
  SerializationVersion: 118
  CustomMaterialAsset {
    BaseMaterialId: 11366038998560429186
    ParameterOverrides {
      Overrides {
        Name: "shallow color"
        Color {
          G: 0.05
          B: 0.04
          A: 1
        }
      }
      Overrides {
        Name: "deep color"
        Color {
          R: 0.0215604939
          G: 0.0625
          B: 0.0123699978
          A: 1
        }
      }
      Overrides {
        Name: "u_tiles"
        Float: 1
      }
      Overrides {
        Name: "material_scale"
        Float: 0.246443182
      }
      Overrides {
        Name: "flow direction"
        Vector {
          X: 0.0690053105
          Y: 1
          Z: 0.2
        }
      }
      Overrides {
        Name: "wind direction"
        Vector {
          X: -0.864265919
          Z: 0.2
        }
      }
      Overrides {
        Name: "speed"
        Float: 0.0146617889
      }
      Overrides {
        Name: "wind speed"
        Float: 0.656332552
      }
      Overrides {
        Name: "opacity"
        Float: 0.850946724
      }
      Overrides {
        Name: "opacity distance"
        Float: 219.191544
      }
      Overrides {
        Name: "edge foam brightness"
        Float: 0.575726628
      }
      Overrides {
        Name: "foam shape"
        Float: 2.70841503
      }
      Overrides {
        Name: "foam tightness"
        Float: 3.88343072
      }
    }
    Assets {
      Id: 11366038998560429186
      Name: "Generic Water"
      PlatformAssetType: 2
      PrimaryAsset {
        AssetType: "MaterialAssetRef"
        AssetId: "fxma_parameter_driven_water_manual"
      }
    }
  }
}
