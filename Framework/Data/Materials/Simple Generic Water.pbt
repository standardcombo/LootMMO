Assets {
  Id: 3426841184368561977
  Name: "Simple Generic Water"
  PlatformAssetType: 13
  SerializationVersion: 125
  CustomMaterialAsset {
    BaseMaterialId: 6279993523772827179
    ParameterOverrides {
      Overrides {
        Name: "foam shape"
        Float: 1
      }
      Overrides {
        Name: "u_tiles"
        Float: 0.5
      }
      Overrides {
        Name: "v_tiles"
        Float: 0.5
      }
      Overrides {
        Name: "flow direction"
        Vector {
          Y: 1
        }
      }
      Overrides {
        Name: "foam color"
        Color {
          R: 0.18
          G: 0.18
          B: 0.18
          A: 1
        }
      }
      Overrides {
        Name: "normal foam brightness"
        Float: 0
      }
      Overrides {
        Name: "material_scale"
        Float: 1.5
      }
      Overrides {
        Name: "foam shape max"
        Float: 1
      }
      Overrides {
        Name: "foam shape min"
        Float: 0
      }
      Overrides {
        Name: "reflection brightness"
        Float: 0.5
      }
      Overrides {
        Name: "edge foam brightness"
        Float: 0.072247453
      }
      Overrides {
        Name: "opacity distance"
        Float: 134.822754
      }
      Overrides {
        Name: "speed"
        Float: 0.0761716366
      }
      Overrides {
        Name: "deep color"
        Color {
          R: 0.01237
          G: 0.0625
          B: 0.039191
          A: 1
        }
      }
      Overrides {
        Name: "shallow color"
        Color {
          G: 0.05
          B: 0.04
          A: 1
        }
      }
      Overrides {
        Name: "opacity"
        Float: 0.8
      }
    }
    Assets {
      Id: 6279993523772827179
      Name: "Generic Water"
      PlatformAssetType: 2
      PrimaryAsset {
        AssetType: "MaterialAssetRef"
        AssetId: "fxma_parameter_driven_water_manual"
      }
    }
  }
}
