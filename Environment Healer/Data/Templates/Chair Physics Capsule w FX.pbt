Assets {
  Id: 15071796687113620886
  Name: "Chair Physics Capsule w FX"
  PlatformAssetType: 5
  TemplateAsset {
    ObjectBlock {
      RootId: 4369897456220030020
      Objects {
        Id: 4369897456220030020
        Name: "Chair Physics Capsule w FX"
        Transform {
          Scale {
            X: 0.723836362
            Y: 0.723836362
            Z: 0.723836362
          }
        }
        ParentId: 4781671109827199097
        ChildIds: 5994188318230166650
        WantsNetworking: true
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:forceoff"
        }
        EditorIndicatorVisibility {
          Value: "mc:eindicatorvisibility:visiblewhenselected"
        }
        PhysicsObject {
          PhysicsShape {
            Value: "mc:ephysicsshape:capsule"
          }
          Settings {
            Mass: 100
            LinearDamping: 0.5
            AngularDamping: 1.2
          }
          TeamSettings {
            IsEnemyCollisionEnabled: true
          }
          Radius: 50
          Length: 200
          DamageSettings {
            MaxHitpoints: 100
            StartingHitpoints: 100
            StartInvulnerable: true
            DestroyOnDeath: true
            DestroyOnDeathClientTemplateId {
              Id: 841534158063459245
            }
            DestroyOnDeathNetworkedTemplateId {
              Id: 841534158063459245
            }
          }
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 5994188318230166650
        Name: "ChairPhysicsFX"
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
        ParentId: 4369897456220030020
        ChildIds: 2895344367580037257
        ChildIds: 12091719161696961577
        UnregisteredParameters {
          Overrides {
            Name: "cs:ImpactSound"
            ObjectReference {
              SubObjectId: 12091719161696961577
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
        EditorIndicatorVisibility {
          Value: "mc:eindicatorvisibility:visiblewhenselected"
        }
        Script {
          ScriptAsset {
            Id: 17957008474789495924
          }
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 2895344367580037257
        Name: "Fire Chunk Whoosh Throw 01 SFX"
        Transform {
          Location {
          }
          Rotation {
          }
          Scale {
            X: 1.38152766
            Y: 1.38152766
            Z: 1.38152766
          }
        }
        ParentId: 5994188318230166650
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
        EditorIndicatorVisibility {
          Value: "mc:eindicatorvisibility:visiblewhenselected"
        }
        AudioInstance {
          AudioAsset {
            Id: 4912420516731848444
          }
          AutoPlay: true
          Volume: 0.641740143
          Falloff: 4000
          Radius: 200
          IsSpatializationEnabled: true
          IsAttenuationEnabled: true
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 12091719161696961577
        Name: "Impact Projectile Wood Heavy 01 SFX"
        Transform {
          Location {
          }
          Rotation {
          }
          Scale {
            X: 1.38152766
            Y: 1.38152766
            Z: 1.38152766
          }
        }
        ParentId: 5994188318230166650
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
        EditorIndicatorVisibility {
          Value: "mc:eindicatorvisibility:visiblewhenselected"
        }
        AudioInstance {
          AudioAsset {
            Id: 14405464944401082753
          }
          Volume: 1
          Falloff: 4000
          Radius: 200
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
      Id: 4912420516731848444
      Name: "Fire Chunk Whoosh Throw 01 SFX"
      PlatformAssetType: 7
      PrimaryAsset {
        AssetType: "AudioAssetRef"
        AssetId: "sfx_fire_chunk_whoosh_throw_01_Cue_ref"
      }
    }
    Assets {
      Id: 14405464944401082753
      Name: "Impact Projectile Wood Heavy 01 SFX"
      PlatformAssetType: 7
      PrimaryAsset {
        AssetType: "AudioAssetRef"
        AssetId: "sfx_projectile_impact_wood_heavy_01_Cue_ref"
      }
    }
    PrimaryAssetId {
      AssetType: "None"
      AssetId: "None"
    }
  }
  SerializationVersion: 118
  VirtualFolderPath: "Social Elements"
}
