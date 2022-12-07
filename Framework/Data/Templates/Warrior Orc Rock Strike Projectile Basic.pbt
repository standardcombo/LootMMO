Assets {
  Id: 17988687176319291930
  Name: "Warrior Orc Rock Strike Projectile Basic"
  PlatformAssetType: 5
  TemplateAsset {
    ObjectBlock {
      RootId: 2967714786163209352
      Objects {
        Id: 2967714786163209352
        Name: "Tank Orc Rock Strike Projectile Basic"
        Transform {
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 14162296025304194376
        ChildIds: 16631017209663659653
        ChildIds: 5909310159013890900
        UnregisteredParameters {
          Overrides {
            Name: "cs:DamageTrigger"
            ObjectReference {
              SubObjectId: 5909310159013890900
            }
          }
        }
        Lifespan: 5
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
        Id: 16631017209663659653
        Name: "ClientContext"
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
        ParentId: 2967714786163209352
        ChildIds: 4806473255851230114
        ChildIds: 6090785231726675979
        ChildIds: 4559369267486820111
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
        Id: 4806473255851230114
        Name: "Rock Trail VFX"
        Transform {
          Location {
            Z: -133.121094
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 7.5
            Z: 1.5
          }
        }
        ParentId: 16631017209663659653
        UnregisteredParameters {
          Overrides {
            Name: "bp:Base Color"
            Color {
              R: 0.940000057
              G: 0.317483455
              A: 1
            }
          }
          Overrides {
            Name: "bp:color"
            Color {
              R: 0.157
              G: 0.103517957
              B: 0.038150996
              A: 1
            }
          }
          Overrides {
            Name: "bp:Edge Color"
            Color {
              R: 2
              G: 0.5
              A: 1
            }
          }
          Overrides {
            Name: "bp:Ground Frost Color"
            Color {
              R: 0.200000048
              G: 0.0905960426
              B: 0.0600000173
              A: 0.8
            }
          }
          Overrides {
            Name: "bp:Vapor Color"
            Color {
              R: 0.149999976
              G: 0.088807933
              B: 0.0449999943
              A: 0.113725
            }
          }
          Overrides {
            Name: "bp:Size"
            Float: 0.6
          }
          Overrides {
            Name: "bp:Life"
            Float: 2
          }
          Overrides {
            Name: "bp:Density"
            Float: 4
          }
          Overrides {
            Name: "bp:Cracks Color"
            Color {
              A: 1
            }
          }
          Overrides {
            Name: "bp:Color"
            Color {
              R: 0.157
              G: 0.103517957
              B: 0.038150996
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
            Id: 5975046637337968167
          }
          TeamSettings {
          }
          Vfx {
            AutoPlay: true
          }
        }
        Relevance {
          Value: "mc:edistancerelevance:high"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 6090785231726675979
        Name: "Nature Rocks Debris Falling Heavy 01 SFX"
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
        ParentId: 16631017209663659653
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
        AudioInstance {
          AudioAsset {
            Id: 358916433543470531
          }
          AutoPlay: true
          Repeat: true
          Pitch: 600
          Volume: 1.3
          Falloff: 6300
          Radius: 1050
          FadeOutTime: 1
          IsSpatializationEnabled: true
          IsAttenuationEnabled: true
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 4559369267486820111
        Name: "Single Rock Ground Impact 01 SFX"
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
        ParentId: 16631017209663659653
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
        AudioInstance {
          AudioAsset {
            Id: 5081948203355976238
          }
          AutoPlay: true
          Repeat: true
          Volume: 1.3
          Falloff: -1
          Radius: -1
          FadeOutTime: 1
          IsSpatializationEnabled: true
          IsAttenuationEnabled: true
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 5909310159013890900
        Name: "Damage Trigger"
        Transform {
          Location {
            X: -70
            Z: -105.733398
          }
          Rotation {
          }
          Scale {
            X: 2.69999957
            Y: 7.8
            Z: 2.4
          }
        }
        ParentId: 2967714786163209352
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
    }
    Assets {
      Id: 5975046637337968167
      Name: "Ice Spikes Trail VFX"
      PlatformAssetType: 8
      PrimaryAsset {
        AssetType: "VfxBlueprintAssetRef"
        AssetId: "fxbp_ice_spikes_line"
      }
    }
    Assets {
      Id: 358916433543470531
      Name: "Nature Rocks Debris Falling Heavy 01 SFX"
      PlatformAssetType: 7
      PrimaryAsset {
        AssetType: "AudioAssetRef"
        AssetId: "sfx_nature_rocks_debris_falling_heavy_01_Cue_ref"
      }
    }
    Assets {
      Id: 5081948203355976238
      Name: "Single Rock Ground Impact 01 SFX"
      PlatformAssetType: 7
      PrimaryAsset {
        AssetType: "AudioAssetRef"
        AssetId: "sfx_single_rock_ground_impact_01_Cue_ref"
      }
    }
    PrimaryAssetId {
      AssetType: "None"
      AssetId: "None"
    }
  }
  SerializationVersion: 121
  VirtualFolderPath: "Loot"
  VirtualFolderPath: "Ability"
  VirtualFolderPath: "Assets"
}
