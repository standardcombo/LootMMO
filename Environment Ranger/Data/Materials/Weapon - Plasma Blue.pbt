Assets {
  Id: 7413726224480865410
  Name: "Weapon - Plasma Blue"
  PlatformAssetType: 13
  SerializationVersion: 118
  CustomMaterialAsset {
    BaseMaterialId: 12789658363081938200
    ParameterOverrides {
      Overrides {
        Name: "outer color"
        Color {
          G: 1.73363185
          B: 3
          A: 1
        }
      }
      Overrides {
        Name: "plasma inner color"
        Color {
          G: 0.145765781
          B: 1
          A: 1
        }
      }
      Overrides {
        Name: "plasma outer color"
        Color {
          G: 2.69536328
          B: 11
          A: 1
        }
      }
      Overrides {
        Name: "inner color"
        Color {
          A: 1
        }
      }
      Overrides {
        Name: "plasma scale"
        Float: 152.497513
      }
      Overrides {
        Name: "fresnel exponent"
        Float: 0
      }
      Overrides {
        Name: "threshold max"
        Float: 0.317214578
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
