Name: "Velwood"
RootId: 10681643481591542134
Objects {
  Id: 8740467491177856248
  Name: "Freeze Camera"
  Transform {
    Location {
      Z: 40193.9
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 10681643481591542134
  ChildIds: 5288281068873659161
  ChildIds: 13197579381780805398
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
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 13197579381780805398
  Name: "Freeze Cam"
  Transform {
    Location {
      Z: -500
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 8740467491177856248
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
  EditorIndicatorVisibility {
    Value: "mc:eindicatorvisibility:alwaysvisible"
  }
  Camera {
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
      Value: "mc:erotationmode:default"
    }
    MinPitch: -89
    MaxPitch: 89
    DoesPositionOffsetSpring: true
    IsCameraCollisionEnabled: true
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 5288281068873659161
  Name: "FreezeCamera"
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
  ParentId: 8740467491177856248
  UnregisteredParameters {
    Overrides {
      Name: "cs:FreezeCam"
      ObjectReference {
        SelfId: 13197579381780805398
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
      Id: 7302290040465476668
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 1445534127684311904
  Name: "CinematicShot"
  Transform {
    Location {
      Z: -40193.9
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 10681643481591542134
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  TemplateInstance {
    ParameterOverrideMap {
      key: 3694843055699485210
      value {
        Overrides {
          Name: "Position"
          Vector {
            X: -6195.17676
            Y: -5522.36133
            Z: -10362.9805
          }
        }
      }
    }
    ParameterOverrideMap {
      key: 10467714333780274479
      value {
        Overrides {
          Name: "Position"
          Vector {
            X: -5682.73193
            Y: -4864.83496
            Z: -10395.0469
          }
        }
        Overrides {
          Name: "Rotation"
          Rotator {
            Pitch: 2.73829103
            Yaw: -129.135208
          }
        }
        Overrides {
          Name: "CameraMinimumDistance"
          Float: 0
        }
        Overrides {
          Name: "CameraMaximumDistance"
          Float: 0
        }
      }
    }
    ParameterOverrideMap {
      key: 11337539924846704978
      value {
        Overrides {
          Name: "Position"
          Vector {
            X: -5607.07617
            Y: -4771.85742
            Z: -10400.7656
          }
        }
        Overrides {
          Name: "Rotation"
          Rotator {
            Pitch: 2.73829103
            Yaw: -129.135208
          }
        }
        Overrides {
          Name: "CameraMinimumDistance"
          Float: 0
        }
        Overrides {
          Name: "CameraMaximumDistance"
          Float: 0
        }
      }
    }
    ParameterOverrideMap {
      key: 16121779860319454006
      value {
        Overrides {
          Name: "Name"
          String: "CinematicShot"
        }
        Overrides {
          Name: "Rotation"
          Rotator {
          }
        }
        Overrides {
          Name: "Scale"
          Vector {
            X: 1
            Y: 1
            Z: 1
          }
        }
        Overrides {
          Name: "cs:Duration"
          Float: 5
        }
        Overrides {
          Name: "cs:OrbitShortPath"
          Bool: false
        }
        Overrides {
          Name: "cs:LookAtTarget"
          Bool: true
        }
        Overrides {
          Name: "Position"
          Vector {
          }
        }
        Overrides {
          Name: "cs:LinearPath"
          Bool: true
        }
        Overrides {
          Name: "cs:UseEaseFunction"
          Bool: false
        }
        Overrides {
          Name: "cs:PlayOnKey"
          String: ""
        }
        Overrides {
          Name: "cs:PlayOnEvent"
          String: "Velwood.DoorCinematicCam"
        }
      }
    }
    TemplateAsset {
      Id: 14099964740102800412
    }
  }
}
Objects {
  Id: 17020583842861226211
  Name: "CinematicShot"
  Transform {
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 10681643481591542134
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  TemplateInstance {
    ParameterOverrideMap {
      key: 3694843055699485210
      value {
        Overrides {
          Name: "Position"
          Vector {
            X: -6195.17676
            Y: -5522.36133
            Z: -10292.2031
          }
        }
      }
    }
    ParameterOverrideMap {
      key: 10467714333780274479
      value {
        Overrides {
          Name: "Position"
          Vector {
            X: -4693.70557
            Y: -3964.00146
            Z: -10545.2148
          }
        }
        Overrides {
          Name: "Rotation"
          Rotator {
            Pitch: 4.56367254
            Yaw: -136.247314
          }
        }
        Overrides {
          Name: "CameraMinimumDistance"
          Float: 0
        }
        Overrides {
          Name: "CameraMaximumDistance"
          Float: 0
        }
      }
    }
    ParameterOverrideMap {
      key: 11337539924846704978
      value {
        Overrides {
          Name: "Position"
          Vector {
            X: -4533.85059
            Y: -4137.13574
            Z: -10547.4961
          }
        }
        Overrides {
          Name: "Rotation"
          Rotator {
            Pitch: 4.831532
            Yaw: -143.939575
            Roll: 1.07102274e-07
          }
        }
        Overrides {
          Name: "CameraMinimumDistance"
          Float: 0
        }
        Overrides {
          Name: "CameraMaximumDistance"
          Float: 0
        }
      }
    }
    ParameterOverrideMap {
      key: 16121779860319454006
      value {
        Overrides {
          Name: "Name"
          String: "CinematicShot"
        }
        Overrides {
          Name: "Rotation"
          Rotator {
          }
        }
        Overrides {
          Name: "Scale"
          Vector {
            X: 1
            Y: 1
            Z: 1
          }
        }
        Overrides {
          Name: "cs:Duration"
          Float: 3.2
        }
        Overrides {
          Name: "cs:OrbitShortPath"
          Bool: true
        }
        Overrides {
          Name: "cs:LookAtTarget"
          Bool: true
        }
        Overrides {
          Name: "cs:PlayOnKey"
          String: ""
        }
        Overrides {
          Name: "cs:PlayOnEvent"
          String: "Velwood.DoorCinematicCam"
        }
      }
    }
    TemplateAsset {
      Id: 14099964740102800412
    }
  }
}
Objects {
  Id: 9268530066773003686
  Name: "Velwood Door"
  Transform {
    Location {
      X: -6200.13232
      Y: -5530.91602
      Z: -10682.707
    }
    Rotation {
      Yaw: -128.591934
    }
    Scale {
      X: 0.806228638
      Y: 0.806228638
      Z: 0.806228638
    }
  }
  ParentId: 10681643481591542134
  ChildIds: 16546944413873057726
  ChildIds: 6847233342421385052
  ChildIds: 5356350509379687301
  ChildIds: 8585823007336702067
  ChildIds: 1814341030699701172
  ChildIds: 12301909330176211710
  UnregisteredParameters {
    Overrides {
      Name: "cs:AutoOpen"
      Bool: false
    }
    Overrides {
      Name: "cs:TimeOpen"
      Float: 3
    }
    Overrides {
      Name: "cs:OpenLabel"
      String: "Open Door"
    }
    Overrides {
      Name: "cs:CloseLabel"
      String: "Close Door"
    }
    Overrides {
      Name: "cs:Speed"
      Float: 450
    }
    Overrides {
      Name: "cs:OpenAngle"
      Float: 135
    }
    Overrides {
      Name: "cs:ResetOnRoundStart"
      Bool: true
    }
    Overrides {
      Name: "cs:AutoOpen:tooltip"
      String: "This door will open when a player gets close, and cannot be interact with"
    }
    Overrides {
      Name: "cs:AutoOpen:isrep"
      Bool: false
    }
    Overrides {
      Name: "cs:AutoOpen:ml"
      Bool: false
    }
    Overrides {
      Name: "cs:TimeOpen:tooltip"
      String: "With AutoOpen, how long the day stays open with no player near."
    }
    Overrides {
      Name: "cs:TimeOpen:isrep"
      Bool: false
    }
    Overrides {
      Name: "cs:TimeOpen:ml"
      Bool: false
    }
    Overrides {
      Name: "cs:OpenLabel:tooltip"
      String: "Use label to open the door (without AutoOpen)"
    }
    Overrides {
      Name: "cs:OpenLabel:isrep"
      Bool: false
    }
    Overrides {
      Name: "cs:OpenLabel:ml"
      Bool: false
    }
    Overrides {
      Name: "cs:CloseLabel:tooltip"
      String: "Use label to close the door (without AutoOpen)"
    }
    Overrides {
      Name: "cs:CloseLabel:isrep"
      Bool: false
    }
    Overrides {
      Name: "cs:CloseLabel:ml"
      Bool: false
    }
    Overrides {
      Name: "cs:Speed:tooltip"
      String: "How fast the door opens or closes, in degrees / second"
    }
    Overrides {
      Name: "cs:Speed:isrep"
      Bool: false
    }
    Overrides {
      Name: "cs:Speed:ml"
      Bool: false
    }
    Overrides {
      Name: "cs:OpenAngle:isrep"
      Bool: false
    }
    Overrides {
      Name: "cs:OpenAngle:ml"
      Bool: false
    }
    Overrides {
      Name: "cs:ResetOnRoundStart:tooltip"
      String: "Will reset (to be closed) at the start of a round"
    }
    Overrides {
      Name: "cs:ResetOnRoundStart:isrep"
      Bool: false
    }
    Overrides {
      Name: "cs:ResetOnRoundStart:ml"
      Bool: false
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
  Folder {
    IsGroup: true
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 12301909330176211710
  Name: "Whitebox Wall 01 Doorway 01 Frame"
  Transform {
    Location {
      X: 5.6875
      Y: -1.20373535
      Z: 29.1328125
    }
    Rotation {
      Yaw: -91.4080353
    }
    Scale {
      X: 2.33364391
      Y: -2.21927404
      Z: 2.34160113
    }
  }
  ParentId: 9268530066773003686
  UnregisteredParameters {
    Overrides {
      Name: "ma:Building_WallInner:id"
      AssetReference {
        Id: 7754470856388882901
      }
    }
    Overrides {
      Name: "ma:Building_WallInner:smart"
      Bool: false
    }
    Overrides {
      Name: "ma:Building_WallInner:utile"
      Float: 4
    }
    Overrides {
      Name: "ma:Building_WallInner:vtile"
      Float: 4
    }
    Overrides {
      Name: "ma:Building_WallInner:color"
      Color {
        R: 0.5
        G: 0.3
        B: 0.25
        A: 1
      }
    }
    Overrides {
      Name: "ma:Shared_Trim:id"
      AssetReference {
        Id: 4096729604259603915
      }
    }
    Overrides {
      Name: "ma:Shared_Trim:utile"
      Float: 2
    }
    Overrides {
      Name: "ma:Shared_Trim:vtile"
      Float: 2
    }
    Overrides {
      Name: "ma:Shared_Trim:color"
      Color {
        R: 0.5
        G: 0.3
        B: 0.25
        A: 1
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 4096729604259603915
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 0.35
        G: 0.210000008
        B: 0.175
        A: 1
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:utile"
      Float: 4
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:vtile"
      Float: 5
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
  CoreMesh {
    MeshAsset {
      Id: 6645541369262067888
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    DisableDistanceFieldLighting: true
    StaticMesh {
      Physics {
        Mass: 100
        LinearDamping: 0.01
      }
      BoundsScale: 1
    }
  }
  Relevance {
    Value: "mc:edistancerelevance:high"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 1814341030699701172
  Name: "Cube"
  Transform {
    Location {
      X: -84.9393845
      Y: 18.595417
      Z: 729.166626
    }
    Rotation {
      Pitch: -90
      Yaw: -14.0362635
      Roll: -167.372421
    }
    Scale {
      X: 1.39277577
      Y: 6.3144269
      Z: 0.620173395
    }
  }
  ParentId: 9268530066773003686
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 4096729604259603915
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:utile"
      Float: 0.809273958
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:vtile"
      Float: 0.191773802
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
  CoreMesh {
    MeshAsset {
      Id: 13642204757580273705
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    StaticMesh {
      Physics {
        Mass: 100
        LinearDamping: 0.01
      }
      BoundsScale: 1
    }
  }
  Relevance {
    Value: "mc:edistancerelevance:high"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 8585823007336702067
  Name: "Door Effects"
  Transform {
    Location {
      X: 350.156311
      Y: 32.0359612
      Z: 60.2341576
    }
    Rotation {
      Yaw: 178.585
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 9268530066773003686
  ChildIds: 13074869436922403792
  ChildIds: 5609906897589465968
  ChildIds: 3369701264130136332
  ChildIds: 8683614900039134779
  ChildIds: 5082768572118827203
  ChildIds: 10389050137409379946
  ChildIds: 4664333446618820277
  UnregisteredParameters {
    Overrides {
      Name: "cs:IsEnabled"
      Bool: true
    }
    Overrides {
      Name: "cs:DestinationName"
      String: ""
    }
    Overrides {
      Name: "cs:IsEnabled:isrep"
      Bool: true
    }
    Overrides {
      Name: "cs:DestinationName:isrep"
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
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:high"
  }
}
Objects {
  Id: 4664333446618820277
  Name: "\"Halloween Critter Mischief\" Music Stingers Set 01"
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
  ParentId: 8585823007336702067
  UnregisteredParameters {
    Overrides {
      Name: "bp:Type"
      Enum {
        Value: "mc:emx_halloween_critter_mischief_stingers:45"
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
      Id: 7132969047535755013
    }
    TeamSettings {
    }
    AudioBP {
      Volume: 1
      Falloff: 3600
      Radius: 400
    }
  }
  Relevance {
    Value: "mc:edistancerelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 10389050137409379946
  Name: "Spotlight"
  Transform {
    Location {
      X: 280.55069
      Y: 43.021244
      Z: 603.368713
    }
    Rotation {
      Pitch: -51.2073097
      Yaw: 2.42374587
      Roll: 26.4281826
    }
    Scale {
      X: 0.69781208
      Y: 0.69781208
      Z: 0.69781208
    }
  }
  ParentId: 8585823007336702067
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Light {
    Intensity: 40.7596245
    Color {
      R: 0.17092745
      B: 0.89
      A: 1
    }
    VolumetricIntensity: 10.8153248
    TeamSettings {
    }
    Light {
      Temperature: 6500
      LocalLight {
        AttenuationRadius: 1267.51917
        SpotLight {
          SourceRadius: 3.76553726
          SoftSourceRadius: 20
          FallOffExponent: 6.09396219
          UseFallOffExponent: true
          InnerConeAngle: 18.5209141
          OuterConeAngle: 40
          Profile {
            Value: "mc:espotlightprofile:basicspotlight"
          }
        }
      }
      MaxDrawDistance: 5000
      MaxDistanceFadeRange: 1000
    }
    ShadowBias: 0.4
    ShadowSlopeBias: 0.6
  }
  Relevance {
    Value: "mc:edistancerelevance:medium"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 5082768572118827203
  Name: "Dust Motes Volume VFX"
  Transform {
    Location {
      X: 516.456482
      Y: 52.5188522
      Z: 357.475555
    }
    Rotation {
      Yaw: 10.2368584
    }
    Scale {
      X: 3.27971649
      Y: 3.27971649
      Z: 3.27971649
    }
  }
  ParentId: 8585823007336702067
  UnregisteredParameters {
    Overrides {
      Name: "bp:Color"
      Color {
        R: 0.240345091
        G: 0.0970199928
        B: 0.441
        A: 1
      }
    }
    Overrides {
      Name: "bp:Emissive Boost"
      Float: 35
    }
    Overrides {
      Name: "bp:Particle Scale Multiplier"
      Float: 0.258567661
    }
    Overrides {
      Name: "bp:Density"
      Float: 2.76697874
    }
    Overrides {
      Name: "bp:Life"
      Float: 2.61726427
    }
    Overrides {
      Name: "bp:Curl Variance"
      Float: 0.534283698
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
      Id: 1565420669897413203
    }
    TeamSettings {
    }
    Vfx {
    }
  }
  Relevance {
    Value: "mc:edistancerelevance:medium"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 8683614900039134779
  Name: "Flare Ray VFX"
  Transform {
    Location {
      X: 287.124512
      Y: 44.1488
      Z: 464.765228
    }
    Rotation {
      Pitch: -33.5536079
      Yaw: 4.26418972
      Roll: 30.8102226
    }
    Scale {
      X: 45.0786591
      Y: 46.753418
      Z: 50.5913773
    }
  }
  ParentId: 8585823007336702067
  UnregisteredParameters {
    Overrides {
      Name: "bp:Ray Height"
      Float: 2.11766529
    }
    Overrides {
      Name: "bp:Ray Density"
      Float: 10
    }
    Overrides {
      Name: "bp:Color Offset A"
      Float: 0
    }
    Overrides {
      Name: "bp:Color"
      Color {
        R: 0.181921035
        B: 0.669999957
        A: 1
      }
    }
    Overrides {
      Name: "bp:Color B"
      Color {
        R: 0.773377478
        G: 0.420000017
        B: 1
        A: 1
      }
    }
    Overrides {
      Name: "bp:Color C"
      Color {
        R: 0.30463618
        G: 0.160000026
        B: 1
        A: 1
      }
    }
    Overrides {
      Name: "bp:Color Offset C"
      Float: 0.234840676
    }
    Overrides {
      Name: "bp:Color Offset B"
      Float: 0.649454057
    }
    Overrides {
      Name: "bp:Ray Appearance"
      Enum {
        Value: "mc:erayappearance:newenumerator0"
      }
    }
    Overrides {
      Name: "bp:Mote Brightness"
      Float: 2
    }
    Overrides {
      Name: "bp:Ray Color Method"
      Enum {
        Value: "mc:eraycoloringoptions:newenumerator0"
      }
    }
    Overrides {
      Name: "bp:Align with Sun"
      Bool: false
    }
    Overrides {
      Name: "bp:Depth Fade"
      Float: 8.68277836
    }
    Overrides {
      Name: "bp:Camera Depth Fade Offset"
      Float: 5
    }
    Overrides {
      Name: "bp:Camera Depth Fade Distance"
      Float: 3
    }
    Overrides {
      Name: "bp:Emissive Brightness"
      Float: 0.3
    }
    Overrides {
      Name: "bp:Ray Width"
      Float: 7.91184139
    }
    Overrides {
      Name: "bp:Ray Speed"
      Float: 2.2956388
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
      Id: 1548533371028107531
    }
    TeamSettings {
    }
    Vfx {
      AutoPlay: true
    }
  }
  Relevance {
    Value: "mc:edistancerelevance:medium"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 3369701264130136332
  Name: "Point Lights"
  Transform {
    Location {
      X: 372.971588
      Y: 42.2924957
      Z: 273
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 8585823007336702067
  ChildIds: 4788060157356700205
  ChildIds: 2619654577323395554
  ChildIds: 9723701883711025231
  ChildIds: 11206479000567117674
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:forceoff"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  EditorIndicatorVisibility {
    Value: "mc:eindicatorvisibility:visiblewhenselected"
  }
  Folder {
    IsGroup: true
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 11206479000567117674
  Name: "Point Light"
  Transform {
    Location {
      X: 4.73153295e-06
      Y: -170
      Z: -296.999146
    }
    Rotation {
      Yaw: 3.4150944e-05
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 3369701264130136332
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
  Light {
    Intensity: 50
    Color {
      R: 0.174834609
      G: 0.110000014
      B: 1
      A: 1
    }
    VolumetricIntensity: 5
    TeamSettings {
    }
    Light {
      Temperature: 6500
      LocalLight {
        AttenuationRadius: 45
        PointLight {
          SourceRadius: 20
          SoftSourceRadius: 20
          FallOffExponent: 8
        }
      }
      MaxDrawDistance: 5000
      MaxDistanceFadeRange: 1000
    }
    ShadowBias: 0.4
    ShadowSlopeBias: 0.6
  }
  Relevance {
    Value: "mc:edistancerelevance:medium"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 9723701883711025231
  Name: "Point Light"
  Transform {
    Location {
      X: -0.000397448777
      Y: 170
      Z: -296.999146
    }
    Rotation {
      Yaw: 1.7075472e-05
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 3369701264130136332
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
  Light {
    Intensity: 50
    Color {
      R: 0.174834609
      G: 0.110000014
      B: 1
      A: 1
    }
    VolumetricIntensity: 5
    TeamSettings {
    }
    Light {
      Temperature: 6500
      LocalLight {
        AttenuationRadius: 45
        PointLight {
          SourceRadius: 20
          SoftSourceRadius: 20
          FallOffExponent: 8
        }
      }
      MaxDrawDistance: 5000
      MaxDistanceFadeRange: 1000
    }
    ShadowBias: 0.4
    ShadowSlopeBias: 0.6
  }
  Relevance {
    Value: "mc:edistancerelevance:medium"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 2619654577323395554
  Name: "Point Light"
  Transform {
    Location {
      X: -0.000458958704
      Y: -170
      Z: 296.999146
    }
    Rotation {
      Yaw: 2.04905664e-05
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 3369701264130136332
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
  Light {
    Intensity: 50
    Color {
      R: 0.174834609
      G: 0.110000014
      B: 1
      A: 1
    }
    VolumetricIntensity: 5
    TeamSettings {
    }
    Light {
      Temperature: 6500
      LocalLight {
        AttenuationRadius: 45
        PointLight {
          SourceRadius: 20
          SoftSourceRadius: 20
          FallOffExponent: 8
        }
      }
      MaxDrawDistance: 5000
      MaxDistanceFadeRange: 1000
    }
    ShadowBias: 0.4
    ShadowSlopeBias: 0.6
  }
  Relevance {
    Value: "mc:edistancerelevance:medium"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 4788060157356700205
  Name: "Point Light"
  Transform {
    Location {
      X: -0.000397448777
      Y: 170
      Z: 296.999146
    }
    Rotation {
      Yaw: 1.02452832e-05
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 3369701264130136332
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
  Light {
    Intensity: 50
    Color {
      R: 0.174834609
      G: 0.110000014
      B: 1
      A: 1
    }
    VolumetricIntensity: 5
    TeamSettings {
    }
    Light {
      Temperature: 6500
      LocalLight {
        AttenuationRadius: 45
        PointLight {
          SourceRadius: 20
          SoftSourceRadius: 20
          FallOffExponent: 8
        }
      }
      MaxDrawDistance: 5000
      MaxDistanceFadeRange: 1000
    }
    ShadowBias: 0.4
    ShadowSlopeBias: 0.6
  }
  Relevance {
    Value: "mc:edistancerelevance:medium"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 5609906897589465968
  Name: "Logo"
  Transform {
    Location {
      X: 462.429901
      Y: 23.128376
      Z: 668.932495
    }
    Rotation {
      Pitch: -90
      Yaw: 13.2657471
      Roll: -13.2594604
    }
    Scale {
      X: 1.39277577
      Y: 6.3144269
      Z: 0.620173395
    }
  }
  ParentId: 8585823007336702067
  ChildIds: 3032506704756309630
  ChildIds: 11599093350957467092
  ChildIds: 16638135334838373857
  ChildIds: 16021451153241126271
  ChildIds: 9858512321518799231
  ChildIds: 13208837478439411525
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
  Folder {
    IsGroup: true
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 13208837478439411525
  Name: "Decal Fantasy Carved 01"
  Transform {
    Location {
      X: -3.96921635
      Y: -30.4886475
      Z: -0.000587461574
    }
    Rotation {
    }
    Scale {
      X: 0.217673495
      Y: 0.0480123647
      Z: 0.48884806
    }
  }
  ParentId: 5609906897589465968
  UnregisteredParameters {
    Overrides {
      Name: "bp:Emissive Boost"
      Float: 3.00992846
    }
    Overrides {
      Name: "bp:Color Emissive"
      Color {
        R: 0.277667105
        B: 0.98
        A: 1
      }
    }
    Overrides {
      Name: "bp:Shape Index"
      Int: 0
    }
    Overrides {
      Name: "bp:Color"
      Color {
        R: 0.737910688
        G: 0.135633349
        B: 0.135633349
        A: 1
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
      Id: 1648351798271745680
    }
    TeamSettings {
    }
    DecalBP {
    }
  }
  Relevance {
    Value: "mc:edistancerelevance:medium"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 9858512321518799231
  Name: "Decal Fantasy Carved 01"
  Transform {
    Location {
      X: -4.18839
      Y: -16.2132111
      Z: 0.000778195856
    }
    Rotation {
      Yaw: -48.5029
    }
    Scale {
      X: 0.246216938
      Y: 0.0543081947
      Z: 0.552950561
    }
  }
  ParentId: 5609906897589465968
  UnregisteredParameters {
    Overrides {
      Name: "bp:Emissive Boost"
      Float: 3.00992846
    }
    Overrides {
      Name: "bp:Color Emissive"
      Color {
        R: 0.277667105
        B: 0.98
        A: 1
      }
    }
    Overrides {
      Name: "bp:Shape Index"
      Int: 1
    }
    Overrides {
      Name: "bp:Color"
      Color {
        R: 0.737910688
        G: 0.135633349
        B: 0.135633349
        A: 1
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
      Id: 1648351798271745680
    }
    TeamSettings {
    }
    DecalBP {
    }
  }
  Relevance {
    Value: "mc:edistancerelevance:medium"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 16021451153241126271
  Name: "Decal Elven Symbols"
  Transform {
    Location {
      X: -5.73294544
      Y: -4.41300392
      Z: 0.000406264
    }
    Rotation {
      Yaw: 147.402435
    }
    Scale {
      X: 0.252239019
      Y: 0.0469441637
      Z: 0.566475153
    }
  }
  ParentId: 5609906897589465968
  UnregisteredParameters {
    Overrides {
      Name: "bp:Color Emissive"
      Color {
        R: 0.277667105
        B: 0.98
        A: 1
      }
    }
    Overrides {
      Name: "bp:Emissive Boost"
      Float: 3.00992846
    }
    Overrides {
      Name: "bp:Shape Index"
      Int: 0
    }
    Overrides {
      Name: "bp:Color"
      Color {
        R: 0.737910688
        G: 0.135633349
        B: 0.135633349
        A: 1
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
      Id: 6289363088155023181
    }
    TeamSettings {
    }
    DecalBP {
    }
  }
  Relevance {
    Value: "mc:edistancerelevance:medium"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 16638135334838373857
  Name: "Decal Elven Symbols"
  Transform {
    Location {
      X: 4.19882441
      Y: 8.49867249
      Z: 0.000144958045
    }
    Rotation {
      Yaw: -145.211472
    }
    Scale {
      X: 0.274587303
      Y: 0.0511033386
      Z: 0.616663754
    }
  }
  ParentId: 5609906897589465968
  UnregisteredParameters {
    Overrides {
      Name: "bp:Color Emissive"
      Color {
        R: 0.277667105
        B: 0.98
        A: 1
      }
    }
    Overrides {
      Name: "bp:Emissive Boost"
      Float: 3.00992846
    }
    Overrides {
      Name: "bp:Shape Index"
      Int: 4
    }
    Overrides {
      Name: "bp:Color"
      Color {
        R: 0.737910688
        G: 0.135633349
        B: 0.135633349
        A: 1
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
      Id: 6289363088155023181
    }
    TeamSettings {
    }
    DecalBP {
    }
  }
  Relevance {
    Value: "mc:edistancerelevance:medium"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 11599093350957467092
  Name: "Decal Elven Symbols"
  Transform {
    Location {
      X: -4.42494345
      Y: 21.708334
      Z: -0.000183104901
    }
    Rotation {
      Yaw: 95.7215
    }
    Scale {
      X: 0.260419101
      Y: 0.048466526
      Z: 0.584845066
    }
  }
  ParentId: 5609906897589465968
  UnregisteredParameters {
    Overrides {
      Name: "bp:Color Emissive"
      Color {
        R: 0.277667105
        B: 0.98
        A: 1
      }
    }
    Overrides {
      Name: "bp:Emissive Boost"
      Float: 100
    }
    Overrides {
      Name: "bp:Shape Index"
      Int: 10
    }
    Overrides {
      Name: "bp:Color"
      Color {
        R: 0.737910688
        G: 0.135633349
        B: 0.135633349
        A: 1
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
      Id: 6289363088155023181
    }
    TeamSettings {
    }
    DecalBP {
    }
  }
  Relevance {
    Value: "mc:edistancerelevance:medium"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 3032506704756309630
  Name: "Decal Elven Symbols"
  Transform {
    Location {
      X: -8.30721188
      Y: 34.1860313
      Z: 0.00396727305
    }
    Rotation {
      Yaw: -5.18780518
    }
    Scale {
      X: 0.251530707
      Y: 0.0468122959
      Z: 0.56488359
    }
  }
  ParentId: 5609906897589465968
  UnregisteredParameters {
    Overrides {
      Name: "bp:Color Emissive"
      Color {
        R: 0.277667105
        B: 0.98
        A: 1
      }
    }
    Overrides {
      Name: "bp:Emissive Boost"
      Float: 0
    }
    Overrides {
      Name: "bp:Shape Index"
      Int: 13
    }
    Overrides {
      Name: "bp:Color"
      Color {
        R: 0.152926177
        G: 0.0284260381
        B: 0.0284260381
        A: 1
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
      Id: 6289363088155023181
    }
    TeamSettings {
    }
    DecalBP {
    }
  }
  Relevance {
    Value: "mc:edistancerelevance:medium"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 13074869436922403792
  Name: "MagicDoorRevealVFX"
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
  ParentId: 8585823007336702067
  UnregisteredParameters {
    Overrides {
      Name: "cs:Logo"
      ObjectReference {
        SelfId: 5609906897589465968
      }
    }
    Overrides {
      Name: "cs:PointLights"
      ObjectReference {
        SelfId: 3369701264130136332
      }
    }
    Overrides {
      Name: "cs:Flare"
      ObjectReference {
        SelfId: 8683614900039134779
      }
    }
    Overrides {
      Name: "cs:Dust"
      ObjectReference {
        SelfId: 5082768572118827203
      }
    }
    Overrides {
      Name: "cs:Spotlight"
      ObjectReference {
        SelfId: 10389050137409379946
      }
    }
    Overrides {
      Name: "cs:Audio"
      ObjectReference {
        SelfId: 4664333446618820277
      }
    }
    Overrides {
      Name: "cs:MainTavernMusic"
      ObjectReference {
        SelfId: 16625153366079412303
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
      Id: 14670605079797271038
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 5356350509379687301
  Name: "LocalContext"
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
  ParentId: 9268530066773003686
  ChildIds: 5530568990858672241
  ChildIds: 16440805104978374421
  ChildIds: 2937288581177584927
  UnregisteredParameters {
    Overrides {
      Name: "cs:State"
      Int: 0
    }
    Overrides {
      Name: "cs:State:isrep"
      Bool: true
    }
  }
  WantsNetworking: true
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
  NetworkContext {
    Type: Local
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:medium"
  }
}
Objects {
  Id: 2937288581177584927
  Name: "RotationRoot2"
  Transform {
    Location {
      X: -11.8250284
      Y: 169.994202
      Z: 40.0010605
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 5356350509379687301
  ChildIds: 10788028864307631959
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
  Folder {
    IsGroup: true
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 10788028864307631959
  Name: "Door"
  Transform {
    Location {
    }
    Rotation {
      Yaw: 1.70754702e-05
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 2937288581177584927
  ChildIds: 10106794129724033683
  ChildIds: 5236040173088635018
  ChildIds: 8832261031523951155
  ChildIds: 9111488156258890811
  ChildIds: 12634807928802833781
  ChildIds: 3148774969116419844
  ChildIds: 17827778572679638832
  ChildIds: 6633846197557063312
  ChildIds: 6788387294335760668
  ChildIds: 17591646975528683187
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
  Folder {
    IsGroup: true
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 17591646975528683187
  Name: "Decal Sci-fi Details 01"
  Transform {
    Location {
      X: 23.738142
      Y: -90.7748108
      Z: 375
    }
    Rotation {
      Yaw: -90
      Roll: 89.9998856
    }
    Scale {
      X: 0.4
      Y: 1.15
      Z: 0.2
    }
  }
  ParentId: 10788028864307631959
  UnregisteredParameters {
    Overrides {
      Name: "bp:Shape Index"
      Int: 8
    }
    Overrides {
      Name: "bp:Color"
      Color {
        R: 0.2
        G: 0.0950000063
        B: 0.05
        A: 1
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
      Id: 14525364215432239736
    }
    TeamSettings {
    }
    DecalBP {
    }
  }
  Relevance {
    Value: "mc:edistancerelevance:high"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 6788387294335760668
  Name: "Decal Sci-fi Details 01"
  Transform {
    Location {
      X: 23.738142
      Y: -90.7748108
      Z: 65
    }
    Rotation {
      Yaw: -90
      Roll: 89.9998856
    }
    Scale {
      X: 0.4
      Y: 0.3
      Z: 0.1
    }
  }
  ParentId: 10788028864307631959
  UnregisteredParameters {
    Overrides {
      Name: "bp:Shape Index"
      Int: 9
    }
    Overrides {
      Name: "bp:Color"
      Color {
        R: 0.2
        G: 0.0950000063
        B: 0.05
        A: 1
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
      Id: 14525364215432239736
    }
    TeamSettings {
    }
    DecalBP {
    }
  }
  Relevance {
    Value: "mc:edistancerelevance:high"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 6633846197557063312
  Name: "Decal Sci-fi Details 01"
  Transform {
    Location {
      X: 23.738142
      Y: -90.7748108
      Z: 375
    }
    Rotation {
      Yaw: -90
      Roll: 89.9998856
    }
    Scale {
      X: 0.4
      Y: 1.15
      Z: 0.2
    }
  }
  ParentId: 10788028864307631959
  UnregisteredParameters {
    Overrides {
      Name: "bp:Shape Index"
      Int: 9
    }
    Overrides {
      Name: "bp:Color"
      Color {
        R: 0.2
        G: 0.0950000063
        B: 0.05
        A: 1
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
      Id: 14525364215432239736
    }
    TeamSettings {
    }
    DecalBP {
    }
  }
  Relevance {
    Value: "mc:edistancerelevance:high"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 17827778572679638832
  Name: "Decal Sci-fi Details 01"
  Transform {
    Location {
      X: 23.738142
      Y: -90.7748108
      Z: 65
    }
    Rotation {
      Yaw: -90
      Roll: 89.9998856
    }
    Scale {
      X: 0.4
      Y: 0.3
      Z: 0.1
    }
  }
  ParentId: 10788028864307631959
  UnregisteredParameters {
    Overrides {
      Name: "bp:Shape Index"
      Int: 8
    }
    Overrides {
      Name: "bp:Color"
      Color {
        R: 0.2
        G: 0.0950000063
        B: 0.05
        A: 1
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
      Id: 14525364215432239736
    }
    TeamSettings {
    }
    DecalBP {
    }
  }
  Relevance {
    Value: "mc:edistancerelevance:high"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 3148774969116419844
  Name: "Decal Sci-fi Details 01"
  Transform {
    Location {
      X: -7.00008774
      Y: -79.9889145
      Z: 65
    }
    Rotation {
      Yaw: 89.9998703
      Roll: 89.9999
    }
    Scale {
      X: 0.4
      Y: 0.3
      Z: 0.1
    }
  }
  ParentId: 10788028864307631959
  UnregisteredParameters {
    Overrides {
      Name: "bp:Shape Index"
      Int: 9
    }
    Overrides {
      Name: "bp:Color"
      Color {
        R: 0.2
        G: 0.0950000063
        B: 0.05
        A: 1
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
      Id: 14525364215432239736
    }
    TeamSettings {
    }
    DecalBP {
    }
  }
  Relevance {
    Value: "mc:edistancerelevance:high"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 12634807928802833781
  Name: "Decal Sci-fi Details 01"
  Transform {
    Location {
      X: -7.00005531
      Y: -79.9997177
      Z: 375.000122
    }
    Rotation {
      Pitch: 6.83018879e-06
      Yaw: 89.9999161
      Roll: 89.9999313
    }
    Scale {
      X: 0.4
      Y: 1.15
      Z: 0.2
    }
  }
  ParentId: 10788028864307631959
  UnregisteredParameters {
    Overrides {
      Name: "bp:Shape Index"
      Int: 8
    }
    Overrides {
      Name: "bp:Color"
      Color {
        R: 0.2
        G: 0.0950000063
        B: 0.05
        A: 1
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
      Id: 14525364215432239736
    }
    TeamSettings {
    }
    DecalBP {
    }
  }
  Relevance {
    Value: "mc:edistancerelevance:high"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 9111488156258890811
  Name: "Decal Sci-fi Details 01"
  Transform {
    Location {
      X: -7.00005531
      Y: -79.9994736
      Z: 65.0001221
    }
    Rotation {
      Pitch: 6.83018879e-06
      Yaw: 89.999939
      Roll: 89.9999466
    }
    Scale {
      X: 0.4
      Y: 0.3
      Z: 0.1
    }
  }
  ParentId: 10788028864307631959
  UnregisteredParameters {
    Overrides {
      Name: "bp:Shape Index"
      Int: 8
    }
    Overrides {
      Name: "bp:Color"
      Color {
        R: 0.2
        G: 0.0950000063
        B: 0.05
        A: 1
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
      Id: 14525364215432239736
    }
    TeamSettings {
    }
    DecalBP {
    }
  }
  Relevance {
    Value: "mc:edistancerelevance:high"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 8832261031523951155
  Name: "Decal Sci-fi Details 01"
  Transform {
    Location {
      X: -7.00005531
      Y: -79.9994736
      Z: 375.000122
    }
    Rotation {
      Pitch: 6.83018879e-06
      Yaw: 89.999939
      Roll: 89.9999466
    }
    Scale {
      X: 0.4
      Y: 1.15
      Z: 0.2
    }
  }
  ParentId: 10788028864307631959
  UnregisteredParameters {
    Overrides {
      Name: "bp:Shape Index"
      Int: 9
    }
    Overrides {
      Name: "bp:Color"
      Color {
        R: 0.2
        G: 0.0950000063
        B: 0.05
        A: 1
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
      Id: 14525364215432239736
    }
    TeamSettings {
    }
    DecalBP {
    }
  }
  Relevance {
    Value: "mc:edistancerelevance:high"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 5236040173088635018
  Name: "Door Knob"
  Transform {
    Location {
      X: -12.0002441
      Y: -131.999878
      Z: 145.000122
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: -1
      Z: 1
    }
  }
  ParentId: 10788028864307631959
  ChildIds: 968868641630987348
  ChildIds: 8814085693639545487
  ChildIds: 14769646520911606814
  ChildIds: 8566838432290633225
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
  Folder {
    IsGroup: true
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 8566838432290633225
  Name: "Diamond - 6-Sided"
  Transform {
    Location {
      X: -15
      Z: -7
    }
    Rotation {
      Yaw: -89.999939
      Roll: -89.9999695
    }
    Scale {
      X: 0.238735944
      Y: -0.238735944
      Z: 0.238735944
    }
  }
  ParentId: 5236040173088635018
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 15240738019177200097
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
  CoreMesh {
    MeshAsset {
      Id: 2635330027741249494
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    StaticMesh {
      Physics {
        Mass: 100
        LinearDamping: 0.01
      }
      BoundsScale: 1
    }
  }
  Relevance {
    Value: "mc:edistancerelevance:high"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 14769646520911606814
  Name: "Cylinder - Chamfered Polished"
  Transform {
    Location {
      X: -4.00146484
      Y: 0.00158691406
      Z: -6.99993896
    }
    Rotation {
      Pitch: 90
    }
    Scale {
      X: 0.0430110916
      Y: 0.0430110805
      Z: 0.0994609818
    }
  }
  ParentId: 5236040173088635018
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 10378479423839914021
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 0.5
        G: 0.5
        B: 0.5
        A: 1
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
  CoreMesh {
    MeshAsset {
      Id: 11892494746123028781
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    StaticMesh {
      Physics {
        Mass: 100
        LinearDamping: 0.01
      }
      BoundsScale: 1
    }
  }
  Relevance {
    Value: "mc:edistancerelevance:high"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 8814085693639545487
  Name: "Cylinder - Chamfered Small Polished"
  Transform {
    Location {
      X: 3.99853516
      Y: 0.00158691406
      Z: -6.99993896
    }
    Rotation {
      Pitch: 90
    }
    Scale {
      X: 0.186078519
      Y: 0.186078519
      Z: 0.0776182786
    }
  }
  ParentId: 5236040173088635018
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 4809529976550021000
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:utile"
      Float: 0.125
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:vtile"
      Float: 0.125
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
  CoreMesh {
    MeshAsset {
      Id: 9223391083233434823
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    StaticMesh {
      Physics {
        Mass: 100
        LinearDamping: 0.01
      }
      BoundsScale: 1
    }
  }
  Relevance {
    Value: "mc:edistancerelevance:high"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 968868641630987348
  Name: "Japanese Common Chest Lid 01"
  Transform {
    Location {
      X: 18
      Y: 14.1500244
      Z: 5
    }
    Rotation {
      Pitch: -90
      Roll: -179.999969
    }
    Scale {
      X: 0.55
      Y: 0.4
      Z: 0.6
    }
  }
  ParentId: 5236040173088635018
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 4809529976550021000
      }
    }
    Overrides {
      Name: "ma:Shared_Detail2:id"
      AssetReference {
        Id: 11337413471323694429
      }
    }
    Overrides {
      Name: "ma:Shared_Detail1:id"
      AssetReference {
        Id: 4809529976550021000
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:utile"
      Float: 0.5
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:vtile"
      Float: 0.5
    }
    Overrides {
      Name: "ma:Shared_Detail1:utile"
      Float: 0.5
    }
    Overrides {
      Name: "ma:Shared_Detail1:vtile"
      Float: 0.5
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
  CoreMesh {
    MeshAsset {
      Id: 5469617673551445743
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    DisableReceiveDecals: true
    StaticMesh {
      Physics {
        Mass: 100
        LinearDamping: 0.01
      }
      BoundsScale: 1
    }
  }
  Relevance {
    Value: "mc:edistancerelevance:high"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 10106794129724033683
  Name: "Cube - Chamfered Small Polished"
  Transform {
    Location {
      X: 7.99994087
      Y: -79.999855
      Z: 295.000122
    }
    Rotation {
    }
    Scale {
      X: 0.3
      Y: 1.80000019
      Z: 6
    }
  }
  ParentId: 10788028864307631959
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 7754470856388882901
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 0.4
        G: 0.320000023
        B: 0.320000023
        A: 1
      }
    }
  }
  Collidable_v2 {
    Value: "mc:ecollisionsetting:forceon"
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
  CoreMesh {
    MeshAsset {
      Id: 11162297399913732681
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    StaticMesh {
      Physics {
        Mass: 100
        LinearDamping: 0.01
      }
      BoundsScale: 1
    }
  }
  Relevance {
    Value: "mc:edistancerelevance:high"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 16440805104978374421
  Name: "RotationRoot1"
  Transform {
    Location {
      X: -11.8250475
      Y: -169.987228
      Z: 40.0010605
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 5356350509379687301
  ChildIds: 15556202499976726470
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
  Folder {
    IsGroup: true
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 15556202499976726470
  Name: "Door"
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
  ParentId: 16440805104978374421
  ChildIds: 6966496760172728692
  ChildIds: 1180579018398744139
  ChildIds: 10482465657823468446
  ChildIds: 18007776623463024002
  ChildIds: 13753691497444401519
  ChildIds: 16526621923862315754
  ChildIds: 2599599197503648234
  ChildIds: 992741944809220717
  ChildIds: 2531924932642775895
  ChildIds: 2574481479075544694
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
  Folder {
    IsGroup: true
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 2574481479075544694
  Name: "Decal Sci-fi Details 01"
  Transform {
    Location {
      X: 23.2080574
      Y: 80.0036163
      Z: 375
    }
    Rotation {
      Pitch: 6.83018879e-06
      Yaw: -90.0000916
      Roll: 89.9999
    }
    Scale {
      X: 0.4
      Y: 1.15
      Z: 0.2
    }
  }
  ParentId: 15556202499976726470
  UnregisteredParameters {
    Overrides {
      Name: "bp:Shape Index"
      Int: 8
    }
    Overrides {
      Name: "bp:Color"
      Color {
        R: 0.2
        G: 0.0950000063
        B: 0.05
        A: 1
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
      Id: 14525364215432239736
    }
    TeamSettings {
    }
    DecalBP {
    }
  }
  Relevance {
    Value: "mc:edistancerelevance:high"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 2531924932642775895
  Name: "Decal Sci-fi Details 01"
  Transform {
    Location {
      X: 23.7383308
      Y: 81.0978546
      Z: 65
    }
    Rotation {
      Yaw: -89.999939
      Roll: 89.9997406
    }
    Scale {
      X: 0.4
      Y: 0.3
      Z: 0.1
    }
  }
  ParentId: 15556202499976726470
  UnregisteredParameters {
    Overrides {
      Name: "bp:Shape Index"
      Int: 9
    }
    Overrides {
      Name: "bp:Color"
      Color {
        R: 0.2
        G: 0.0950000063
        B: 0.05
        A: 1
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
      Id: 14525364215432239736
    }
    TeamSettings {
    }
    DecalBP {
    }
  }
  Relevance {
    Value: "mc:edistancerelevance:high"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 992741944809220717
  Name: "Decal Sci-fi Details 01"
  Transform {
    Location {
      X: 23.2080574
      Y: 80.0033722
      Z: 65
    }
    Rotation {
      Pitch: 6.83018879e-06
      Yaw: -90.000061
      Roll: 89.9999237
    }
    Scale {
      X: 0.4
      Y: 0.3
      Z: 0.1
    }
  }
  ParentId: 15556202499976726470
  UnregisteredParameters {
    Overrides {
      Name: "bp:Shape Index"
      Int: 8
    }
    Overrides {
      Name: "bp:Color"
      Color {
        R: 0.2
        G: 0.0950000063
        B: 0.05
        A: 1
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
      Id: 14525364215432239736
    }
    TeamSettings {
    }
    DecalBP {
    }
  }
  Relevance {
    Value: "mc:edistancerelevance:high"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 2599599197503648234
  Name: "Decal Sci-fi Details 01"
  Transform {
    Location {
      X: 23.2080574
      Y: 80.0033722
      Z: 375
    }
    Rotation {
      Pitch: 6.83018879e-06
      Yaw: -90.000061
      Roll: 89.9999237
    }
    Scale {
      X: 0.4
      Y: 1.15
      Z: 0.2
    }
  }
  ParentId: 15556202499976726470
  UnregisteredParameters {
    Overrides {
      Name: "bp:Shape Index"
      Int: 9
    }
    Overrides {
      Name: "bp:Color"
      Color {
        R: 0.2
        G: 0.0950000063
        B: 0.05
        A: 1
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
      Id: 14525364215432239736
    }
    TeamSettings {
    }
    DecalBP {
    }
  }
  Relevance {
    Value: "mc:edistancerelevance:high"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 16526621923862315754
  Name: "Decal Sci-fi Details 01"
  Transform {
    Location {
      X: -6.99994087
      Y: 79.9926529
      Z: 375.000122
    }
    Rotation {
      Pitch: 6.83018879e-06
      Yaw: 89.999939
      Roll: 89.9999466
    }
    Scale {
      X: 0.4
      Y: 1.15
      Z: 0.2
    }
  }
  ParentId: 15556202499976726470
  UnregisteredParameters {
    Overrides {
      Name: "bp:Shape Index"
      Int: 8
    }
    Overrides {
      Name: "bp:Color"
      Color {
        R: 0.2
        G: 0.0950000063
        B: 0.05
        A: 1
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
      Id: 14525364215432239736
    }
    TeamSettings {
    }
    DecalBP {
    }
  }
  Relevance {
    Value: "mc:edistancerelevance:high"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 13753691497444401519
  Name: "Decal Sci-fi Details 01"
  Transform {
    Location {
      X: -6.99994087
      Y: 79.9926529
      Z: 65.0001221
    }
    Rotation {
      Pitch: 6.83018879e-06
      Yaw: 89.999939
      Roll: 89.9999466
    }
    Scale {
      X: 0.4
      Y: 0.3
      Z: 0.1
    }
  }
  ParentId: 15556202499976726470
  UnregisteredParameters {
    Overrides {
      Name: "bp:Shape Index"
      Int: 9
    }
    Overrides {
      Name: "bp:Color"
      Color {
        R: 0.2
        G: 0.0950000063
        B: 0.05
        A: 1
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
      Id: 14525364215432239736
    }
    TeamSettings {
    }
    DecalBP {
    }
  }
  Relevance {
    Value: "mc:edistancerelevance:high"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 18007776623463024002
  Name: "Decal Sci-fi Details 01"
  Transform {
    Location {
      X: -6.99994087
      Y: 79.9926529
      Z: 375.000122
    }
    Rotation {
      Pitch: 6.83018879e-06
      Yaw: 89.999939
      Roll: 89.9999466
    }
    Scale {
      X: 0.4
      Y: 1.15
      Z: 0.2
    }
  }
  ParentId: 15556202499976726470
  UnregisteredParameters {
    Overrides {
      Name: "bp:Shape Index"
      Int: 9
    }
    Overrides {
      Name: "bp:Color"
      Color {
        R: 0.2
        G: 0.0950000063
        B: 0.05
        A: 1
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
      Id: 14525364215432239736
    }
    TeamSettings {
    }
    DecalBP {
    }
  }
  Relevance {
    Value: "mc:edistancerelevance:high"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 10482465657823468446
  Name: "Decal Sci-fi Details 01"
  Transform {
    Location {
      X: -6.99994087
      Y: 79.9926529
      Z: 65.0001221
    }
    Rotation {
      Pitch: 6.83018879e-06
      Yaw: 89.999939
      Roll: 89.9999466
    }
    Scale {
      X: 0.4
      Y: 0.3
      Z: 0.1
    }
  }
  ParentId: 15556202499976726470
  UnregisteredParameters {
    Overrides {
      Name: "bp:Shape Index"
      Int: 8
    }
    Overrides {
      Name: "bp:Color"
      Color {
        R: 0.2
        G: 0.0950000063
        B: 0.05
        A: 1
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
      Id: 14525364215432239736
    }
    TeamSettings {
    }
    DecalBP {
    }
  }
  Relevance {
    Value: "mc:edistancerelevance:high"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 1180579018398744139
  Name: "Door Knob"
  Transform {
    Location {
      X: -11.9999018
      Y: 131.99263
      Z: 145.000122
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 15556202499976726470
  ChildIds: 15403812114125321126
  ChildIds: 5129637752256714711
  ChildIds: 5664250934260740667
  ChildIds: 6283202848091609827
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
  Folder {
    IsGroup: true
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 6283202848091609827
  Name: "Diamond - 6-Sided"
  Transform {
    Location {
      X: -15
      Z: -6.99994326
    }
    Rotation {
      Yaw: 89.9999924
      Roll: 89.9999771
    }
    Scale {
      X: 0.238735944
      Y: 0.238735944
      Z: 0.238735944
    }
  }
  ParentId: 1180579018398744139
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 15240738019177200097
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
  CoreMesh {
    MeshAsset {
      Id: 2635330027741249494
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    StaticMesh {
      Physics {
        Mass: 100
        LinearDamping: 0.01
      }
      BoundsScale: 1
    }
  }
  Relevance {
    Value: "mc:edistancerelevance:high"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 5664250934260740667
  Name: "Cylinder - Chamfered Polished"
  Transform {
    Location {
      X: -3.99987793
      Z: -7.00013733
    }
    Rotation {
      Pitch: 90
    }
    Scale {
      X: 0.0430110916
      Y: 0.0430110805
      Z: 0.0994609818
    }
  }
  ParentId: 1180579018398744139
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 10378479423839914021
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 0.5
        G: 0.5
        B: 0.5
        A: 1
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
  CoreMesh {
    MeshAsset {
      Id: 11892494746123028781
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    StaticMesh {
      Physics {
        Mass: 100
        LinearDamping: 0.01
      }
      BoundsScale: 1
    }
  }
  Relevance {
    Value: "mc:edistancerelevance:high"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 5129637752256714711
  Name: "Cylinder - Chamfered Small Polished"
  Transform {
    Location {
      X: 4.00012207
      Z: -7.00013733
    }
    Rotation {
      Pitch: 90
    }
    Scale {
      X: 0.186078519
      Y: 0.186078519
      Z: 0.0776182786
    }
  }
  ParentId: 1180579018398744139
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 4809529976550021000
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:utile"
      Float: 0.125
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:vtile"
      Float: 0.125
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
  CoreMesh {
    MeshAsset {
      Id: 9223391083233434823
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    StaticMesh {
      Physics {
        Mass: 100
        LinearDamping: 0.01
      }
      BoundsScale: 1
    }
  }
  Relevance {
    Value: "mc:edistancerelevance:high"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 15403812114125321126
  Name: "Japanese Common Chest Lid 01"
  Transform {
    Location {
      X: 18
      Y: 14.1500244
      Z: 5
    }
    Rotation {
      Pitch: -90
      Yaw: -3.05175781e-05
      Roll: -179.999924
    }
    Scale {
      X: 0.55
      Y: 0.4
      Z: 0.6
    }
  }
  ParentId: 1180579018398744139
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 4809529976550021000
      }
    }
    Overrides {
      Name: "ma:Shared_Detail2:id"
      AssetReference {
        Id: 11337413471323694429
      }
    }
    Overrides {
      Name: "ma:Shared_Detail1:id"
      AssetReference {
        Id: 4809529976550021000
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:utile"
      Float: 0.5
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:vtile"
      Float: 0.5
    }
    Overrides {
      Name: "ma:Shared_Detail1:utile"
      Float: 0.5
    }
    Overrides {
      Name: "ma:Shared_Detail1:vtile"
      Float: 0.5
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
  CoreMesh {
    MeshAsset {
      Id: 5469617673551445743
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    DisableReceiveDecals: true
    StaticMesh {
      Physics {
        Mass: 100
        LinearDamping: 0.01
      }
      BoundsScale: 1
    }
  }
  Relevance {
    Value: "mc:edistancerelevance:high"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 6966496760172728692
  Name: "Cube - Chamfered Small Polished"
  Transform {
    Location {
      X: 8.00005531
      Y: 79.9926376
      Z: 295.000122
    }
    Rotation {
    }
    Scale {
      X: 0.3
      Y: 1.80000019
      Z: 6
    }
  }
  ParentId: 15556202499976726470
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 7754470856388882901
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 0.4
        G: 0.320000023
        B: 0.320000023
        A: 1
      }
    }
  }
  Collidable_v2 {
    Value: "mc:ecollisionsetting:forceon"
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
  CoreMesh {
    MeshAsset {
      Id: 11162297399913732681
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    StaticMesh {
      Physics {
        Mass: 100
        LinearDamping: 0.01
      }
      BoundsScale: 1
    }
  }
  Relevance {
    Value: "mc:edistancerelevance:high"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 5530568990858672241
  Name: "LockedRoomDoorLocal"
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
  ParentId: 5356350509379687301
  UnregisteredParameters {
    Overrides {
      Name: "cs:NetObject"
      ObjectReference {
        SelfId: 5356350509379687301
      }
    }
    Overrides {
      Name: "cs:RotationRoot1"
      ObjectReference {
        SelfId: 16440805104978374421
      }
    }
    Overrides {
      Name: "cs:RotationRoot2"
      ObjectReference {
        SelfId: 2937288581177584927
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
      Id: 162287543469419216
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 6847233342421385052
  Name: "Trigger"
  Transform {
    Location {
      Z: 240.001526
    }
    Rotation {
      Yaw: 89.9999771
    }
    Scale {
      X: 2
      Y: 3
      Z: 4
    }
  }
  ParentId: 9268530066773003686
  WantsNetworking: true
  Collidable_v2 {
    Value: "mc:ecollisionsetting:forceon"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  EditorIndicatorVisibility {
    Value: "mc:eindicatorvisibility:alwaysvisible"
  }
  Trigger {
    TeamSettings {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    TriggerShape_v2 {
      Value: "mc:etriggershape:box"
    }
    InteractionTemplate {
    }
    BreadcrumbTemplate {
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 16546944413873057726
  Name: "LockedRoomDoorServer"
  Transform {
    Location {
    }
    Rotation {
      Yaw: 1.02452814e-05
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 9268530066773003686
  UnregisteredParameters {
    Overrides {
      Name: "cs:Trigger"
      ObjectReference {
        SelfId: 6847233342421385052
      }
    }
    Overrides {
      Name: "cs:NetObject"
      ObjectReference {
        SelfId: 5356350509379687301
      }
    }
    Overrides {
      Name: "cs:LockedMessage"
      String: ""
    }
    Overrides {
      Name: "cs:OnEnterBroadcastId"
      String: "Quest.VelwoodDoorEnter"
    }
    Overrides {
      Name: "cs:QuestCompletedId"
      String: "VelwoodIntro"
    }
    Overrides {
      Name: "cs:QuestActiveId"
      String: "VelwoodIntro"
    }
    Overrides {
      Name: "cs:ActiveObjectiveIndex"
      Int: 2
    }
  }
  WantsNetworking: true
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
      Id: 7257759430501656
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 16301414005635609904
  Name: "ClientContext"
  Transform {
    Location {
      X: -6356.03857
      Y: -5767.67969
      Z: -10634.1445
    }
    Rotation {
      Yaw: 49.9926262
    }
    Scale {
      X: 0.62
      Y: 0.62
      Z: 0.62
    }
  }
  ParentId: 10681643481591542134
  ChildIds: 17881241156566137207
  ChildIds: 5391637608810386062
  UnregisteredParameters {
    Overrides {
      Name: "cs:IsEnabled"
      Bool: true
    }
    Overrides {
      Name: "cs:DestinationName"
      String: ""
    }
    Overrides {
      Name: "cs:IsEnabled:isrep"
      Bool: true
    }
    Overrides {
      Name: "cs:DestinationName:isrep"
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
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:high"
  }
}
Objects {
  Id: 5391637608810386062
  Name: "VFX"
  Transform {
    Location {
      X: 2400.08203
      Y: -469.650513
      Z: -411.27771
    }
    Rotation {
      Yaw: -49.9926376
    }
    Scale {
      X: 1.61290324
      Y: 1.61290324
      Z: 1.61290324
    }
  }
  ParentId: 16301414005635609904
  ChildIds: 11708555435680538656
  ChildIds: 2269234317135195746
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:forceon"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  EditorIndicatorVisibility {
    Value: "mc:eindicatorvisibility:visiblewhenselected"
  }
  Folder {
    IsGroup: true
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 2269234317135195746
  Name: "Hand Cast VFX"
  Transform {
    Location {
      X: -0.388671875
      Y: -22.3852539
      Z: 79.4707
    }
    Rotation {
      Yaw: 97.6694183
    }
    Scale {
      X: 2.12674046
      Y: 2.12674046
      Z: 2.56223893
    }
  }
  ParentId: 5391637608810386062
  UnregisteredParameters {
    Overrides {
      Name: "bp:Enable Energy Swirl"
      Bool: true
    }
    Overrides {
      Name: "bp:Enable Flares"
      Bool: false
    }
    Overrides {
      Name: "bp:Enable Plasma Ball"
      Bool: false
    }
    Overrides {
      Name: "bp:Edge Color"
      Color {
        R: 1
        G: 0.833333373
        A: 1
      }
    }
    Overrides {
      Name: "bp:Color"
      Color {
        R: 1
        G: 0.945933819
        B: 0.371999979
        A: 1
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
      Id: 13934907904162102494
    }
    TeamSettings {
    }
    Vfx {
      AutoPlay: true
    }
  }
  Relevance {
    Value: "mc:edistancerelevance:medium"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 11708555435680538656
  Name: "Basic Water Splash VFX"
  Transform {
    Location {
    }
    Rotation {
      Roll: 34.4996796
    }
    Scale {
      X: 2.06990695
      Y: 2.06990695
      Z: 2.06990695
    }
  }
  ParentId: 5391637608810386062
  UnregisteredParameters {
    Overrides {
      Name: "bp:Enable Mist"
      Bool: false
    }
    Overrides {
      Name: "bp:Looping"
      Bool: true
    }
    Overrides {
      Name: "bp:Enable Drops"
      Bool: false
    }
    Overrides {
      Name: "bp:Color"
      Color {
        R: 4
        G: 3.15066671
        B: 0.0799999237
        A: 1
      }
    }
    Overrides {
      Name: "bp:Loop Duration"
      Float: 0.75
    }
    Overrides {
      Name: "bp:Local Space"
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
  Blueprint {
    BlueprintAsset {
      Id: 3336018558241619144
    }
    TeamSettings {
    }
    Vfx {
      AutoPlay: true
    }
  }
  Relevance {
    Value: "mc:edistancerelevance:medium"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 17881241156566137207
  Name: "QuestObjectiveSelectedObject"
  Transform {
    Location {
      X: 2404.68115
      Y: -465.790436
      Z: -377.78479
    }
    Rotation {
      Yaw: -49.9926376
    }
    Scale {
      X: 1.61290324
      Y: 1.61290324
      Z: 1.61290324
    }
  }
  ParentId: 16301414005635609904
  UnregisteredParameters {
    Overrides {
      Name: "cs:QuestID"
      String: "VelwoodIntro"
    }
    Overrides {
      Name: "cs:ObjectiveIndex"
      Int: 1
    }
    Overrides {
      Name: "cs:Object"
      ObjectReference {
        SelfId: 5391637608810386062
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
      Id: 15213057634937597698
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 17144743954583124466
  Name: "Game Portal"
  Transform {
    Location {
      X: -6356.72705
      Y: -5760.94141
      Z: -10653.9453
    }
    Rotation {
      Yaw: 140.125916
    }
    Scale {
      X: 0.746701717
      Y: 0.746701717
      Z: 0.746701717
    }
  }
  ParentId: 10681643481591542134
  ChildIds: 472384872815779021
  ChildIds: 11020121601952781040
  UnregisteredParameters {
    Overrides {
      Name: "cs:DestinationGame"
      String: "15499c/velwood"
    }
    Overrides {
      Name: "cs:DestinationGame:tooltip"
      String: "The id of the game that this will portal players to. Example: The game ID for the URL https://www.coregames.com/games/577d80/core-royale is 577d80/core-royale."
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
Objects {
  Id: 11020121601952781040
  Name: "ClientContext"
  Transform {
    Location {
      Z: 150
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 17144743954583124466
  ChildIds: 8662965592267498188
  ChildIds: 18334220522573907737
  ChildIds: 7817716061954578138
  UnregisteredParameters {
    Overrides {
      Name: "cs:IsEnabled"
      Bool: true
    }
    Overrides {
      Name: "cs:IsEnabled:isrep"
      Bool: true
    }
  }
  WantsNetworking: true
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:inheritfromparent"
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
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:low"
  }
}
Objects {
  Id: 7817716061954578138
  Name: "Portal VFX"
  Transform {
    Location {
      X: 26.9253464
      Y: 3.62268209
      Z: 251.177536
    }
    Rotation {
      Yaw: -90.1333
    }
    Scale {
      X: 0.74729
      Y: 1.24188721
      Z: 1.853297
    }
  }
  ParentId: 11020121601952781040
  UnregisteredParameters {
    Overrides {
      Name: "bp:Portal Shape"
      Int: 2
    }
    Overrides {
      Name: "bp:Portal Spread"
      Float: 0.4
    }
    Overrides {
      Name: "bp:Intensity Color Blend"
      Float: 1
    }
    Overrides {
      Name: "bp:Background Texture"
      Enum {
        Value: "mc:eportalbackground:15"
      }
    }
    Overrides {
      Name: "bp:Scene View Distortion Type"
      Enum {
        Value: "mc:eportalscenedistortiontype:newenumerator0"
      }
    }
    Overrides {
      Name: "bp:Edge Distortion"
      Float: 0
    }
    Overrides {
      Name: "bp:Speed"
      Float: 0.247848794
    }
    Overrides {
      Name: "bp:Intersection Distance"
      Float: 44.234417
    }
    Overrides {
      Name: "bp:Cast Shadows"
      Bool: false
    }
    Overrides {
      Name: "bp:Maintain picture scale"
      Bool: false
    }
    Overrides {
      Name: "bp:Edge Distance"
      Float: 0.45
    }
    Overrides {
      Name: "bp:Unlit"
      Bool: true
    }
    Overrides {
      Name: "bp:Disable Swirl and Edge"
      Bool: false
    }
    Overrides {
      Name: "bp:Color A"
      Color {
        R: 0.833333969
        B: 2
        A: 1
      }
    }
    Overrides {
      Name: "bp:Color B"
      Color {
        R: 0.286250234
        B: 0.687000036
        A: 1
      }
    }
    Overrides {
      Name: "bp:Color C"
      Color {
        R: 0.166666791
        B: 0.399999976
        A: 1
      }
    }
    Overrides {
      Name: "bp:Swirl Color"
      Color {
        A: 1
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
      Id: 6677237403455816226
    }
  }
  Relevance {
    Value: "mc:edistancerelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 18334220522573907737
  Name: "Transfer Trigger"
  Transform {
    Location {
      X: 21.8982334
      Y: -8.79573631
      Z: 121.822205
    }
    Rotation {
    }
    Scale {
      X: 4.34665155
      Y: 0.445152372
      Z: 4.49705076
    }
  }
  ParentId: 11020121601952781040
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Trigger {
    InteractionLabel: "Take Portal to Another Core Game"
    TeamSettings {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    TriggerShape_v2 {
      Value: "mc:etriggershape:box"
    }
    InteractionTemplate {
    }
    BreadcrumbTemplate {
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 8662965592267498188
  Name: "PortalPaintingClient"
  Transform {
    Location {
      Z: -150
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 11020121601952781040
  UnregisteredParameters {
    Overrides {
      Name: "cs:TransferTrigger"
      ObjectReference {
        SelfId: 18334220522573907737
      }
    }
    Overrides {
      Name: "cs:PortalVFX"
      ObjectReference {
        SelfId: 7817716061954578138
      }
    }
    Overrides {
      Name: "cs:Root"
      ObjectReference {
        SelfId: 17144743954583124466
      }
    }
    Overrides {
      Name: "cs:NetObject"
      ObjectReference {
        SelfId: 11020121601952781040
      }
    }
    Overrides {
      Name: "cs:ScaleOnEnable"
      Bool: false
    }
    Overrides {
      Name: "cs:InteractionTrigger"
      ObjectReference {
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
      Id: 9636815241709916745
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 472384872815779021
  Name: "PortalPaintingServer"
  Transform {
    Location {
    }
    Rotation {
    }
    Scale {
      X: 1.33922279
      Y: 1.33922279
      Z: 1.33922279
    }
  }
  ParentId: 17144743954583124466
  UnregisteredParameters {
    Overrides {
      Name: "cs:Root"
      ObjectReference {
        SelfId: 17144743954583124466
      }
    }
    Overrides {
      Name: "cs:NetObject"
      ObjectReference {
        SelfId: 11020121601952781040
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
      Id: 15281295104358832901
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 4460784204591113454
  Name: "ObjectiveEventListener"
  Transform {
    Location {
      Z: -14645.0859
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 10681643481591542134
  UnregisteredParameters {
    Overrides {
      Name: "cs:QuestID"
      String: "VelwoodIntro"
    }
    Overrides {
      Name: "cs:ObjectiveIndex"
      Int: 2
    }
    Overrides {
      Name: "cs:ObjectID"
      String: "EDEE5DCA39F3F9F2:Game Portal"
    }
    Overrides {
      Name: "cs:EventID"
      String: "TransferPortal"
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
      Id: 9246345034586664616
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 4675207411841648837
  Name: "ObjectiveEventListener"
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
  ParentId: 10681643481591542134
  UnregisteredParameters {
    Overrides {
      Name: "cs:QuestID"
      String: "VelwoodIntro"
    }
    Overrides {
      Name: "cs:ObjectiveIndex"
      Int: 1
    }
    Overrides {
      Name: "cs:ObjectID"
      String: "CloseMail"
    }
    Overrides {
      Name: "cs:EventID"
      String: "Quest.Welcome"
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
      Id: 9246345034586664616
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
