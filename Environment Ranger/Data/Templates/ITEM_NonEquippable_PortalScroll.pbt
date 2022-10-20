Assets {
  Id: 12937296365139807720
  Name: "ITEM_NonEquippable_PortalScroll"
  PlatformAssetType: 5
  TemplateAsset {
    ObjectBlock {
      RootId: 8123379071497635818
      Objects {
        Id: 8123379071497635818
        Name: "ITEM_Miscellaneous_PortalScroll"
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
              Id: 18322289545352141421
            }
          }
          Overrides {
            Name: "cs:ConsumptionEffectScript"
            AssetReference {
              Id: 2980251689156894572
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
      Id: 18322289545352141421
      Name: "Fantasy Scroll 003"
      PlatformAssetType: 9
      PrimaryAsset {
        AssetType: "PlatformBrushAssetRef"
        AssetId: "UI_Fantasy_Equip_Scroll_003"
      }
    }
    PrimaryAssetId {
      AssetType: "None"
      AssetId: "None"
    }
  }
  SerializationVersion: 118
}
