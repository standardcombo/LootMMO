Assets {
  Id: 9456878177018972373
  Name: "Coin Explosion VFX"
  PlatformAssetType: 5
  TemplateAsset {
    ObjectBlock {
      RootId: 3283256386257405582
      Objects {
        Id: 3283256386257405582
        Name: "Coin Explosion VFX"
        Transform {
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 4781671109827199097
        ChildIds: 6262624780296132050
        ChildIds: 11801194979754672464
        ChildIds: 9963300452095541973
        ChildIds: 5202688041127712800
        ChildIds: 12259601363139504139
        ChildIds: 5407205387170035225
        Lifespan: 4
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
        Id: 6262624780296132050
        Name: "Heavy Ground Rocky Debris Impact 01 SFX"
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
        ParentId: 3283256386257405582
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
            Id: 16735611449542770288
          }
          AutoPlay: true
          Transient: true
          Pitch: 1200
          Volume: 0.5
          Falloff: 5000
          Radius: 500
          IsSpatializationEnabled: true
          IsAttenuationEnabled: true
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 11801194979754672464
        Name: "Cash Coin Small Collect 01 SFX"
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
        ParentId: 3283256386257405582
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
            Id: 1725490977762203436
          }
          AutoPlay: true
          Transient: true
          Pitch: -200
          Volume: 0.4
          Falloff: 5000
          Radius: 500
          IsSpatializationEnabled: true
          IsAttenuationEnabled: true
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 9963300452095541973
        Name: "Metal Chain Rattle Medium 01 SFX"
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
        ParentId: 3283256386257405582
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
            Id: 2488491611101830314
          }
          AutoPlay: true
          Transient: true
          Pitch: -600
          Volume: 0.4
          Falloff: 5000
          Radius: 500
          IsSpatializationEnabled: true
          IsAttenuationEnabled: true
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 5202688041127712800
        Name: "Meta Coins Shuffling Purchase 01 SFX"
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
        ParentId: 3283256386257405582
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
            Id: 785883126864424841
          }
          AutoPlay: true
          Transient: true
          Pitch: -200
          Volume: 1
          Falloff: 5000
          Radius: 500
          IsSpatializationEnabled: true
          IsAttenuationEnabled: true
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 12259601363139504139
        Name: "Silver"
        Transform {
          Location {
            Z: 60
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 3283256386257405582
        ChildIds: 3049896990043395798
        UnregisteredParameters {
          Overrides {
            Name: "cs:Item"
            AssetReference {
              Id: 4328660811086992938
            }
          }
          Overrides {
            Name: "cs:ParticleScaleMultiplier"
            Float: 1
          }
          Overrides {
            Name: "cs:Life"
            Int: 30
          }
          Overrides {
            Name: "cs:Density"
            Int: 15
          }
          Overrides {
            Name: "cs:MinVelocity"
            Vector {
              X: -200
              Y: -200
              Z: 50
            }
          }
          Overrides {
            Name: "cs:MaxVelocity"
            Vector {
              X: 200
              Y: 200
              Z: 300
            }
          }
          Overrides {
            Name: "cs:Autoplay"
            Bool: true
          }
          Overrides {
            Name: "cs:LocalSpace"
            Bool: false
          }
          Overrides {
            Name: "cs:Collision"
            Bool: true
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
        Id: 3049896990043395798
        Name: "Item Explosion VFX"
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
        ParentId: 12259601363139504139
        UnregisteredParameters {
          Overrides {
            Name: "cs:DefaultParticleScale"
            Vector {
              X: 0.45
              Y: 0.45
              Z: 0.2
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
        Script {
          ScriptAsset {
            Id: 2232426427410080267
          }
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 5407205387170035225
        Name: "Gold"
        Transform {
          Location {
            Z: 60
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 3283256386257405582
        ChildIds: 9083767680044738403
        UnregisteredParameters {
          Overrides {
            Name: "cs:Item"
            AssetReference {
              Id: 1643650112586559101
            }
          }
          Overrides {
            Name: "cs:ParticleScaleMultiplier"
            Float: 1
          }
          Overrides {
            Name: "cs:Life"
            Int: 30
          }
          Overrides {
            Name: "cs:Density"
            Int: 30
          }
          Overrides {
            Name: "cs:MinVelocity"
            Vector {
              X: -200
              Y: -200
              Z: 50
            }
          }
          Overrides {
            Name: "cs:MaxVelocity"
            Vector {
              X: 200
              Y: 200
              Z: 300
            }
          }
          Overrides {
            Name: "cs:Autoplay"
            Bool: true
          }
          Overrides {
            Name: "cs:LocalSpace"
            Bool: false
          }
          Overrides {
            Name: "cs:Collision"
            Bool: true
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
        Id: 9083767680044738403
        Name: "Item Explosion VFX"
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
        ParentId: 5407205387170035225
        UnregisteredParameters {
          Overrides {
            Name: "cs:DefaultParticleScale"
            Vector {
              X: 0.5
              Y: 0.5
              Z: 0.25
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
        Script {
          ScriptAsset {
            Id: 2232426427410080267
          }
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
    }
    Assets {
      Id: 16735611449542770288
      Name: "Heavy Ground Rocky Debris Impact 01 SFX"
      PlatformAssetType: 7
      PrimaryAsset {
        AssetType: "AudioAssetRef"
        AssetId: "sfx_heavy_ground_rocky_debris_impact_01a_Cue_ref"
      }
    }
    Assets {
      Id: 1725490977762203436
      Name: "Cash Coin Small Collect 01 SFX"
      PlatformAssetType: 7
      PrimaryAsset {
        AssetType: "AudioAssetRef"
        AssetId: "sfx_cash_coin_small_collect_01_Cue_ref"
      }
    }
    Assets {
      Id: 2488491611101830314
      Name: "Metal Chain Rattle Medium 01 SFX"
      PlatformAssetType: 7
      PrimaryAsset {
        AssetType: "AudioAssetRef"
        AssetId: "sfx_metal_chain_rattle_medium_01a_Cue_ref"
      }
    }
    Assets {
      Id: 785883126864424841
      Name: "Meta Coins Shuffling Purchase 01 SFX"
      PlatformAssetType: 7
      PrimaryAsset {
        AssetType: "AudioAssetRef"
        AssetId: "sfx_meta_coins_purchase_01_cue_ref"
      }
    }
    PrimaryAssetId {
      AssetType: "None"
      AssetId: "None"
    }
  }
  SerializationVersion: 119
  VirtualFolderPath: "VFX"
}
