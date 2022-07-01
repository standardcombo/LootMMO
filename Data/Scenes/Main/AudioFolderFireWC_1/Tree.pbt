Name: "AudioFolderFireWC_1"
RootId: 7500197380698882688
Objects {
  Id: 5103358773417985767
  Name: "Fire and Flame Burning Loop Set 01 SFX"
  Transform {
    Location {
    }
    Rotation {
      Yaw: -14.0627699
    }
    Scale {
      X: 0.897012532
      Y: 0.897012532
      Z: 0.897012532
    }
  }
  ParentId: 7500197380698882688
  UnregisteredParameters {
    Overrides {
      Name: "bp:Type"
      Enum {
        Value: "mc:esfx_fireloops_01:9"
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
  Blueprint {
    BlueprintAsset {
      Id: 10118144510199222253
    }
    TeamSettings {
    }
    AudioBP {
      Repeat: true
      Volume: 0.463358819
      Falloff: 1500
      Radius: 1000
      EnableOcclusion: true
      FadeInTime: 1
      FadeOutTime: 1
      IsSpatializationEnabled: true
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
}
