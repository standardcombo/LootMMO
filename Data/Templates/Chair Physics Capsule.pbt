Assets {
  Id: 9051331588281355335
  Name: "Chair Physics Capsule"
  PlatformAssetType: 5
  TemplateAsset {
    ObjectBlock {
      RootId: 4369897456220030020
      Objects {
        Id: 4369897456220030020
        Name: "Chair Physics Capsule"
        Transform {
          Scale {
            X: 0.723836362
            Y: 0.723836362
            Z: 0.723836362
          }
        }
        ParentId: 4781671109827199097
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
      }
    }
    PrimaryAssetId {
      AssetType: "None"
      AssetId: "None"
    }
  }
  SerializationVersion: 116
  VirtualFolderPath: "Social Elements"
}
