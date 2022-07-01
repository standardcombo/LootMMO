Name: "AudioFolderWaterwheel"
RootId: 12219226419110392707
Objects {
  Id: 6980197269022091737
  Name: "Water Wheel Water"
  Transform {
    Location {
      X: -500.886505
      Y: -1146.05725
      Z: -1413.85461
    }
    Rotation {
      Yaw: 42.1523
    }
    Scale {
      X: 1.46867466
      Y: 1.46867466
      Z: 1.46867466
    }
  }
  ParentId: 12219226419110392707
  UnregisteredParameters {
    Overrides {
      Name: "bp:Type"
      Enum {
        Value: "mc:esfx_nature_lake_bank:15"
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
      Id: 17381053717527779467
    }
    AudioBP {
      Repeat: true
      Pitch: -495.488892
      Volume: 0.352223247
      Falloff: 1000
      Radius: 3000
      EnableOcclusion: true
      FadeInTime: 2
      FadeOutTime: 2
      IsSpatializationEnabled: true
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
}
Objects {
  Id: 17303323786814718330
  Name: "Water Wheel"
  Transform {
    Location {
      X: -203.4561
      Y: -1231.81067
      Z: -928.43866
    }
    Rotation {
      Yaw: 42.1523
    }
    Scale {
      X: 1.46867466
      Y: 1.46867466
      Z: 1.46867466
    }
  }
  ParentId: 12219226419110392707
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
      Id: 14192181905678049807
    }
    Repeat: true
    Pitch: -1672.09363
    Volume: 0.435574919
    Falloff: 1000
    Radius: 3000
    EnableOcclusion: true
    FadeInTime: 2
    FadeOutTime: 2
    IsSpatializationEnabled: true
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
}
