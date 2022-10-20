Assets {
  Id: 11852799625917719299
  Name: "ITEM_NonEquippable_Essence_Pearl"
  PlatformAssetType: 5
  TemplateAsset {
    ObjectBlock {
      RootId: 16853471139221949001
      Objects {
        Id: 16853471139221949001
        Name: "ITEM_NonEquippable_Essence_Pearl"
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
              Id: 10518316656212319223
            }
          }
          Overrides {
            Name: "cs:IconRotation"
            Float: 0
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
      Id: 10518316656212319223
      Name: "Fantasy Craft Stone 028"
      PlatformAssetType: 9
      PrimaryAsset {
        AssetType: "PlatformBrushAssetRef"
        AssetId: "UI_Fantasy_Crafting_Stone_028"
      }
    }
    PrimaryAssetId {
      AssetType: "None"
      AssetId: "None"
    }
  }
  SerializationVersion: 118
}
