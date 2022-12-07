Assets {
  Id: 17595504916760055462
  Name: "Melee Swipe Effect Half Circle"
  PlatformAssetType: 5
  TemplateAsset {
    ObjectBlock {
      RootId: 10583237932783217537
      Objects {
        Id: 10583237932783217537
        Name: "Melee Swipe Effect Half Circle"
        Transform {
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 4781671109827199097
        ChildIds: 1758456009739238479
        ChildIds: 7696539981064109144
        ChildIds: 3004073210772236945
        ChildIds: 12463050562322954502
        UnregisteredParameters {
        }
        Lifespan: 3
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
        NetworkContext {
          MinDetailLevel {
            Value: "mc:edetaillevel:low"
          }
          MaxDetailLevel {
            Value: "mc:edetaillevel:ultra"
          }
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:medium"
        }
      }
      Objects {
        Id: 1758456009739238479
        Name: "Sword Swipe Half Circle VFX"
        Transform {
          Location {
          }
          Rotation {
            Roll: -179.999939
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 10583237932783217537
        UnregisteredParameters {
          Overrides {
            Name: "bp:color"
            Color {
              R: 0.761000216
              G: 1
              B: 2
              A: 1
            }
          }
          Overrides {
            Name: "bp:Edge Color"
            Color {
              R: 1
              G: 0.920529842
              B: 0.52
              A: 1
            }
          }
          Overrides {
            Name: "bp:Size"
            Vector {
              X: 5.5
              Y: 5.5
              Z: 1
            }
          }
          Overrides {
            Name: "bp:Life"
            Float: 0.35
          }
          Overrides {
            Name: "bp:Emissive Boost"
            Float: 6
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
            Id: 860140904207434054
          }
          Vfx {
            AutoPlay: true
          }
        }
        Relevance {
          Value: "mc:edistancerelevance:medium"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 7696539981064109144
        Name: "Sword Swipe Half Circle VFX"
        Transform {
          Location {
          }
          Rotation {
            Roll: -179.999939
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 10583237932783217537
        UnregisteredParameters {
          Overrides {
            Name: "bp:color"
            Color {
              R: 0.614583313
              G: 0.525041461
              B: 0.479374975
              A: 1
            }
          }
          Overrides {
            Name: "bp:Edge Color"
            Color {
              R: 1
              G: 0.627019882
              B: 0.36
              A: 1
            }
          }
          Overrides {
            Name: "bp:Size"
            Vector {
              X: 4.2
              Y: 4.2
              Z: 1
            }
          }
          Overrides {
            Name: "bp:Life"
            Float: 0.28
          }
          Overrides {
            Name: "bp:Emissive Boost"
            Float: 1
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
            Id: 860140904207434054
          }
          Vfx {
            AutoPlay: true
          }
        }
        Relevance {
          Value: "mc:edistancerelevance:medium"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 3004073210772236945
        Name: "Sword Swipe Whoosh 01 SFX"
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
        ParentId: 10583237932783217537
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
        AudioInstance {
          AudioAsset {
            Id: 1647461845235488487
          }
          AutoPlay: true
          Volume: 1
          Falloff: 3600
          Radius: 400
          IsSpatializationEnabled: true
          IsAttenuationEnabled: true
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 12463050562322954502
        Name: "Sword Swipe Schwing SFX"
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
        ParentId: 10583237932783217537
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
        AudioInstance {
          AudioAsset {
            Id: 6328382799080238542
          }
          AutoPlay: true
          Volume: 0.7
          Falloff: 3600
          Radius: 400
          IsSpatializationEnabled: true
          IsAttenuationEnabled: true
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
    }
    Assets {
      Id: 860140904207434054
      Name: "Sword Swipe Half Circle"
      PlatformAssetType: 8
      PrimaryAsset {
        AssetType: "VfxBlueprintAssetRef"
        AssetId: "fxbp_sword_swipe_01"
      }
    }
    Assets {
      Id: 1647461845235488487
      Name: "Sword Swipe Whoosh 01 SFX"
      PlatformAssetType: 7
      PrimaryAsset {
        AssetType: "AudioAssetRef"
        AssetId: "sfx_sword_swipe_whoosh_01_Cue_ref"
      }
    }
    Assets {
      Id: 6328382799080238542
      Name: "Sword Swipe Schwing SFX"
      PlatformAssetType: 7
      PrimaryAsset {
        AssetType: "AudioAssetRef"
        AssetId: "sfx_sword_swipe_schwing"
      }
    }
    PrimaryAssetId {
      AssetType: "None"
      AssetId: "None"
    }
  }
  SerializationVersion: 121
  VirtualFolderPath: "Weapons"
}
