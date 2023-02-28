Assets {
  Id: 1292801991992378833
  Name: "HealerAura2"
  PlatformAssetType: 13
  SerializationVersion: 125
  CustomMaterialAsset {
    BaseMaterialId: 4494269202942641356
    ParameterOverrides {
      Overrides {
        Name: "fresnel exponent"
        Float: 0.881969273
      }
      Overrides {
        Name: "plasma scale"
        Float: 58.4844627
      }
      Overrides {
        Name: "outer color"
        Color {
          A: 1
        }
      }
      Overrides {
        Name: "plasma inner color"
        Color {
          R: 1
          G: 1
          B: 1
          A: 1
        }
      }
      Overrides {
        Name: "plasma outer color"
        Color {
          R: 1
          G: 1
          B: 1
          A: 1
        }
      }
      Overrides {
        Name: "inner color"
        Color {
          R: 0.467
          G: 0.467
          B: 0.467
          A: 0.535
        }
      }
    }
    Assets {
      Id: 4494269202942641356
      Name: "Plasma"
      PlatformAssetType: 2
      PrimaryAsset {
        AssetType: "MaterialAssetRef"
        AssetId: "fxma_plasmafield"
      }
    }
  }
}
