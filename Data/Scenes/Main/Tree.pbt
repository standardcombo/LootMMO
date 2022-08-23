Name: "Root"
RootId: 4781671109827199097
Objects {
  Id: 4781671109827199097
  Name: "Root"
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
  ChildIds: 17635258934049397073
  ChildIds: 291839474745250044
  ChildIds: 1578154111882892155
  ChildIds: 9186864475937043280
  ChildIds: 12626000991766525324
  ChildIds: 880106829888079510
  ChildIds: 8212739915466549664
  ChildIds: 12785624939370825655
  ChildIds: 2852741563843667238
  ChildIds: 1888181817911919837
  ChildIds: 2561084474995652434
  ChildIds: 15408793396683655395
  ChildIds: 17798732759644559527
  UnregisteredParameters {
  }
  Collidable_v2 {
    Value: "mc:ecollisionsetting:forceon"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:forceon"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Folder {
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 17798732759644559527
  Name: "Quests"
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
  EditorIndicatorVisibility {
    Value: "mc:eindicatorvisibility:visiblewhenselected"
  }
  Folder {
    IsFilePartition: true
    FilePartitionName: "Quests"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 15408793396683655395
  Name: "Fade Layer"
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
  ParentId: 4781671109827199097
  ChildIds: 11335659757365147267
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
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 11335659757365147267
  Name: "UI Container"
  Transform {
    Location {
      X: -36028.9805
      Y: -4601.93262
      Z: -10245.1055
    }
    Rotation {
      Yaw: 125.261726
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 15408793396683655395
  ChildIds: 17783730976917153379
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
  Control {
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    Canvas {
      ContentType {
        Value: "mc:ecanvascontenttype:dynamic"
      }
      Opacity: 1
      IsHUD: true
      CanvasWorldSize {
        X: 1024
        Y: 1024
      }
      RedrawTime: 30
      UseSafeZoneAdjustment: true
    }
    AnchorLayout {
      SelfAnchor {
        Anchor {
          Value: "mc:euianchor:topleft"
        }
      }
      TargetAnchor {
        Anchor {
          Value: "mc:euianchor:topleft"
        }
      }
    }
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 17783730976917153379
  Name: "Full Screen Fade"
  Transform {
    Location {
      X: 6078.89648
      Y: -6296.29297
      Z: 2516.72852
    }
    Rotation {
      Yaw: -28.9499836
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 11335659757365147267
  ChildIds: 8532101088513258337
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
  Control {
    Width: 200
    Height: 200
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    UseParentWidth: true
    UseParentHeight: true
    Image {
      Brush {
      }
      Color {
        A: 1
      }
      TeamSettings {
      }
      ShadowColor {
        A: 1
      }
      ShadowOffset {
      }
      ScreenshotIndex: 1
    }
    AnchorLayout {
      SelfAnchor {
        Anchor {
          Value: "mc:euianchor:topleft"
        }
      }
      TargetAnchor {
        Anchor {
          Value: "mc:euianchor:topleft"
        }
      }
    }
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 8532101088513258337
  Name: "FadeLayer"
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
  ParentId: 17783730976917153379
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
      Id: 14932328709633993174
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 2561084474995652434
  Name: "Settings Per Location"
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
  EditorIndicatorVisibility {
    Value: "mc:eindicatorvisibility:visiblewhenselected"
  }
  Folder {
    IsFilePartition: true
    FilePartitionName: "Settings Per Location"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 1888181817911919837
  Name: "SocialSpace"
  Transform {
    Location {
      X: -4521.57764
      Y: -4396.86768
      Z: 3595.47144
    }
    Rotation {
    }
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
  EditorIndicatorVisibility {
    Value: "mc:eindicatorvisibility:visiblewhenselected"
  }
  Folder {
    IsFilePartition: true
    FilePartitionName: "SocialSpace"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 2852741563843667238
  Name: "Loot"
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
  EditorIndicatorVisibility {
    Value: "mc:eindicatorvisibility:visiblewhenselected"
  }
  Folder {
    IsFilePartition: true
    FilePartitionName: "Loot"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 12785624939370825655
  Name: "Other Components"
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
  EditorIndicatorVisibility {
    Value: "mc:eindicatorvisibility:visiblewhenselected"
  }
  Folder {
    IsFilePartition: true
    FilePartitionName: "Other Components"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 8212739915466549664
  Name: "Level Design"
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
  Folder {
    IsFilePartition: true
    FilePartitionName: "Level Design"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 880106829888079510
  Name: "Terrain"
  Transform {
    Location {
      Z: -1170.18848
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 4781671109827199097
  Collidable_v2 {
    Value: "mc:ecollisionsetting:forceon"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:forceon"
  }
  Terrain {
    Material {
      Id: 10995221333854290307
    }
    VoxelSize: 150
    OctreeDepth: 5
    GeneratorID: "DEPRECATED"
    Foliage {
      Asset {
        Id: 8021476752120115971
      }
      DistanceBetweenInstances: 2500
      SpawnDistance: 28800
      CullDistance {
        Min: 5000
        Max: 6000
      }
      ReceivesDecals: true
      GroundSlopeAngle {
        Max: 32
      }
      Scaling {
        Scaling: Free
        ScaleX {
          Min: 0.5
          Max: 0.7
        }
        ScaleY {
          Min: 0.5
          Max: 0.7
        }
        ScaleZ {
          Min: 0.5
          Max: 0.5
        }
      }
      RotationAlignment: AlignToWorldUp
      RandomYaw: true
      RandomPitchAngle: 6
      Materials {
        key: "Shared_BaseMaterial"
        value {
          Id: 5784961500467902601
        }
      }
      LocalPositionOffset {
        Z: -120
      }
      LocalRotationOffset {
      }
      GlobalPositionOffset {
      }
      Height {
        Min: -102400
        Max: 7800
      }
    }
    Foliage {
      Asset {
        Id: 14293176668765266901
      }
      DistanceBetweenInstances: 700
      MaterialChannel: 3
      SpawnDistance: 24000
      CullDistance {
        Min: 5000
        Max: 6000
      }
      ReceivesDecals: true
      GroundSlopeAngle {
        Max: 32
      }
      Scaling {
        Scaling: LockXY
        ScaleX {
          Min: 0.4
          Max: 0.6
        }
        ScaleY {
          Min: 1
          Max: 1
        }
        ScaleZ {
          Min: 0.3
          Max: 0.4
        }
      }
      RandomYaw: true
      RandomPitchAngle: 6
      Materials {
        key: "Shared_BaseMaterial"
        value {
          Id: 841534158063459245
        }
      }
      LocalPositionOffset {
        Z: -10
      }
      LocalRotationOffset {
      }
      GlobalPositionOffset {
      }
      Height {
        Min: -102400
        Max: 102400
      }
    }
    Foliage {
      Asset {
        Id: 16388825162191980240
      }
      DistanceBetweenInstances: 2500
      MaterialChannel: 3
      SpawnDistance: 28800
      CullDistance {
        Min: 8000
        Max: 10000
      }
      ReceivesDecals: true
      GroundSlopeAngle {
        Max: 35
      }
      Scaling {
        ScaleX {
          Min: 0.5
          Max: 1
        }
        ScaleY {
          Min: 1
          Max: 1
        }
        ScaleZ {
          Min: 1
          Max: 1
        }
      }
      RotationAlignment: AlignToWorldUp
      RandomYaw: true
      RandomPitchAngle: 6
      Materials {
        key: "Shared_BaseMaterial"
        value {
          Id: 5784961500467902601
        }
      }
      LocalPositionOffset {
        Z: -10
      }
      LocalRotationOffset {
      }
      GlobalPositionOffset {
      }
      Height {
        Min: -102400
        Max: 102400
      }
    }
    Foliage {
      Asset {
        Id: 14293176668765266901
      }
      DistanceBetweenInstances: 2500
      MaterialChannel: 2
      SpawnDistance: 28800
      CullDistance {
        Min: 5000
        Max: 6000
      }
      ReceivesDecals: true
      GroundSlopeAngle {
        Max: 32
      }
      Scaling {
        Scaling: LockXY
        ScaleX {
          Min: 0.4
          Max: 0.6
        }
        ScaleY {
          Min: 1
          Max: 1
        }
        ScaleZ {
          Min: 0.3
          Max: 0.4
        }
      }
      RandomYaw: true
      RandomPitchAngle: 6
      Materials {
        key: "Shared_BaseMaterial"
        value {
          Id: 15710974556442677409
        }
      }
      LocalPositionOffset {
        Z: -10
      }
      LocalRotationOffset {
      }
      GlobalPositionOffset {
      }
      Height {
        Min: -102400
        Max: 102400
      }
    }
    Foliage {
      Asset {
        Id: 8021476752120115971
      }
      DistanceBetweenInstances: 2000
      MaterialChannel: 3
      SpawnDistance: 28800
      CullDistance {
        Min: 8000
        Max: 10000
      }
      ReceivesDecals: true
      GroundSlopeAngle {
        Max: 32
      }
      Scaling {
        Scaling: Free
        ScaleX {
          Min: 0.5
          Max: 0.7
        }
        ScaleY {
          Min: 0.5
          Max: 0.7
        }
        ScaleZ {
          Min: 0.5
          Max: 0.5
        }
      }
      RotationAlignment: AlignToWorldUp
      RandomYaw: true
      RandomPitchAngle: 6
      Materials {
        key: "Shared_BaseMaterial"
        value {
          Id: 5784961500467902601
        }
      }
      LocalPositionOffset {
        Z: -120
      }
      LocalRotationOffset {
      }
      GlobalPositionOffset {
      }
      Height {
        Min: -102400
        Max: 102400
      }
    }
    Foliage {
      Asset {
        Id: 14293176668765266901
      }
      DistanceBetweenInstances: 1000
      SpawnDistance: 24000
      CullDistance {
        Min: 5000
        Max: 6000
      }
      ReceivesDecals: true
      GroundSlopeAngle {
        Max: 32
      }
      Scaling {
        Scaling: LockXY
        ScaleX {
          Min: 0.4
          Max: 0.6
        }
        ScaleY {
          Min: 1
          Max: 1
        }
        ScaleZ {
          Min: 0.3
          Max: 0.4
        }
      }
      RandomYaw: true
      RandomPitchAngle: 6
      Materials {
        key: "Shared_BaseMaterial"
        value {
          Id: 5784961500467902601
        }
      }
      LocalPositionOffset {
        Z: -10
      }
      LocalRotationOffset {
      }
      GlobalPositionOffset {
      }
      Height {
        Min: -102400
        Max: 7800
      }
    }
    Foliage {
      Asset {
        Id: 14293176668765266901
      }
      DistanceBetweenInstances: 700
      MaterialChannel: 2
      SpawnDistance: 24000
      CullDistance {
        Min: 5000
        Max: 6000
      }
      ReceivesDecals: true
      GroundSlopeAngle {
        Max: 32
      }
      Scaling {
        ScaleX {
          Min: 0.6
          Max: 0.8
        }
        ScaleY {
          Min: 1
          Max: 1
        }
        ScaleZ {
          Min: 0.3
          Max: 0.4
        }
      }
      RandomYaw: true
      RandomPitchAngle: 6
      Materials {
        key: "Shared_BaseMaterial"
        value {
          Id: 5784961500467902601
        }
      }
      LocalPositionOffset {
        Z: -20
      }
      LocalRotationOffset {
      }
      GlobalPositionOffset {
      }
      Height {
        Min: -102400
        Max: 102400
      }
    }
    Foliage {
      Asset {
        Id: 8021476752120115971
      }
      DistanceBetweenInstances: 700
      MaterialChannel: 3
      SpawnDistance: 28800
      CullDistance {
        Min: 5000
        Max: 6000
      }
      ReceivesDecals: true
      GroundSlopeAngle {
        Max: 32
      }
      Scaling {
        Scaling: Free
        ScaleX {
          Min: 0.1
          Max: 0.1
        }
        ScaleY {
          Min: 0.1
          Max: 0.2
        }
        ScaleZ {
          Min: 0.05
          Max: 0.1
        }
      }
      RotationAlignment: AlignToWorldUp
      RandomYaw: true
      RandomPitchAngle: 6
      Materials {
        key: "Shared_BaseMaterial"
        value {
          Id: 5784961500467902601
        }
      }
      LocalPositionOffset {
      }
      LocalRotationOffset {
      }
      GlobalPositionOffset {
      }
      Height {
        Min: -102400
        Max: 5000
      }
    }
    Foliage {
      Asset {
        Id: 14293176668765266901
      }
      DistanceBetweenInstances: 700
      MaterialChannel: 1
      SpawnDistance: 24000
      CullDistance {
        Min: 4000
        Max: 6000
      }
      ReceivesDecals: true
      GroundSlopeAngle {
        Max: 32
      }
      Scaling {
        Scaling: LockXY
        ScaleX {
          Min: 0.2
          Max: 0.4
        }
        ScaleY {
          Min: 1
          Max: 1
        }
        ScaleZ {
          Min: 0.3
          Max: 0.3
        }
      }
      RandomYaw: true
      RandomPitchAngle: 6
      Materials {
        key: "Shared_BaseMaterial"
        value {
          Id: 5784961500467902601
        }
      }
      LocalPositionOffset {
        Z: -21
      }
      LocalRotationOffset {
      }
      GlobalPositionOffset {
      }
      Height {
        Min: -102400
        Max: 20000
      }
    }
    Foliage {
      Asset {
        Id: 6981536508008379085
      }
      DistanceBetweenInstances: 500
      MaterialChannel: 1
      SpawnDistance: 24000
      CullDistance {
        Min: 4000
        Max: 6000
      }
      ReceivesDecals: true
      GroundSlopeAngle {
        Max: 90
      }
      Scaling {
        Scaling: LockXY
        ScaleX {
          Min: 0.05
          Max: 0.1
        }
        ScaleY {
          Min: 1
          Max: 1
        }
        ScaleZ {
          Min: 0.07
          Max: 0.07
        }
      }
      RandomYaw: true
      RandomPitchAngle: 6
      Materials {
        key: "Shared_BaseMaterial"
        value {
          Id: 5784961500467902601
        }
      }
      LocalPositionOffset {
        Z: -60
      }
      LocalRotationOffset {
        Pitch: 30
      }
      GlobalPositionOffset {
      }
      Height {
        Min: -102400
        Max: 102400
      }
    }
    Foliage {
      Asset {
        Id: 6981536508008379085
      }
      DistanceBetweenInstances: 400
      MaterialChannel: 1
      SpawnDistance: 24000
      CullDistance {
        Min: 4000
        Max: 6000
      }
      ReceivesDecals: true
      GroundSlopeAngle {
        Max: 45
      }
      Scaling {
        Scaling: LockXY
        ScaleX {
          Min: 0.05
          Max: 0.1
        }
        ScaleY {
          Min: 1
          Max: 1
        }
        ScaleZ {
          Min: 0.07
          Max: 0.07
        }
      }
      RandomYaw: true
      RandomPitchAngle: 6
      Materials {
        key: "Shared_BaseMaterial"
        value {
          Id: 5784961500467902601
        }
      }
      LocalPositionOffset {
        Z: -60
      }
      LocalRotationOffset {
        Pitch: 30
      }
      GlobalPositionOffset {
      }
      Height {
        Min: -102400
        Max: 7800
      }
    }
    Foliage {
      Asset {
        Id: 14293176668765266901
      }
      DistanceBetweenInstances: 500
      MaterialChannel: 1
      SpawnDistance: 24000
      CullDistance {
        Min: 4000
        Max: 6000
      }
      ReceivesDecals: true
      GroundSlopeAngle {
        Max: 32
      }
      Scaling {
        Scaling: LockXY
        ScaleX {
          Min: 0.4
          Max: 0.6
        }
        ScaleY {
          Min: 1
          Max: 1
        }
        ScaleZ {
          Min: 0.3
          Max: 0.3
        }
      }
      RandomYaw: true
      RandomPitchAngle: 6
      Materials {
        key: "Shared_BaseMaterial"
        value {
          Id: 5784961500467902601
        }
      }
      LocalPositionOffset {
        Z: -21
      }
      LocalRotationOffset {
      }
      GlobalPositionOffset {
      }
      Height {
        Min: -102400
        Max: 20000
      }
    }
    Foliage {
      Asset {
        Id: 15128280182623405640
      }
      DistanceBetweenInstances: 1000
      MaterialChannel: 3
      SpawnDistance: 24000
      CullDistance {
        Min: 6000
        Max: 8000
      }
      CastShadow: true
      ReceivesDecals: true
      GroundSlopeAngle {
        Max: 45
      }
      Scaling {
        Scaling: LockXY
        ScaleX {
          Min: 0.5
          Max: 0.7
        }
        ScaleY {
          Min: 1
          Max: 1
        }
        ScaleZ {
          Min: 1
          Max: 1
        }
      }
      RotationAlignment: AlignToWorldUp
      RandomYaw: true
      RandomPitchAngle: 6
      Materials {
        key: "Nature_Leaves"
        value {
          Id: 17201051112233946141
        }
      }
      LocalPositionOffset {
        Z: -10
      }
      LocalRotationOffset {
      }
      GlobalPositionOffset {
      }
      Height {
        Min: -102400
        Max: 102400
      }
    }
    Foliage {
      Asset {
        Id: 11228299035028749551
      }
      DistanceBetweenInstances: 300
      MaterialChannel: 3
      SpawnDistance: 24000
      CullDistance {
        Min: 5000
        Max: 7000
      }
      ReceivesDecals: true
      GroundSlopeAngle {
        Max: 35
      }
      Scaling {
        ScaleX {
          Min: 1
          Max: 1
        }
        ScaleY {
          Min: 1
          Max: 1
        }
        ScaleZ {
          Min: 1
          Max: 1
        }
      }
      RandomYaw: true
      RandomPitchAngle: 6
      Materials {
        key: "Nature_Leaves"
        value {
          Id: 841534158063459245
        }
      }
      LocalPositionOffset {
      }
      LocalRotationOffset {
      }
      GlobalPositionOffset {
      }
      Height {
        Min: -102400
        Max: 102400
      }
    }
    Foliage {
      Asset {
        Id: 84254442598276906
      }
      DistanceBetweenInstances: 700
      MaterialChannel: 3
      SpawnDistance: 24000
      CullDistance {
        Min: 5000
        Max: 7000
      }
      ReceivesDecals: true
      GroundSlopeAngle {
        Max: 45
      }
      Scaling {
        ScaleX {
          Min: 1
          Max: 1
        }
        ScaleY {
          Min: 1
          Max: 1
        }
        ScaleZ {
          Min: 1
          Max: 1
        }
      }
      RandomYaw: true
      RandomPitchAngle: 6
      Materials {
        key: "Nature_Leaves"
        value {
          Id: 841534158063459245
        }
      }
      LocalPositionOffset {
      }
      LocalRotationOffset {
      }
      GlobalPositionOffset {
      }
      Height {
        Min: -102400
        Max: 102400
      }
    }
    Foliage {
      Asset {
        Id: 4044214825842439722
      }
      DistanceBetweenInstances: 100
      MaterialChannel: 3
      SpawnDistance: 24000
      CullDistance {
        Min: 5000
        Max: 7000
      }
      ReceivesDecals: true
      GroundSlopeAngle {
        Max: 45
      }
      Scaling {
        ScaleX {
          Min: 0.4
          Max: 0.8
        }
        ScaleY {
          Min: 1
          Max: 1
        }
        ScaleZ {
          Min: 1
          Max: 1
        }
      }
      RandomYaw: true
      RandomPitchAngle: 6
      Materials {
        key: "Nature_Grass"
        value {
          Id: 841534158063459245
        }
      }
      LocalPositionOffset {
      }
      LocalRotationOffset {
      }
      GlobalPositionOffset {
      }
      Height {
        Min: -102400
        Max: 102400
      }
    }
    Foliage {
      Asset {
        Id: 8553298544017934648
      }
      DistanceBetweenInstances: 250
      MaterialChannel: 3
      SpawnDistance: 28800
      CullDistance {
        Min: 6000
        Max: 8000
      }
      ReceivesDecals: true
      GroundSlopeAngle {
        Max: 45
      }
      Scaling {
        Scaling: LockXY
        ScaleX {
          Min: 0.5
          Max: 1
        }
        ScaleY {
          Min: 1
          Max: 1
        }
        ScaleZ {
          Min: 0.6
          Max: 0.6
        }
      }
      RandomYaw: true
      RandomPitchAngle: 6
      Materials {
        key: "Nature_Grass"
        value {
          Id: 1702837764955470267
        }
      }
      LocalPositionOffset {
        Z: -30
      }
      LocalRotationOffset {
      }
      GlobalPositionOffset {
      }
      Height {
        Min: -102400
        Max: 102400
      }
    }
    Foliage {
      Asset {
        Id: 10784387645319107096
      }
      DistanceBetweenInstances: 9300
      MaterialChannel: 3
      SpawnDistance: 38400
      CullDistance {
        Min: 200000
        Max: 200000
      }
      ReceivesDecals: true
      GroundSlopeAngle {
        Max: 32
      }
      Scaling {
        Scaling: LockXY
        ScaleX {
          Min: 1.4
          Max: 1.4
        }
        ScaleY {
          Min: 1
          Max: 1
        }
        ScaleZ {
          Min: 0.8
          Max: 1
        }
      }
      RotationAlignment: AlignToWorldUp
      RandomYaw: true
      RandomPitchAngle: 6
      Materials {
        key: "Nature_Leaves"
        value {
          Id: 841534158063459245
        }
      }
      Materials {
        key: "Nature_Trunk"
        value {
          Id: 841534158063459245
        }
      }
      LocalPositionOffset {
        Z: -100
      }
      LocalRotationOffset {
      }
      GlobalPositionOffset {
      }
      Height {
        Min: 8000
        Max: 102400
      }
    }
    Foliage {
      Asset {
        Id: 901541979513849367
      }
      DistanceBetweenInstances: 1500
      MaterialChannel: 3
      SpawnDistance: 24000
      CullDistance {
        Min: 7000
        Max: 10000
      }
      CastShadow: true
      ReceivesDecals: true
      GroundSlopeAngle {
        Max: 45
      }
      Scaling {
        ScaleX {
          Min: 1
          Max: 1.5
        }
        ScaleY {
          Min: 1
          Max: 1
        }
        ScaleZ {
          Min: 1
          Max: 1
        }
      }
      RotationAlignment: AlignToWorldUp
      RandomYaw: true
      RandomPitchAngle: 6
      Materials {
        key: "Nature_Leaves"
        value {
          Id: 841534158063459245
        }
      }
      Materials {
        key: "Shared_BaseMaterial"
        value {
          Id: 841534158063459245
        }
      }
      LocalPositionOffset {
        Z: -50
      }
      LocalRotationOffset {
      }
      GlobalPositionOffset {
      }
      Height {
        Min: 7000
        Max: 102400
      }
    }
    Foliage {
      Asset {
        Id: 13800436588944964225
      }
      DistanceBetweenInstances: 1500
      MaterialChannel: 3
      SpawnDistance: 24000
      CullDistance {
        Min: 7000
        Max: 10000
      }
      CastShadow: true
      ReceivesDecals: true
      GroundSlopeAngle {
        Max: 45
      }
      Scaling {
        ScaleX {
          Min: 1
          Max: 1
        }
        ScaleY {
          Min: 1
          Max: 1
        }
        ScaleZ {
          Min: 1
          Max: 1
        }
      }
      RotationAlignment: AlignToWorldUp
      RandomYaw: true
      RandomPitchAngle: 6
      Materials {
        key: "Nature_Leaves"
        value {
          Id: 841534158063459245
        }
      }
      Materials {
        key: "Shared_BaseMaterial"
        value {
          Id: 841534158063459245
        }
      }
      LocalPositionOffset {
        Z: -50
      }
      LocalRotationOffset {
      }
      GlobalPositionOffset {
      }
      Height {
        Min: 7000
        Max: 102400
      }
    }
    MaxLOD: 32
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 12626000991766525324
  Name: "BG Terrain"
  Transform {
    Location {
      Z: -15091.9482
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 4781671109827199097
  Collidable_v2 {
    Value: "mc:ecollisionsetting:forceoff"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:forceoff"
  }
  Terrain {
    Material {
      Id: 13795170071507932677
    }
    VoxelSize: 1000
    OctreeDepth: 5
    GeneratorID: "DEPRECATED"
    MaxLOD: 32
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 9186864475937043280
  Name: "Environmental"
  Transform {
    Location {
      X: -4591.50391
      Y: -4259.62891
      Z: 4827.84277
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 4781671109827199097
  ChildIds: 13743686594411359841
  ChildIds: 7490083330898921651
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
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 7490083330898921651
  Name: "PostProcesses"
  Transform {
    Location {
      X: 4531.50391
      Y: 1279.62891
      Z: -4827.84277
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 9186864475937043280
  ChildIds: 17211331053235690457
  ChildIds: 17862054296994801031
  ChildIds: 5782105561255309277
  ChildIds: 15420170624833856413
  ChildIds: 11648666783363970768
  ChildIds: 10238707556722705455
  Collidable_v2 {
    Value: "mc:ecollisionsetting:forceoff"
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
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 10238707556722705455
  Name: "Vignette Grain Post Process"
  Transform {
    Location {
      X: 60
      Y: 2980
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 7490083330898921651
  UnregisteredParameters {
    Overrides {
      Name: "bp:Grain Intensity"
      Float: 0
    }
    Overrides {
      Name: "bp:Grain Jitter"
      Float: 0
    }
    Overrides {
      Name: "bp:Vignette Intensity"
      Float: 0.6
    }
  }
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:forceon"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Blueprint {
    BlueprintAsset {
      Id: 2920556432021751741
    }
    TeamSettings {
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 11648666783363970768
  Name: "Ambient Occlusion Recolor Post Process"
  Transform {
    Location {
      X: 60
      Y: 2980
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 7490083330898921651
  UnregisteredParameters {
    Overrides {
      Name: "bp:color"
      Color {
        R: 0.270833343
        G: 0.154014543
        B: 0.0763364881
        A: 1
      }
    }
    Overrides {
      Name: "bp:Use Two Colors"
      Bool: false
    }
    Overrides {
      Name: "bp:Blend Weight"
      Float: 1
    }
    Overrides {
      Name: "bp:Color Balance"
      Float: 0.40079093
    }
    Overrides {
      Name: "bp:Color Brightness"
      Float: 2.5
    }
    Overrides {
      Name: "bp:Color"
      Color {
        R: 0.030723
        G: 0.0355968624
        B: 0.0490000024
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
      Id: 16782431065943393215
    }
    TeamSettings {
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 15420170624833856413
  Name: "Motion Blur Post Process"
  Transform {
    Location {
      X: 60
      Y: 2980
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 7490083330898921651
  UnregisteredParameters {
    Overrides {
      Name: "bp:Intensity"
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
  Blueprint {
    BlueprintAsset {
      Id: 15946579520938017950
    }
    TeamSettings {
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 5782105561255309277
  Name: "Simple Depth Blur Post Process"
  Transform {
    Location {
      X: -240
      Y: -11920
      Z: 3400
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 7490083330898921651
  UnregisteredParameters {
    Overrides {
      Name: "bp:Visible In Preview"
      Bool: false
    }
    Overrides {
      Name: "bp:Start Distance"
      Float: 50
    }
    Overrides {
      Name: "bp:Max Distance"
      Float: 80
    }
    Overrides {
      Name: "bp:Effect Strength"
      Float: 1
    }
    Overrides {
      Name: "bp:Blur Amount"
      Float: 0.02
    }
    Overrides {
      Name: "bp:Visualize Range"
      Bool: false
    }
    Overrides {
      Name: "bp:Brightness Multiplier"
      Float: 1.1
    }
    Overrides {
      Name: "bp:Priority"
      Float: 3
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
      Id: 15121749094906828004
    }
    TeamSettings {
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 17862054296994801031
  Name: "Tonemapping Post Process"
  Transform {
    Location {
      X: 60
      Y: 2980
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 7490083330898921651
  UnregisteredParameters {
    Overrides {
      Name: "bp:Toe"
      Float: 0.504228234
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
      Id: 17812816660570473491
    }
    TeamSettings {
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 17211331053235690457
  Name: "Screen Space Reflection Post Process"
  Transform {
    Location {
      X: 60
      Y: 2980
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 7490083330898921651
  UnregisteredParameters {
    Overrides {
      Name: "bp:Quality Level"
      Float: 0.6
    }
    Overrides {
      Name: "bp:Max Roughness"
      Float: 0.6
    }
    Overrides {
      Name: "bp:Reflection Intensity"
      Float: 0.6
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
      Id: 8912770877519493962
    }
    TeamSettings {
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 13743686594411359841
  Name: "Character Select"
  Transform {
    Location {
      X: 4591.50391
      Y: 4259.62891
      Z: -4827.84277
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 9186864475937043280
  ChildIds: 14621628340172696036
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
  Id: 14621628340172696036
  Name: "ClientContext"
  Transform {
    Location {
      X: -327.966461
      Y: 75.2325287
      Z: -6172.94971
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 13743686594411359841
  ChildIds: 15248217842931598072
  ChildIds: 9765665748318746768
  ChildIds: 8078974897664837311
  ChildIds: 6652416260837099249
  ChildIds: 10204651723635706203
  ChildIds: 11601971533059380798
  ChildIds: 2716031646225940882
  Collidable_v2 {
    Value: "mc:ecollisionsetting:forceoff"
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
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 2716031646225940882
  Name: "Environment Fog Default VFX"
  Transform {
    Location {
      X: 327.966461
      Y: -75.2325287
      Z: 13372.9492
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 14621628340172696036
  UnregisteredParameters {
    Overrides {
      Name: "bp:Color"
      Color {
        R: 0.112792969
        G: 0.252144784
        B: 0.401041657
        A: 1
      }
    }
    Overrides {
      Name: "bp:Start"
      Float: 200
    }
    Overrides {
      Name: "bp:Volumetric Fog"
      Bool: false
    }
    Overrides {
      Name: "bp:Layered Fog Offset Height"
      Float: -28.3203354
    }
    Overrides {
      Name: "bp:Falloff"
      Float: 0.05
    }
    Overrides {
      Name: "bp:Layered Fog Falloff"
      Float: 1.58213699
    }
    Overrides {
      Name: "bp:Light Absorption Amount"
      Float: 1.2
    }
    Overrides {
      Name: "bp:Fog Density"
      Float: 3
    }
    Overrides {
      Name: "bp:Albedo"
      Color {
        R: 1
        G: 0.905562937
        B: 0.69
        A: 1
      }
    }
    Overrides {
      Name: "bp:View Distance"
      Float: 3190.92456
    }
    Overrides {
      Name: "bp:Layered Fog Density"
      Float: 0.2
    }
    Overrides {
      Name: "bp:Directional Inscattering Color"
      Color {
        R: 0.278501242
        G: 0.531623065
        B: 0.802083313
        A: 1
      }
    }
  }
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:forceon"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Blueprint {
    BlueprintAsset {
      Id: 2224571462023946700
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 11601971533059380798
  Name: "Skylight"
  Transform {
    Location {
      X: 577.966431
      Y: 224.767471
      Z: 6172.94971
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 14621628340172696036
  UnregisteredParameters {
    Overrides {
      Name: "bp:Index"
      Int: 19
    }
    Overrides {
      Name: "bp:Ambient Image"
      Enum {
        Value: "mc:eambientcubemapssmall:17"
      }
    }
    Overrides {
      Name: "bp:Blend Amount"
      Float: 0.358973712
    }
    Overrides {
      Name: "bp:Intensity"
      Float: 0.8
    }
    Overrides {
      Name: "bp:Blend Target Image"
      Enum {
        Value: "mc:eambientcubemapssmall:28"
      }
    }
    Overrides {
      Name: "bp:Cast Shadows"
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
  Blueprint {
    BlueprintAsset {
      Id: 11515840070784317904
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 10204651723635706203
  Name: "Simple Exposure Post Process"
  Transform {
    Location {
      X: 327.966461
      Y: -75.2325287
      Z: 6172.94971
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 14621628340172696036
  UnregisteredParameters {
    Overrides {
      Name: "bp:Exposure"
      Float: 0.1
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
      Id: 12107410425077790377
    }
    TeamSettings {
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 6652416260837099249
  Name: "Advanced Color Grading Post Process"
  Transform {
    Location {
      X: -1967.79871
      Y: 451.395142
    }
    Rotation {
      Yaw: 1.36603758e-05
    }
    Scale {
      X: 300
      Y: 600
      Z: 200
    }
  }
  ParentId: 14621628340172696036
  UnregisteredParameters {
    Overrides {
      Name: "bp:Color Contrast"
      Color {
        R: 1
        G: 1
        B: 1
        A: 1.1
      }
    }
    Overrides {
      Name: "bp:Unbounded"
      Bool: true
    }
    Overrides {
      Name: "bp:Shadow Gain"
      Color {
        G: 0.0574833788
        B: 0.309999943
        A: 1
      }
    }
    Overrides {
      Name: "bp:Shadow Max"
      Float: 0.04
    }
    Overrides {
      Name: "bp:Color Saturation"
      Color {
        R: 1
        G: 1
        B: 1
        A: 1
      }
    }
    Overrides {
      Name: "bp:Scene Tint"
      Color {
        R: 0.996514797
        G: 1.06434321
        B: 1.2
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
      Id: 16285172041817233770
    }
    TeamSettings {
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 8078974897664837311
  Name: "Ambient Occlusion Post Process"
  Transform {
    Location {
      X: 327.966461
      Y: -75.2325287
      Z: 6172.94971
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 14621628340172696036
  UnregisteredParameters {
    Overrides {
      Name: "bp:Quality"
      Float: 76
    }
    Overrides {
      Name: "bp:Radius In World Space"
      Bool: true
    }
    Overrides {
      Name: "bp:Blend Weight"
      Float: 1
    }
    Overrides {
      Name: "bp:Intensity"
      Float: 0.85
    }
    Overrides {
      Name: "bp:Fade Out Distance"
      Float: 10000
    }
    Overrides {
      Name: "bp:Fade Out Radius"
      Float: 4500
    }
    Overrides {
      Name: "bp:Power"
      Float: 1
    }
    Overrides {
      Name: "bp:Radius"
      Float: 300
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
      Id: 11221279654899718078
    }
    TeamSettings {
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 9765665748318746768
  Name: "Sun Light"
  Transform {
    Location {
      X: 277.966461
      Y: -75.2325287
      Z: 6472.94971
    }
    Rotation {
      Pitch: -55.7192802
      Yaw: 169.320084
      Roll: 4.45716572
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 14621628340172696036
  UnregisteredParameters {
    Overrides {
      Name: "bp:Light Color"
      Color {
        R: 0.953125
        G: 0.706559122
        B: 0.580810547
        A: 1
      }
    }
    Overrides {
      Name: "bp:Light Shaft Bloom"
      Bool: true
    }
    Overrides {
      Name: "bp:Light Shaft Bloom Scale"
      Float: 2
    }
    Overrides {
      Name: "bp:Light Shaft Bloom Threshold"
      Float: 0.5
    }
    Overrides {
      Name: "bp:Light Shaft Bloom Tint"
      Color {
        R: 1
        G: 0.779602647
        B: 0.480000019
        A: 1
      }
    }
    Overrides {
      Name: "bp:Use Temperature"
      Bool: false
    }
    Overrides {
      Name: "bp:Sun Disc Color"
      Color {
        R: 50
        G: 10
        B: 2
        A: 1
      }
    }
    Overrides {
      Name: "bp:Size"
      Float: 10
    }
    Overrides {
      Name: "bp:Shape"
      Enum {
        Value: "mc:esundiscshapes:1"
      }
    }
    Overrides {
      Name: "bp:Dynamic Shadow Distance"
      Float: 3
    }
    Overrides {
      Name: "bp:Cast Volumetric Shadows"
      Bool: false
    }
    Overrides {
      Name: "bp:Shadow Bias"
      Float: 0.4
    }
    Overrides {
      Name: "bp:Cast Shadows"
      Bool: true
    }
    Overrides {
      Name: "bp:Indirect Lighting Intensity"
      Float: 2
    }
    Overrides {
      Name: "bp:Light Shaft Mask Darkness"
      Float: 0.7
    }
    Overrides {
      Name: "bp:Intensity"
      Float: 3.7
    }
    Overrides {
      Name: "bp:Soft Distance Shadows"
      Bool: true
    }
    Overrides {
      Name: "bp:Shadow Cascade Count"
      Int: 2
    }
    Overrides {
      Name: "bp:Cascade Distribution Adjustment"
      Float: 1.5
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
      Id: 16910278292812118833
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 15248217842931598072
  Name: "Sky Dome"
  Transform {
    Location {
      X: 127.966461
      Y: -375.232544
      Z: 6272.94971
    }
    Rotation {
      Yaw: -44.3716774
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 14621628340172696036
  UnregisteredParameters {
    Overrides {
      Name: "bp:Cloud Shape"
      Enum {
        Value: "mc:ecloudshapes:0"
      }
    }
    Overrides {
      Name: "bp:Horizon Color"
      Color {
        R: 2.73199987
        G: 3.76753283
        B: 4
        A: 0.659000039
      }
    }
    Overrides {
      Name: "bp:Zenith Color"
      Color {
        G: 0.0866663456
        B: 0.520000041
        A: 0.659000039
      }
    }
    Overrides {
      Name: "bp:Cloud Color"
      Color {
        R: 1
        G: 0.979867578
        B: 0.81
        A: 1
      }
    }
    Overrides {
      Name: "bp:Cloud Wisp Color"
      Color {
        R: 0.74
        G: 0.0244098939
        B: 0.0244098939
        A: 1
      }
    }
    Overrides {
      Name: "bp:Use Sun Color for Cloud Color"
      Bool: false
    }
    Overrides {
      Name: "bp:Cloud Rim Brightness"
      Float: 3.85135579
    }
    Overrides {
      Name: "bp:Cloud Detail Brightness"
      Float: 2
    }
    Overrides {
      Name: "bp:Background Clouds"
      Bool: true
    }
    Overrides {
      Name: "bp:Cloud Opacity"
      Float: 0.7
    }
    Overrides {
      Name: "bp:Cloud Lighting Brightness"
      Float: 5.26850843
    }
    Overrides {
      Name: "bp:Cloud Ambient Brightness"
      Float: 5
    }
    Overrides {
      Name: "bp:Cloud Ambient Color"
      Color {
        R: 1
        G: 0.644503355
        B: 0.39
        A: 1
      }
    }
    Overrides {
      Name: "bp:Cloud Wisp Opacity"
      Float: 0.25
    }
    Overrides {
      Name: "bp:Sky Influence On Clouds"
      Float: 0.665817499
    }
    Overrides {
      Name: "bp:High Cloud Color"
      Color {
        R: 0.973958313
        G: 0.387740493
        A: 1
      }
    }
    Overrides {
      Name: "bp:High Cloud Opacity"
      Float: 0.0749155954
    }
    Overrides {
      Name: "bp:Horizon Falloff"
      Float: 6
    }
    Overrides {
      Name: "bp:High Cloud Index"
      Int: 2
    }
    Overrides {
      Name: "bp:High Cloud Noise Scale"
      Float: 0.2
    }
    Overrides {
      Name: "bp:High Cloud Speed"
      Float: 0.2
    }
    Overrides {
      Name: "bp:Cloud Rim Color"
      Color {
        R: 1
        G: 0.470289171
        A: 1
      }
    }
    Overrides {
      Name: "bp:Cloud Wisp Speed"
      Float: 0.2
    }
    Overrides {
      Name: "bp:Cloud Sun Behind Transmission"
      Float: 5
    }
    Overrides {
      Name: "bp:High Cloud Brightness"
      Float: 1
    }
    Overrides {
      Name: "bp:Brightness"
      Float: 2
    }
    Overrides {
      Name: "bp:Disable Cloud Mask"
      Bool: false
    }
    Overrides {
      Name: "bp:Haze Falloff"
      Float: 15
    }
    Overrides {
      Name: "bp:Haze Color"
      Color {
        R: 0.157463983
        G: 0.357501537
        B: 0.729000032
        A: 0.659000039
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
      Id: 7887238662729938253
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 1578154111882892155
  Name: "Settings"
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
  ParentId: 4781671109827199097
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
    IsFilePartition: true
    FilePartitionName: "Settings"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 291839474745250044
  Name: "Main_README"
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
  EditorIndicatorVisibility {
    Value: "mc:eindicatorvisibility:visiblewhenselected"
  }
  Script {
    ScriptAsset {
      Id: 4317454310626515655
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 17635258934049397073
  Name: "LootMMO_README"
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
  EditorIndicatorVisibility {
    Value: "mc:eindicatorvisibility:visiblewhenselected"
  }
  Script {
    ScriptAsset {
      Id: 7216375285101111435
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
