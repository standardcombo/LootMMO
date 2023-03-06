Assets {
  Id: 18176387296437376549
  Name: "Blacksmith"
  PlatformAssetType: 5
  TemplateAsset {
    ObjectBlock {
      RootId: 17487510503134157460
      Objects {
        Id: 17487510503134157460
        Name: "Blacksmith"
        Transform {
          Scale {
            X: 0.360407203
            Y: 0.360407203
            Z: 0.360407203
          }
        }
        ParentId: 5635181792071920996
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
  SerializationVersion: 125
}
