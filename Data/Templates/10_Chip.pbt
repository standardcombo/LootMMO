Assets {
  Id: 11056247510628559682
  Name: "10_Chip"
  PlatformAssetType: 5
  TemplateAsset {
    ObjectBlock {
      RootId: 10483136974445160181
      Objects {
        Id: 10483136974445160181
        Name: "10_Chip"
        Transform {
          Scale {
            X: 0.528697908
            Y: 0.528697908
            Z: 0.0943172574
          }
        }
        ParentId: 4781671109827199097
        ChildIds: 7667392807880978507
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
        Id: 7667392807880978507
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
        ParentId: 10483136974445160181
        ChildIds: 3665019253971090625
        ChildIds: 1077869699313876283
        ChildIds: 8094830819236345771
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
        Id: 3665019253971090625
        Name: "World Text"
        Transform {
          Location {
            Z: 55.4000778
          }
          Rotation {
            Pitch: 90
            Roll: 180
          }
          Scale {
            X: 19.27742
            Y: 3.98771644
            Z: 19.2774391
          }
        }
        ParentId: 7667392807880978507
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
          Text: "10"
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
        Id: 1077869699313876283
        Name: "World Text"
        Transform {
          Location {
            Z: -55.399971
          }
          Rotation {
            Pitch: -90
            Yaw: 180
          }
          Scale {
            X: 19.27742
            Y: 3.98771644
            Z: 19.2774391
          }
        }
        ParentId: 7667392807880978507
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
          Text: "10"
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
        Id: 8094830819236345771
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
        ParentId: 7667392807880978507
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
              R: 0.789999962
              G: 3.76701337e-07
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
