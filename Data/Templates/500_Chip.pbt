Assets {
  Id: 8004081583884466979
  Name: "500_Chip"
  PlatformAssetType: 5
  TemplateAsset {
    ObjectBlock {
      RootId: 6568735580649371555
      Objects {
        Id: 6568735580649371555
        Name: "500_Chip"
        Transform {
          Scale {
            X: 0.528697908
            Y: 0.528697908
            Z: 0.0943172574
          }
        }
        ParentId: 4781671109827199097
        ChildIds: 4465490996042535085
        Collidable_v2 {
          Value: "mc:ecollisionsetting:forceon"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:forceoff"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:forceoff"
        }
        EditorIndicatorVisibility {
          Value: "mc:eindicatorvisibility:visiblewhenselected"
        }
        CoreMesh {
          MeshAsset {
            Id: 13950225922132296555
          }
          Teams {
            TeamInt: 1
            IsEnemyCollisionEnabled: true
          }
          StaticMesh {
            Physics {
              IsEnabled: true
              Mass: 100
              LinearDamping: 0.01
            }
            BoundsScale: 1
          }
        }
        Relevance {
          Value: "mc:eproxyrelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
      }
      Objects {
        Id: 4465490996042535085
        Name: "Gear - generic large solid"
        Transform {
          Location {
          }
          Rotation {
          }
          Scale {
            X: 0.77771461
            Y: 0.77771461
            Z: 0.777713895
          }
        }
        ParentId: 6568735580649371555
        ChildIds: 2943709090113086303
        ChildIds: 18231872975665389372
        ChildIds: 1438923115516514158
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 132672053610873933
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              A: 1
            }
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:forceon"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:forceon"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:forceoff"
        }
        EditorIndicatorVisibility {
          Value: "mc:eindicatorvisibility:visiblewhenselected"
        }
        CoreMesh {
          MeshAsset {
            Id: 13950225922132296555
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          StaticMesh {
            Physics {
              IsEnabled: true
              Mass: 100
              LinearDamping: 0.01
            }
            BoundsScale: 1
          }
        }
        Relevance {
          Value: "mc:eproxyrelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
      }
      Objects {
        Id: 2943709090113086303
        Name: "World Text"
        Transform {
          Location {
            Z: 55.4
          }
          Rotation {
            Pitch: 90
            Roll: 180
          }
          Scale {
            X: 11.4650221
            Y: 2.37164855
            Z: 11.4650269
          }
        }
        ParentId: 4465490996042535085
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        EditorIndicatorVisibility {
          Value: "mc:eindicatorvisibility:visiblewhenselected"
        }
        Text {
          Text: "500"
          FontAsset {
            Id: 18283604462096221912
          }
          Color {
            R: 1
            G: 1
            B: 1
            A: 1
          }
          HorizontalAlignment {
            Value: "mc:ecoretexthorizontalalign:center"
          }
          VerticalAlignment {
            Value: "mc:ecoretextverticalalign:center"
          }
          IsLit: true
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
      }
      Objects {
        Id: 18231872975665389372
        Name: "World Text"
        Transform {
          Location {
            Z: -55.4
          }
          Rotation {
            Pitch: -90
            Yaw: 180
          }
          Scale {
            X: 11.4650221
            Y: 2.37164855
            Z: 11.4650269
          }
        }
        ParentId: 4465490996042535085
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        EditorIndicatorVisibility {
          Value: "mc:eindicatorvisibility:visiblewhenselected"
        }
        Text {
          Text: "500"
          FontAsset {
            Id: 18283604462096221912
          }
          Color {
            R: 1
            G: 1
            B: 1
            A: 1
          }
          HorizontalAlignment {
            Value: "mc:ecoretexthorizontalalign:center"
          }
          VerticalAlignment {
            Value: "mc:ecoretextverticalalign:center"
          }
          IsLit: true
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
      }
      Objects {
        Id: 1438923115516514158
        Name: "Gear - generic large solid"
        Transform {
          Location {
          }
          Rotation {
          }
          Scale {
            X: 1.37391567
            Y: 1.37391567
            Z: 0.964926839
          }
        }
        ParentId: 4465490996042535085
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 7182498849926902668
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.818000078
              G: 0.32460314
              A: 1
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:forceon"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:forceoff"
        }
        EditorIndicatorVisibility {
          Value: "mc:eindicatorvisibility:visiblewhenselected"
        }
        CoreMesh {
          MeshAsset {
            Id: 13950225922132296555
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          StaticMesh {
            Physics {
              IsEnabled: true
              Mass: 100
              LinearDamping: 0.01
            }
            BoundsScale: 1
          }
        }
        Relevance {
          Value: "mc:eproxyrelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
      }
    }
    Assets {
      Id: 13950225922132296555
      Name: "Cylinder"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_cylinder_002"
      }
    }
    Assets {
      Id: 132672053610873933
      Name: "Plastic Matte"
      PlatformAssetType: 2
      PrimaryAsset {
        AssetType: "MaterialAssetRef"
        AssetId: "plastic_matte_001"
      }
    }
    Assets {
      Id: 18283604462096221912
      Name: "Roboto Slab Black"
      PlatformAssetType: 28
      PrimaryAsset {
        AssetType: "FontAssetRef"
        AssetId: "RobotoSlabBlack_ref"
      }
    }
    Assets {
      Id: 7182498849926902668
      Name: "Vinyl Floor Stars 01"
      PlatformAssetType: 2
      PrimaryAsset {
        AssetType: "MaterialAssetRef"
        AssetId: "mi_urb_vinyl_floor_002_uv_ref"
      }
    }
    PrimaryAssetId {
      AssetType: "None"
      AssetId: "None"
    }
  }
  SerializationVersion: 116
  VirtualFolderPath: "PokerTemplates"
  VirtualFolderPath: "Chips"
  VirtualFolderPath: "3D"
}
