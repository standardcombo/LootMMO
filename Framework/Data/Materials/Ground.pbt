Assets {
  Id: 15433890955028883260
  Name: "Ground"
  PlatformAssetType: 13
  SerializationVersion: 119
  CustomMaterialAsset {
    BaseMaterialId: 1680011468336307827
    ParameterOverrides {
      Overrides {
        Name: "brightness_albedo"
        Float: 1
      }
      Overrides {
        Name: "desaturation_albedo"
        Float: 0
      }
      Overrides {
        Name: "b_invert_metallic"
        Bool: false
      }
      Overrides {
        Name: "roughness_multiplier"
        Float: 0.45
      }
      Overrides {
        Name: "color"
        Color {
          R: 0.305
          G: 0.292719215
          B: 0.280600041
          A: 1
        }
      }
      Overrides {
        Name: "gradient_direction"
        Vector {
          Z: 1
        }
      }
      Overrides {
        Name: "gradient_color"
        Color {
          R: 1
          G: 1
          B: 1
          A: 1
        }
      }
      Overrides {
        Name: "gradient_worldspace"
        Bool: false
      }
      Overrides {
        Name: "color_ao"
        Color {
          R: 0.00368900015
          G: 0.00866156258
          B: 0.025
          A: 1
        }
      }
    }
    Assets {
      Id: 1680011468336307827
      Name: "Rocky Ground 01"
      PlatformAssetType: 2
      PrimaryAsset {
        AssetType: "MaterialAssetRef"
        AssetId: "rocky_001"
      }
    }
  }
}
