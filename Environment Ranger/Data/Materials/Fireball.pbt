Assets {
  Id: 17869577602384161078
  Name: "Fireball"
  PlatformAssetType: 13
  SerializationVersion: 118
  CustomMaterialAsset {
    BaseMaterialId: 14065635217134112544
    ParameterOverrides {
      Overrides {
        Name: "color"
        Color {
          R: 0.63
          A: 0.655000031
        }
      }
      Overrides {
        Name: "color b"
        Color {
          R: 0.679999948
          G: 0.121589415
          A: 1
        }
      }
      Overrides {
        Name: "color c"
        Color {
          R: 0.690000057
          A: 1
        }
      }
      Overrides {
        Name: "brightness"
        Float: 45
      }
      Overrides {
        Name: "magic non uniform scale"
        Vector {
          X: 5
          Y: 5
          Z: 5
        }
      }
    }
    Assets {
      Id: 14065635217134112544
      Name: "Magic Glass"
      PlatformAssetType: 2
      PrimaryAsset {
        AssetType: "MaterialAssetRef"
        AssetId: "fxmi_magic_glass"
      }
    }
  }
}
