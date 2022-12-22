Assets {
  Id: 5207442777822938154
  Name: "Custom Force Field"
  PlatformAssetType: 13
  SerializationVersion: 123
  CustomMaterialAsset {
    BaseMaterialId: 8714953556762787271
    ParameterOverrides {
      Overrides {
        Name: "color"
        Color {
          R: 0.172999978
          G: 0.769973218
          B: 1
          A: 1
        }
      }
      Overrides {
        Name: "inverttexture"
        Float: 0.5
      }
      Overrides {
        Name: "emissiveboost"
        Float: 3.72545266
      }
      Overrides {
        Name: "fresnelexponent"
        Float: 0.238804743
      }
    }
    Assets {
      Id: 8714953556762787271
      Name: "Force Field"
      PlatformAssetType: 2
      PrimaryAsset {
        AssetType: "MaterialAssetRef"
        AssetId: "fxmi_forceField"
      }
    }
  }
}
