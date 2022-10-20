Assets {
  Id: 12384541154938266241
  Name: "Vol Lava Waterfall Straight"
  PlatformAssetType: 13
  SerializationVersion: 118
  VirtualFolderPath: "Volcano materials"
  CustomMaterialAsset {
    BaseMaterialId: 15050760250574004677
    ParameterOverrides {
      Overrides {
        Name: "deep color"
        Color {
          R: 0.72
          G: 0.100132316
          A: 1
        }
      }
      Overrides {
        Name: "foam color"
        Color {
          R: 0.97
          G: 0.674503505
          A: 1
        }
      }
      Overrides {
        Name: "shallow color"
        Color {
          R: 0.99
          A: 1
        }
      }
      Overrides {
        Name: "bottombreakupmax"
        Float: 1
      }
      Overrides {
        Name: "foamtightness"
        Float: 0.25
      }
      Overrides {
        Name: "foamnormalstrength"
        Float: 1.5
      }
      Overrides {
        Name: "scrollspeedy"
        Float: 0.284197509
      }
      Overrides {
        Name: "arc"
        Float: 0.130327672
      }
      Overrides {
        Name: "u_tiles"
        Float: 0.75
      }
      Overrides {
        Name: "v_tiles"
        Float: 2
      }
      Overrides {
        Name: "scrollspeedx"
        Float: 0.01
      }
    }
    Assets {
      Id: 15050760250574004677
      Name: "Waterfall"
      PlatformAssetType: 2
      PrimaryAsset {
        AssetType: "MaterialAssetRef"
        AssetId: "fxmi_waterfall"
      }
    }
  }
}
