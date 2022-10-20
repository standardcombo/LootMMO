Assets {
  Id: 1325877988347473078
  Name: "Helper_PlayerState_Talents"
  PlatformAssetType: 5
  TemplateAsset {
    ObjectBlock {
      RootId: 6398422148110215303
      Objects {
        Id: 6398422148110215303
        Name: "Helper_PlayerState_Talents"
        Transform {
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 4781671109827199097
        UnregisteredParameters {
          Overrides {
            Name: "cs:TalentPoints"
            Int: 0
          }
          Overrides {
            Name: "cs:TreeName"
            String: ""
          }
          Overrides {
            Name: "cs:TalentPoints:isrep"
            Bool: true
          }
          Overrides {
            Name: "cs:TreeName:isrep"
            Bool: true
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
    }
    PrimaryAssetId {
      AssetType: "None"
      AssetId: "None"
    }
  }
  SerializationVersion: 118
}
