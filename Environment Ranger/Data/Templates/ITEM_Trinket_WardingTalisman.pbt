Assets {
  Id: 5540115420668517170
  Name: "ITEM_Trinket_WardingTalisman"
  PlatformAssetType: 5
  TemplateAsset {
    ObjectBlock {
      RootId: 13173567228139216564
      Objects {
        Id: 13173567228139216564
        Name: "ITEM_Trinket_WardingTalisman"
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
              Id: 2290469474439431706
            }
          }
          Overrides {
            Name: "cs:AbilityName1"
            String: "Warding Talisman"
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
      Id: 2290469474439431706
      Name: "Fantasy Jewelry 032"
      PlatformAssetType: 9
      PrimaryAsset {
        AssetType: "PlatformBrushAssetRef"
        AssetId: "UI_Fantasy_Equip_Jewelry_032"
      }
    }
    PrimaryAssetId {
      AssetType: "None"
      AssetId: "None"
    }
  }
  SerializationVersion: 118
}
