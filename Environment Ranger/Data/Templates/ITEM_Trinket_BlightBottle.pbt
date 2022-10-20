Assets {
  Id: 6696268533687136585
  Name: "ITEM_Trinket_BlightBottle"
  PlatformAssetType: 5
  TemplateAsset {
    ObjectBlock {
      RootId: 13173567228139216564
      Objects {
        Id: 13173567228139216564
        Name: "ITEM_Trinket_BlightBottle"
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
              Id: 12867960140914083954
            }
          }
          Overrides {
            Name: "cs:AbilityName1"
            String: "Blight Bottle"
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
      Id: 12867960140914083954
      Name: "Fantasy Spell Potion 011"
      PlatformAssetType: 9
      PrimaryAsset {
        AssetType: "PlatformBrushAssetRef"
        AssetId: "UI_Fantasy_Potion_011"
      }
    }
    PrimaryAssetId {
      AssetType: "None"
      AssetId: "None"
    }
  }
  SerializationVersion: 118
}
