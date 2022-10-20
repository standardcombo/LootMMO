Assets {
  Id: 7751364886677345160
  Name: "Custom Composite Triplanar Blend"
  PlatformAssetType: 13
  SerializationVersion: 118
  CustomMaterialAsset {
    BaseMaterialId: 12822559358167921858
    ParameterOverrides {
      Overrides {
        Name: "cmp:Top"
        AssetReference {
          Id: 251249599451393129
        }
      }
      Overrides {
        Name: "cmp:Sides"
        AssetReference {
          Id: 14643090495247569259
        }
      }
      Overrides {
        Name: "edge_wear"
        Float: 0.5
      }
      Overrides {
        Name: "splotchiness"
        Float: 0.264843017
      }
      Overrides {
        Name: "density"
        Float: 0.399192691
      }
      Overrides {
        Name: "direction"
        Bool: false
      }
      Overrides {
        Name: "edge_wear_top"
        Float: 0.379999906
      }
      Overrides {
        Name: "edge_roughness_top"
        Float: 1
      }
      Overrides {
        Name: "edge_roughness"
        Float: 1
      }
      Overrides {
        Name: "b_invert_metallic_top"
        Bool: true
      }
      Overrides {
        Name: "brightness_albedo_side"
        Float: 1
      }
    }
    Assets {
      Id: 12822559358167921858
      Name: "Composite Triplanar Blend"
      PlatformAssetType: 2
      PrimaryAsset {
        AssetType: "MaterialAssetRef"
        AssetId: "mi_composite_triplanar_wa"
      }
    }
    Assets {
      Id: 251249599451393129
      Name: "Grass Basic"
      PlatformAssetType: 2
      PrimaryAsset {
        AssetType: "MaterialAssetRef"
        AssetId: "mi_grass_001_uv"
      }
    }
    Assets {
      Id: 14643090495247569259
      Name: "Dirt 01"
      PlatformAssetType: 2
      PrimaryAsset {
        AssetType: "MaterialAssetRef"
        AssetId: "dirt_001"
      }
    }
  }
}
