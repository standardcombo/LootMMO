Assets {
  Id: 4469657443425330169
  Name: "AttackIndicatorMateral"
  PlatformAssetType: 13
  SerializationVersion: 118
  CustomMaterialAsset {
    BaseMaterialId: 2721411165435899975
    ParameterOverrides {
      Overrides {
        Name: "color"
        Color {
          R: 1
          G: 0.276688755
          B: 0.139999986
          A: 1
        }
      }
      Overrides {
        Name: "noise color"
        Color {
          R: 0.909999967
          G: 0.0903973579
          A: 1
        }
      }
      Overrides {
        Name: "edge line brightness"
        Float: 64.0327835
      }
      Overrides {
        Name: "overall brightness"
        Float: 0.909
      }
      Overrides {
        Name: "vertical fade"
        Float: 5.11055231
      }
      Overrides {
        Name: "noise spread"
        Float: 150.582138
      }
      Overrides {
        Name: "fresnel brightness"
        Float: 4.03092289
      }
      Overrides {
        Name: "noise scale"
        Float: 0
      }
      Overrides {
        Name: "noise sharpness"
        Float: 0.004
      }
      Overrides {
        Name: "speed"
        Vector {
        }
      }
      Overrides {
        Name: "speed 2"
        Vector {
        }
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
