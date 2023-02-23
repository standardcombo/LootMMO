Assets {
  Id: 17183202768271520365
  Name: "Prop_Grave_Stone1_LootMMO"
  PlatformAssetType: 5
  TemplateAsset {
    ObjectBlock {
      RootId: 16052789882869869794
      Objects {
        Id: 16052789882869869794
        Name: "Urban Tombstone 05"
        Transform {
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 4781671109827199097
        ChildIds: 9695668535406929933
        ChildIds: 14754367398712408807
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
            Id: 12677987997658977749
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
        Id: 9695668535406929933
        Name: "Urban Tombstone 02"
        Transform {
          Location {
            Z: 79.0131836
          }
          Rotation {
          }
          Scale {
            X: 1.25666213
            Y: 1.25666213
            Z: 1.25666213
          }
        }
        ParentId: 16052789882869869794
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
            Id: 11572463665237589986
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
        Id: 14754367398712408807
        Name: "Fantasy Candle Lit - Holder 06 (Prop)"
        Transform {
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 16052789882869869794
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
      Id: 12677987997658977749
      Name: "Urban Tombstone 05"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_prop_urb_tombstone_005_ref"
      }
    }
    Assets {
      Id: 11572463665237589986
      Name: "Urban Tombstone 02"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_prop_urb_tombstone_002_ref"
      }
    }
    PrimaryAssetId {
      AssetType: "None"
      AssetId: "None"
    }
  }
  SerializationVersion: 124
}
