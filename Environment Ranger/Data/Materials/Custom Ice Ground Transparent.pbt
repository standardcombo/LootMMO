Assets {
  Id: 12330707125388988349
  Name: "Custom Ice Ground Transparent"
  PlatformAssetType: 13
  SerializationVersion: 118
  CustomMaterialAsset {
    BaseMaterialId: 9203437717282206520
    ParameterOverrides {
      Overrides {
        Name: "internal cracks color"
        Color {
          A: 1
        }
      }
      Overrides {
        Name: "subsurface color"
        Color {
          G: 0.0506635383
          B: 0.206000015
          A: 1
        }
      }
      Overrides {
        Name: "color inside"
        Color {
          R: 0.052
          G: 0.052
          B: 0.052
          A: 1
        }
      }
      Overrides {
        Name: "color"
        Color {
          R: 1
          G: 1
          B: 1
          A: 1
        }
      }
    }
    Assets {
      Id: 9203437717282206520
      Name: "Ice Ground Transparent"
      PlatformAssetType: 2
      PrimaryAsset {
        AssetType: "MaterialAssetRef"
        AssetId: "fxmi_ice_transparent_ground"
      }
    }
  }
}
