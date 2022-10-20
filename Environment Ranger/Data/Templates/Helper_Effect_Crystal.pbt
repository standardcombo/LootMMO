Assets {
  Id: 4302510522404688009
  Name: "Helper_Effect_Crystal"
  PlatformAssetType: 5
  TemplateAsset {
    ObjectBlock {
      RootId: 8903066882154405306
      Objects {
        Id: 8903066882154405306
        Name: "Helper_Effect_Crystal"
        Transform {
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 14459911846764001893
        ChildIds: 15557035568503246274
        UnregisteredParameters {
          Overrides {
            Name: "cs:HealthFraction"
            Float: 1
          }
          Overrides {
            Name: "cs:CurrentTask"
            String: ""
          }
          Overrides {
            Name: "cs:TargetID"
            String: ""
          }
          Overrides {
            Name: "cs:Name"
            String: "Crystal"
          }
          Overrides {
            Name: "cs:Level"
            Int: 16
          }
          Overrides {
            Name: "cs:BaseMaxHitPoints"
            Float: 2000
          }
          Overrides {
            Name: "cs:MoveSpeed"
            Float: 1100
          }
          Overrides {
            Name: "cs:EngageRange"
            Float: 1200
          }
          Overrides {
            Name: "cs:ImmuneToStun"
            Bool: false
          }
          Overrides {
            Name: "cs:CapsuleHeight"
            Float: 210
          }
          Overrides {
            Name: "cs:CapsuleWidth"
            Float: 100
          }
          Overrides {
            Name: "cs:Experience"
            Float: 5
          }
          Overrides {
            Name: "cs:Task1"
            String: "crystal_checkshatter"
          }
          Overrides {
            Name: "cs:DropKey1"
            String: "HRCommonTrash"
          }
          Overrides {
            Name: "cs:DropChance1"
            Float: 0.08
          }
          Overrides {
            Name: "cs:DropKey2"
            String: "HRUncommonTrash"
          }
          Overrides {
            Name: "cs:DropChance2"
            Float: 0.08
          }
          Overrides {
            Name: "cs:DropKey3"
            String: "HREpicTrash"
          }
          Overrides {
            Name: "cs:DropChance3"
            Float: 0.0008
          }
          Overrides {
            Name: "cs:DropMinDifficulty3"
            Int: 3
          }
          Overrides {
            Name: "cs:DropKey4"
            String: "Shards"
          }
          Overrides {
            Name: "cs:DropChance4"
            Float: 0.08
          }
          Overrides {
            Name: "cs:MovementEffectTemplate"
            AssetReference {
              Id: 841534158063459245
            }
          }
          Overrides {
            Name: "cs:DeathEffectTemplate"
            AssetReference {
              Id: 841534158063459245
            }
          }
          Overrides {
            Name: "cs:FollowRoot"
            ObjectReference {
              SelfId: 841534158063459245
            }
          }
        }
        WantsNetworking: true
        Collidable_v2 {
          Value: "mc:ecollisionsetting:forceoff"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:forceoff"
        }
        NetworkContext {
          MinDetailLevel {
            Value: "mc:edetaillevel:low"
          }
          MaxDetailLevel {
            Value: "mc:edetaillevel:ultra"
          }
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 15557035568503246274
        Name: "Spike"
        Transform {
          Location {
            Z: 110
          }
          Rotation {
            Pitch: -80.085022
            Yaw: 167.397034
            Roll: -162.954605
          }
          Scale {
            X: 0.703486383
            Y: 0.484942764
            Z: 0.48488009
          }
        }
        ParentId: 8903066882154405306
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 6914112008052200859
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
          Value: "mc:ecollisionsetting:forceoff"
        }
        CoreMesh {
          MeshAsset {
            Id: 10068790783914181223
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          InteractWithTriggers: true
          StaticMesh {
            Physics {
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
        IsReplicationEnabledByDefault: true
      }
    }
    Assets {
      Id: 10068790783914181223
      Name: "Rock 02"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_rock_generic_002_sm_rock_generic_002_LOD0"
      }
    }
    PrimaryAssetId {
      AssetType: "None"
      AssetId: "None"
    }
  }
  SerializationVersion: 118
}
