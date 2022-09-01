Assets {
  Id: 8241651039566415044
  Name: "Portal Hologram"
  PlatformAssetType: 5
  TemplateAsset {
    ObjectBlock {
      RootId: 13408948696489786066
      Objects {
        Id: 13408948696489786066
        Name: "Portal Hologram"
        Transform {
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 4781671109827199097
        ChildIds: 1081328020225702599
        UnregisteredParameters {
          Overrides {
            Name: "ma:2:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14828601614524287400
            }
          }
          Overrides {
            Name: "ma:1:Shared_Detail1:id"
            AssetReference {
              Id: 14828601614524287400
            }
          }
          Overrides {
            Name: "ma:1:Shared_Detail2:id"
            AssetReference {
              Id: 14828601614524287400
            }
          }
          Overrides {
            Name: "ma:1:Shared_Detail3:id"
            AssetReference {
              Id: 14828601614524287400
            }
          }
          Overrides {
            Name: "ma:2:Shared_Detail1:id"
            AssetReference {
              Id: 14828601614524287400
            }
          }
          Overrides {
            Name: "ma:2:Shared_Detail2:id"
            AssetReference {
              Id: 14828601614524287400
            }
          }
          Overrides {
            Name: "ma:2:Shared_Detail3:id"
            AssetReference {
              Id: 14828601614524287400
            }
          }
          Overrides {
            Name: "ma:2:Shared_Detail4:id"
            AssetReference {
              Id: 14828601614524287400
            }
          }
          Overrides {
            Name: "ma:1:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14828601614524287400
            }
          }
          Overrides {
            Name: "ma:0:Shared_Detail3:id"
            AssetReference {
              Id: 14828601614524287400
            }
          }
          Overrides {
            Name: "ma:0:Shared_Detail2:id"
            AssetReference {
              Id: 14828601614524287400
            }
          }
          Overrides {
            Name: "ma:0:Shared_Detail1:id"
            AssetReference {
              Id: 14828601614524287400
            }
          }
          Overrides {
            Name: "ma:0:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14828601614524287400
            }
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:forceoff"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:forceoff"
        }
        CoreMesh {
          MeshAsset {
            Id: 5698055944130819923
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
              Id: 16576684950409480413
            }
            SkinnedMeshes {
              Id: 4390675716563471196
            }
            SkinnedMeshes {
              Id: 9044106519409331445
            }
            SkinnedMeshes {
              Id: 841534158063459245
            }
          }
        }
        Relevance {
          Value: "mc:eproxyrelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 1081328020225702599
        Name: "Spark Trail Wavy VFX"
        Transform {
          Location {
            Z: -70
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 13408948696489786066
        UnregisteredParameters {
          Overrides {
            Name: "bp:Color"
            Color {
              G: 2.66666532
              B: 5
              A: 1
            }
          }
          Overrides {
            Name: "bp:Life"
            Float: 3
          }
          Overrides {
            Name: "bp:Spawn Radius"
            Float: 0.5
          }
          Overrides {
            Name: "bp:Density"
            Float: 2
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
        Blueprint {
          BlueprintAsset {
            Id: 11660475649833139877
          }
          TeamSettings {
          }
          Vfx {
            AutoPlay: true
          }
        }
        Relevance {
          Value: "mc:eproxyrelevance:medium"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
    }
    Assets {
      Id: 5698055944130819923
      Name: "Humanoid 1 Rig"
      PlatformAssetType: 25
      PrimaryAsset {
        AssetType: "SkeletonAssetRef"
        AssetId: "npc_gal_wireframe_001_ref"
      }
    }
    Assets {
      Id: 16576684950409480413
      Name: "Humanoid 1 Viper Armor"
      PlatformAssetType: 26
      PrimaryAsset {
        AssetType: "SkinnedMeshAssetRef"
        AssetId: "npc_human_gal_upper_scifi_001_ref"
      }
    }
    Assets {
      Id: 4390675716563471196
      Name: "Humanoid 1 Viper Pants"
      PlatformAssetType: 26
      PrimaryAsset {
        AssetType: "SkinnedMeshAssetRef"
        AssetId: "npc_human_gal_lower_scifi_001_ref"
      }
    }
    Assets {
      Id: 9044106519409331445
      Name: "Humanoid 1 Viper Helmet"
      PlatformAssetType: 26
      PrimaryAsset {
        AssetType: "SkinnedMeshAssetRef"
        AssetId: "npc_human_gal_hat_scifi_001_ref"
      }
    }
    Assets {
      Id: 11660475649833139877
      Name: "Spark Trail Wavy VFX"
      PlatformAssetType: 8
      PrimaryAsset {
        AssetType: "VfxBlueprintAssetRef"
        AssetId: "fxbp_spark_trail_wavy"
      }
    }
    PrimaryAssetId {
      AssetType: "None"
      AssetId: "None"
    }
  }
  SerializationVersion: 118
}
