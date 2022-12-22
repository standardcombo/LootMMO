Assets {
  Id: 6034558872979117633
  Name: "Helper_BleedEffect"
  PlatformAssetType: 5
  TemplateAsset {
    ObjectBlock {
      RootId: 10928808795437687725
      Objects {
        Id: 10928808795437687725
        Name: "Helper_BleedEffect"
        Transform {
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 14162296025304194376
        ChildIds: 5665035649425885609
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
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
        Id: 5665035649425885609
        Name: "Blood"
        Transform {
          Location {
            Z: 11.9594727
          }
          Rotation {
          }
          Scale {
            X: 1.71977937
            Y: 1.71977937
            Z: 1.71977937
          }
        }
        ParentId: 10928808795437687725
        ChildIds: 522604565975085946
        ChildIds: 13144399681346431813
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
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
        Id: 522604565975085946
        Name: "Magic Dark Large Item Collect 01 SFX"
        Transform {
          Location {
            Z: 180
          }
          Rotation {
          }
          Scale {
            X: 1.20619249
            Y: 1.20619249
            Z: 1.20619249
          }
        }
        ParentId: 5665035649425885609
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        AudioInstance {
          AudioAsset {
            Id: 3614048507387734608
          }
          AutoPlay: true
          Pitch: -400
          Volume: 1
          Falloff: -1
          Radius: -1
          IsSpatializationEnabled: true
          IsAttenuationEnabled: true
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 13144399681346431813
        Name: "Group"
        Transform {
          Location {
            Z: 180
          }
          Rotation {
            Yaw: 90
          }
          Scale {
            X: 0.907999039
            Y: 0.907999039
            Z: 0.907999039
          }
        }
        ParentId: 5665035649425885609
        ChildIds: 7873483163228446592
        ChildIds: 9734471901785588554
        ChildIds: 237772539041766309
        ChildIds: 776657078254476025
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
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
        Id: 7873483163228446592
        Name: "Waterfall 90 Outer Corner"
        Transform {
          Location {
            X: 26.4591694
            Y: 1.41662419
          }
          Rotation {
          }
          Scale {
            X: 0.0668955669
            Y: 0.0707627386
            Z: 0.15
          }
        }
        ParentId: 13144399681346431813
        UnregisteredParameters {
          Overrides {
            Name: "ma:waterfall:id"
            AssetReference {
              Id: 15520903157796868046
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
          Value: "mc:ecollisionsetting:forceon"
        }
        CoreMesh {
          MeshAsset {
            Id: 2663939160948252345
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
        Id: 9734471901785588554
        Name: "Waterfall 90 Outer Corner"
        Transform {
          Location {
            X: -2.47519612
            Y: 26.2308502
          }
          Rotation {
            Yaw: 89.9999924
          }
          Scale {
            X: 0.0668955669
            Y: 0.0707627386
            Z: 0.15
          }
        }
        ParentId: 13144399681346431813
        UnregisteredParameters {
          Overrides {
            Name: "ma:waterfall:id"
            AssetReference {
              Id: 15520903157796868046
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
          Value: "mc:ecollisionsetting:forceon"
        }
        CoreMesh {
          MeshAsset {
            Id: 2663939160948252345
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
        Id: 237772539041766309
        Name: "Waterfall 90 Outer Corner"
        Transform {
          Location {
            X: -28.1975155
            Y: -2.85140514
          }
          Rotation {
            Yaw: 179.999985
          }
          Scale {
            X: 0.0668955669
            Y: 0.0707627386
            Z: 0.15
          }
        }
        ParentId: 13144399681346431813
        UnregisteredParameters {
          Overrides {
            Name: "ma:waterfall:id"
            AssetReference {
              Id: 15520903157796868046
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
          Value: "mc:ecollisionsetting:forceon"
        }
        CoreMesh {
          MeshAsset {
            Id: 2663939160948252345
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
        Id: 776657078254476025
        Name: "Waterfall 90 Outer Corner"
        Transform {
          Location {
            X: 1.12084353
            Y: -27.5644455
          }
          Rotation {
            Yaw: -90
          }
          Scale {
            X: 0.0668955669
            Y: 0.0707627386
            Z: 0.15
          }
        }
        ParentId: 13144399681346431813
        UnregisteredParameters {
          Overrides {
            Name: "ma:waterfall:id"
            AssetReference {
              Id: 15520903157796868046
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
          Value: "mc:ecollisionsetting:forceon"
        }
        CoreMesh {
          MeshAsset {
            Id: 2663939160948252345
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
      Id: 3614048507387734608
      Name: "Gore Bloody Impact 02 SFX"
      PlatformAssetType: 7
      PrimaryAsset {
        AssetType: "AudioAssetRef"
        AssetId: "sfx_gore_bloody_impact_02_Cue_ref"
      }
    }
    Assets {
      Id: 2663939160948252345
      Name: "Waterfall 90 Outer Corner"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "waterfall_90oc"
      }
    }
    PrimaryAssetId {
      AssetType: "None"
      AssetId: "None"
    }
  }
  SerializationVersion: 123
  VirtualFolderPath: "Loot"
  VirtualFolderPath: "Ability"
  VirtualFolderPath: "StatusEffects"
}
