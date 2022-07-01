Assets {
  Id: 4389956694410970039
  Name: "Custom Edgefoam"
  PlatformAssetType: 13
  SerializationVersion: 116
  CustomMaterialAsset {
    BaseMaterialId: 16572069779463765629
    ParameterOverrides {
      Overrides {
        Name: "arc"
        Float: 0
      }
      Overrides {
        Name: "scrollspeedy"
        Float: -0.2
      }
      Overrides {
        Name: "u_tiles"
        Float: 2
      }
      Overrides {
        Name: "v_tiles"
        Float: 1.2
      }
      Overrides {
        Name: "foam color"
        Color {
          R: 0.947917
          G: 1
          B: 0.969151
          A: 0.723
        }
      }
      Overrides {
        Name: "deep color"
        Color {
          R: 0.0589449964
          G: 0.132464826
          B: 0.135
          A: 0.8
        }
      }
      Overrides {
        Name: "edge foam brightness"
        Float: 0.284157
      }
      Overrides {
        Name: "fadeleftedge"
        Float: 0.19415839
      }
      Overrides {
        Name: "faderightedge"
        Float: 0.0816601217
      }
      Overrides {
        Name: "startfadesoftness"
        Float: 0.426654816
      }
      Overrides {
        Name: "shallow color"
        Color {
          R: 0.0932840183
          G: 0.260417
          B: 0.238132641
          A: 0.46
        }
      }
      Overrides {
        Name: "bottombreakupmin"
        Float: 0.704360366
      }
      Overrides {
        Name: "bottombreakupmax"
        Float: 0.742140532
      }
      Overrides {
        Name: "foamfademax"
        Float: 0.182994708
      }
      Overrides {
        Name: "foamfademin"
        Float: 0.205662772
      }
      Overrides {
        Name: "scrollspeedx"
        Float: 0.02
      }
    }
    Assets {
      Id: 16572069779463765629
      Name: "Waterfall"
      PlatformAssetType: 2
      PrimaryAsset {
        AssetType: "MaterialAssetRef"
        AssetId: "fxmi_waterfall"
      }
    }
  }
}
