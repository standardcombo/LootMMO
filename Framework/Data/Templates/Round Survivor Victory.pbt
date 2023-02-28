Assets {
  Id: 3633337425523984458
  Name: "Round Survivor Victory"
  PlatformAssetType: 5
  TemplateAsset {
    ObjectBlock {
      RootId: 8266501221334044612
      Objects {
        Id: 8266501221334044612
        Name: "Round Survivor Victory"
        Transform {
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 15560188646105002552
        ChildIds: 17540424062460149547
        UnregisteredParameters {
          Overrides {
            Name: "cs:ByTeam"
            Bool: false
          }
          Overrides {
            Name: "cs:ByTeam:tooltip"
            String: "Unchecked, the round ends when only one player remains alive (or zero). Checked the round ends when only one team has living players."
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
        Folder {
          IsGroup: true
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 17540424062460149547
        Name: "RoundSurvivorVictoryServer"
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
        ParentId: 8266501221334044612
        UnregisteredParameters {
          Overrides {
            Name: "cs:API"
            AssetReference {
              Id: 11974742996071064388
            }
          }
          Overrides {
            Name: "cs:ComponentRoot"
            ObjectReference {
              SubObjectId: 8266501221334044612
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
            Id: 6636377056633664642
          }
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
    }
    PrimaryAssetId {
      AssetType: "TemplateAssetRef"
      AssetId: "Round_Survivor_Victory"
    }
  }
  SerializationVersion: 125
}
