Assets {
  Id: 5745816144698176014
  Name: "Helper_RewardPointGrantedEffect"
  PlatformAssetType: 5
  TemplateAsset {
    ObjectBlock {
      RootId: 11801597560751715454
      Objects {
        Id: 11801597560751715454
        Name: "Helper_RewardPointGrantedEffect"
        Transform {
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 4781671109827199097
        ChildIds: 3886209326164612895
        ChildIds: 4956347675198778129
        ChildIds: 18297268407671747863
        ChildIds: 16216718125669680644
        UnregisteredParameters {
          Overrides {
            Name: "cs:Mesh"
            ObjectReference {
              SubObjectId: 3886209326164612895
            }
          }
          Overrides {
            Name: "cs:StartSound"
            ObjectReference {
              SubObjectId: 4956347675198778129
            }
          }
          Overrides {
            Name: "cs:EndSound"
            ObjectReference {
              SubObjectId: 18297268407671747863
            }
          }
          Overrides {
            Name: "cs:VFX"
            ObjectReference {
              SubObjectId: 16216718125669680644
            }
          }
        }
        Lifespan: 3
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
        Id: 3886209326164612895
        Name: "Reward Points Medal (RP)"
        Transform {
          Location {
            Z: 160
          }
          Rotation {
          }
          Scale {
            X: 0.5
            Y: 0.5
            Z: 0.5
          }
        }
        ParentId: 11801597560751715454
        ChildIds: 13848538441168594636
        UnregisteredParameters {
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
            Id: 12610144472463057903
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
          Value: "mc:eproxyrelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 13848538441168594636
        Name: "Outline Object"
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
        ParentId: 3886209326164612895
        UnregisteredParameters {
          Overrides {
            Name: "bp:Object To Outline"
            ObjectReference {
              SubObjectId: 3886209326164612895
            }
          }
          Overrides {
            Name: "bp:Color A"
            Color {
              R: 2.66666889
              B: 10
              A: 1
            }
          }
          Overrides {
            Name: "bp:Enabled"
            Bool: true
          }
          Overrides {
            Name: "bp:Multi-Color"
            Bool: false
          }
          Overrides {
            Name: "bp:Color B"
            Color {
              R: 2.36000156
              G: 0.200000107
              B: 5
              A: 1
            }
          }
          Overrides {
            Name: "bp:Color C"
            Color {
              R: 5
              G: 0.280000269
              B: 0.200000405
              A: 1
            }
          }
          Overrides {
            Name: "bp:Color Offset C"
            Float: 0.885700405
          }
          Overrides {
            Name: "bp:Color Offset B"
            Float: 0.390279949
          }
          Overrides {
            Name: "bp:Color Offset A"
            Float: 0.264172912
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
        Blueprint {
          BlueprintAsset {
            Id: 16577896491837673141
          }
          TeamSettings {
          }
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 4956347675198778129
        Name: "Start Sound"
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
        ParentId: 11801597560751715454
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
        AudioInstance {
          AudioAsset {
            Id: 5232710800784475023
          }
          Volume: 0.3
          Falloff: -1
          Radius: -1
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 18297268407671747863
        Name: "End Sound"
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
        ParentId: 11801597560751715454
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
        AudioInstance {
          AudioAsset {
            Id: 3294210194726332158
          }
          Volume: 0.5
          Falloff: -1
          Radius: -1
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 16216718125669680644
        Name: "Beam Down Teleport VFX"
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
        ParentId: 11801597560751715454
        UnregisteredParameters {
          Overrides {
            Name: "bp:Enable Central Flare Element"
            Bool: true
          }
          Overrides {
            Name: "bp:Enable Spiral Elements"
            Bool: true
          }
          Overrides {
            Name: "bp:Enable Ground Hot Spot"
            Bool: false
          }
          Overrides {
            Name: "bp:Spiral Color"
            Color {
              R: 1
              G: 0.450000048
              A: 1
            }
          }
          Overrides {
            Name: "bp:Particle Color"
            Color {
              R: 0.233333588
              B: 1
              A: 1
            }
          }
          Overrides {
            Name: "bp:Color"
            Color {
              R: 0.233333588
              B: 1
              A: 1
            }
          }
          Overrides {
            Name: "bp:Spiral Ground Element Color"
            Color {
              R: 0.614583
              G: 0.140953
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
        Blueprint {
          BlueprintAsset {
            Id: 7177062183354186388
          }
          TeamSettings {
          }
          Vfx {
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
      Id: 12610144472463057903
      Name: "Reward Points Medal (RP)"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_rp_medal_001_ref"
      }
    }
    Assets {
      Id: 16577896491837673141
      Name: "Outline Object"
      PlatformAssetType: 20
      PrimaryAsset {
        AssetType: "BlueprintAssetRef"
        AssetId: "fxbp_local_outline"
      }
    }
    Assets {
      Id: 5232710800784475023
      Name: "Sparkle Glitter Up Short 01 SFX"
      PlatformAssetType: 7
      PrimaryAsset {
        AssetType: "AudioAssetRef"
        AssetId: "sfx_sparkle_glitter_up_short_01_Cue_ref"
      }
    }
    Assets {
      Id: 3294210194726332158
      Name: "Coin Pickup 03 SFX"
      PlatformAssetType: 7
      PrimaryAsset {
        AssetType: "AudioAssetRef"
        AssetId: "sfx_coin_pickup_03_Cue_ref"
      }
    }
    Assets {
      Id: 7177062183354186388
      Name: "Beam Down Teleport VFX"
      PlatformAssetType: 8
      PrimaryAsset {
        AssetType: "VfxBlueprintAssetRef"
        AssetId: "fxbp_Teleporter_BeamDown"
      }
    }
    PrimaryAssetId {
      AssetType: "None"
      AssetId: "None"
    }
  }
  SerializationVersion: 118
}
