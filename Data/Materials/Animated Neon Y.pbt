Assets {
  Id: 720511534169157056
  Name: "Animated Neon Y"
  PlatformAssetType: 13
  SerializationVersion: 118
  CustomMaterialAsset {
    BaseMaterialId: 4484615196153594960
    ParameterOverrides {
      Overrides {
        Name: "glow intensity"
        Float: 50
      }
      Overrides {
        Name: "neon_thickness_multiplier"
        Float: 0
      }
      Overrides {
        Name: "pulse speed"
        Float: 2
      }
      Overrides {
        Name: "metallic"
        Float: 0
      }
      Overrides {
        Name: "offcolor"
        Color {
          A: 1
        }
      }
      Overrides {
        Name: "numberofframes"
        Int: 3
      }
      Overrides {
        Name: "animation type"
        Int: 2
      }
      Overrides {
        Name: "useworldposition"
        Bool: true
      }
      Overrides {
        Name: "useobjectposy"
        Bool: true
      }
      Overrides {
        Name: "useobjectposx"
        Bool: false
      }
      Overrides {
        Name: "useobjectposz"
        Bool: false
      }
      Overrides {
        Name: "animation speed"
        Float: -5
      }
    }
    Assets {
      Id: 4484615196153594960
      Name: "Animated Neon Sign "
      PlatformAssetType: 2
      PrimaryAsset {
        AssetType: "MaterialAssetRef"
        AssetId: "fxmi_NeonSign_All"
      }
    }
  }
}
