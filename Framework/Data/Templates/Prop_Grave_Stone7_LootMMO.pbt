Assets {
  Id: 1667834319411277328
  Name: "Prop_Grave_Stone7_LootMMO"
  PlatformAssetType: 5
  TemplateAsset {
    ObjectBlock {
      RootId: 7429900504358526832
      Objects {
        Id: 7429900504358526832
        Name: "Prop_Grave_Stone7_LootMMO"
        Transform {
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 4781671109827199097
        ChildIds: 4564212772772305823
        ChildIds: 11851918859579802267
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
            Id: 6193541426073199308
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
        Id: 4564212772772305823
        Name: "Urban Tombstone 02"
        Transform {
          Location {
            Z: 56.3626709
          }
          Rotation {
          }
          Scale {
            X: 1.69868195
            Y: 1.69868195
            Z: 1.69868195
          }
        }
        ParentId: 7429900504358526832
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
            Id: 10143566478046736827
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
        Id: 11851918859579802267
        Name: "Fantasy Candle Lit - Holder 06 (Prop)"
        Transform {
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 7429900504358526832
        TemplateInstance {
          ParameterOverrideMap {
            key: 4635595006644889025
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
            key: 5707823555992697041
            value {
              Overrides {
                Name: "Name"
                String: "Fantasy Candle Lit - Holder 06 (Prop)"
              }
              Overrides {
                Name: "Position"
                Vector {
                  X: -54.0615234
                  Y: 65.215332
                  Z: 1.52587891e-05
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
            key: 10637969159771565466
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
            Id: 12762973068181320094
          }
        }
      }
    }
    Assets {
      Id: 6193541426073199308
      Name: "Urban Headstone 01"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_prop_urb_headstone_001_ref"
      }
    }
    Assets {
      Id: 10143566478046736827
      Name: "Urban Tombstone 03"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_prop_urb_tombstone_003_ref"
      }
    }
    PrimaryAssetId {
      AssetType: "None"
      AssetId: "None"
    }
  }
  SerializationVersion: 124
}
