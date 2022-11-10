Assets {
  Id: 1988019442596915822
  Name: "Click_Sfx"
  PlatformAssetType: 5
  TemplateAsset {
    ObjectBlock {
      RootId: 17117083384172599677
      Objects {
        Id: 17117083384172599677
        Name: "Click_Sfx"
        Transform {
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 1258191214239267258
        UnregisteredParameters {
          Overrides {
            Name: "bp:Note"
            Enum {
              Value: "mc:esfx_ins_music_box:72"
            }
          }
          Overrides {
            Name: "bp:Sustain"
            Float: 1
          }
          Overrides {
            Name: "bp:Velocity"
            Int: 43
          }
        }
        Lifespan: 1
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
        Blueprint {
          BlueprintAsset {
            Id: 991937497145103339
          }
          TeamSettings {
          }
          AudioBP {
            AutoPlay: true
            Transient: true
            Volume: 0.4
            Falloff: 3600
            Radius: 400
          }
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
    }
    Assets {
      Id: 991937497145103339
      Name: "Music Box Sampled Instrument 01"
      PlatformAssetType: 10
      PrimaryAsset {
        AssetType: "AudioBlueprintAssetRef"
        AssetId: "sfxabp_sampled_music_box_ref"
      }
    }
    PrimaryAssetId {
      AssetType: "None"
      AssetId: "None"
    }
  }
  SerializationVersion: 120
  VirtualFolderPath: "UI Templates"
  VirtualFolderPath: "SFX"
}
