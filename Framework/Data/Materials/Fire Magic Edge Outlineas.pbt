Assets {
  Id: 15011219379918960360
  Name: "Fire Magic Edge Outlineas"
  PlatformAssetType: 13
  SerializationVersion: 121
  CustomMaterialAsset {
    BaseMaterialId: 2721411165435899975
    ParameterOverrides {
      Overrides {
        Name: "color"
        Color {
          R: 1
          G: 0.00999999
          B: 0.00999999
          A: 1
        }
      }
      Overrides {
        Name: "noise color"
        Color {
          A: 1
        }
      }
      Overrides {
        Name: "edge line color"
        Color {
          R: 0.62
          G: 0.0369536616
          A: 1
        }
      }
      Overrides {
        Name: "overall brightness"
        Float: 5
      }
      Overrides {
        Name: "edge line brightness"
        Float: 5.56415415
      }
      Overrides {
        Name: "vertical fade"
        Float: 0.850600362
      }
      Overrides {
        Name: "fresnel"
        Float: 2.64533114
      }
      Overrides {
        Name: "fresnel brightness"
        Float: 1.47092485
      }
      Overrides {
        Name: "noise spread"
        Float: 324.427734
      }
      Overrides {
        Name: "edge line spread"
        Float: 22.8627357
      }
      Overrides {
        Name: "edge line sharpness"
        Float: 0.0359742567
      }
    }
    Assets {
      Id: 2721411165435899975
      Name: "Additive Edgeline Top Fade"
      PlatformAssetType: 2
      PrimaryAsset {
        AssetType: "MaterialAssetRef"
        AssetId: "fxmi_add_edgeline_sharpline_topfade"
      }
    }
  }
}
