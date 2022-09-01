Assets {
  Id: 14422640099515364949
  Name: "Portal Effect"
  PlatformAssetType: 5
  TemplateAsset {
    ObjectBlock {
      RootId: 2179609179360033862
      Objects {
        Id: 2179609179360033862
        Name: "Portal Effect"
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
            Id: 4111834840083783271
          }
          AutoPlay: true
          Transient: true
          Volume: 0.8
          Falloff: 1000
          Radius: 700
          IsSpatializationEnabled: true
          IsAttenuationEnabled: true
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
    }
    Assets {
      Id: 4111834840083783271
      Name: "Sci-fi Subtle Teleporter Portal Activate 01 SFX"
      PlatformAssetType: 7
      PrimaryAsset {
        AssetType: "AudioAssetRef"
        AssetId: "sfx_scifi_subtle_teleporter_portal_activate_01_Cue_ref"
      }
    }
    PrimaryAssetId {
      AssetType: "None"
      AssetId: "None"
    }
  }
  SerializationVersion: 118
}
