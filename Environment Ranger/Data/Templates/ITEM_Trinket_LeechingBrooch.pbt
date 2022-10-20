Assets {
  Id: 17339500910592650016
  Name: "ITEM_Trinket_LeechingBrooch"
  PlatformAssetType: 5
  TemplateAsset {
    ObjectBlock {
      RootId: 13173567228139216564
      Objects {
        Id: 13173567228139216564
        Name: "ITEM_Trinket_LeechingBrooch"
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
            Name: "cs:Icon"
            AssetReference {
              Id: 1674472180965003280
            }
          }
          Overrides {
            Name: "cs:AbilityName1"
            String: "Leeching Brooch"
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
    }
    Assets {
      Id: 1674472180965003280
      Name: "Fantasy Jewelry 031"
      PlatformAssetType: 9
      PrimaryAsset {
        AssetType: "PlatformBrushAssetRef"
        AssetId: "UI_Fantasy_Equip_Jewelry_031"
      }
    }
    PrimaryAssetId {
      AssetType: "None"
      AssetId: "None"
    }
  }
  SerializationVersion: 118
}
