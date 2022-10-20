Assets {
  Id: 6113325261809187088
  Name: "Helper_TreasureChest"
  PlatformAssetType: 5
  TemplateAsset {
    ObjectBlock {
      RootId: 9455165996919588474
      Objects {
        Id: 9455165996919588474
        Name: "Helper_TreasureChest"
        Transform {
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 4781671109827199097
        ChildIds: 5701258999208197547
        ChildIds: 880872475090617658
        UnregisteredParameters {
          Overrides {
            Name: "cs:Trigger"
            ObjectReference {
              SubObjectId: 5701258999208197547
            }
          }
          Overrides {
            Name: "cs:Lid"
            ObjectReference {
              SubObjectId: 11800010630058283268
            }
          }
          Overrides {
            Name: "cs:OpenVFX"
            ObjectReference {
              SubObjectId: 14657994421933908917
            }
          }
          Overrides {
            Name: "cs:OpenSound"
            ObjectReference {
              SubObjectId: 11238385979738406207
            }
          }
        }
        WantsNetworking: true
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
        Id: 5701258999208197547
        Name: "Trigger"
        Transform {
          Location {
            X: -0.000295639038
            Y: 0.000149250031
            Z: 53.6575394
          }
          Rotation {
            Roll: 2.13443343e-07
          }
          Scale {
            X: 2
            Y: 2
            Z: 2
          }
        }
        ParentId: 9455165996919588474
        WantsNetworking: true
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Trigger {
          Interactable: true
          InteractionLabel: "Open chest"
          TeamSettings {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          TriggerShape_v2 {
            Value: "mc:etriggershape:box"
          }
          InteractionTemplate {
          }
          BreadcrumbTemplate {
          }
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 880872475090617658
        Name: "ClientContext"
        Transform {
          Location {
            Y: 10
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 9455165996919588474
        ChildIds: 3744699911756155614
        ChildIds: 11800010630058283268
        ChildIds: 14657994421933908917
        ChildIds: 11238385979738406207
        ChildIds: 141700915400388643
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
        Id: 3744699911756155614
        Name: "Fantasy Chest Base 01"
        Transform {
          Location {
            Y: -10
          }
          Rotation {
          }
          Scale {
            X: 1.5
            Y: 1.5
            Z: 1.5
          }
        }
        ParentId: 880872475090617658
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
            Id: 3753434009625901326
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
      Objects {
        Id: 11800010630058283268
        Name: "Lid"
        Transform {
          Location {
            X: 0.000141906741
            Y: 44.8995628
            Z: 67.5000229
          }
          Rotation {
            Yaw: -179.999969
          }
          Scale {
            X: 1.5
            Y: 1.5
            Z: 1.5
          }
        }
        ParentId: 880872475090617658
        ChildIds: 2576349931036103302
        ChildIds: 6237361465980054705
        ChildIds: 6711141681260254698
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
            Id: 9188351867310556903
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
      Objects {
        Id: 2576349931036103302
        Name: "Flare Billboard"
        Transform {
          Location {
            X: 0.384784281
            Y: 78.8375244
            Z: 8.24585
          }
          Rotation {
            Pitch: -2.73207552e-05
            Yaw: -90.0000381
            Roll: 89.999855
          }
          Scale {
            X: 0.666666687
            Y: 0.666666687
            Z: 0.666666687
          }
        }
        ParentId: 11800010630058283268
        UnregisteredParameters {
          Overrides {
            Name: "bp:Flare Shape"
            Int: 1
          }
          Overrides {
            Name: "bp:Orient To Camera"
            Bool: false
          }
          Overrides {
            Name: "bp:Height"
            Float: 0.980520904
          }
          Overrides {
            Name: "bp:Width"
            Float: 1.79359484
          }
          Overrides {
            Name: "bp:Emissive Boost"
            Float: 12.9349737
          }
          Overrides {
            Name: "bp:color"
            Color {
              R: 0.0400000215
              G: 0.961854339
              B: 1
              A: 1
            }
          }
          Overrides {
            Name: "bp:Rotate Texture"
            Bool: true
          }
          Overrides {
            Name: "bp:Auto Rotate"
            Bool: true
          }
          Overrides {
            Name: "bp:Rotation Rate"
            Float: 6.85632324
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
            Id: 4488444258523261897
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
        Id: 6237361465980054705
        Name: "Flare Billboard"
        Transform {
          Location {
            X: 0.384784281
            Y: 78.8375244
            Z: 8.24585
          }
          Rotation {
            Pitch: -6.14717e-05
            Yaw: -90.0000229
            Roll: 89.9998245
          }
          Scale {
            X: 0.666666687
            Y: 0.666666687
            Z: 0.666666687
          }
        }
        ParentId: 11800010630058283268
        UnregisteredParameters {
          Overrides {
            Name: "bp:Flare Shape"
            Int: 3
          }
          Overrides {
            Name: "bp:Orient To Camera"
            Bool: false
          }
          Overrides {
            Name: "bp:Height"
            Float: 0.980520904
          }
          Overrides {
            Name: "bp:Width"
            Float: 1.79359484
          }
          Overrides {
            Name: "bp:Emissive Boost"
            Float: 12.9349737
          }
          Overrides {
            Name: "bp:color"
            Color {
              R: 0.0400000215
              G: 0.961854339
              B: 1
              A: 1
            }
          }
          Overrides {
            Name: "bp:Rotate Texture"
            Bool: true
          }
          Overrides {
            Name: "bp:Auto Rotate"
            Bool: true
          }
          Overrides {
            Name: "bp:Rotation Rate"
            Float: -7.78631592
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
            Id: 4488444258523261897
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
        Id: 6711141681260254698
        Name: "Point Light"
        Transform {
          Location {
            X: 1.87616461e-05
            Y: 78.6920166
            Z: 6.87996435
          }
          Rotation {
          }
          Scale {
            X: 0.666666687
            Y: 0.666666687
            Z: 0.666666687
          }
        }
        ParentId: 11800010630058283268
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Light {
          Intensity: 50
          Color {
            R: 0.0299999714
            G: 0.942185342
            B: 1
            A: 1
          }
          VolumetricIntensity: 5
          TeamSettings {
          }
          Light {
            Temperature: 6500
            LocalLight {
              AttenuationRadius: 310.330933
              PointLight {
                SourceRadius: 20
                SoftSourceRadius: 20
                FallOffExponent: 8
                UseFallOffExponent: true
              }
            }
            MaxDrawDistance: 5000
            MaxDistanceFadeRange: 1000
          }
          ShadowBias: 0.4
          ShadowSlopeBias: 0.6
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 14657994421933908917
        Name: "Treasure Ray Burst"
        Transform {
          Location {
            X: 0.000163078308
            Y: -10.0000706
            Z: 97.552948
          }
          Rotation {
            Pitch: 6.83018879e-06
            Roll: 1.49410266e-06
          }
          Scale {
            X: 1.2
            Y: 1.2
            Z: 1.2
          }
        }
        ParentId: 880872475090617658
        UnregisteredParameters {
          Overrides {
            Name: "bp:color"
            Color {
              G: 0.809999943
              B: 0.713443875
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
        Blueprint {
          BlueprintAsset {
            Id: 6499652814951159903
          }
          TeamSettings {
          }
          Vfx {
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
        Id: 11238385979738406207
        Name: "Object Fantasy Treasure Chest Open 01 SFX"
        Transform {
          Location {
            Y: -10
            Z: 80.7104492
          }
          Rotation {
          }
          Scale {
            X: 1.2
            Y: 1.2
            Z: 1.2
          }
        }
        ParentId: 880872475090617658
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
            Id: 3267333919010674862
          }
          Volume: 1
          Falloff: -1
          Radius: -1
          EnableOcclusion: true
          IsSpatializationEnabled: true
          IsAttenuationEnabled: true
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 141700915400388643
        Name: "Outline Object"
        Transform {
          Location {
            Y: -10
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 880872475090617658
        UnregisteredParameters {
          Overrides {
            Name: "bp:Object To Outline"
            ObjectReference {
              SubObjectId: 9455165996919588474
            }
          }
          Overrides {
            Name: "bp:Color A"
            Color {
              R: 0.367453694
              G: 7.65339279
              B: 15
              A: 0.880000055
            }
          }
          Overrides {
            Name: "bp:Thickness"
            Float: 1.21468055
          }
          Overrides {
            Name: "bp:Hierarchy Discovery Depth"
            Int: 2
          }
          Overrides {
            Name: "bp:Max Distance"
            Float: 0
          }
          Overrides {
            Name: "bp:Min Distance"
            Float: 0
          }
          Overrides {
            Name: "bp:Max Distance Thickness"
            Float: 1.84827864
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
            Id: 16794824220446618369
          }
          TeamSettings {
          }
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
    }
    Assets {
      Id: 3753434009625901326
      Name: "Fantasy Chest Base 01"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_fantasy_chest_001_ref"
      }
    }
    Assets {
      Id: 9188351867310556903
      Name: "Fantasy Chest Lid 01"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_fantasy_chest_lid_001_ref"
      }
    }
    Assets {
      Id: 4488444258523261897
      Name: "Flare Billboard"
      PlatformAssetType: 6
      PrimaryAsset {
        AssetType: "BlueprintAssetRef"
        AssetId: "fxbp_flare_object"
      }
    }
    Assets {
      Id: 6499652814951159903
      Name: "Treasure Ray Burst"
      PlatformAssetType: 8
      PrimaryAsset {
        AssetType: "VfxBlueprintAssetRef"
        AssetId: "fxbp_Treasure_Rays"
      }
    }
    Assets {
      Id: 3267333919010674862
      Name: "Object Fantasy Treasure Chest Open 01 SFX"
      PlatformAssetType: 7
      PrimaryAsset {
        AssetType: "AudioAssetRef"
        AssetId: "sfx_object_fantasy_treasure_chest_open_01_Cue_ref"
      }
    }
    Assets {
      Id: 16794824220446618369
      Name: "Outline Object"
      PlatformAssetType: 20
      PrimaryAsset {
        AssetType: "BlueprintAssetRef"
        AssetId: "fxbp_local_outline"
      }
    }
    PrimaryAssetId {
      AssetType: "None"
      AssetId: "None"
    }
  }
  SerializationVersion: 118
}
