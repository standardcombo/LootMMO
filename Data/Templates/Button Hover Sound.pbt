Assets {
  Id: 16903709726430631836
  Name: "Button Hover Sound"
  PlatformAssetType: 5
  TemplateAsset {
    ObjectBlock {
      RootId: 15330102413691360883
      Objects {
        Id: 15330102413691360883
        Name: "Button Hover Sound"
        Transform {
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 4781671109827199097
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
            Id: 6902048857193867896
          }
          AutoPlay: true
          Transient: true
          Volume: 0.7
          Falloff: -1
          Radius: -1
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
    }
    Assets {
      Id: 6902048857193867896
      Name: "Button Hover Core 02 SFX"
      PlatformAssetType: 7
      PrimaryAsset {
        AssetType: "AudioAssetRef"
        AssetId: "sfxui_hoverselect_core_02_Cue_ref"
      }
    }
    PrimaryAssetId {
      AssetType: "None"
      AssetId: "None"
    }
  }
  SerializationVersion: 118
}
