Assets {
  Id: 18125212688095204898
  Name: "Producer - Green Dragon Hoarding - Building 1 (Client)"
  PlatformAssetType: 5
  TemplateAsset {
    ObjectBlock {
      RootId: 1645188909067253156
      Objects {
        Id: 1645188909067253156
        Name: "Producer - Green Dragon State 1 (Client)"
        Transform {
          Scale {
            X: 0.751916826
            Y: 0.751916826
            Z: 0.751916826
          }
        }
        ParentId: 4781671109827199097
        ChildIds: 17957404807336401493
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
        Folder {
          IsGroup: true
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 17957404807336401493
        Name: "Geo"
        Transform {
          Location {
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 1645188909067253156
        ChildIds: 16708840998250022641
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
        Folder {
          IsGroup: true
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 16708840998250022641
        Name: "Whelp Mob"
        Transform {
          Location {
            X: 6.60551405
            Y: -42.3000946
            Z: 122.144463
          }
          Rotation {
            Yaw: -89.9999924
          }
          Scale {
            X: 1.32993436
            Y: 1.32993436
            Z: 1.32993436
          }
        }
        ParentId: 17957404807336401493
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_Detail1:id"
            AssetReference {
              Id: 675563715440209277
            }
          }
          Overrides {
            Name: "ma:Shared_Detail1:color"
            Color {
              R: 0.77
              G: 0.367152303
              A: 1
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 15053574073305526264
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.132847607
              G: 0.340000033
              A: 1
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
            Id: 14320420807192399895
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
              Id: 841534158063459245
            }
            SkinnedMeshes {
              Id: 841534158063459245
            }
            SkinnedMeshes {
              Id: 841534158063459245
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
    }
    Assets {
      Id: 14320420807192399895
      Name: "Whelp Mob"
      PlatformAssetType: 17
      PrimaryAsset {
        AssetType: "AnimatedMeshAssetRef"
        AssetId: "npc_dragonling_chubby_basic_001_ref"
      }
    }
    Assets {
      Id: 675563715440209277
      Name: "Emissive Glow Transparent"
      PlatformAssetType: 2
      PrimaryAsset {
        AssetType: "MaterialAssetRef"
        AssetId: "mi_basic_emissive_001"
      }
    }
    PrimaryAssetId {
      AssetType: "None"
      AssetId: "None"
    }
  }
  SerializationVersion: 120
  VirtualFolderPath: "Art (Geo and Collision)"
  VirtualFolderPath: "Producers"
}