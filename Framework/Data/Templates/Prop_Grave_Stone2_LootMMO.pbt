Assets {
  Id: 3670897978771724806
  Name: "Prop_Grave_Stone2_LootMMO"
  PlatformAssetType: 5
  TemplateAsset {
    ObjectBlock {
      RootId: 16325577833328339344
      Objects {
        Id: 16325577833328339344
        Name: "Urban Gravestone 02"
        Transform {
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 4781671109827199097
        ChildIds: 9313457363354840490
        ChildIds: 1761989687416562556
        ChildIds: 12257828644287827762
        ChildIds: 17115215593334691351
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14720568933236397359
            }
          }
        }
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
        CoreMesh {
          MeshAsset {
            Id: 12045564826576059371
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          StaticMesh {
            Physics {
              Mass: 100
              LinearDamping: 0.01
            }
            BoundsScale: 1
          }
        }
        Relevance {
          Value: "mc:edistancerelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 9313457363354840490
        Name: "Urban Tombstone 04"
        Transform {
          Location {
            Y: -199.83252
          }
          Rotation {
          }
          Scale {
            X: 2.32309484
            Y: 2.32309484
            Z: 2.32309484
          }
        }
        ParentId: 16325577833328339344
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14720568933236397359
            }
          }
        }
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
        CoreMesh {
          MeshAsset {
            Id: 14631316873986830365
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          StaticMesh {
            Physics {
              Mass: 100
              LinearDamping: 0.01
            }
            BoundsScale: 1
          }
        }
        Relevance {
          Value: "mc:edistancerelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 1761989687416562556
        Name: "Candle 03"
        Transform {
          Location {
            X: 49.7021484
            Y: -104.465332
            Z: 110.768723
          }
          Rotation {
            Yaw: 59.2158089
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 16325577833328339344
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
        CoreMesh {
          MeshAsset {
            Id: 1423268074024780909
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          StaticMesh {
            Physics {
              Mass: 100
              LinearDamping: 0.01
            }
            BoundsScale: 1
          }
        }
        Relevance {
          Value: "mc:edistancerelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 12257828644287827762
        Name: "Fantasy Candle Lit - Group 01 (Prop)"
        Transform {
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 16325577833328339344
        TemplateInstance {
          ParameterOverrideMap {
            key: 551726020098888189
            value {
              Overrides {
                Name: "ma:Flame_A:id"
                AssetReference {
                  Id: 1163440238968447388
                }
              }
              Overrides {
                Name: "ma:Flame_B:id"
                AssetReference {
                  Id: 1163440238968447388
                }
              }
            }
          }
          ParameterOverrideMap {
            key: 6009762721696380204
            value {
            }
          }
          ParameterOverrideMap {
            key: 7344829205077251158
            value {
              Overrides {
                Name: "Color"
                Color {
                  G: 0.464105099
                  B: 0.960000038
                  A: 1
                }
              }
              Overrides {
                Name: "Intensity"
                Float: 5
              }
              Overrides {
                Name: "AttenuationRadius"
                Float: 1000
              }
            }
          }
          ParameterOverrideMap {
            key: 7629653869565102577
            value {
              Overrides {
                Name: "ma:Flame_A:id"
                AssetReference {
                  Id: 1163440238968447388
                }
              }
              Overrides {
                Name: "ma:Flame_B:id"
                AssetReference {
                  Id: 1163440238968447388
                }
              }
            }
          }
          ParameterOverrideMap {
            key: 8002813443656422609
            value {
              Overrides {
                Name: "Name"
                String: "Fantasy Candle Lit - Group 01 (Prop)"
              }
              Overrides {
                Name: "Position"
                Vector {
                  X: -48.3828125
                  Y: -101.173828
                  Z: 110.7687
                }
              }
              Overrides {
                Name: "Rotation"
                Rotator {
                }
              }
              Overrides {
                Name: "Scale"
                Vector {
                  X: 1
                  Y: 1
                  Z: 1
                }
              }
            }
          }
          ParameterOverrideMap {
            key: 14583123815104626957
            value {
              Overrides {
                Name: "ma:Flame_A:id"
                AssetReference {
                  Id: 1163440238968447388
                }
              }
              Overrides {
                Name: "ma:Flame_B:id"
                AssetReference {
                  Id: 1163440238968447388
                }
              }
            }
          }
          TemplateAsset {
            Id: 4209141406481962758
          }
        }
      }
      Objects {
        Id: 17115215593334691351
        Name: "Candle Table Holder 01"
        Transform {
          Location {
            X: 61.1308594
            Y: 196.00708
            Z: 2.20733643
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 16325577833328339344
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
        CoreMesh {
          MeshAsset {
            Id: 1731512974963119003
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          StaticMesh {
            Physics {
              Mass: 100
              LinearDamping: 0.01
            }
            BoundsScale: 1
          }
        }
        Relevance {
          Value: "mc:edistancerelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
    }
    Assets {
      Id: 12045564826576059371
      Name: "Urban Gravestone 02"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_prop_urb_gravestone_002_ref"
      }
    }
    Assets {
      Id: 14631316873986830365
      Name: "Urban Tombstone 04"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_prop_urb_tombstone_004_ref"
      }
    }
    Assets {
      Id: 1423268074024780909
      Name: "Candle 03"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_prop_fantasy_candle_002"
      }
    }
    Assets {
      Id: 1731512974963119003
      Name: "Candle Table Holder 01"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_prop_fantasy_candle_001"
      }
    }
    PrimaryAssetId {
      AssetType: "None"
      AssetId: "None"
    }
  }
  SerializationVersion: 123
}
