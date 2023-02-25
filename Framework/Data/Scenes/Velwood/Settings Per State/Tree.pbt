Name: "Settings Per State"
RootId: 8772647101561410579
Objects {
  Id: 515488593097771483
  Name: "Settings Per State"
  Transform {
    Location {
      X: -5662.79883
      Y: -5059.90918
      Z: 4127.84277
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 8772647101561410579
  ChildIds: 1405547874800760526
  ChildIds: 14836916488669279949
  ChildIds: 5658703360178023047
  Collidable_v2 {
    Value: "mc:ecollisionsetting:forceoff"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:forceoff"
  }
  EditorIndicatorVisibility {
    Value: "mc:eindicatorvisibility:visiblewhenselected"
  }
  NetworkContext {
    MinDetailLevel {
      Value: "mc:edetaillevel:low"
    }
    MaxDetailLevel {
      Value: "mc:edetaillevel:ultra"
    }
    IsAllowedForPC: true
    IsAllowedForMobile: true
    IsAllowedForLowMemoryMobile: true
    PCMinDetailLevel {
      Value: "mc:edetaillevel:low"
    }
    PCMaxDetailLevel {
      Value: "mc:edetaillevel:ultra"
    }
    MobileMinDetailLevel {
      Value: "mc:edetaillevel:low"
    }
    MobileMaxDetailLevel {
      Value: "mc:edetaillevel:ultra"
    }
  }
  InstanceHistory {
    SelfId: 515488593097771483
    SubobjectId: 16714793592765905905
    InstanceId: 6022071548977971730
    TemplateId: 18354689802855935396
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 5658703360178023047
  Name: "Metal Door & Hatch Close Shut Set 01 SFX"
  Transform {
    Location {
      X: -1071.29578
      Y: -800.280457
      Z: 705.045166
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 515488593097771483
  UnregisteredParameters {
    Overrides {
      Name: "bp:Type"
      Enum {
        Value: "mc:esfx_metaldoors_01:2"
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
  EditorIndicatorVisibility {
    Value: "mc:eindicatorvisibility:visiblewhenselected"
  }
  Blueprint {
    BlueprintAsset {
      Id: 2465921116214737910
    }
    TeamSettings {
    }
    AudioBP {
      Volume: 1
      Falloff: 3600
      Radius: 400
      EnableOcclusion: true
      IsSpatializationEnabled: true
      IsAttenuationEnabled: true
    }
  }
  InstanceHistory {
    SelfId: 5658703360178023047
    SubobjectId: 12562301516212000941
    InstanceId: 6022071548977971730
    TemplateId: 18354689802855935396
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 14836916488669279949
  Name: "Third Person Camera"
  Transform {
    Location {
      X: 5662.8
      Y: 5059.90918
      Z: -3627.84277
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 515488593097771483
  UnregisteredParameters {
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
  Camera {
    AttachToLocalPlayer: true
    InitialDistance: 400
    MinDistance: 300
    MaxDistance: 600
    PositionOffset {
      Y: 60
    }
    RotationOffset {
    }
    FieldOfView: 90
    ViewWidth: 1200
    RotationMode {
      Value: "mc:erotationmode:lookangle"
    }
    MinPitch: -89
    MaxPitch: 89
    DoesPositionOffsetSpring: true
    UseAsAudioListener: true
    IsCameraCollisionEnabled: true
  }
  InstanceHistory {
    SelfId: 14836916488669279949
    SubobjectId: 3258023367585170663
    InstanceId: 6022071548977971730
    TemplateId: 18354689802855935396
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 1405547874800760526
  Name: "SettingsPerStateClient"
  Transform {
    Location {
      X: 1071.29578
      Y: 800.280457
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 515488593097771483
  UnregisteredParameters {
    Overrides {
      Name: "cs:SFX"
      ObjectReference {
        SelfId: 5658703360178023047
      }
    }
    Overrides {
      Name: "cs:CameraSocialSpace"
      ObjectReference {
        SelfId: 14836916488669279949
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
  EditorIndicatorVisibility {
    Value: "mc:eindicatorvisibility:visiblewhenselected"
  }
  Script {
    ScriptAsset {
      Id: 3014156083592942671
    }
  }
  InstanceHistory {
    SelfId: 1405547874800760526
    SubobjectId: 17532513668051191012
    InstanceId: 6022071548977971730
    TemplateId: 18354689802855935396
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 2531383648338611233
  Name: "Player Settings - Adventure"
  Transform {
    Location {
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 8772647101561410579
  UnregisteredParameters {
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
  Settings {
    PlayerMovementSettings {
      WalkSpeed: 640
      MaxAcceleration: 1800
      WalkableFloorAngle: 55
      JumpMaxCount: 1
      JumpVelocity: 900
      GroundFriction: 8
      GravityScale: 1.9
      MaxSwimSpeed: 420
      Buoyancy: 1
      TouchForceFactor: 1
      BrakingDecelerationFlying: 600
      MaxFlightSpeed: 600
      MovementControlMode {
        Value: "mc:emovementcontrolmode:lookrelative"
      }
      LookControlMode {
        Value: "mc:elookcontrolmode:relative"
      }
      FacingMode {
        Value: "mc:efacingmode:facemovement"
      }
      DefaultRotationRate: 540
      SlideRotationRate: 20
      LookAtCursorProjectionPlane {
        Value: "mc:eprojectionplane:xy"
      }
      MountedMaxAcceleration: 1800
      MountedWalkSpeed: 960
      MountedJumpMaxCount: 1
      MountedJumpVelocity: 900
      HeadVisibleToSelf: true
      IsSlideEnabled: true
      IsCrouchEnabled: true
      IsJumpEnabled: true
      CanMoveForward: true
      CanMoveBackward: true
      CanMoveLeft: true
      CanMoveRight: true
      AbilityAimMode {
        Value: "mc:eabilityaimmode:viewrelative"
      }
      MountChannelingTime: 1
      FlipOnMultiJump: true
      CanMoveUp: true
      CanMoveDown: true
      IsMountEnabled: true
      MaxHitpoints: 100
      PlayerMasterVolumeMultiplier: 1
      ComplexCollision: true
    }
  }
  InstanceHistory {
    SelfId: 2531383648338611233
    SubobjectId: 14119007029773614603
    InstanceId: 6022071548977971730
    TemplateId: 18354689802855935396
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 7611094134830260793
  Name: "Player Settings - Social Space"
  Transform {
    Location {
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 8772647101561410579
  UnregisteredParameters {
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
  Settings {
    PlayerMovementSettings {
      WalkSpeed: 640
      MaxAcceleration: 1800
      WalkableFloorAngle: 55
      JumpMaxCount: 1
      JumpVelocity: 900
      GroundFriction: 8
      GravityScale: 1.9
      MaxSwimSpeed: 420
      Buoyancy: 1
      TouchForceFactor: 1
      BrakingDecelerationFlying: 600
      MaxFlightSpeed: 600
      MovementControlMode {
        Value: "mc:emovementcontrolmode:lookrelative"
      }
      LookControlMode {
        Value: "mc:elookcontrolmode:relative"
      }
      FacingMode {
        Value: "mc:efacingmode:facemovement"
      }
      DefaultRotationRate: 540
      SlideRotationRate: 20
      LookAtCursorProjectionPlane {
        Value: "mc:eprojectionplane:xy"
      }
      MountedMaxAcceleration: 1800
      MountedWalkSpeed: 960
      MountedJumpMaxCount: 1
      MountedJumpVelocity: 900
      HeadVisibleToSelf: true
      IsSlideEnabled: true
      IsCrouchEnabled: true
      IsJumpEnabled: true
      CanMoveForward: true
      CanMoveBackward: true
      CanMoveLeft: true
      CanMoveRight: true
      AbilityAimMode {
        Value: "mc:eabilityaimmode:viewrelative"
      }
      MountChannelingTime: 1
      FlipOnMultiJump: true
      CanMoveUp: true
      CanMoveDown: true
      MaxHitpoints: 100
      PlayerMasterVolumeMultiplier: 1
      ComplexCollision: true
    }
  }
  InstanceHistory {
    SelfId: 7611094134830260793
    SubobjectId: 9903850815411408915
    InstanceId: 6022071548977971730
    TemplateId: 18354689802855935396
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 17531112956563811385
  Name: "Player Settings - Bag Selection"
  Transform {
    Location {
      X: 31461.1699
      Y: 1898.45984
      Z: 13283.2715
    }
    Rotation {
      Yaw: 163.949905
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 8772647101561410579
  UnregisteredParameters {
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
  Settings {
    IsDefault: true
    PlayerMovementSettings {
      WalkSpeed: 640
      MaxAcceleration: 1800
      WalkableFloorAngle: 55
      JumpMaxCount: 1
      JumpVelocity: 900
      GroundFriction: 8
      GravityScale: 1.9
      MaxSwimSpeed: 420
      Buoyancy: 1
      TouchForceFactor: 1
      BrakingDecelerationFlying: 600
      MaxFlightSpeed: 600
      MovementControlMode {
        Value: "mc:emovementcontrolmode:lookrelative"
      }
      LookControlMode {
        Value: "mc:elookcontrolmode:relative"
      }
      FacingMode {
        Value: "mc:efacingmode:faceaimwhenactive"
      }
      DefaultRotationRate: 540
      SlideRotationRate: 20
      LookAtCursorProjectionPlane {
        Value: "mc:eprojectionplane:xy"
      }
      MountedMaxAcceleration: 1800
      MountedWalkSpeed: 1280
      MountedJumpMaxCount: 1
      MountedJumpVelocity: 900
      HeadVisibleToSelf: true
      IsSlideEnabled: true
      AbilityAimMode {
        Value: "mc:eabilityaimmode:viewrelative"
      }
      MountChannelingTime: 1
      FlipOnMultiJump: true
      MaxHitpoints: 100
      PlayerMasterVolumeMultiplier: 1
      ComplexCollision: true
    }
  }
  InstanceHistory {
    SelfId: 17531112956563811385
    SubobjectId: 1412586894929780243
    InstanceId: 6022071548977971730
    TemplateId: 18354689802855935396
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 14755922501839155504
  Name: "CharacterSelect_Connector"
  Transform {
    Location {
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 8772647101561410579
  UnregisteredParameters {
    Overrides {
      Name: "cs:LoadGearOnJoin"
      Bool: true
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
  EditorIndicatorVisibility {
    Value: "mc:eindicatorvisibility:visiblewhenselected"
  }
  Script {
    ScriptAsset {
      Id: 15376335980291104838
    }
  }
  InstanceHistory {
    SelfId: 14755922501839155504
    SubobjectId: 3176747785450046234
    InstanceId: 6022071548977971730
    TemplateId: 18354689802855935396
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 17622168624151445805
  Name: "SettingsPerStateServer"
  Transform {
    Location {
      X: 31461.1699
      Y: 1898.45984
      Z: 14398.2715
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 8772647101561410579
  UnregisteredParameters {
    Overrides {
      Name: "cs:PlayerSettingsBagSelection"
      ObjectReference {
        SelfId: 17531112956563811385
      }
    }
    Overrides {
      Name: "cs:PlayerSettingsSocialSpace"
      ObjectReference {
        SelfId: 7611094134830260793
      }
    }
    Overrides {
      Name: "cs:PlayerSettingsAdventure"
      ObjectReference {
        SelfId: 2531383648338611233
      }
    }
    Overrides {
      Name: "cs:StartingState"
      Int: 40
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
  EditorIndicatorVisibility {
    Value: "mc:eindicatorvisibility:visiblewhenselected"
  }
  Script {
    ScriptAsset {
      Id: 3394354123281869471
    }
  }
  InstanceHistory {
    SelfId: 17622168624151445805
    SubobjectId: 1467899618607395591
    InstanceId: 6022071548977971730
    TemplateId: 18354689802855935396
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
