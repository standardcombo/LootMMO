Assets {
  Id: 6566379502194667695
  Name: "Greeter"
  PlatformAssetType: 5
  TemplateAsset {
    ObjectBlock {
      RootId: 5339325576282374243
      Objects {
        Id: 5339325576282374243
        Name: "Greeter"
        Transform {
          Scale {
            X: 0.347222209
            Y: 0.347222209
            Z: 0.347222209
          }
        }
        ParentId: 4306925911175813128
        ChildIds: 16062246073499546373
        UnregisteredParameters {
          Overrides {
            Name: "ma:0:Shared_BaseMaterial:color"
            Color {
              R: 1
              G: 1
              B: 1
              A: 1
            }
          }
          Overrides {
            Name: "ma:0:Shared_Detail1:color"
            Color {
              R: 0.03125
              G: 0.0284611881
              B: 0.02734375
              A: 1
            }
          }
          Overrides {
            Name: "ma:1:Shared_Detail2:color"
            Color {
              R: 0.048
              G: 0.0339432806
              B: 0.033024
              A: 1
            }
          }
          Overrides {
            Name: "ma:1:Shared_BaseMaterial:color"
            Color {
              R: 0.085
              G: 0.0593676604
              B: 0.0423299968
              A: 1
            }
          }
          Overrides {
            Name: "ma:2:Shared_Detail2:color"
            Color {
              R: 0.0440000035
              G: 0.020996388
              B: 0.019492
              A: 1
            }
          }
          Overrides {
            Name: "ma:0:Shared_BaseMaterial:id"
            AssetReference {
              Id: 16582650616127206033
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
            Id: 12092204065995792596
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          AnimatedMesh {
            AnimationStance: "unarmed_idle_relaxed"
            AnimationStancePlaybackRate: 1
            AnimationStanceShouldLoop: true
            AnimationPlaybackRateMultiplier: 1
            PlayOnStartAnimation {
              PlaybackRate: 1
            }
            SkinnedMeshes {
              Id: 11241465226241462039
            }
            SkinnedMeshes {
              Id: 3557954209464392513
            }
            SkinnedMeshes {
              Id: 15494817542660282536
            }
            SkinnedMeshes {
              Id: 841534158063459245
            }
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
        Id: 16062246073499546373
        Name: "Prop_Metal Hand Lantern_LootMMO"
        Transform {
          Location {
            X: -114.640625
            Y: -22509.3457
            Z: 1864.14868
          }
          Rotation {
            Pitch: -3.23650551
            Yaw: 24.687521
            Roll: -3.48355198
          }
          Scale {
            X: 0.880786
            Y: 0.880786
            Z: 0.880786
          }
        }
        ParentId: 5339325576282374243
        TemplateInstance {
          ParameterOverrideMap {
            key: 6854115439581406339
            value {
              Overrides {
                Name: "Color"
                Color {
                  R: 0.639112
                  G: 1
                  B: 0.594
                  A: 1
                }
              }
              Overrides {
                Name: "AttenuationRadius"
                Float: 3641.78345
              }
              Overrides {
                Name: "SourceRadius"
                Float: 0
              }
              Overrides {
                Name: "SoftSourceRadius"
                Float: 220.035858
              }
              Overrides {
                Name: "SourceLength"
                Float: 54.4578247
              }
              Overrides {
                Name: "FallOffExponent"
                Float: 10.6574078
              }
              Overrides {
                Name: "Temperature"
                Float: 3134.34106
              }
            }
          }
          ParameterOverrideMap {
            key: 14826529378783049208
            value {
              Overrides {
                Name: "Name"
                String: "Prop_Metal Hand Lantern_LootMMO"
              }
              Overrides {
                Name: "Position"
                Vector {
                  X: 25.8847885
                  Y: 60.1034737
                  Z: -88.038063
                }
              }
              Overrides {
                Name: "Rotation"
                Rotator {
                  Pitch: -5.86483717
                  Yaw: -109.66864
                  Roll: -7.08508396
                }
              }
              Overrides {
                Name: "Scale"
                Vector {
                  X: 0.449590892
                  Y: 0.449590892
                  Z: 0.449590892
                }
              }
            }
          }
          TemplateAsset {
            Id: 15485064354472933835
          }
        }
      }
    }
    Assets {
      Id: 12092204065995792596
      Name: "Humanoid 1 Rig"
      PlatformAssetType: 25
      PrimaryAsset {
        AssetType: "SkeletonAssetRef"
        AssetId: "npc_gal_wireframe_001_ref"
      }
    }
    Assets {
      Id: 11241465226241462039
      Name: "Humanoid 1 Yasmine"
      PlatformAssetType: 26
      PrimaryAsset {
        AssetType: "SkinnedMeshAssetRef"
        AssetId: "npc_human_gal_head_basic_007_ref"
      }
    }
    Assets {
      Id: 3557954209464392513
      Name: "Humanoid 1 Peasant Shirt"
      PlatformAssetType: 26
      PrimaryAsset {
        AssetType: "SkinnedMeshAssetRef"
        AssetId: "npc_human_gal_upper_fantasy_000_ref"
      }
    }
    Assets {
      Id: 15494817542660282536
      Name: "Humanoid 1 Peasant Pants"
      PlatformAssetType: 26
      PrimaryAsset {
        AssetType: "SkinnedMeshAssetRef"
        AssetId: "npc_human_gal_lower_fantasy_000_ref"
      }
    }
    PrimaryAssetId {
      AssetType: "None"
      AssetId: "None"
    }
  }
  SerializationVersion: 124
}
