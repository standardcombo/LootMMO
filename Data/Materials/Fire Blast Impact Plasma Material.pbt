Assets {
  Id: 5062838455696268811
  Name: "Fire Blast Impact Plasma Material"
  PlatformAssetType: 13
  SerializationVersion: 118
  CustomMaterialAsset {
    BaseMaterialId: 12789658363081938200
    ParameterOverrides {
      Overrides {
        Name: "plasma inner color"
        Color {
          R: 0.679999948
          G: 0.364768207
          A: 1
        }
      }
      Overrides {
        Name: "plasma outer color"
        Color {
          A: 1
        }
      }
      Overrides {
        Name: "speed"
        Vector {
          X: -5
          Y: -1
          Z: 1
        }
      }
      Overrides {
        Name: "plasma scale"
        Float: 10
      }
    }
    Assets {
      Id: 12789658363081938200
      Name: "Plasmafield Doublesided"
      PlatformAssetType: 2
      PrimaryAsset {
        AssetType: "MaterialAssetRef"
        AssetId: "fxma_plasmafield_doublesided"
      }
    }
  }
}
