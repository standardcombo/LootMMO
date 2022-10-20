Name: "RogueHideout"
RootId: 8245028879746446203
Objects {
  Id: 4941844734041975759
  Name: "UI Container"
  Transform {
    Location {
      X: -840.57666
      Y: 2349.51904
      Z: 451.322937
    }
    Rotation {
      Yaw: 133.888672
    }
    Scale {
      X: 0.132860303
      Y: 0.132860303
      Z: 0.132860303
    }
  }
  ParentId: 8245028879746446203
  ChildIds: 3020486880590337039
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
      CanvasWorldSize {
        X: 4096
        Y: 4096
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
  Id: 3020486880590337039
  Name: "UI Panel"
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
  ParentId: 4941844734041975759
  ChildIds: 8606654634785959921
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
    Width: 100
    Height: 100
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    UseParentWidth: true
    UseParentHeight: true
    Panel {
      Opacity: 1
      OpacityMaskBrush {
        Id: 841534158063459245
      }
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
  Id: 8606654634785959921
  Name: "UI Image"
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
  ParentId: 3020486880590337039
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
        Id: 11983413137911225699
      }
      Color {
        R: 1
        G: 1
        B: 1
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
      RetainAspectRatio: true
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
  Id: 11534465228032719431
  Name: "Humanoid 2 Rig"
  Transform {
    Location {
      X: -1180.48584
      Y: 2416.25537
      Z: 425.337158
    }
    Rotation {
      Yaw: 125.908524
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 8245028879746446203
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
      Id: 3714204736171758607
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    AnimatedMesh {
      AnimationStance: "unarmed_idle_relaxed"
      AnimationStancePlaybackRate: 1
      AnimationStanceShouldLoop: true
      AnimationPlaybackRateMultiplier: 1
      PlayOnStartAnimation {
        PlaybackRate: 1
      }
      SkinnedMeshes {
        Id: 1643652347984226639
      }
      SkinnedMeshes {
        Id: 841534158063459245
      }
      SkinnedMeshes {
        Id: 841534158063459245
      }
      SkinnedMeshes {
        Id: 841534158063459245
      }
    }
  }
  Relevance {
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 1128107892938269682
  Name: "Humanoid 2 Rig"
  Transform {
    Location {
      X: 108.532227
      Y: -583.23291
      Z: -49.3252296
    }
    Rotation {
      Yaw: 125.908524
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 8245028879746446203
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
      Id: 3714204736171758607
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    AnimatedMesh {
      AnimationStance: "unarmed_idle_relaxed"
      AnimationStancePlaybackRate: 1
      AnimationStanceShouldLoop: true
      AnimationPlaybackRateMultiplier: 1
      PlayOnStartAnimation {
        PlaybackRate: 1
      }
      SkinnedMeshes {
        Id: 1643652347984226639
      }
      SkinnedMeshes {
        Id: 841534158063459245
      }
      SkinnedMeshes {
        Id: 841534158063459245
      }
      SkinnedMeshes {
        Id: 841534158063459245
      }
    }
  }
  Relevance {
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 17668879924835990857
  Name: "Humanoid 2 Rig"
  Transform {
    Location {
      X: 3000.47217
      Y: -1761.40625
      Z: 2162.36816
    }
    Rotation {
      Yaw: 125.908524
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 8245028879746446203
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
      Id: 3714204736171758607
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    AnimatedMesh {
      AnimationStance: "unarmed_idle_relaxed"
      AnimationStancePlaybackRate: 1
      AnimationStanceShouldLoop: true
      AnimationPlaybackRateMultiplier: 1
      PlayOnStartAnimation {
        PlaybackRate: 1
      }
      SkinnedMeshes {
        Id: 1643652347984226639
      }
      SkinnedMeshes {
        Id: 841534158063459245
      }
      SkinnedMeshes {
        Id: 841534158063459245
      }
      SkinnedMeshes {
        Id: 841534158063459245
      }
    }
  }
  Relevance {
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 6065204199487005933
  Name: "Humanoid 2 Rig"
  Transform {
    Location {
      X: 4268.82959
      Y: -1303.50439
      Z: 92.28862
    }
    Rotation {
      Yaw: 125.908524
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 8245028879746446203
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
      Id: 3714204736171758607
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    AnimatedMesh {
      AnimationStance: "unarmed_idle_relaxed"
      AnimationStancePlaybackRate: 1
      AnimationStanceShouldLoop: true
      AnimationPlaybackRateMultiplier: 1
      PlayOnStartAnimation {
        PlaybackRate: 1
      }
      SkinnedMeshes {
        Id: 1643652347984226639
      }
      SkinnedMeshes {
        Id: 841534158063459245
      }
      SkinnedMeshes {
        Id: 841534158063459245
      }
      SkinnedMeshes {
        Id: 841534158063459245
      }
    }
  }
  Relevance {
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 6439330359946397328
  Name: "Humanoid 2 Rig"
  Transform {
    Location {
      X: 2979.16309
      Y: -913.359863
      Z: -49.3252296
    }
    Rotation {
      Yaw: 125.908524
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 8245028879746446203
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
      Id: 3714204736171758607
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    AnimatedMesh {
      AnimationStance: "unarmed_idle_relaxed"
      AnimationStancePlaybackRate: 1
      AnimationStanceShouldLoop: true
      AnimationPlaybackRateMultiplier: 1
      PlayOnStartAnimation {
        PlaybackRate: 1
      }
      SkinnedMeshes {
        Id: 1643652347984226639
      }
      SkinnedMeshes {
        Id: 841534158063459245
      }
      SkinnedMeshes {
        Id: 841534158063459245
      }
      SkinnedMeshes {
        Id: 841534158063459245
      }
    }
  }
  Relevance {
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 10824519781943831157
  Name: "Camera"
  Transform {
    Location {
      X: -904.805176
      Y: 2180.57275
      Z: 560.000122
    }
    Rotation {
      Pitch: 5.93716908
      Yaw: -44.9999962
      Roll: -2.14594507e-07
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 8245028879746446203
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
    UseAsDefault: true
    AttachToLocalPlayer: true
    InitialDistance: 250
    MinDistance: 300
    MaxDistance: 600
    PositionOffset {
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
    AudioListenerOffset {
    }
    IsCameraCollisionEnabled: true
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 8932628504793674199
  Name: "Rogue Fortress"
  Transform {
    Location {
      X: 4330.28
      Y: -2710.65332
      Z: 1990
    }
    Rotation {
      Pitch: -90
      Roll: 90.0000076
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 8245028879746446203
  ChildIds: 15967480598186286025
  ChildIds: 2000129639166084595
  ChildIds: 11346812838132726843
  ChildIds: 10290508546292329942
  ChildIds: 13080011913036952865
  ChildIds: 7374241718844246697
  ChildIds: 5322126122079890941
  ChildIds: 5206275816038318135
  ChildIds: 3219700110173847819
  ChildIds: 2861612882475612835
  ChildIds: 9627926518772378511
  ChildIds: 10261249138450070478
  ChildIds: 15170664005136053150
  ChildIds: 5092287706062133957
  ChildIds: 7801528504436220711
  ChildIds: 12179561231558633490
  ChildIds: 5109274139691347901
  ChildIds: 2919589465231939104
  ChildIds: 7100871151591773961
  ChildIds: 2511689302643681447
  ChildIds: 4017756860636334060
  ChildIds: 9341944408042376815
  ChildIds: 18311426442408315
  ChildIds: 6266692147213214797
  ChildIds: 17164727527384294143
  ChildIds: 17516172293542552281
  ChildIds: 6580463597485107040
  ChildIds: 16315386025545576470
  ChildIds: 4691725378805030708
  ChildIds: 15746873879751402128
  ChildIds: 7197868311859750529
  ChildIds: 11735372799166669709
  ChildIds: 8423382282466216431
  ChildIds: 16158774603595036411
  ChildIds: 5031188605762820109
  ChildIds: 9277253111448181294
  ChildIds: 3306302666146831563
  ChildIds: 10428883508542484755
  ChildIds: 10996172758276188691
  ChildIds: 8632744082987718699
  ChildIds: 13232820487315974893
  ChildIds: 660222928125826659
  ChildIds: 10994146280496048482
  ChildIds: 10521633515536942965
  ChildIds: 7880378831145888727
  ChildIds: 4325373002286789208
  ChildIds: 3352897848979295431
  ChildIds: 791394613955460436
  ChildIds: 2246257690144100440
  ChildIds: 629876473498534392
  ChildIds: 10567869405110852140
  ChildIds: 16852479963751894910
  ChildIds: 3232936451980516003
  ChildIds: 7752213240716706644
  ChildIds: 1475511593115110263
  ChildIds: 4243681447907439415
  ChildIds: 9998632539382706216
  ChildIds: 5782031994604085531
  ChildIds: 7398599152865178754
  ChildIds: 9831166985995346293
  ChildIds: 6889991158566134712
  ChildIds: 10179534969358355908
  ChildIds: 16141521046614840113
  ChildIds: 17222321066735869721
  ChildIds: 14335264751422184743
  ChildIds: 3414395060723582222
  ChildIds: 2807658677800401776
  ChildIds: 12481443748277501682
  ChildIds: 14218004448295525778
  ChildIds: 7434606350485415272
  ChildIds: 3653767663900982871
  ChildIds: 11595181714022881905
  ChildIds: 3088867498922068152
  ChildIds: 11855213909982227006
  ChildIds: 5319462141026068937
  ChildIds: 16859969393888343418
  ChildIds: 4146061527613061994
  ChildIds: 5532790162576381815
  ChildIds: 12829749934282662265
  ChildIds: 1436326313437405438
  ChildIds: 16862873614927062219
  ChildIds: 494033006850010199
  ChildIds: 15542073861705720971
  ChildIds: 8162791269207275277
  ChildIds: 14647730609830378345
  ChildIds: 16434540889356935405
  ChildIds: 5646843836675235637
  ChildIds: 12040940603235387672
  ChildIds: 3706213850752652491
  ChildIds: 9962025974784982818
  ChildIds: 3486940126032384731
  ChildIds: 10293065354578572242
  ChildIds: 13581581439339892605
  ChildIds: 16769629846996745832
  ChildIds: 1221104620940024525
  ChildIds: 13573873641159514346
  ChildIds: 392693360369731183
  ChildIds: 14846559138769102624
  ChildIds: 7298341409338632817
  ChildIds: 17565911938165218795
  ChildIds: 1149434667372041774
  ChildIds: 12343934321400893587
  ChildIds: 16031730893336322152
  ChildIds: 3533926742756399360
  ChildIds: 9549291797095308989
  ChildIds: 16956508140114338820
  ChildIds: 17900982838101481914
  ChildIds: 1628980559512234229
  ChildIds: 9905399916204352544
  ChildIds: 2767310575386187893
  ChildIds: 13112109260138414782
  ChildIds: 10655383892625106900
  ChildIds: 15006225933187841435
  ChildIds: 6621635133226414962
  ChildIds: 12223475844313330656
  ChildIds: 12303788119809022086
  ChildIds: 14121145461253517554
  ChildIds: 5714905712035483638
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
  Id: 5714905712035483638
  Name: "Cube"
  Transform {
    Location {
      X: -1985.65747
      Y: -114.819824
      Z: 90.831543
    }
    Rotation {
      Pitch: 35.2524223
      Yaw: -94.7408142
      Roll: -16.3496704
    }
    Scale {
      X: 4.57048702
      Y: 9.88900566
      Z: -7.6054883
    }
  }
  ParentId: 8932628504793674199
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 11022569679577729774
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 0.190000013
        G: 0.105830006
        B: 0.105830006
        A: 1
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:vtile"
      Float: 0.418629438
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:utile"
      Float: 0.269684494
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
      Id: 8933537604162373856
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
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 14121145461253517554
  Name: "Cube"
  Transform {
    Location {
      X: -51.0724487
      Y: 1137.53406
      Z: 1015.40863
    }
    Rotation {
      Yaw: -90
      Roll: -90
    }
    Scale {
      X: 4.58073282
      Y: 6.09300804
      Z: 0.565670669
    }
  }
  ParentId: 8932628504793674199
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 3663196600611606098
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 0.268
        G: 0.149276018
        B: 0.149276018
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
      Id: 12095835209017042614
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
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 12303788119809022086
  Name: "Cube"
  Transform {
    Location {
      X: -273.939209
      Y: 808.095215
      Z: 1010.99194
    }
    Rotation {
      Pitch: 0.722449541
      Yaw: -90
      Roll: -90
    }
    Scale {
      X: 2.98146439
      Y: -5.50902796
      Z: 3.86226583
    }
  }
  ParentId: 8932628504793674199
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 1777697663766906515
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 0.190000013
        G: 0.105830006
        B: 0.105830006
        A: 1
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:vtile"
      Float: 0.125
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:utile"
      Float: 0.395811737
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
      Id: 12095835209017042614
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
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 12223475844313330656
  Name: "Cube"
  Transform {
    Location {
      X: -273.93866
      Y: 804.130249
      Z: 1010.88666
    }
    Rotation {
      Pitch: -1.48995972
      Yaw: -90
      Roll: -90
    }
    Scale {
      X: 2.98146439
      Y: 5.50902796
      Z: 3.86226583
    }
  }
  ParentId: 8932628504793674199
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 1777697663766906515
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 0.190000013
        G: 0.105830006
        B: 0.105830006
        A: 1
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:vtile"
      Float: 0.125
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:utile"
      Float: 0.395811737
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
      Id: 12095835209017042614
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
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 6621635133226414962
  Name: "Cube"
  Transform {
    Location {
      X: -103.976624
      Y: 0.177978516
      Z: 1555.26147
    }
    Rotation {
      Pitch: 6.83018879e-06
      Yaw: -90
      Roll: -88.5938721
    }
    Scale {
      X: 12.1033792
      Y: 10.3454428
      Z: 18.0127792
    }
  }
  ParentId: 8932628504793674199
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 11022569679577729774
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 0.190000013
        G: 0.105830006
        B: 0.105830006
        A: 1
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
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
  CoreMesh {
    MeshAsset {
      Id: 4254600365676196018
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
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 15006225933187841435
  Name: "Cube"
  Transform {
    Location {
      X: -1753.75952
      Y: 203.481689
      Z: -1494.3999
    }
    Rotation {
      Pitch: 125.255058
      Yaw: -94.0881653
      Roll: 0.534942627
    }
    Scale {
      X: 5.00407648
      Y: 5.09308958
      Z: 7.8209877
    }
  }
  ParentId: 8932628504793674199
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 11022569679577729774
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 0.190000013
        G: 0.105830006
        B: 0.105830006
        A: 1
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:vtile"
      Float: 0.418629438
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:utile"
      Float: 0.269684494
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
      Id: 8933537604162373856
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
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 10655383892625106900
  Name: "Cube"
  Transform {
    Location {
      X: -1755.71753
      Y: 203.317383
      Z: -1188.34753
    }
    Rotation {
      Pitch: 35.2522964
      Yaw: -94.7407837
      Roll: -0.375549316
    }
    Scale {
      X: 3.46737242
      Y: 3.91161847
      Z: 7.82098055
    }
  }
  ParentId: 8932628504793674199
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 11022569679577729774
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 0.190000013
        G: 0.105830006
        B: 0.105830006
        A: 1
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:vtile"
      Float: 0.418629438
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:utile"
      Float: 0.269684494
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
      Id: 8933537604162373856
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
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 13112109260138414782
  Name: "Cube"
  Transform {
    Location {
      X: -981.448242
      Y: 321.191406
      Z: 470.816406
    }
    Rotation {
      Pitch: 56.1929092
      Yaw: 115.52475
      Roll: -155.596786
    }
    Scale {
      X: 5.02762651
      Y: -15.5782919
      Z: 7.60548878
    }
  }
  ParentId: 8932628504793674199
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 11022569679577729774
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 0.190000013
        G: 0.105830006
        B: 0.105830006
        A: 1
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:vtile"
      Float: 0.418629438
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:utile"
      Float: 0.269684494
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
      Id: 8933537604162373856
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
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 2767310575386187893
  Name: "Cube"
  Transform {
    Location {
      X: -1050.83765
      Y: 291.374512
      Z: 772.736572
    }
    Rotation {
      Pitch: 35.2524223
      Yaw: -94.7408142
      Roll: -16.3496704
    }
    Scale {
      X: 3.55872035
      Y: -15.5782909
      Z: 7.60548592
    }
  }
  ParentId: 8932628504793674199
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 11022569679577729774
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 0.190000013
        G: 0.105830006
        B: 0.105830006
        A: 1
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:vtile"
      Float: 0.418629438
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:utile"
      Float: 0.269684494
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
      Id: 8933537604162373856
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
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 9905399916204352544
  Name: "Cube"
  Transform {
    Location {
      X: -2044.98169
      Y: 230.632446
      Z: 218.682983
    }
    Rotation {
      Pitch: 123.807053
      Yaw: -64.4751587
      Roll: 24.4032745
    }
    Scale {
      X: 5.0276289
      Y: 9.88900566
      Z: 7.60548878
    }
  }
  ParentId: 8932628504793674199
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 11022569679577729774
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 0.190000013
        G: 0.105830006
        B: 0.105830006
        A: 1
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:vtile"
      Float: 0.418629438
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:utile"
      Float: 0.269684494
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
      Id: 8933537604162373856
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
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 1628980559512234229
  Name: "Cube"
  Transform {
    Location {
      X: -2114.41504
      Y: 200.760925
      Z: 520.600098
    }
    Rotation {
      Pitch: 35.2524529
      Yaw: -94.7408447
      Roll: -16.3496094
    }
    Scale {
      X: 3.5587225
      Y: 9.88900757
      Z: 7.60548592
    }
  }
  ParentId: 8932628504793674199
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 11022569679577729774
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 0.190000013
        G: 0.105830006
        B: 0.105830006
        A: 1
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:vtile"
      Float: 0.418629438
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:utile"
      Float: 0.269684494
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
      Id: 8933537604162373856
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
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 17900982838101481914
  Name: "Cube"
  Transform {
    Location {
      X: -43.5318604
      Y: -954.364502
      Z: -1001.3075
    }
    Rotation {
      Pitch: 90
      Yaw: -36.869873
      Roll: -125.56337
    }
    Scale {
      X: 1.5025543
      Y: -8.97405
      Z: 8.75870132
    }
  }
  ParentId: 8932628504793674199
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 3663196600611606098
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 0.268
        G: 0.149276018
        B: 0.149276018
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
      Id: 9591959429643442677
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
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 16956508140114338820
  Name: "Cube"
  Transform {
    Location {
      X: 300.86615
      Y: -746.493103
      Z: 1027.72339
    }
    Rotation {
      Yaw: -89.9999695
      Roll: 89.999939
    }
    Scale {
      X: 0.902621388
      Y: -5.23936844
      Z: 5.85007191
    }
  }
  ParentId: 8932628504793674199
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 3663196600611606098
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:utile"
      Float: 1.65266967
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 0.190000013
        G: 0.105830014
        B: 0.105830014
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
      Id: 9591959429643442677
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
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 9549291797095308989
  Name: "Cube"
  Transform {
    Location {
      X: 300.867615
      Y: 746.493103
      Z: 1027.72485
    }
    Rotation {
      Yaw: 90
      Roll: -90
    }
    Scale {
      X: 0.902621388
      Y: 5.23936844
      Z: 5.85007191
    }
  }
  ParentId: 8932628504793674199
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 3663196600611606098
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:utile"
      Float: 1.65266967
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 0.190000013
        G: 0.105830014
        B: 0.105830014
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
      Id: 9591959429643442677
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
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 3533926742756399360
  Name: "Cube"
  Transform {
    Location {
      X: 216.327759
      Y: 1215.28882
      Z: 442.418457
    }
    Rotation {
      Pitch: -8.18042
      Yaw: 164.450638
      Roll: -86.4447632
    }
    Scale {
      X: 1.11066294
      Y: 1.48365796
      Z: 0.705712914
    }
  }
  ParentId: 8932628504793674199
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 0.33100003
        G: 0.192013115
        B: 0.117174
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
      Id: 5453400078210284946
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
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 16031730893336322152
  Name: "Cube"
  Transform {
    Location {
      X: 216.332153
      Y: 1215.28491
      Z: -352.519165
    }
    Rotation {
      Pitch: -77.0835571
      Yaw: 167.289047
      Roll: -83.3959045
    }
    Scale {
      X: 4.11880541
      Y: 3.10642433
      Z: 1.47759891
    }
  }
  ParentId: 8932628504793674199
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 0.33100003
        G: 0.192013115
        B: 0.117174
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
      Id: 10215061066611184139
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
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 12343934321400893587
  Name: "Cube"
  Transform {
    Location {
      X: -305.701599
      Y: 959.367126
      Z: 1057.51025
    }
    Rotation {
      Pitch: -77.6878052
      Yaw: 13.7093887
      Roll: 75.5576935
    }
    Scale {
      X: 3.18056583
      Y: 2.56739712
      Z: 1.2212038
    }
  }
  ParentId: 8932628504793674199
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 0.33100003
        G: 0.192013115
        B: 0.117174
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
      Id: 10215061066611184139
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
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 1149434667372041774
  Name: "Cube"
  Transform {
    Location {
      X: 2165.19604
      Y: 4048.31592
      Z: 2222.44507
    }
    Rotation {
      Yaw: -90
      Roll: -90
    }
    Scale {
      X: 13.1756392
      Y: 17.0507488
      Z: 0.435019255
    }
  }
  ParentId: 8932628504793674199
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
      Id: 12095835209017042614
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
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 17565911938165218795
  Name: "Cube"
  Transform {
    Location {
      X: 1156.44116
      Y: 817.029419
      Z: -1056.25391
    }
    Rotation {
      Yaw: -112.381348
      Roll: -90
    }
    Scale {
      X: 1.18644309
      Y: 1.10153353
      Z: 7.3457489
    }
  }
  ParentId: 8932628504793674199
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 3663196600611606098
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 0.268
        G: 0.149276018
        B: 0.149276018
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
      Id: 12095835209017042614
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
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 7298341409338632817
  Name: "Cube"
  Transform {
    Location {
      X: 1941.677
      Y: 668.613
      Z: -1056.29688
    }
    Rotation {
      Yaw: -100.654358
      Roll: -90
    }
    Scale {
      X: 1.18644047
      Y: 1.10153413
      Z: 11.3505669
    }
  }
  ParentId: 8932628504793674199
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 3663196600611606098
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 0.268
        G: 0.149276018
        B: 0.149276018
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
      Id: 12095835209017042614
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
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 14846559138769102624
  Name: "Cube"
  Transform {
    Location {
      X: 2150.01318
      Y: 2515.91431
      Z: 66.699707
    }
    Rotation {
      Pitch: 8.2977438
      Yaw: -90
      Roll: -90
    }
    Scale {
      X: 3.99102497
      Y: 12.0505924
      Z: 0.577358842
    }
  }
  ParentId: 8932628504793674199
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
      Id: 15344267039940444735
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
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 392693360369731183
  Name: "Cube"
  Transform {
    Location {
      X: 795.693726
      Y: 970.101746
      Z: -478.427368
    }
    Rotation {
      Pitch: -3.59072876
      Yaw: -117.778748
    }
    Scale {
      X: 1.1674825
      Y: 0.551281214
      Z: 10.6713581
    }
  }
  ParentId: 8932628504793674199
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 3663196600611606098
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 0.367
        G: 0.204419017
        B: 0.204419017
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
      Id: 13140930585991063374
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
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 13573873641159514346
  Name: "Cube"
  Transform {
    Location {
      X: 732.097961
      Y: 973.741943
      Z: -502.533081
    }
    Rotation {
      Yaw: -117.779053
      Roll: -3.05175781e-05
    }
    Scale {
      X: 1.16748559
      Y: 0.40468654
      Z: 10.6713581
    }
  }
  ParentId: 8932628504793674199
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 3663196600611606098
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 0.367
        G: 0.204419017
        B: 0.204419017
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
      Id: 13140930585991063374
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
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 1221104620940024525
  Name: "Cube"
  Transform {
    Location {
      X: 756.787598
      Y: 960.829407
      Z: 562.204895
    }
    Rotation {
      Yaw: -117.779083
    }
    Scale {
      X: 1.16748333
      Y: 1.16748023
      Z: 10.6713581
    }
  }
  ParentId: 8932628504793674199
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 3663196600611606098
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 0.367
        G: 0.204419017
        B: 0.204419017
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
      Id: 13140930585991063374
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
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 16769629846996745832
  Name: "Cube"
  Transform {
    Location {
      X: 354.414307
      Y: 1011.09882
      Z: -605.812561
    }
    Rotation {
      Yaw: -115.599991
    }
    Scale {
      X: 0.981868327
      Y: 0.164211959
      Z: 8.20042419
    }
  }
  ParentId: 8932628504793674199
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 3663196600611606098
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 0.268
        G: 0.149276018
        B: 0.149276018
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
      Id: 12095835209017042614
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
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 13581581439339892605
  Name: "Cube"
  Transform {
    Location {
      X: 140.043213
      Y: 1086.06409
      Z: -572.935547
    }
    Rotation {
      Yaw: -109.266144
      Roll: -90
    }
    Scale {
      X: 0.981866181
      Y: 0.164214745
      Z: 4.79143906
    }
  }
  ParentId: 8932628504793674199
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 3663196600611606098
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 0.268
        G: 0.149276018
        B: 0.149276018
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
      Id: 12095835209017042614
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
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 10293065354578572242
  Name: "Cube"
  Transform {
    Location {
      X: 347.289673
      Y: 1013.70093
      Z: -206.676636
    }
    Rotation {
      Yaw: -109.266205
      Roll: -90
    }
    Scale {
      X: 0.981867433
      Y: 0.164215013
      Z: 8.48946476
    }
  }
  ParentId: 8932628504793674199
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 3663196600611606098
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 0.268
        G: 0.149276018
        B: 0.149276018
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
      Id: 12095835209017042614
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
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 3486940126032384731
  Name: "Cube"
  Transform {
    Location {
      X: 568.657
      Y: 936.308411
      Z: -3.88623047
    }
    Rotation {
      Yaw: -109.266174
    }
    Scale {
      X: 0.98187
      Y: 0.259871811
      Z: 19.7182598
    }
  }
  ParentId: 8932628504793674199
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 3663196600611606098
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 0.268
        G: 0.149276018
        B: 0.149276018
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
      Id: 2429738000143143899
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
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 9962025974784982818
  Name: "Cube"
  Transform {
    Location {
      X: 167.238892
      Y: 1076.65845
      Z: -3.88171387
    }
    Rotation {
      Yaw: -116.265137
    }
    Scale {
      X: 0.98187
      Y: 0.259871811
      Z: 19.7182598
    }
  }
  ParentId: 8932628504793674199
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 3663196600611606098
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 0.268
        G: 0.149276018
        B: 0.149276018
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
      Id: 2429738000143143899
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
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 3706213850752652491
  Name: "Cube"
  Transform {
    Location {
      X: 904.669434
      Y: 857.641296
      Z: -1075.27026
    }
    Rotation {
      Yaw: -115.365051
      Roll: -90
    }
    Scale {
      X: 0.981875956
      Y: 0.499998778
      Z: 4.0705018
    }
  }
  ParentId: 8932628504793674199
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 3663196600611606098
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 0.268
        G: 0.149276018
        B: 0.149276018
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
      Id: 12095835209017042614
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
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 12040940603235387672
  Name: "Cube"
  Transform {
    Location {
      X: 1141.98413
      Y: -0.0406494141
      Z: -0.0285644531
    }
    Rotation {
    }
    Scale {
      X: 49.1505394
      Y: 14.771863
      Z: 20.9554348
    }
  }
  ParentId: 8932628504793674199
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 0.268
        G: 0.149276018
        B: 0.149276018
        A: 1
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 3663196600611606098
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
      Id: 14448249526906174522
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
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 5646843836675235637
  Name: "Cube"
  Transform {
    Location {
      X: 1607.78906
      Y: -0.0195922852
      Z: -0.0130615234
    }
    Rotation {
    }
    Scale {
      X: 49.1505394
      Y: 13.7501802
      Z: 20.4058151
    }
  }
  ParentId: 8932628504793674199
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 0.268
        G: 0.149276018
        B: 0.149276018
        A: 1
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 3663196600611606098
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
      Id: 14448249526906174522
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
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 16434540889356935405
  Name: "FloorTile"
  Transform {
    Location {
      X: 2133.54443
      Y: 621.782959
      Z: 1537.22595
    }
    Rotation {
      Roll: -179.545898
    }
    Scale {
      X: 2.16004157
      Y: 2.16004157
      Z: 2.16004157
    }
  }
  ParentId: 8932628504793674199
  ChildIds: 5481215517089420416
  ChildIds: 5111789225776659878
  ChildIds: 11756865829652188195
  ChildIds: 12766084460985533747
  ChildIds: 7415315427700923771
  ChildIds: 2296986316358273370
  ChildIds: 14323211497975420537
  ChildIds: 5166536949248634775
  ChildIds: 13283324933731043756
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
  Id: 13283324933731043756
  Name: "Cube"
  Transform {
    Location {
      X: -0.745353699
      Y: -2.40843201
      Z: 197.408173
    }
    Rotation {
      Pitch: 90
      Yaw: -30.5090504
      Roll: -30.5092468
    }
    Scale {
      X: 0.667643547
      Y: 0.994147718
      Z: 0.0508748479
    }
  }
  ParentId: 16434540889356935405
  UnregisteredParameters {
    Overrides {
      Name: "ma:Building_Floor:id"
      AssetReference {
        Id: 7754470856388882901
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 16046144744956508255
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 0.556000054
        G: 0.488038301
        B: 0.448692024
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
      Id: 2429738000143143899
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
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 5166536949248634775
  Name: "Cube"
  Transform {
    Location {
      X: 0.87008667
      Y: 192.486328
      Z: 255.144012
    }
    Rotation {
      Pitch: -6.83018879e-06
      Yaw: -90.2431259
      Roll: -89.9999619
    }
    Scale {
      X: 2.04369903
      Y: 1.09144008
      Z: 0.0508746356
    }
  }
  ParentId: 16434540889356935405
  UnregisteredParameters {
    Overrides {
      Name: "ma:Building_Floor:id"
      AssetReference {
        Id: 7754470856388882901
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 16046144744956508255
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 0.49
        G: 0.409107834
        B: 0.32928
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
      Id: 2429738000143143899
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
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 14323211497975420537
  Name: "Cube"
  Transform {
    Location {
      X: -0.510513306
      Y: 70.6203613
      Z: 214.871063
    }
    Rotation {
      Yaw: 89.9999542
      Roll: 89.9999466
    }
    Scale {
      X: 0.367096871
      Y: 0.99414748
      Z: 0.0508748852
    }
  }
  ParentId: 16434540889356935405
  UnregisteredParameters {
    Overrides {
      Name: "ma:Building_Floor:id"
      AssetReference {
        Id: 7754470856388882901
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 16046144744956508255
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 0.828000069
        G: 0.467944264
        B: 0.274068
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
      Id: 2429738000143143899
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
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 2296986316358273370
  Name: "Cube"
  Transform {
    Location {
      X: 0.190658569
      Y: 174.242676
      Z: 180.224106
    }
    Rotation {
      Pitch: 90
      Yaw: 8.29715443
      Roll: 7.77531052
    }
    Scale {
      X: 0.367097378
      Y: 1.6880244
      Z: 0.0508749261
    }
  }
  ParentId: 16434540889356935405
  UnregisteredParameters {
    Overrides {
      Name: "ma:Building_Floor:id"
      AssetReference {
        Id: 7754470856388882901
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 16046144744956508255
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
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
  CoreMesh {
    MeshAsset {
      Id: 2429738000143143899
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
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 7415315427700923771
  Name: "Cube"
  Transform {
    Location {
      X: 1.5837326
      Y: 39.072998
      Z: 106.916
    }
    Rotation {
      Pitch: -6.83018879e-06
      Yaw: -90.2431259
      Roll: -89.9999619
    }
    Scale {
      X: 2.04369903
      Y: 1.09144008
      Z: 0.0508746356
    }
  }
  ParentId: 16434540889356935405
  UnregisteredParameters {
    Overrides {
      Name: "ma:Building_Floor:id"
      AssetReference {
        Id: 7754470856388882901
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 16046144744956508255
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 0.728000045
        G: 0.599083364
        B: 0.273
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
      Id: 2429738000143143899
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
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 12766084460985533747
  Name: "Cube"
  Transform {
    Location {
      X: -0.570510864
      Y: 104.889633
      Z: 18.4921989
    }
    Rotation {
      Pitch: 90
      Roll: 0.692199707
    }
    Scale {
      X: 0.667136192
      Y: 2.72548032
      Z: 0.0508748777
    }
  }
  ParentId: 16434540889356935405
  UnregisteredParameters {
    Overrides {
      Name: "ma:Building_Floor:id"
      AssetReference {
        Id: 7754470856388882901
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 16046144744956508255
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 0.624
        G: 0.624
        B: 0.624
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
      Id: 2429738000143143899
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
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 11756865829652188195
  Name: "Cube"
  Transform {
    Location {
      X: -0.881774902
      Y: -237.886871
      Z: 205.739655
    }
    Rotation {
      Pitch: 90
      Yaw: 7.80955839
      Roll: 6.1850853
    }
    Scale {
      X: 0.367097378
      Y: 1.6880244
      Z: 0.0508749261
    }
  }
  ParentId: 16434540889356935405
  UnregisteredParameters {
    Overrides {
      Name: "ma:Building_Floor:id"
      AssetReference {
        Id: 7754470856388882901
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 16046144744956508255
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 1
        G: 0.631355286
        B: 0.327999949
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
      Id: 2429738000143143899
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
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 5111789225776659878
  Name: "Cube"
  Transform {
    Location {
      X: -0.236312866
      Y: -171.534637
      Z: -1.52587891e-05
    }
    Rotation {
      Pitch: 90
      Yaw: 7.78514814
      Roll: 8.24603081
    }
    Scale {
      X: 1.00482154
      Y: 2.72548056
      Z: 0.0508747958
    }
  }
  ParentId: 16434540889356935405
  UnregisteredParameters {
    Overrides {
      Name: "ma:Building_Floor:id"
      AssetReference {
        Id: 7754470856388882901
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 16046144744956508255
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 1
        G: 0.543034196
        B: 0.166999936
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
      Id: 2429738000143143899
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
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 5481215517089420416
  Name: "Cube"
  Transform {
    Location {
      X: 0.300308228
      Y: -166.765335
      Z: 119.073685
    }
    Rotation {
      Pitch: -6.83018879e-06
      Yaw: -91.6974182
      Roll: -89.9999771
    }
    Scale {
      X: 2.04369903
      Y: 1.32224071
      Z: 0.0508746132
    }
  }
  ParentId: 16434540889356935405
  UnregisteredParameters {
    Overrides {
      Name: "ma:Building_Floor:id"
      AssetReference {
        Id: 7754470856388882901
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 16046144744956508255
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 1
        G: 0.580000043
        B: 0.580000043
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
      Id: 2429738000143143899
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
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 14647730609830378345
  Name: "FloorTile"
  Transform {
    Location {
      X: 2134.03418
      Y: 4203.80518
      Z: 2473.7832
    }
    Rotation {
      Roll: 90
    }
    Scale {
      X: 2.16004157
      Y: 2.16004157
      Z: 2.16004157
    }
  }
  ParentId: 8932628504793674199
  ChildIds: 1541587287083167787
  ChildIds: 7043016509535032048
  ChildIds: 4258259395097695525
  ChildIds: 2860963966544644131
  ChildIds: 3846395712694387784
  ChildIds: 15583929058099040279
  ChildIds: 14118008251155354322
  ChildIds: 7014162198069956220
  ChildIds: 16916289514685457970
  ChildIds: 12474153530993818099
  ChildIds: 5185412282646668689
  ChildIds: 8110283538260316168
  ChildIds: 2458419494589982541
  ChildIds: 15944132666235751908
  ChildIds: 741323940332760398
  ChildIds: 10120202976175857965
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
  Id: 10120202976175857965
  Name: "Cube"
  Transform {
    Location {
      X: 143.338165
      Y: -286.492096
      Z: 223.685867
    }
    Rotation {
      Pitch: 90
      Yaw: -56.309906
      Roll: -140.849152
    }
    Scale {
      X: 0.316587329
      Y: 2.88547373
      Z: 0.243497491
    }
  }
  ParentId: 14647730609830378345
  UnregisteredParameters {
    Overrides {
      Name: "ma:Building_Floor:id"
      AssetReference {
        Id: 7754470856388882901
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 16046144744956508255
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 1
        G: 0.543034196
        B: 0.166999936
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
      Id: 2429738000143143899
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
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 741323940332760398
  Name: "Cube"
  Transform {
    Location {
      X: 143.37468
      Y: -681.145386
      Z: -178.782089
    }
    Rotation {
      Pitch: 90
      Yaw: 44.9999962
      Roll: -39.5392456
    }
    Scale {
      X: 0.352634728
      Y: 2.80829716
      Z: 0.334162
    }
  }
  ParentId: 14647730609830378345
  UnregisteredParameters {
    Overrides {
      Name: "ma:Building_Floor:id"
      AssetReference {
        Id: 7754470856388882901
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 16046144744956508255
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 1
        G: 0.543034196
        B: 0.166999936
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
      Id: 2429738000143143899
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
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 15944132666235751908
  Name: "Cube"
  Transform {
    Location {
      X: 143.371689
      Y: -511.809967
      Z: -112.230309
    }
    Rotation {
      Pitch: 90
      Yaw: 30.2564411
      Roll: -54.2828064
    }
    Scale {
      X: 0.174641505
      Y: 2.8082974
      Z: 0.243496686
    }
  }
  ParentId: 14647730609830378345
  UnregisteredParameters {
    Overrides {
      Name: "ma:Building_Floor:id"
      AssetReference {
        Id: 7754470856388882901
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 16046144744956508255
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 1
        G: 0.543034196
        B: 0.166999936
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
      Id: 2429738000143143899
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
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 2458419494589982541
  Name: "Cube"
  Transform {
    Location {
      X: 139.884262
      Y: -306.009521
      Z: 33.8714867
    }
    Rotation {
      Pitch: 90
      Roll: -84.5392456
    }
    Scale {
      X: 0.174641505
      Y: 2.8082974
      Z: 0.243496686
    }
  }
  ParentId: 14647730609830378345
  UnregisteredParameters {
    Overrides {
      Name: "ma:Building_Floor:id"
      AssetReference {
        Id: 7754470856388882901
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 16046144744956508255
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 1
        G: 0.543034196
        B: 0.166999936
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
      Id: 2429738000143143899
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
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 8110283538260316168
  Name: "Cube"
  Transform {
    Location {
      X: 2.66090512
      Y: 216.419373
      Z: 105.632881
    }
    Rotation {
      Pitch: 90
      Yaw: 21.6275406
      Roll: 22.3197327
    }
    Scale {
      X: 1.05300474
      Y: 1.40844107
      Z: 0.050875
    }
  }
  ParentId: 14647730609830378345
  UnregisteredParameters {
    Overrides {
      Name: "ma:Building_Floor:id"
      AssetReference {
        Id: 7754470856388882901
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 16046144744956508255
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 0.624
        G: 0.624
        B: 0.624
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
      Id: 2429738000143143899
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
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 5185412282646668689
  Name: "Cube"
  Transform {
    Location {
      X: 3.24919081
      Y: -228.718628
      Z: -96.6563644
    }
    Rotation {
      Pitch: 90
      Yaw: 17.5983868
      Roll: 18.0592651
    }
    Scale {
      X: 0.924660146
      Y: 1.11258781
      Z: 0.0508747697
    }
  }
  ParentId: 14647730609830378345
  UnregisteredParameters {
    Overrides {
      Name: "ma:Building_Floor:id"
      AssetReference {
        Id: 7754470856388882901
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 16046144744956508255
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 1
        G: 0.543034196
        B: 0.166999936
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
      Id: 2429738000143143899
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
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 12474153530993818099
  Name: "Cube"
  Transform {
    Location {
      X: 2.57667971
      Y: -111.024132
      Z: -117.041573
    }
    Rotation {
      Pitch: 90
      Yaw: 17.5983868
      Roll: 18.0592651
    }
    Scale {
      X: 1.31165731
      Y: 1.23772943
      Z: 0.0508749075
    }
  }
  ParentId: 14647730609830378345
  UnregisteredParameters {
    Overrides {
      Name: "ma:Building_Floor:id"
      AssetReference {
        Id: 7754470856388882901
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 16046144744956508255
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 1
        G: 0.543034196
        B: 0.166999936
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
      Id: 2429738000143143899
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
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 16916289514685457970
  Name: "Cube"
  Transform {
    Location {
      X: -0.745353699
      Y: -2.40843201
      Z: 197.408173
    }
    Rotation {
      Pitch: 90
      Yaw: -30.5090504
      Roll: -30.5092468
    }
    Scale {
      X: 0.667643547
      Y: 0.994147718
      Z: 0.0508748479
    }
  }
  ParentId: 14647730609830378345
  UnregisteredParameters {
    Overrides {
      Name: "ma:Building_Floor:id"
      AssetReference {
        Id: 7754470856388882901
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 16046144744956508255
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 0.556000054
        G: 0.488038301
        B: 0.448692024
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
      Id: 2429738000143143899
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
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 7014162198069956220
  Name: "Cube"
  Transform {
    Location {
      X: 0.87008667
      Y: 192.486328
      Z: 255.144012
    }
    Rotation {
      Pitch: -6.83018879e-06
      Yaw: -90.2431259
      Roll: -89.9999619
    }
    Scale {
      X: 2.04369903
      Y: 1.09144008
      Z: 0.0508746356
    }
  }
  ParentId: 14647730609830378345
  UnregisteredParameters {
    Overrides {
      Name: "ma:Building_Floor:id"
      AssetReference {
        Id: 7754470856388882901
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 16046144744956508255
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 0.49
        G: 0.409107834
        B: 0.32928
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
      Id: 2429738000143143899
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
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 14118008251155354322
  Name: "Cube"
  Transform {
    Location {
      X: -0.510513306
      Y: 70.6203613
      Z: 214.871063
    }
    Rotation {
      Yaw: 89.9999542
      Roll: 89.9999466
    }
    Scale {
      X: 0.367096871
      Y: 0.99414748
      Z: 0.0508748852
    }
  }
  ParentId: 14647730609830378345
  UnregisteredParameters {
    Overrides {
      Name: "ma:Building_Floor:id"
      AssetReference {
        Id: 7754470856388882901
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 16046144744956508255
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 0.828000069
        G: 0.467944264
        B: 0.274068
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
      Id: 2429738000143143899
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
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 15583929058099040279
  Name: "Cube"
  Transform {
    Location {
      X: 0.190658569
      Y: 174.242676
      Z: 180.224106
    }
    Rotation {
      Pitch: 90
      Yaw: 8.29715443
      Roll: 7.77531052
    }
    Scale {
      X: 0.367097378
      Y: 1.6880244
      Z: 0.0508749261
    }
  }
  ParentId: 14647730609830378345
  UnregisteredParameters {
    Overrides {
      Name: "ma:Building_Floor:id"
      AssetReference {
        Id: 7754470856388882901
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 16046144744956508255
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
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
  CoreMesh {
    MeshAsset {
      Id: 2429738000143143899
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
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 3846395712694387784
  Name: "Cube"
  Transform {
    Location {
      X: 1.5837326
      Y: 39.072998
      Z: 106.916
    }
    Rotation {
      Pitch: -6.83018879e-06
      Yaw: -90.2431259
      Roll: -89.9999619
    }
    Scale {
      X: 2.04369903
      Y: 1.09144008
      Z: 0.0508746356
    }
  }
  ParentId: 14647730609830378345
  UnregisteredParameters {
    Overrides {
      Name: "ma:Building_Floor:id"
      AssetReference {
        Id: 7754470856388882901
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 16046144744956508255
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 0.728000045
        G: 0.599083364
        B: 0.273
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
      Id: 2429738000143143899
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
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 2860963966544644131
  Name: "Cube"
  Transform {
    Location {
      X: -0.570510864
      Y: 104.889633
      Z: 18.4921989
    }
    Rotation {
      Pitch: 90
      Roll: 0.692199707
    }
    Scale {
      X: 0.667136192
      Y: 2.72548032
      Z: 0.0508748777
    }
  }
  ParentId: 14647730609830378345
  UnregisteredParameters {
    Overrides {
      Name: "ma:Building_Floor:id"
      AssetReference {
        Id: 7754470856388882901
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 16046144744956508255
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 0.624
        G: 0.624
        B: 0.624
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
      Id: 2429738000143143899
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
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 4258259395097695525
  Name: "Cube"
  Transform {
    Location {
      X: -0.900689244
      Y: -162.503387
      Z: 209.47261
    }
    Rotation {
      Pitch: 90
      Yaw: -8.00473
      Roll: -9.62921143
    }
    Scale {
      X: 0.367097944
      Y: 2.08096528
      Z: 0.0508751
    }
  }
  ParentId: 14647730609830378345
  UnregisteredParameters {
    Overrides {
      Name: "ma:Building_Floor:id"
      AssetReference {
        Id: 7754470856388882901
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 16046144744956508255
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 1
        G: 0.631355286
        B: 0.327999949
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
      Id: 2429738000143143899
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
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 7043016509535032048
  Name: "Cube"
  Transform {
    Location {
      X: -0.236238167
      Y: -178.145874
      Z: 8.30861754e-05
    }
    Rotation {
      Pitch: 90
      Yaw: -54.1268921
      Roll: -53.6660461
    }
    Scale {
      X: 1.00482213
      Y: 2.8082974
      Z: 0.0508747213
    }
  }
  ParentId: 14647730609830378345
  UnregisteredParameters {
    Overrides {
      Name: "ma:Building_Floor:id"
      AssetReference {
        Id: 7754470856388882901
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 16046144744956508255
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 1
        G: 0.543034196
        B: 0.166999936
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
      Id: 2429738000143143899
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
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 1541587287083167787
  Name: "Cube"
  Transform {
    Location {
      X: 0.300308228
      Y: -166.765335
      Z: 119.073685
    }
    Rotation {
      Pitch: -6.83018879e-06
      Yaw: -91.6974182
      Roll: -89.9999771
    }
    Scale {
      X: 2.04369903
      Y: 1.32224071
      Z: 0.0508746132
    }
  }
  ParentId: 14647730609830378345
  UnregisteredParameters {
    Overrides {
      Name: "ma:Building_Floor:id"
      AssetReference {
        Id: 7754470856388882901
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 16046144744956508255
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 0.629
        G: 0.2839306
        B: 0.0981239751
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
      Id: 2429738000143143899
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
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 8162791269207275277
  Name: "FloorTile"
  Transform {
    Location {
      X: 2135.08228
      Y: 2912.17871
      Z: 1573.11719
    }
    Rotation {
      Roll: 180
    }
    Scale {
      X: 2.16004157
      Y: 2.16004157
      Z: 2.16004157
    }
  }
  ParentId: 8932628504793674199
  ChildIds: 15932078112971737912
  ChildIds: 4689591159000954686
  ChildIds: 4072594284523878317
  ChildIds: 2216772577494151659
  ChildIds: 595847844104924917
  ChildIds: 6913886625613410277
  ChildIds: 15593481719613626592
  ChildIds: 12387594106244216809
  ChildIds: 15813014205429455126
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
  Id: 15813014205429455126
  Name: "Cube"
  Transform {
    Location {
      X: -0.745353699
      Y: -2.40843201
      Z: 197.408173
    }
    Rotation {
      Pitch: 90
      Yaw: -30.5090504
      Roll: -30.5092468
    }
    Scale {
      X: 0.667643547
      Y: 0.994147718
      Z: 0.0508748479
    }
  }
  ParentId: 8162791269207275277
  UnregisteredParameters {
    Overrides {
      Name: "ma:Building_Floor:id"
      AssetReference {
        Id: 7754470856388882901
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 16046144744956508255
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 0.556000054
        G: 0.488038301
        B: 0.448692024
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
      Id: 2429738000143143899
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
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 12387594106244216809
  Name: "Cube"
  Transform {
    Location {
      X: 0.87008667
      Y: 192.486328
      Z: 255.144012
    }
    Rotation {
      Pitch: -6.83018879e-06
      Yaw: -90.2431259
      Roll: -89.9999619
    }
    Scale {
      X: 2.04369903
      Y: 1.09144008
      Z: 0.0508746356
    }
  }
  ParentId: 8162791269207275277
  UnregisteredParameters {
    Overrides {
      Name: "ma:Building_Floor:id"
      AssetReference {
        Id: 7754470856388882901
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 16046144744956508255
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 0.49
        G: 0.409107834
        B: 0.32928
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
      Id: 2429738000143143899
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
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 15593481719613626592
  Name: "Cube"
  Transform {
    Location {
      X: -0.510513306
      Y: 70.6203613
      Z: 214.871063
    }
    Rotation {
      Yaw: 89.9999542
      Roll: 89.9999466
    }
    Scale {
      X: 0.367096871
      Y: 0.99414748
      Z: 0.0508748852
    }
  }
  ParentId: 8162791269207275277
  UnregisteredParameters {
    Overrides {
      Name: "ma:Building_Floor:id"
      AssetReference {
        Id: 7754470856388882901
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 16046144744956508255
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 0.828000069
        G: 0.467944264
        B: 0.274068
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
      Id: 2429738000143143899
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
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 6913886625613410277
  Name: "Cube"
  Transform {
    Location {
      X: 0.190658569
      Y: 174.242676
      Z: 180.224106
    }
    Rotation {
      Pitch: 90
      Yaw: 8.29715443
      Roll: 7.77531052
    }
    Scale {
      X: 0.367097378
      Y: 1.6880244
      Z: 0.0508749261
    }
  }
  ParentId: 8162791269207275277
  UnregisteredParameters {
    Overrides {
      Name: "ma:Building_Floor:id"
      AssetReference {
        Id: 7754470856388882901
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 16046144744956508255
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
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
  CoreMesh {
    MeshAsset {
      Id: 2429738000143143899
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
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 595847844104924917
  Name: "Cube"
  Transform {
    Location {
      X: 1.5837326
      Y: 39.072998
      Z: 106.916
    }
    Rotation {
      Pitch: -6.83018879e-06
      Yaw: -90.2431259
      Roll: -89.9999619
    }
    Scale {
      X: 2.04369903
      Y: 1.09144008
      Z: 0.0508746356
    }
  }
  ParentId: 8162791269207275277
  UnregisteredParameters {
    Overrides {
      Name: "ma:Building_Floor:id"
      AssetReference {
        Id: 7754470856388882901
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 16046144744956508255
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 0.728000045
        G: 0.599083364
        B: 0.273
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
      Id: 2429738000143143899
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
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 2216772577494151659
  Name: "Cube"
  Transform {
    Location {
      X: -0.570510864
      Y: 104.889633
      Z: 18.4921989
    }
    Rotation {
      Pitch: 90
      Roll: 0.692199707
    }
    Scale {
      X: 0.667136192
      Y: 2.72548032
      Z: 0.0508748777
    }
  }
  ParentId: 8162791269207275277
  UnregisteredParameters {
    Overrides {
      Name: "ma:Building_Floor:id"
      AssetReference {
        Id: 7754470856388882901
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 16046144744956508255
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 0.624
        G: 0.624
        B: 0.624
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
      Id: 2429738000143143899
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
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 4072594284523878317
  Name: "Cube"
  Transform {
    Location {
      X: -0.881774902
      Y: -237.886871
      Z: 205.739655
    }
    Rotation {
      Pitch: 90
      Yaw: 7.80955839
      Roll: 6.1850853
    }
    Scale {
      X: 0.367097378
      Y: 1.6880244
      Z: 0.0508749261
    }
  }
  ParentId: 8162791269207275277
  UnregisteredParameters {
    Overrides {
      Name: "ma:Building_Floor:id"
      AssetReference {
        Id: 7754470856388882901
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 16046144744956508255
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 1
        G: 0.631355286
        B: 0.327999949
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
      Id: 2429738000143143899
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
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 4689591159000954686
  Name: "Cube"
  Transform {
    Location {
      X: -0.236312866
      Y: -171.534637
      Z: -1.52587891e-05
    }
    Rotation {
      Pitch: 90
      Yaw: 7.78514814
      Roll: 8.24603081
    }
    Scale {
      X: 1.00482154
      Y: 2.72548056
      Z: 0.0508747958
    }
  }
  ParentId: 8162791269207275277
  UnregisteredParameters {
    Overrides {
      Name: "ma:Building_Floor:id"
      AssetReference {
        Id: 7754470856388882901
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 16046144744956508255
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 1
        G: 0.543034196
        B: 0.166999936
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
      Id: 2429738000143143899
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
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 15932078112971737912
  Name: "Cube"
  Transform {
    Location {
      X: 0.300308228
      Y: -166.765335
      Z: 119.073685
    }
    Rotation {
      Pitch: -6.83018879e-06
      Yaw: -91.6974182
      Roll: -89.9999771
    }
    Scale {
      X: 2.04369903
      Y: 1.32224071
      Z: 0.0508746132
    }
  }
  ParentId: 8162791269207275277
  UnregisteredParameters {
    Overrides {
      Name: "ma:Building_Floor:id"
      AssetReference {
        Id: 7754470856388882901
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 16046144744956508255
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 0.629
        G: 0.2839306
        B: 0.0981239751
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
      Id: 2429738000143143899
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
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 15542073861705720971
  Name: "FloorTile"
  Transform {
    Location {
      X: 2135.52734
      Y: 4286.18164
      Z: 1141.19043
    }
    Rotation {
    }
    Scale {
      X: 2.16004157
      Y: 2.16004157
      Z: 2.16004157
    }
  }
  ParentId: 8932628504793674199
  ChildIds: 13799822172953026664
  ChildIds: 6888301407476687722
  ChildIds: 4859765594222124861
  ChildIds: 4932020883062778362
  ChildIds: 742748515825885629
  ChildIds: 12237093279003089869
  ChildIds: 243529051206947312
  ChildIds: 14805459248642144998
  ChildIds: 3317838054697564253
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
  Id: 3317838054697564253
  Name: "Cube"
  Transform {
    Location {
      X: -0.745353699
      Y: -2.40843201
      Z: 197.408173
    }
    Rotation {
      Pitch: 90
      Yaw: -30.5090504
      Roll: -30.5092468
    }
    Scale {
      X: 0.667643547
      Y: 0.994147718
      Z: 0.0508748479
    }
  }
  ParentId: 15542073861705720971
  UnregisteredParameters {
    Overrides {
      Name: "ma:Building_Floor:id"
      AssetReference {
        Id: 7754470856388882901
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 16046144744956508255
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 0.556000054
        G: 0.488038301
        B: 0.448692024
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
      Id: 2429738000143143899
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
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 14805459248642144998
  Name: "Cube"
  Transform {
    Location {
      X: 0.87008667
      Y: 192.486328
      Z: 255.144012
    }
    Rotation {
      Pitch: -6.83018879e-06
      Yaw: -90.2431259
      Roll: -89.9999619
    }
    Scale {
      X: 2.04369903
      Y: 1.09144008
      Z: 0.0508746356
    }
  }
  ParentId: 15542073861705720971
  UnregisteredParameters {
    Overrides {
      Name: "ma:Building_Floor:id"
      AssetReference {
        Id: 7754470856388882901
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 16046144744956508255
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 0.49
        G: 0.409107834
        B: 0.32928
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
      Id: 2429738000143143899
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
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 243529051206947312
  Name: "Cube"
  Transform {
    Location {
      X: -0.510513306
      Y: 70.6203613
      Z: 214.871063
    }
    Rotation {
      Yaw: 89.9999542
      Roll: 89.9999466
    }
    Scale {
      X: 0.367096871
      Y: 0.99414748
      Z: 0.0508748852
    }
  }
  ParentId: 15542073861705720971
  UnregisteredParameters {
    Overrides {
      Name: "ma:Building_Floor:id"
      AssetReference {
        Id: 7754470856388882901
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 16046144744956508255
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 0.828000069
        G: 0.467944264
        B: 0.274068
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
      Id: 2429738000143143899
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
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 12237093279003089869
  Name: "Cube"
  Transform {
    Location {
      X: 0.190658569
      Y: 174.242676
      Z: 180.224106
    }
    Rotation {
      Pitch: 90
      Yaw: 8.29715443
      Roll: 7.77531052
    }
    Scale {
      X: 0.367097378
      Y: 1.6880244
      Z: 0.0508749261
    }
  }
  ParentId: 15542073861705720971
  UnregisteredParameters {
    Overrides {
      Name: "ma:Building_Floor:id"
      AssetReference {
        Id: 7754470856388882901
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 16046144744956508255
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
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
  CoreMesh {
    MeshAsset {
      Id: 2429738000143143899
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
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 742748515825885629
  Name: "Cube"
  Transform {
    Location {
      X: 1.5837326
      Y: 39.072998
      Z: 106.916
    }
    Rotation {
      Pitch: -6.83018879e-06
      Yaw: -90.2431259
      Roll: -89.9999619
    }
    Scale {
      X: 2.04369903
      Y: 1.09144008
      Z: 0.0508746356
    }
  }
  ParentId: 15542073861705720971
  UnregisteredParameters {
    Overrides {
      Name: "ma:Building_Floor:id"
      AssetReference {
        Id: 7754470856388882901
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 16046144744956508255
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 0.728000045
        G: 0.599083364
        B: 0.273
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
      Id: 2429738000143143899
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
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 4932020883062778362
  Name: "Cube"
  Transform {
    Location {
      X: -0.570510864
      Y: 104.889633
      Z: 18.4921989
    }
    Rotation {
      Pitch: 90
      Roll: 0.692199707
    }
    Scale {
      X: 0.667136192
      Y: 2.72548032
      Z: 0.0508748777
    }
  }
  ParentId: 15542073861705720971
  UnregisteredParameters {
    Overrides {
      Name: "ma:Building_Floor:id"
      AssetReference {
        Id: 7754470856388882901
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 16046144744956508255
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 0.624
        G: 0.624
        B: 0.624
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
      Id: 2429738000143143899
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
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 4859765594222124861
  Name: "Cube"
  Transform {
    Location {
      X: -0.881774902
      Y: -237.886871
      Z: 205.739655
    }
    Rotation {
      Pitch: 90
      Yaw: 7.80955839
      Roll: 6.1850853
    }
    Scale {
      X: 0.367097378
      Y: 1.6880244
      Z: 0.0508749261
    }
  }
  ParentId: 15542073861705720971
  UnregisteredParameters {
    Overrides {
      Name: "ma:Building_Floor:id"
      AssetReference {
        Id: 7754470856388882901
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 16046144744956508255
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 1
        G: 0.631355286
        B: 0.327999949
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
      Id: 2429738000143143899
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
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 6888301407476687722
  Name: "Cube"
  Transform {
    Location {
      X: -0.236312866
      Y: -171.534637
      Z: -1.52587891e-05
    }
    Rotation {
      Pitch: 90
      Yaw: 7.78514814
      Roll: 8.24603081
    }
    Scale {
      X: 1.00482154
      Y: 2.72548056
      Z: 0.0508747958
    }
  }
  ParentId: 15542073861705720971
  UnregisteredParameters {
    Overrides {
      Name: "ma:Building_Floor:id"
      AssetReference {
        Id: 7754470856388882901
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 16046144744956508255
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 1
        G: 0.543034196
        B: 0.166999936
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
      Id: 2429738000143143899
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
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 13799822172953026664
  Name: "Cube"
  Transform {
    Location {
      X: 0.300308228
      Y: -166.765335
      Z: 119.073685
    }
    Rotation {
      Pitch: -6.83018879e-06
      Yaw: -91.6974182
      Roll: -89.9999771
    }
    Scale {
      X: 2.04369903
      Y: 1.32224071
      Z: 0.0508746132
    }
  }
  ParentId: 15542073861705720971
  UnregisteredParameters {
    Overrides {
      Name: "ma:Building_Floor:id"
      AssetReference {
        Id: 7754470856388882901
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 16046144744956508255
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 0.629
        G: 0.2839306
        B: 0.0981239751
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
      Id: 2429738000143143899
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
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 494033006850010199
  Name: "FloorTile"
  Transform {
    Location {
      X: 2136.12964
      Y: 1241.0791
      Z: 2517.9043
    }
    Rotation {
      Roll: -90
    }
    Scale {
      X: 2.16004157
      Y: 2.16004157
      Z: 2.16004157
    }
  }
  ParentId: 8932628504793674199
  ChildIds: 12291129454570548911
  ChildIds: 7200101159641575369
  ChildIds: 2696129716148001376
  ChildIds: 965559818427145910
  ChildIds: 6848684274684466887
  ChildIds: 2388856774680648968
  ChildIds: 9058059002498066395
  ChildIds: 6265863763548246519
  ChildIds: 3357932773385811741
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
  Id: 3357932773385811741
  Name: "Cube"
  Transform {
    Location {
      X: -0.745353699
      Y: -2.40843201
      Z: 197.408173
    }
    Rotation {
      Pitch: 90
      Yaw: -30.5090504
      Roll: -30.5092468
    }
    Scale {
      X: 0.667643547
      Y: 0.994147718
      Z: 0.0508748479
    }
  }
  ParentId: 494033006850010199
  UnregisteredParameters {
    Overrides {
      Name: "ma:Building_Floor:id"
      AssetReference {
        Id: 7754470856388882901
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 16046144744956508255
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 0.556000054
        G: 0.488038301
        B: 0.448692024
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
      Id: 2429738000143143899
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
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 6265863763548246519
  Name: "Cube"
  Transform {
    Location {
      X: 0.87008667
      Y: 192.486328
      Z: 255.144012
    }
    Rotation {
      Pitch: -6.83018879e-06
      Yaw: -90.2431259
      Roll: -89.9999619
    }
    Scale {
      X: 2.04369903
      Y: 1.09144008
      Z: 0.0508746356
    }
  }
  ParentId: 494033006850010199
  UnregisteredParameters {
    Overrides {
      Name: "ma:Building_Floor:id"
      AssetReference {
        Id: 7754470856388882901
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 16046144744956508255
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 0.49
        G: 0.409107834
        B: 0.32928
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
      Id: 2429738000143143899
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
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 9058059002498066395
  Name: "Cube"
  Transform {
    Location {
      X: -0.510513306
      Y: 70.6203613
      Z: 214.871063
    }
    Rotation {
      Yaw: 89.9999542
      Roll: 89.9999466
    }
    Scale {
      X: 0.367096871
      Y: 0.99414748
      Z: 0.0508748852
    }
  }
  ParentId: 494033006850010199
  UnregisteredParameters {
    Overrides {
      Name: "ma:Building_Floor:id"
      AssetReference {
        Id: 7754470856388882901
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 16046144744956508255
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 0.828000069
        G: 0.467944264
        B: 0.274068
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
      Id: 2429738000143143899
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
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 2388856774680648968
  Name: "Cube"
  Transform {
    Location {
      X: 0.190658569
      Y: 174.242676
      Z: 180.224106
    }
    Rotation {
      Pitch: 90
      Yaw: 8.29715443
      Roll: 7.77531052
    }
    Scale {
      X: 0.367097378
      Y: 1.6880244
      Z: 0.0508749261
    }
  }
  ParentId: 494033006850010199
  UnregisteredParameters {
    Overrides {
      Name: "ma:Building_Floor:id"
      AssetReference {
        Id: 7754470856388882901
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 16046144744956508255
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
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
  CoreMesh {
    MeshAsset {
      Id: 2429738000143143899
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
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 6848684274684466887
  Name: "Cube"
  Transform {
    Location {
      X: 1.5837326
      Y: 39.072998
      Z: 106.916
    }
    Rotation {
      Pitch: -6.83018879e-06
      Yaw: -90.2431259
      Roll: -89.9999619
    }
    Scale {
      X: 2.04369903
      Y: 1.09144008
      Z: 0.0508746356
    }
  }
  ParentId: 494033006850010199
  UnregisteredParameters {
    Overrides {
      Name: "ma:Building_Floor:id"
      AssetReference {
        Id: 7754470856388882901
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 16046144744956508255
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 0.728000045
        G: 0.599083364
        B: 0.273
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
      Id: 2429738000143143899
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
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 965559818427145910
  Name: "Cube"
  Transform {
    Location {
      X: -0.570510864
      Y: 104.889633
      Z: 18.4921989
    }
    Rotation {
      Pitch: 90
      Roll: 0.692199707
    }
    Scale {
      X: 0.667136192
      Y: 2.72548032
      Z: 0.0508748777
    }
  }
  ParentId: 494033006850010199
  UnregisteredParameters {
    Overrides {
      Name: "ma:Building_Floor:id"
      AssetReference {
        Id: 7754470856388882901
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 16046144744956508255
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 0.624
        G: 0.624
        B: 0.624
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
      Id: 2429738000143143899
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
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 2696129716148001376
  Name: "Cube"
  Transform {
    Location {
      X: -0.881774902
      Y: -237.886871
      Z: 205.739655
    }
    Rotation {
      Pitch: 90
      Yaw: 7.80955839
      Roll: 6.1850853
    }
    Scale {
      X: 0.367097378
      Y: 1.6880244
      Z: 0.0508749261
    }
  }
  ParentId: 494033006850010199
  UnregisteredParameters {
    Overrides {
      Name: "ma:Building_Floor:id"
      AssetReference {
        Id: 7754470856388882901
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 16046144744956508255
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 1
        G: 0.631355286
        B: 0.327999949
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
      Id: 2429738000143143899
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
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 7200101159641575369
  Name: "Cube"
  Transform {
    Location {
      X: -0.236312866
      Y: -171.534637
      Z: -1.52587891e-05
    }
    Rotation {
      Pitch: 90
      Yaw: 7.78514814
      Roll: 8.24603081
    }
    Scale {
      X: 1.00482154
      Y: 2.72548056
      Z: 0.0508747958
    }
  }
  ParentId: 494033006850010199
  UnregisteredParameters {
    Overrides {
      Name: "ma:Building_Floor:id"
      AssetReference {
        Id: 7754470856388882901
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 16046144744956508255
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 1
        G: 0.543034196
        B: 0.166999936
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
      Id: 2429738000143143899
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
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 12291129454570548911
  Name: "Cube"
  Transform {
    Location {
      X: 0.300308228
      Y: -166.765335
      Z: 119.073685
    }
    Rotation {
      Pitch: -6.83018879e-06
      Yaw: -91.6974182
      Roll: -89.9999771
    }
    Scale {
      X: 2.04369903
      Y: 1.32224071
      Z: 0.0508746132
    }
  }
  ParentId: 494033006850010199
  UnregisteredParameters {
    Overrides {
      Name: "ma:Building_Floor:id"
      AssetReference {
        Id: 7754470856388882901
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 16046144744956508255
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 0.629
        G: 0.2839306
        B: 0.0981239751
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
      Id: 2429738000143143899
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
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 16862873614927062219
  Name: "FloorTile"
  Transform {
    Location {
      X: 2136.58447
      Y: 1889.646
      Z: 1952.91382
    }
    Rotation {
      Roll: 179.999985
    }
    Scale {
      X: 2.16004157
      Y: 2.16004157
      Z: 2.16004157
    }
  }
  ParentId: 8932628504793674199
  ChildIds: 227677085179399758
  ChildIds: 1568817942695624944
  ChildIds: 9854464788389262140
  ChildIds: 13071055234812840153
  ChildIds: 5620547877122771249
  ChildIds: 15329537103246731765
  ChildIds: 11466138475689121719
  ChildIds: 10860089680849594113
  ChildIds: 12146005873236595675
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
  Id: 12146005873236595675
  Name: "Cube"
  Transform {
    Location {
      X: -0.745353699
      Y: -2.40843201
      Z: 197.408173
    }
    Rotation {
      Pitch: 90
      Yaw: -30.5090504
      Roll: -30.5092468
    }
    Scale {
      X: 0.667643547
      Y: 0.994147718
      Z: 0.0508748479
    }
  }
  ParentId: 16862873614927062219
  UnregisteredParameters {
    Overrides {
      Name: "ma:Building_Floor:id"
      AssetReference {
        Id: 7754470856388882901
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 16046144744956508255
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 0.556000054
        G: 0.488038301
        B: 0.448692024
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
      Id: 2429738000143143899
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
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 10860089680849594113
  Name: "Cube"
  Transform {
    Location {
      X: 0.87008667
      Y: 192.486328
      Z: 255.144012
    }
    Rotation {
      Pitch: -6.83018879e-06
      Yaw: -90.2431259
      Roll: -89.9999619
    }
    Scale {
      X: 2.04369903
      Y: 1.09144008
      Z: 0.0508746356
    }
  }
  ParentId: 16862873614927062219
  UnregisteredParameters {
    Overrides {
      Name: "ma:Building_Floor:id"
      AssetReference {
        Id: 7754470856388882901
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 16046144744956508255
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 0.49
        G: 0.409107834
        B: 0.32928
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
      Id: 2429738000143143899
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
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 11466138475689121719
  Name: "Cube"
  Transform {
    Location {
      X: -0.510513306
      Y: 70.6203613
      Z: 214.871063
    }
    Rotation {
      Yaw: 89.9999542
      Roll: 89.9999466
    }
    Scale {
      X: 0.367096871
      Y: 0.99414748
      Z: 0.0508748852
    }
  }
  ParentId: 16862873614927062219
  UnregisteredParameters {
    Overrides {
      Name: "ma:Building_Floor:id"
      AssetReference {
        Id: 7754470856388882901
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 16046144744956508255
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 0.828000069
        G: 0.467944264
        B: 0.274068
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
      Id: 2429738000143143899
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
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 15329537103246731765
  Name: "Cube"
  Transform {
    Location {
      X: 0.190658569
      Y: 174.242676
      Z: 180.224106
    }
    Rotation {
      Pitch: 90
      Yaw: 8.29715443
      Roll: 7.77531052
    }
    Scale {
      X: 0.367097378
      Y: 1.6880244
      Z: 0.0508749261
    }
  }
  ParentId: 16862873614927062219
  UnregisteredParameters {
    Overrides {
      Name: "ma:Building_Floor:id"
      AssetReference {
        Id: 7754470856388882901
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 16046144744956508255
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
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
  CoreMesh {
    MeshAsset {
      Id: 2429738000143143899
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
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 5620547877122771249
  Name: "Cube"
  Transform {
    Location {
      X: 1.5837326
      Y: 39.072998
      Z: 106.916
    }
    Rotation {
      Pitch: -6.83018879e-06
      Yaw: -90.2431259
      Roll: -89.9999619
    }
    Scale {
      X: 2.04369903
      Y: 1.09144008
      Z: 0.0508746356
    }
  }
  ParentId: 16862873614927062219
  UnregisteredParameters {
    Overrides {
      Name: "ma:Building_Floor:id"
      AssetReference {
        Id: 7754470856388882901
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 16046144744956508255
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 0.728000045
        G: 0.599083364
        B: 0.273
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
      Id: 2429738000143143899
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
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 13071055234812840153
  Name: "Cube"
  Transform {
    Location {
      X: -0.570510864
      Y: 104.889633
      Z: 18.4921989
    }
    Rotation {
      Pitch: 90
      Roll: 0.692199707
    }
    Scale {
      X: 0.667136192
      Y: 2.72548032
      Z: 0.0508748777
    }
  }
  ParentId: 16862873614927062219
  UnregisteredParameters {
    Overrides {
      Name: "ma:Building_Floor:id"
      AssetReference {
        Id: 7754470856388882901
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 16046144744956508255
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 0.624
        G: 0.624
        B: 0.624
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
      Id: 2429738000143143899
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
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 9854464788389262140
  Name: "Cube"
  Transform {
    Location {
      X: -0.881774902
      Y: -237.886871
      Z: 205.739655
    }
    Rotation {
      Pitch: 90
      Yaw: 7.80955839
      Roll: 6.1850853
    }
    Scale {
      X: 0.367097378
      Y: 1.6880244
      Z: 0.0508749261
    }
  }
  ParentId: 16862873614927062219
  UnregisteredParameters {
    Overrides {
      Name: "ma:Building_Floor:id"
      AssetReference {
        Id: 7754470856388882901
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 16046144744956508255
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 1
        G: 0.631355286
        B: 0.327999949
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
      Id: 2429738000143143899
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
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 1568817942695624944
  Name: "Cube"
  Transform {
    Location {
      X: -0.236312866
      Y: -171.534637
      Z: -1.52587891e-05
    }
    Rotation {
      Pitch: 90
      Yaw: 7.78514814
      Roll: 8.24603081
    }
    Scale {
      X: 1.00482154
      Y: 2.72548056
      Z: 0.0508747958
    }
  }
  ParentId: 16862873614927062219
  UnregisteredParameters {
    Overrides {
      Name: "ma:Building_Floor:id"
      AssetReference {
        Id: 7754470856388882901
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 16046144744956508255
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 1
        G: 0.543034196
        B: 0.166999936
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
      Id: 2429738000143143899
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
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 227677085179399758
  Name: "Cube"
  Transform {
    Location {
      X: 0.300308228
      Y: -166.765335
      Z: 119.073685
    }
    Rotation {
      Pitch: -6.83018879e-06
      Yaw: -91.6974182
      Roll: -89.9999771
    }
    Scale {
      X: 2.04369903
      Y: 1.32224071
      Z: 0.0508746132
    }
  }
  ParentId: 16862873614927062219
  UnregisteredParameters {
    Overrides {
      Name: "ma:Building_Floor:id"
      AssetReference {
        Id: 7754470856388882901
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 16046144744956508255
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 1
        G: 0.580000043
        B: 0.580000043
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
      Id: 2429738000143143899
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
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 1436326313437405438
  Name: "FloorTile"
  Transform {
    Location {
      X: 2137.0459
      Y: 2680.85645
      Z: 3764.87451
    }
    Rotation {
      Roll: 180
    }
    Scale {
      X: 2.16004157
      Y: 2.16004157
      Z: 2.16004157
    }
  }
  ParentId: 8932628504793674199
  ChildIds: 16974934532203248043
  ChildIds: 12509219676699829542
  ChildIds: 11253686338117758693
  ChildIds: 11584999444668473120
  ChildIds: 12776887519339797246
  ChildIds: 10497413651739382620
  ChildIds: 3752716767474343285
  ChildIds: 3959503278915028889
  ChildIds: 1479963834371608388
  ChildIds: 445292111147172627
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
  Id: 445292111147172627
  Name: "Cube"
  Transform {
    Location {
      X: 1.52399528
      Y: -53.0742569
      Z: 43.3585091
    }
    Rotation {
      Pitch: 53.940567
      Yaw: 89.5388107
      Roll: 90
    }
    Scale {
      X: 1.00481832
      Y: 0.448832
      Z: 0.0508748703
    }
  }
  ParentId: 1436326313437405438
  UnregisteredParameters {
    Overrides {
      Name: "ma:Building_Floor:id"
      AssetReference {
        Id: 7754470856388882901
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 16046144744956508255
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 1
        G: 0.543034196
        B: 0.166999936
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
      Id: 2429738000143143899
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
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 1479963834371608388
  Name: "Cube"
  Transform {
    Location {
      X: -0.745353699
      Y: -2.40843201
      Z: 197.408173
    }
    Rotation {
      Pitch: 90
      Yaw: -30.5090504
      Roll: -30.5092468
    }
    Scale {
      X: 0.667643547
      Y: 0.994147718
      Z: 0.0508748479
    }
  }
  ParentId: 1436326313437405438
  UnregisteredParameters {
    Overrides {
      Name: "ma:Building_Floor:id"
      AssetReference {
        Id: 7754470856388882901
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 16046144744956508255
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 0.556000054
        G: 0.488038301
        B: 0.448692024
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
      Id: 2429738000143143899
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
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 3959503278915028889
  Name: "Cube"
  Transform {
    Location {
      X: 0.87008667
      Y: 192.486328
      Z: 255.144012
    }
    Rotation {
      Pitch: -6.83018879e-06
      Yaw: -90.2431259
      Roll: -89.9999619
    }
    Scale {
      X: 2.04369903
      Y: 1.09144008
      Z: 0.0508746356
    }
  }
  ParentId: 1436326313437405438
  UnregisteredParameters {
    Overrides {
      Name: "ma:Building_Floor:id"
      AssetReference {
        Id: 7754470856388882901
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 16046144744956508255
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 0.49
        G: 0.409107834
        B: 0.32928
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
      Id: 2429738000143143899
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
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 3752716767474343285
  Name: "Cube"
  Transform {
    Location {
      X: 1.93003023
      Y: 69.1368637
      Z: 214.858551
    }
    Rotation {
      Yaw: 89.9999542
      Roll: 89.9999466
    }
    Scale {
      X: 0.38640359
      Y: 0.994147539
      Z: 0.0508749299
    }
  }
  ParentId: 1436326313437405438
  UnregisteredParameters {
    Overrides {
      Name: "ma:Building_Floor:id"
      AssetReference {
        Id: 7754470856388882901
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 16046144744956508255
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 0.828000069
        G: 0.467944264
        B: 0.274068
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
      Id: 2429738000143143899
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
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 10497413651739382620
  Name: "Cube"
  Transform {
    Location {
      X: 0.190658569
      Y: 174.242676
      Z: 180.224106
    }
    Rotation {
      Pitch: 90
      Yaw: 8.29715443
      Roll: 7.77531052
    }
    Scale {
      X: 0.367097378
      Y: 1.6880244
      Z: 0.0508749261
    }
  }
  ParentId: 1436326313437405438
  UnregisteredParameters {
    Overrides {
      Name: "ma:Building_Floor:id"
      AssetReference {
        Id: 7754470856388882901
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 16046144744956508255
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
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
  CoreMesh {
    MeshAsset {
      Id: 2429738000143143899
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
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 12776887519339797246
  Name: "Cube"
  Transform {
    Location {
      X: 1.5837326
      Y: 39.072998
      Z: 106.916
    }
    Rotation {
      Pitch: -6.83018879e-06
      Yaw: -90.2431259
      Roll: -89.9999619
    }
    Scale {
      X: 2.04369903
      Y: 1.09144008
      Z: 0.0508746356
    }
  }
  ParentId: 1436326313437405438
  UnregisteredParameters {
    Overrides {
      Name: "ma:Building_Floor:id"
      AssetReference {
        Id: 7754470856388882901
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 16046144744956508255
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 0.728000045
        G: 0.599083364
        B: 0.273
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
      Id: 2429738000143143899
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
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 11584999444668473120
  Name: "Cube"
  Transform {
    Location {
      X: -0.570510864
      Y: 104.889633
      Z: 18.4921989
    }
    Rotation {
      Pitch: 90
      Roll: 0.692199707
    }
    Scale {
      X: 0.667136192
      Y: 2.72548032
      Z: 0.0508748777
    }
  }
  ParentId: 1436326313437405438
  UnregisteredParameters {
    Overrides {
      Name: "ma:Building_Floor:id"
      AssetReference {
        Id: 7754470856388882901
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 16046144744956508255
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 0.624
        G: 0.624
        B: 0.624
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
      Id: 2429738000143143899
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
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 11253686338117758693
  Name: "Cube"
  Transform {
    Location {
      X: -0.881774902
      Y: -237.886871
      Z: 205.739655
    }
    Rotation {
      Pitch: 90
      Yaw: 7.80955839
      Roll: 6.1850853
    }
    Scale {
      X: 0.367097378
      Y: 1.6880244
      Z: 0.0508749261
    }
  }
  ParentId: 1436326313437405438
  UnregisteredParameters {
    Overrides {
      Name: "ma:Building_Floor:id"
      AssetReference {
        Id: 7754470856388882901
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 16046144744956508255
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 1
        G: 0.631355286
        B: 0.327999949
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
      Id: 2429738000143143899
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
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 12509219676699829542
  Name: "Cube"
  Transform {
    Location {
      X: 0.315638959
      Y: -101.942596
      Z: -54.772583
    }
    Rotation {
      Pitch: 72.3235779
      Yaw: 89.538887
      Roll: 90
    }
    Scale {
      X: 1.00481832
      Y: 0.448832
      Z: 0.0508748703
    }
  }
  ParentId: 1436326313437405438
  UnregisteredParameters {
    Overrides {
      Name: "ma:Building_Floor:id"
      AssetReference {
        Id: 7754470856388882901
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 16046144744956508255
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 1
        G: 0.543034196
        B: 0.166999936
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
      Id: 2429738000143143899
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
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 16974934532203248043
  Name: "Cube"
  Transform {
    Location {
      X: 0.300308228
      Y: -166.765335
      Z: 119.073685
    }
    Rotation {
      Pitch: -6.83018879e-06
      Yaw: -91.6974182
      Roll: -89.9999771
    }
    Scale {
      X: 2.04369903
      Y: 1.32224071
      Z: 0.0508746132
    }
  }
  ParentId: 1436326313437405438
  UnregisteredParameters {
    Overrides {
      Name: "ma:Building_Floor:id"
      AssetReference {
        Id: 7754470856388882901
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 16046144744956508255
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 0.629
        G: 0.2839306
        B: 0.0981239751
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
      Id: 2429738000143143899
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
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 12829749934282662265
  Name: "FloorTile"
  Transform {
    Location {
      X: 2137.71069
      Y: 1449.82275
      Z: 3264.49683
    }
    Rotation {
      Roll: 90
    }
    Scale {
      X: 2.16004157
      Y: 2.16004157
      Z: 2.16004157
    }
  }
  ParentId: 8932628504793674199
  ChildIds: 9178190742262306753
  ChildIds: 7258518285201629484
  ChildIds: 10876001687869484581
  ChildIds: 6798212291348978794
  ChildIds: 5061770807505359661
  ChildIds: 5943885279763307570
  ChildIds: 7513953061258100184
  ChildIds: 9523414748272253844
  ChildIds: 14631214881679742249
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
  Id: 14631214881679742249
  Name: "Cube"
  Transform {
    Location {
      X: 0.0592114404
      Y: -8.57688618
      Z: 197.408051
    }
    Rotation {
      Pitch: 90
      Yaw: 35.2642059
      Roll: 35.2640305
    }
    Scale {
      X: 0.667643845
      Y: 1.12680423
      Z: 0.050874766
    }
  }
  ParentId: 12829749934282662265
  UnregisteredParameters {
    Overrides {
      Name: "ma:Building_Floor:id"
      AssetReference {
        Id: 7754470856388882901
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 16046144744956508255
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 0.556000054
        G: 0.488038301
        B: 0.448692024
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
      Id: 2429738000143143899
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
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 9523414748272253844
  Name: "Cube"
  Transform {
    Location {
      X: 0.87008667
      Y: 192.486328
      Z: 255.144012
    }
    Rotation {
      Pitch: -6.83018879e-06
      Yaw: -90.2431259
      Roll: -89.9999619
    }
    Scale {
      X: 2.04369903
      Y: 1.09144008
      Z: 0.0508746356
    }
  }
  ParentId: 12829749934282662265
  UnregisteredParameters {
    Overrides {
      Name: "ma:Building_Floor:id"
      AssetReference {
        Id: 7754470856388882901
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 16046144744956508255
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 0.49
        G: 0.409107834
        B: 0.32928
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
      Id: 2429738000143143899
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
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 7513953061258100184
  Name: "Cube"
  Transform {
    Location {
      X: 1.66333151
      Y: 70.6203079
      Z: 218.130188
    }
    Rotation {
      Yaw: 89.9999542
      Roll: 89.9999466
    }
    Scale {
      X: 0.367096961
      Y: 1.11243844
      Z: 0.0508748367
    }
  }
  ParentId: 12829749934282662265
  UnregisteredParameters {
    Overrides {
      Name: "ma:Building_Floor:id"
      AssetReference {
        Id: 7754470856388882901
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 16046144744956508255
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 0.828000069
        G: 0.467944264
        B: 0.274068
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
      Id: 2429738000143143899
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
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 5943885279763307570
  Name: "Cube"
  Transform {
    Location {
      X: 0.190658569
      Y: 174.242676
      Z: 180.224106
    }
    Rotation {
      Pitch: 90
      Yaw: 8.29715443
      Roll: 7.77531052
    }
    Scale {
      X: 0.367097378
      Y: 1.6880244
      Z: 0.0508749261
    }
  }
  ParentId: 12829749934282662265
  UnregisteredParameters {
    Overrides {
      Name: "ma:Building_Floor:id"
      AssetReference {
        Id: 7754470856388882901
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 16046144744956508255
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
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
  CoreMesh {
    MeshAsset {
      Id: 2429738000143143899
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
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 5061770807505359661
  Name: "Cube"
  Transform {
    Location {
      X: 1.5837326
      Y: 39.072998
      Z: 106.916
    }
    Rotation {
      Pitch: -6.83018879e-06
      Yaw: -90.2431259
      Roll: -89.9999619
    }
    Scale {
      X: 2.04369903
      Y: 1.09144008
      Z: 0.0508746356
    }
  }
  ParentId: 12829749934282662265
  UnregisteredParameters {
    Overrides {
      Name: "ma:Building_Floor:id"
      AssetReference {
        Id: 7754470856388882901
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 16046144744956508255
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 0.728000045
        G: 0.599083364
        B: 0.273
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
      Id: 2429738000143143899
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
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 6798212291348978794
  Name: "Cube"
  Transform {
    Location {
      X: -0.570510864
      Y: 104.889633
      Z: 18.4921989
    }
    Rotation {
      Pitch: 90
      Roll: 0.692199707
    }
    Scale {
      X: 0.667136192
      Y: 2.72548032
      Z: 0.0508748777
    }
  }
  ParentId: 12829749934282662265
  UnregisteredParameters {
    Overrides {
      Name: "ma:Building_Floor:id"
      AssetReference {
        Id: 7754470856388882901
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 16046144744956508255
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 0.624
        G: 0.624
        B: 0.624
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
      Id: 2429738000143143899
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
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 10876001687869484581
  Name: "Cube"
  Transform {
    Location {
      X: -0.881774902
      Y: -237.886871
      Z: 205.739655
    }
    Rotation {
      Pitch: 90
      Yaw: 7.80955839
      Roll: 6.1850853
    }
    Scale {
      X: 0.367097378
      Y: 1.6880244
      Z: 0.0508749261
    }
  }
  ParentId: 12829749934282662265
  UnregisteredParameters {
    Overrides {
      Name: "ma:Building_Floor:id"
      AssetReference {
        Id: 7754470856388882901
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 16046144744956508255
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 1
        G: 0.631355286
        B: 0.327999949
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
      Id: 2429738000143143899
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
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 7258518285201629484
  Name: "Cube"
  Transform {
    Location {
      X: -0.236312866
      Y: -171.534637
      Z: -1.52587891e-05
    }
    Rotation {
      Pitch: 90
      Yaw: 7.78514814
      Roll: 8.24603081
    }
    Scale {
      X: 1.00482154
      Y: 2.72548056
      Z: 0.0508747958
    }
  }
  ParentId: 12829749934282662265
  UnregisteredParameters {
    Overrides {
      Name: "ma:Building_Floor:id"
      AssetReference {
        Id: 7754470856388882901
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 16046144744956508255
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 1
        G: 0.543034196
        B: 0.166999936
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
      Id: 2429738000143143899
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
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 9178190742262306753
  Name: "Cube"
  Transform {
    Location {
      X: 0.300308228
      Y: -166.765335
      Z: 119.073685
    }
    Rotation {
      Pitch: -6.83018879e-06
      Yaw: -91.6974182
      Roll: -89.9999771
    }
    Scale {
      X: 2.04369903
      Y: 1.32224071
      Z: 0.0508746132
    }
  }
  ParentId: 12829749934282662265
  UnregisteredParameters {
    Overrides {
      Name: "ma:Building_Floor:id"
      AssetReference {
        Id: 7754470856388882901
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 16046144744956508255
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 0.629
        G: 0.2839306
        B: 0.0981239751
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
      Id: 2429738000143143899
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
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 5532790162576381815
  Name: "FloorTile"
  Transform {
    Location {
      X: 2138.63379
      Y: 4151.7915
      Z: 3198.4502
    }
    Rotation {
    }
    Scale {
      X: 2.16004157
      Y: 2.16004157
      Z: 2.16004157
    }
  }
  ParentId: 8932628504793674199
  ChildIds: 6852899879463769862
  ChildIds: 3439176030228593960
  ChildIds: 12777221859975249587
  ChildIds: 5581990753527985424
  ChildIds: 14834352724239774349
  ChildIds: 529288377342964563
  ChildIds: 9569134796281255723
  ChildIds: 5615442052504891680
  ChildIds: 10477651940994336590
  ChildIds: 2043203460526892981
  ChildIds: 8623428213341578524
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
  Id: 8623428213341578524
  Name: "Cube"
  Transform {
    Location {
      X: -0.732012212
      Y: -578.294189
      Z: 56.0004311
    }
    Rotation {
      Pitch: 90
      Yaw: -60.5553284
      Roll: -60.0945129
    }
    Scale {
      X: 0.370428979
      Y: 0.975018442
      Z: 0.0508747213
    }
  }
  ParentId: 5532790162576381815
  UnregisteredParameters {
    Overrides {
      Name: "ma:Building_Floor:id"
      AssetReference {
        Id: 7754470856388882901
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 16046144744956508255
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 1
        G: 0.543034196
        B: 0.166999936
        A: 1
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:utile"
      Float: 0.395811737
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
      Id: 2429738000143143899
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
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 2043203460526892981
  Name: "Cube"
  Transform {
    Location {
      X: -2.4099946
      Y: -443.422668
      Z: -8.13792133
    }
    Rotation {
      Pitch: 90
      Yaw: -45.5697937
      Roll: -45.1089478
    }
    Scale {
      X: 0.851492107
      Y: 2.62075043
      Z: 0.050874766
    }
  }
  ParentId: 5532790162576381815
  UnregisteredParameters {
    Overrides {
      Name: "ma:Building_Floor:id"
      AssetReference {
        Id: 7754470856388882901
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 16046144744956508255
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 1
        G: 0.543034196
        B: 0.166999936
        A: 1
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:utile"
      Float: 0.395811737
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
      Id: 2429738000143143899
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
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 10477651940994336590
  Name: "Cube"
  Transform {
    Location {
      X: -0.162135646
      Y: -313.805389
      Z: 63.7673759
    }
    Rotation {
      Pitch: 90
      Roll: -0.911743164
    }
    Scale {
      X: 0.231873915
      Y: 0.886695206
      Z: 0.0508749969
    }
  }
  ParentId: 5532790162576381815
  UnregisteredParameters {
    Overrides {
      Name: "ma:Building_Floor:id"
      AssetReference {
        Id: 7754470856388882901
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 16046144744956508255
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 1
        G: 0.543034196
        B: 0.166999936
        A: 1
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:utile"
      Float: 0.395811737
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
      Id: 2429738000143143899
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
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 5615442052504891680
  Name: "Cube"
  Transform {
    Location {
      X: -0.238823727
      Y: -314.052582
      Z: 279.812714
    }
    Rotation {
      Pitch: 89.4699097
      Yaw: -90.4559326
      Roll: -89.9955444
    }
    Scale {
      X: 1.00481915
      Y: 3.16467953
      Z: 0.050874684
    }
  }
  ParentId: 5532790162576381815
  UnregisteredParameters {
    Overrides {
      Name: "ma:Building_Floor:id"
      AssetReference {
        Id: 7754470856388882901
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 16046144744956508255
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 1
        G: 0.543034196
        B: 0.166999936
        A: 1
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:utile"
      Float: 0.395811737
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
      Id: 2429738000143143899
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
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 9569134796281255723
  Name: "Cube"
  Transform {
    Location {
      X: -0.56086278
      Y: -340.078125
      Z: 131.76825
    }
    Rotation {
      Pitch: 89.4721298
      Yaw: -90.4584961
      Roll: -89.9977722
    }
    Scale {
      X: 1.07986546
      Y: 1.36567533
      Z: 0.0508745424
    }
  }
  ParentId: 5532790162576381815
  UnregisteredParameters {
    Overrides {
      Name: "ma:Building_Floor:id"
      AssetReference {
        Id: 7754470856388882901
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 16046144744956508255
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 1
        G: 0.543034196
        B: 0.166999936
        A: 1
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:utile"
      Float: 0.395811737
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
      Id: 2429738000143143899
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
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 529288377342964563
  Name: "Cube"
  Transform {
    Location {
      X: 3.54940867
      Y: -525.170715
      Z: 355.471954
    }
    Rotation {
      Pitch: 91.0715637
      Yaw: 87.8934326
      Roll: 88.5066528
    }
    Scale {
      X: 0.249575302
      Y: 1.25000203
      Z: 0.0508753248
    }
  }
  ParentId: 5532790162576381815
  UnregisteredParameters {
    Overrides {
      Name: "ma:Building_Floor:id"
      AssetReference {
        Id: 7754470856388882901
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 16046144744956508255
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 1
        G: 0.631355286
        B: 0.327999949
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
      Id: 2429738000143143899
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
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 14834352724239774349
  Name: "Cube"
  Transform {
    Location {
      X: 3.54081869
      Y: -400.825653
      Z: 353.163086
    }
    Rotation {
      Pitch: 93.9576569
      Yaw: -90.2105408
      Roll: -89.5953369
    }
    Scale {
      X: 0.367097586
      Y: 1.6880244
      Z: 0.0508749522
    }
  }
  ParentId: 5532790162576381815
  UnregisteredParameters {
    Overrides {
      Name: "ma:Building_Floor:id"
      AssetReference {
        Id: 7754470856388882901
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 16046144744956508255
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 1
        G: 0.631355286
        B: 0.327999949
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
      Id: 2429738000143143899
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
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 5581990753527985424
  Name: "Cube"
  Transform {
    Location {
      X: -0.889739871
      Y: -249.360397
      Z: 349.087189
    }
    Rotation {
      Pitch: 85.3315353
      Yaw: -88.3750916
      Roll: -90
    }
    Scale {
      X: 0.367097586
      Y: 1.6880244
      Z: 0.0508749522
    }
  }
  ParentId: 5532790162576381815
  UnregisteredParameters {
    Overrides {
      Name: "ma:Building_Floor:id"
      AssetReference {
        Id: 7754470856388882901
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 16046144744956508255
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 1
        G: 0.631355286
        B: 0.327999949
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
      Id: 2429738000143143899
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
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 12777221859975249587
  Name: "Cube"
  Transform {
    Location {
      X: -0.881774902
      Y: -237.886871
      Z: 205.739655
    }
    Rotation {
      Pitch: 90
      Yaw: 7.80955839
      Roll: 6.1850853
    }
    Scale {
      X: 0.367097378
      Y: 1.6880244
      Z: 0.0508749261
    }
  }
  ParentId: 5532790162576381815
  UnregisteredParameters {
    Overrides {
      Name: "ma:Building_Floor:id"
      AssetReference {
        Id: 7754470856388882901
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 16046144744956508255
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 1
        G: 0.631355286
        B: 0.327999949
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
      Id: 2429738000143143899
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
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 3439176030228593960
  Name: "Cube"
  Transform {
    Location {
      X: -0.236312866
      Y: -171.534637
      Z: -1.52587891e-05
    }
    Rotation {
      Pitch: 90
      Yaw: 7.78514814
      Roll: 8.24603081
    }
    Scale {
      X: 1.00482154
      Y: 2.72548056
      Z: 0.0508747958
    }
  }
  ParentId: 5532790162576381815
  UnregisteredParameters {
    Overrides {
      Name: "ma:Building_Floor:id"
      AssetReference {
        Id: 7754470856388882901
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 16046144744956508255
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 1
        G: 0.543034196
        B: 0.166999936
        A: 1
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:utile"
      Float: 0.395811737
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
      Id: 2429738000143143899
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
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 6852899879463769862
  Name: "Cube"
  Transform {
    Location {
      X: 0.300308228
      Y: -166.765335
      Z: 119.073685
    }
    Rotation {
      Pitch: -6.83018879e-06
      Yaw: -91.6974182
      Roll: -89.9999771
    }
    Scale {
      X: 2.04369903
      Y: 1.32224071
      Z: 0.0508746132
    }
  }
  ParentId: 5532790162576381815
  UnregisteredParameters {
    Overrides {
      Name: "ma:Building_Floor:id"
      AssetReference {
        Id: 7754470856388882901
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 16046144744956508255
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 0.629
        G: 0.2839306
        B: 0.0981239751
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
      Id: 2429738000143143899
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
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 4146061527613061994
  Name: "FloorTile"
  Transform {
    Location {
      X: 2139.46338
      Y: 3598.68164
      Z: 1809.49023
    }
    Rotation {
    }
    Scale {
      X: 2.16004157
      Y: 2.16004157
      Z: 2.16004157
    }
  }
  ParentId: 8932628504793674199
  ChildIds: 3509078354652428872
  ChildIds: 15079217269121918615
  ChildIds: 1458327909888617499
  ChildIds: 2351263680374779829
  ChildIds: 13564324120538686645
  ChildIds: 12557825075898132297
  ChildIds: 6779588554078130650
  ChildIds: 11369918151334022634
  ChildIds: 9517791952622358051
  ChildIds: 1749744347171608889
  ChildIds: 13898715378599593212
  ChildIds: 14408279179035373455
  ChildIds: 3275799978061276783
  ChildIds: 14717734765900654916
  ChildIds: 17388947640276386679
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
  Id: 17388947640276386679
  Name: "Cube"
  Transform {
    Location {
      X: 2.79692483
      Y: -103.446442
      Z: 211.066315
    }
    Rotation {
      Pitch: 90
      Yaw: -50.3589783
      Roll: -49.8477173
    }
    Scale {
      X: 0.506004512
      Y: 1.02146125
      Z: 0.0508750454
    }
  }
  ParentId: 4146061527613061994
  UnregisteredParameters {
    Overrides {
      Name: "ma:Building_Floor:id"
      AssetReference {
        Id: 7754470856388882901
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 16046144744956508255
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 1
        G: 0.631355286
        B: 0.327999949
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
      Id: 2429738000143143899
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
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 14717734765900654916
  Name: "Cube"
  Transform {
    Location {
      X: -0.235701382
      Y: 99.4476166
      Z: -49.3554497
    }
    Rotation {
      Pitch: 90
      Yaw: -45.5697937
      Roll: -45.1089478
    }
    Scale {
      X: 0.694324195
      Y: 2.64259768
      Z: 0.0508750081
    }
  }
  ParentId: 4146061527613061994
  UnregisteredParameters {
    Overrides {
      Name: "ma:Building_Floor:id"
      AssetReference {
        Id: 7754470856388882901
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 16046144744956508255
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 1
        G: 0.543034196
        B: 0.166999936
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
      Id: 2429738000143143899
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
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 3275799978061276783
  Name: "Cube"
  Transform {
    Location {
      X: 1.57912719
      Y: 203.216675
      Z: 106.915939
    }
    Rotation {
      Yaw: -89.2158203
      Roll: -90
    }
    Scale {
      X: 1.18752968
      Y: 1.0914402
      Z: 0.0508748628
    }
  }
  ParentId: 4146061527613061994
  UnregisteredParameters {
    Overrides {
      Name: "ma:Building_Floor:id"
      AssetReference {
        Id: 7754470856388882901
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 16046144744956508255
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 0.728000045
        G: 0.599083364
        B: 0.273
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
      Id: 2429738000143143899
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
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 14408279179035373455
  Name: "Cube"
  Transform {
    Location {
      X: 0.422490805
      Y: -243.349792
      Z: 248.164551
    }
    Rotation {
      Pitch: 90
      Roll: 0.511299133
    }
    Scale {
      X: 0.4337
      Y: 0.369882643
      Z: 0.0508748665
    }
  }
  ParentId: 4146061527613061994
  UnregisteredParameters {
    Overrides {
      Name: "ma:Building_Floor:id"
      AssetReference {
        Id: 7754470856388882901
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 16046144744956508255
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 1
        G: 0.631355286
        B: 0.327999949
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
      Id: 2429738000143143899
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
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 13898715378599593212
  Name: "Cube"
  Transform {
    Location {
      X: 0.164198369
      Y: -30.0887928
      Z: 268.255157
    }
    Rotation {
      Yaw: -90.0039673
      Roll: -90
    }
    Scale {
      X: 1.58579457
      Y: 0.669965565
      Z: 0.0508742556
    }
  }
  ParentId: 4146061527613061994
  UnregisteredParameters {
    Overrides {
      Name: "ma:Building_Floor:id"
      AssetReference {
        Id: 7754470856388882901
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 16046144744956508255
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 0.629
        G: 0.2839306
        B: 0.0981239751
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
      Id: 2429738000143143899
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
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 1749744347171608889
  Name: "Cube"
  Transform {
    Location {
      X: 0.299236059
      Y: -166.758575
      Z: 261.980377
    }
    Rotation {
      Yaw: -90.004
      Roll: -90
    }
    Scale {
      X: 1.12242985
      Y: 0.778198
      Z: 0.0508741848
    }
  }
  ParentId: 4146061527613061994
  UnregisteredParameters {
    Overrides {
      Name: "ma:Building_Floor:id"
      AssetReference {
        Id: 7754470856388882901
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 16046144744956508255
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 0.629
        G: 0.2839306
        B: 0.0981239751
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
      Id: 2429738000143143899
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
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 9517791952622358051
  Name: "Cube"
  Transform {
    Location {
      X: -0.745353699
      Y: -2.40843201
      Z: 197.408173
    }
    Rotation {
      Pitch: 90
      Yaw: -30.5090504
      Roll: -30.5092468
    }
    Scale {
      X: 0.667643547
      Y: 0.994147718
      Z: 0.0508748479
    }
  }
  ParentId: 4146061527613061994
  UnregisteredParameters {
    Overrides {
      Name: "ma:Building_Floor:id"
      AssetReference {
        Id: 7754470856388882901
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 16046144744956508255
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 0.556000054
        G: 0.488038301
        B: 0.448692024
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
      Id: 2429738000143143899
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
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 11369918151334022634
  Name: "Cube"
  Transform {
    Location {
      X: 0.87008667
      Y: 192.486328
      Z: 255.144012
    }
    Rotation {
      Pitch: -6.83018879e-06
      Yaw: -90.2431259
      Roll: -89.9999619
    }
    Scale {
      X: 2.04369903
      Y: 1.09144008
      Z: 0.0508746356
    }
  }
  ParentId: 4146061527613061994
  UnregisteredParameters {
    Overrides {
      Name: "ma:Building_Floor:id"
      AssetReference {
        Id: 7754470856388882901
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 16046144744956508255
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 0.49
        G: 0.409107834
        B: 0.32928
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
      Id: 2429738000143143899
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
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 6779588554078130650
  Name: "Cube"
  Transform {
    Location {
      X: -0.515073121
      Y: 70.6203918
      Z: 231.577148
    }
    Rotation {
      Yaw: 89.9999542
      Roll: 89.9999466
    }
    Scale {
      X: 0.367096841
      Y: 1.3553586
      Z: 0.0508749522
    }
  }
  ParentId: 4146061527613061994
  UnregisteredParameters {
    Overrides {
      Name: "ma:Building_Floor:id"
      AssetReference {
        Id: 7754470856388882901
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 16046144744956508255
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 0.828000069
        G: 0.467944264
        B: 0.274068
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
      Id: 2429738000143143899
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
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 12557825075898132297
  Name: "Cube"
  Transform {
    Location {
      X: 0.190658569
      Y: 174.242676
      Z: 180.224106
    }
    Rotation {
      Pitch: 90
      Yaw: 8.29715443
      Roll: 7.77531052
    }
    Scale {
      X: 0.367097378
      Y: 1.6880244
      Z: 0.0508749261
    }
  }
  ParentId: 4146061527613061994
  UnregisteredParameters {
    Overrides {
      Name: "ma:Building_Floor:id"
      AssetReference {
        Id: 7754470856388882901
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 16046144744956508255
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
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
  CoreMesh {
    MeshAsset {
      Id: 2429738000143143899
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
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 13564324120538686645
  Name: "Cube"
  Transform {
    Location {
      X: 1.5837326
      Y: 39.072998
      Z: 106.916
    }
    Rotation {
      Pitch: -6.83018879e-06
      Yaw: -90.2431259
      Roll: -89.9999619
    }
    Scale {
      X: 2.04369903
      Y: 1.09144008
      Z: 0.0508746356
    }
  }
  ParentId: 4146061527613061994
  UnregisteredParameters {
    Overrides {
      Name: "ma:Building_Floor:id"
      AssetReference {
        Id: 7754470856388882901
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 16046144744956508255
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 0.728000045
        G: 0.599083364
        B: 0.273
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
      Id: 2429738000143143899
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
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 2351263680374779829
  Name: "Cube"
  Transform {
    Location {
      X: -0.570510864
      Y: 104.889633
      Z: 18.4921989
    }
    Rotation {
      Pitch: 90
      Roll: 0.692199707
    }
    Scale {
      X: 0.667136192
      Y: 2.72548032
      Z: 0.0508748777
    }
  }
  ParentId: 4146061527613061994
  UnregisteredParameters {
    Overrides {
      Name: "ma:Building_Floor:id"
      AssetReference {
        Id: 7754470856388882901
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 16046144744956508255
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 0.624
        G: 0.624
        B: 0.624
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
      Id: 2429738000143143899
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
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 1458327909888617499
  Name: "Cube"
  Transform {
    Location {
      X: -0.881774902
      Y: -237.886871
      Z: 205.739655
    }
    Rotation {
      Pitch: 90
      Yaw: 7.80955839
      Roll: 6.1850853
    }
    Scale {
      X: 0.367097378
      Y: 1.6880244
      Z: 0.0508749261
    }
  }
  ParentId: 4146061527613061994
  UnregisteredParameters {
    Overrides {
      Name: "ma:Building_Floor:id"
      AssetReference {
        Id: 7754470856388882901
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 16046144744956508255
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 1
        G: 0.631355286
        B: 0.327999949
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
      Id: 2429738000143143899
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
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 15079217269121918615
  Name: "Cube"
  Transform {
    Location {
      X: -0.236312866
      Y: -171.534637
      Z: -1.52587891e-05
    }
    Rotation {
      Pitch: 90
      Yaw: 7.78514814
      Roll: 8.24603081
    }
    Scale {
      X: 1.00482154
      Y: 2.72548056
      Z: 0.0508747958
    }
  }
  ParentId: 4146061527613061994
  UnregisteredParameters {
    Overrides {
      Name: "ma:Building_Floor:id"
      AssetReference {
        Id: 7754470856388882901
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 16046144744956508255
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 1
        G: 0.543034196
        B: 0.166999936
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
      Id: 2429738000143143899
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
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 3509078354652428872
  Name: "Cube"
  Transform {
    Location {
      X: 0.300308228
      Y: -166.765335
      Z: 119.073685
    }
    Rotation {
      Pitch: -6.83018879e-06
      Yaw: -91.6974182
      Roll: -89.9999771
    }
    Scale {
      X: 2.04369903
      Y: 1.32224071
      Z: 0.0508746132
    }
  }
  ParentId: 4146061527613061994
  UnregisteredParameters {
    Overrides {
      Name: "ma:Building_Floor:id"
      AssetReference {
        Id: 7754470856388882901
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 16046144744956508255
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 0.629
        G: 0.2839306
        B: 0.0981239751
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
      Id: 2429738000143143899
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
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 16859969393888343418
  Name: "FloorTile"
  Transform {
    Location {
      X: 2140.16016
      Y: 3226.14209
      Z: 2967.06494
    }
    Rotation {
      Roll: 180
    }
    Scale {
      X: 2.16004157
      Y: 2.16004157
      Z: 2.16004157
    }
  }
  ParentId: 8932628504793674199
  ChildIds: 4988898475458800745
  ChildIds: 15556324994223971286
  ChildIds: 9496297239811495430
  ChildIds: 5763147578151996370
  ChildIds: 7152907267872400912
  ChildIds: 7854322378113378259
  ChildIds: 13556917127528562521
  ChildIds: 12296557719787705282
  ChildIds: 11796037274616444942
  ChildIds: 5385086652246289166
  ChildIds: 12928004850385475823
  ChildIds: 17192777717771501355
  ChildIds: 4780824668874639328
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
  Id: 4780824668874639328
  Name: "Cube"
  Transform {
    Location {
      X: 1.79880714
      Y: 200.431122
      Z: 107.252548
    }
    Rotation {
      Pitch: 6.83018879e-06
      Yaw: 89.999939
      Roll: 89.9999237
    }
    Scale {
      X: 1.16165793
      Y: 1.05876672
      Z: 0.0508747734
    }
  }
  ParentId: 16859969393888343418
  UnregisteredParameters {
    Overrides {
      Name: "ma:Building_Floor:id"
      AssetReference {
        Id: 7754470856388882901
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 16046144744956508255
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 0.828000069
        G: 0.467944264
        B: 0.274068
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
      Id: 2429738000143143899
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
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 17192777717771501355
  Name: "Cube"
  Transform {
    Location {
      X: 0.7075845
      Y: -209.592819
      Z: 228.93718
    }
    Rotation {
      Pitch: 90
      Roll: 0.679595947
    }
    Scale {
      X: 0.0776737332
      Y: 1.04790068
      Z: 0.0508751385
    }
  }
  ParentId: 16859969393888343418
  UnregisteredParameters {
    Overrides {
      Name: "ma:Building_Floor:id"
      AssetReference {
        Id: 7754470856388882901
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 16046144744956508255
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 1
        G: 0.631355286
        B: 0.327999949
        A: 1
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:utile"
      Float: 0.344061404
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
      Id: 2429738000143143899
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
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 12928004850385475823
  Name: "Cube"
  Transform {
    Location {
      X: 0.132996157
      Y: -104.171
      Z: 210.167694
    }
    Rotation {
      Pitch: 90
      Yaw: 54.4320526
      Roll: 53.9127808
    }
    Scale {
      X: 0.462224156
      Y: 0.9763785
      Z: 0.0508749522
    }
  }
  ParentId: 16859969393888343418
  UnregisteredParameters {
    Overrides {
      Name: "ma:Building_Floor:id"
      AssetReference {
        Id: 7754470856388882901
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 16046144744956508255
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 1
        G: 0.631355286
        B: 0.327999949
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
      Id: 2429738000143143899
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
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 5385086652246289166
  Name: "Cube"
  Transform {
    Location {
      X: -0.933311343
      Y: -378.317566
      Z: 208.759964
    }
    Rotation {
      Pitch: 90
      Roll: 2.05474854
    }
    Scale {
      X: 0.326550245
      Y: 1.08282208
      Z: 0.0508753434
    }
  }
  ParentId: 16859969393888343418
  UnregisteredParameters {
    Overrides {
      Name: "ma:Building_Floor:id"
      AssetReference {
        Id: 7754470856388882901
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 16046144744956508255
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 1
        G: 0.631355286
        B: 0.327999949
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
      Id: 2429738000143143899
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
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 11796037274616444942
  Name: "Cube"
  Transform {
    Location {
      X: -0.745353699
      Y: -2.40843201
      Z: 197.408173
    }
    Rotation {
      Pitch: 90
      Yaw: -30.5090504
      Roll: -30.5092468
    }
    Scale {
      X: 0.667643547
      Y: 0.994147718
      Z: 0.0508748479
    }
  }
  ParentId: 16859969393888343418
  UnregisteredParameters {
    Overrides {
      Name: "ma:Building_Floor:id"
      AssetReference {
        Id: 7754470856388882901
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 16046144744956508255
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 0.556000054
        G: 0.488038301
        B: 0.448692024
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
      Id: 2429738000143143899
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
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 12296557719787705282
  Name: "Cube"
  Transform {
    Location {
      X: 0.87008667
      Y: 192.486328
      Z: 255.144012
    }
    Rotation {
      Pitch: -6.83018879e-06
      Yaw: -90.2431259
      Roll: -89.9999619
    }
    Scale {
      X: 2.04369903
      Y: 1.09144008
      Z: 0.0508746356
    }
  }
  ParentId: 16859969393888343418
  UnregisteredParameters {
    Overrides {
      Name: "ma:Building_Floor:id"
      AssetReference {
        Id: 7754470856388882901
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 16046144744956508255
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 0.49
        G: 0.409107834
        B: 0.32928
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
      Id: 2429738000143143899
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
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 13556917127528562521
  Name: "Cube"
  Transform {
    Location {
      X: -0.510513306
      Y: 70.6203613
      Z: 214.871063
    }
    Rotation {
      Yaw: 89.9999542
      Roll: 89.9999466
    }
    Scale {
      X: 0.367096871
      Y: 0.99414748
      Z: 0.0508748852
    }
  }
  ParentId: 16859969393888343418
  UnregisteredParameters {
    Overrides {
      Name: "ma:Building_Floor:id"
      AssetReference {
        Id: 7754470856388882901
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 16046144744956508255
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 0.828000069
        G: 0.467944264
        B: 0.274068
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
      Id: 2429738000143143899
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
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 7854322378113378259
  Name: "Cube"
  Transform {
    Location {
      X: 0.190658569
      Y: 174.242676
      Z: 180.224106
    }
    Rotation {
      Pitch: 90
      Yaw: 8.29715443
      Roll: 7.77531052
    }
    Scale {
      X: 0.367097378
      Y: 1.6880244
      Z: 0.0508749261
    }
  }
  ParentId: 16859969393888343418
  UnregisteredParameters {
    Overrides {
      Name: "ma:Building_Floor:id"
      AssetReference {
        Id: 7754470856388882901
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 16046144744956508255
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
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
  CoreMesh {
    MeshAsset {
      Id: 2429738000143143899
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
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 7152907267872400912
  Name: "Cube"
  Transform {
    Location {
      X: 1.5837326
      Y: 39.072998
      Z: 106.916
    }
    Rotation {
      Pitch: -6.83018879e-06
      Yaw: -90.2431259
      Roll: -89.9999619
    }
    Scale {
      X: 2.04369903
      Y: 1.09144008
      Z: 0.0508746356
    }
  }
  ParentId: 16859969393888343418
  UnregisteredParameters {
    Overrides {
      Name: "ma:Building_Floor:id"
      AssetReference {
        Id: 7754470856388882901
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 16046144744956508255
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 0.728000045
        G: 0.599083364
        B: 0.273
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
      Id: 2429738000143143899
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
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 5763147578151996370
  Name: "Cube"
  Transform {
    Location {
      X: -0.570510864
      Y: 104.889633
      Z: 18.4921989
    }
    Rotation {
      Pitch: 90
      Roll: 0.692199707
    }
    Scale {
      X: 0.667136192
      Y: 2.72548032
      Z: 0.0508748777
    }
  }
  ParentId: 16859969393888343418
  UnregisteredParameters {
    Overrides {
      Name: "ma:Building_Floor:id"
      AssetReference {
        Id: 7754470856388882901
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 16046144744956508255
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 0.624
        G: 0.624
        B: 0.624
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
      Id: 2429738000143143899
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
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 9496297239811495430
  Name: "Cube"
  Transform {
    Location {
      X: 0.160468519
      Y: -237.883514
      Z: 205.739502
    }
    Rotation {
      Pitch: 90
      Roll: -0.519287109
    }
    Scale {
      X: 0.367097586
      Y: 1.6880244
      Z: 0.0508749522
    }
  }
  ParentId: 16859969393888343418
  UnregisteredParameters {
    Overrides {
      Name: "ma:Building_Floor:id"
      AssetReference {
        Id: 7754470856388882901
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 16046144744956508255
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 1
        G: 0.631355286
        B: 0.327999949
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
      Id: 2429738000143143899
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
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 15556324994223971286
  Name: "Cube"
  Transform {
    Location {
      X: -0.236312866
      Y: -171.534637
      Z: -1.52587891e-05
    }
    Rotation {
      Pitch: 90
      Yaw: 7.78514814
      Roll: 8.24603081
    }
    Scale {
      X: 1.00482154
      Y: 2.72548056
      Z: 0.0508747958
    }
  }
  ParentId: 16859969393888343418
  UnregisteredParameters {
    Overrides {
      Name: "ma:Building_Floor:id"
      AssetReference {
        Id: 7754470856388882901
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 16046144744956508255
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 1
        G: 0.543034196
        B: 0.166999936
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
      Id: 2429738000143143899
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
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 4988898475458800745
  Name: "Cube"
  Transform {
    Location {
      X: 0.300308228
      Y: -166.765335
      Z: 119.073685
    }
    Rotation {
      Pitch: -6.83018879e-06
      Yaw: -91.6974182
      Roll: -89.9999771
    }
    Scale {
      X: 2.04369903
      Y: 1.32224071
      Z: 0.0508746132
    }
  }
  ParentId: 16859969393888343418
  UnregisteredParameters {
    Overrides {
      Name: "ma:Building_Floor:id"
      AssetReference {
        Id: 7754470856388882901
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 16046144744956508255
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 0.629
        G: 0.2839306
        B: 0.0981239751
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
      Id: 2429738000143143899
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
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 5319462141026068937
  Name: "FloorTile"
  Transform {
    Location {
      X: 2141.29712
      Y: 2026.32886
      Z: 2115.13257
    }
    Rotation {
    }
    Scale {
      X: 2.16004157
      Y: 2.16004157
      Z: 2.16004157
    }
  }
  ParentId: 8932628504793674199
  ChildIds: 9498440402275954539
  ChildIds: 2664797518097685671
  ChildIds: 15586679656674075711
  ChildIds: 10008840591260914625
  ChildIds: 8518131407695726182
  ChildIds: 7499437306279801741
  ChildIds: 7326984907217467236
  ChildIds: 11745431085204022510
  ChildIds: 9339041140533711930
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
  Id: 9339041140533711930
  Name: "Cube"
  Transform {
    Location {
      X: -0.745353699
      Y: -2.40843201
      Z: 197.408173
    }
    Rotation {
      Pitch: 90
      Yaw: -30.5090504
      Roll: -30.5092468
    }
    Scale {
      X: 0.667643547
      Y: 0.994147718
      Z: 0.0508748479
    }
  }
  ParentId: 5319462141026068937
  UnregisteredParameters {
    Overrides {
      Name: "ma:Building_Floor:id"
      AssetReference {
        Id: 7754470856388882901
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 16046144744956508255
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 0.556000054
        G: 0.488038301
        B: 0.448692024
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
      Id: 2429738000143143899
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
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 11745431085204022510
  Name: "Cube"
  Transform {
    Location {
      X: 0.87008667
      Y: 192.486328
      Z: 255.144012
    }
    Rotation {
      Pitch: -6.83018879e-06
      Yaw: -90.2431259
      Roll: -89.9999619
    }
    Scale {
      X: 2.04369903
      Y: 1.09144008
      Z: 0.0508746356
    }
  }
  ParentId: 5319462141026068937
  UnregisteredParameters {
    Overrides {
      Name: "ma:Building_Floor:id"
      AssetReference {
        Id: 7754470856388882901
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 16046144744956508255
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 0.49
        G: 0.409107834
        B: 0.32928
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
      Id: 2429738000143143899
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
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 7326984907217467236
  Name: "Cube"
  Transform {
    Location {
      X: -0.510513306
      Y: 70.6203613
      Z: 214.871063
    }
    Rotation {
      Yaw: 89.9999542
      Roll: 89.9999466
    }
    Scale {
      X: 0.367096871
      Y: 0.99414748
      Z: 0.0508748852
    }
  }
  ParentId: 5319462141026068937
  UnregisteredParameters {
    Overrides {
      Name: "ma:Building_Floor:id"
      AssetReference {
        Id: 7754470856388882901
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 16046144744956508255
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 0.828000069
        G: 0.467944264
        B: 0.274068
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
      Id: 2429738000143143899
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
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 7499437306279801741
  Name: "Cube"
  Transform {
    Location {
      X: 0.190658569
      Y: 174.242676
      Z: 180.224106
    }
    Rotation {
      Pitch: 90
      Yaw: 8.29715443
      Roll: 7.77531052
    }
    Scale {
      X: 0.367097378
      Y: 1.6880244
      Z: 0.0508749261
    }
  }
  ParentId: 5319462141026068937
  UnregisteredParameters {
    Overrides {
      Name: "ma:Building_Floor:id"
      AssetReference {
        Id: 7754470856388882901
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 16046144744956508255
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
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
  CoreMesh {
    MeshAsset {
      Id: 2429738000143143899
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
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 8518131407695726182
  Name: "Cube"
  Transform {
    Location {
      X: 1.5837326
      Y: 39.072998
      Z: 106.916
    }
    Rotation {
      Pitch: -6.83018879e-06
      Yaw: -90.2431259
      Roll: -89.9999619
    }
    Scale {
      X: 2.04369903
      Y: 1.09144008
      Z: 0.0508746356
    }
  }
  ParentId: 5319462141026068937
  UnregisteredParameters {
    Overrides {
      Name: "ma:Building_Floor:id"
      AssetReference {
        Id: 7754470856388882901
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 16046144744956508255
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 0.728000045
        G: 0.599083364
        B: 0.273
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
      Id: 2429738000143143899
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
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 10008840591260914625
  Name: "Cube"
  Transform {
    Location {
      X: -0.570510864
      Y: 104.889633
      Z: 18.4921989
    }
    Rotation {
      Pitch: 90
      Roll: 0.692199707
    }
    Scale {
      X: 0.667136192
      Y: 2.72548032
      Z: 0.0508748777
    }
  }
  ParentId: 5319462141026068937
  UnregisteredParameters {
    Overrides {
      Name: "ma:Building_Floor:id"
      AssetReference {
        Id: 7754470856388882901
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 16046144744956508255
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 0.624
        G: 0.624
        B: 0.624
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
      Id: 2429738000143143899
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
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 15586679656674075711
  Name: "Cube"
  Transform {
    Location {
      X: -0.881774902
      Y: -237.886871
      Z: 205.739655
    }
    Rotation {
      Pitch: 90
      Yaw: 7.80955839
      Roll: 6.1850853
    }
    Scale {
      X: 0.367097378
      Y: 1.6880244
      Z: 0.0508749261
    }
  }
  ParentId: 5319462141026068937
  UnregisteredParameters {
    Overrides {
      Name: "ma:Building_Floor:id"
      AssetReference {
        Id: 7754470856388882901
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 16046144744956508255
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 1
        G: 0.631355286
        B: 0.327999949
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
      Id: 2429738000143143899
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
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 2664797518097685671
  Name: "Cube"
  Transform {
    Location {
      X: -0.236312866
      Y: -171.534637
      Z: -1.52587891e-05
    }
    Rotation {
      Pitch: 90
      Yaw: 7.78514814
      Roll: 8.24603081
    }
    Scale {
      X: 1.00482154
      Y: 2.72548056
      Z: 0.0508747958
    }
  }
  ParentId: 5319462141026068937
  UnregisteredParameters {
    Overrides {
      Name: "ma:Building_Floor:id"
      AssetReference {
        Id: 7754470856388882901
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 16046144744956508255
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 1
        G: 0.543034196
        B: 0.166999936
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
      Id: 2429738000143143899
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
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 9498440402275954539
  Name: "Cube"
  Transform {
    Location {
      X: 0.300308228
      Y: -166.765335
      Z: 119.073685
    }
    Rotation {
      Pitch: -6.83018879e-06
      Yaw: -91.6974182
      Roll: -89.9999771
    }
    Scale {
      X: 2.04369903
      Y: 1.32224071
      Z: 0.0508746132
    }
  }
  ParentId: 5319462141026068937
  UnregisteredParameters {
    Overrides {
      Name: "ma:Building_Floor:id"
      AssetReference {
        Id: 7754470856388882901
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 16046144744956508255
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 0.629
        G: 0.2839306
        B: 0.0981239751
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
      Id: 2429738000143143899
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
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 11855213909982227006
  Name: "Cube"
  Transform {
    Location {
      X: -343.125702
      Y: 915.352417
      Z: 1011.10498
    }
    Rotation {
      Yaw: -90
      Roll: -90
    }
    Scale {
      X: 1.02677166
      Y: 2.83274388
      Z: 0.732340276
    }
  }
  ParentId: 8932628504793674199
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 1452491879134265234
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 0.0440000035
        G: 0.0245080031
        B: 0.0245080031
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
      Id: 12095835209017042614
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
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 3088867498922068152
  Name: "Cube"
  Transform {
    Location {
      X: 6928.10449
      Y: 2927.83252
      Z: 2510.12402
    }
    Rotation {
      Yaw: -90
      Roll: -90
    }
    Scale {
      X: 181.374374
      Y: 415.613251
      Z: 0.573487
    }
  }
  ParentId: 8932628504793674199
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 5351428073291024820
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
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
  EditorIndicatorVisibility {
    Value: "mc:eindicatorvisibility:visiblewhenselected"
  }
  CoreMesh {
    MeshAsset {
      Id: 8933537604162373856
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
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 11595181714022881905
  Name: "Cube"
  Transform {
    Location {
      X: -14.0820007
      Y: -777.788574
      Z: 1300.86108
    }
    Rotation {
      Pitch: -66.9886169
      Yaw: -89.9999084
      Roll: -82.1149902
    }
    Scale {
      X: 2.00000167
      Y: -7.3909812
      Z: 7.13935518
    }
  }
  ParentId: 8932628504793674199
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 0.972000062
        G: 0.0242999792
        A: 1
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 11266072492557105121
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
      Id: 16121047485382613212
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
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 3653767663900982871
  Name: "Cube"
  Transform {
    Location {
      X: -14.0812378
      Y: -756.239746
      Z: 1383.36499
    }
    Rotation {
      Pitch: -66.8455505
      Yaw: -83.265564
      Roll: -88.3114
    }
    Scale {
      X: 2.00000167
      Y: -7.3909812
      Z: 7.13935518
    }
  }
  ParentId: 8932628504793674199
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 0.972000062
        G: 0.0242999792
        A: 1
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 11266072492557105121
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
      Id: 16121047485382613212
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
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 7434606350485415272
  Name: "Cube"
  Transform {
    Location {
      X: -14.0814819
      Y: -710.702148
      Z: 1458.82056
    }
    Rotation {
      Pitch: -53.6830444
      Yaw: -86.9254456
      Roll: -84.8048096
    }
    Scale {
      X: 2.00000167
      Y: -7.3909812
      Z: 7.13935518
    }
  }
  ParentId: 8932628504793674199
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 0.972000062
        G: 0.0242999792
        A: 1
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 11266072492557105121
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
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
  CoreMesh {
    MeshAsset {
      Id: 16121047485382613212
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
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 14218004448295525778
  Name: "Cube"
  Transform {
    Location {
      X: -17.5412903
      Y: -646.336426
      Z: 1546.51636
    }
    Rotation {
      Pitch: -41.2288818
      Yaw: -85.4328613
      Roll: -85.9110413
    }
    Scale {
      X: 2.00000167
      Y: -7.3909812
      Z: 7.13935518
    }
  }
  ParentId: 8932628504793674199
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 0.972000062
        G: 0.0242999792
        A: 1
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 11266072492557105121
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
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
  CoreMesh {
    MeshAsset {
      Id: 16121047485382613212
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
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 12481443748277501682
  Name: "Cube"
  Transform {
    Location {
      X: -29.2090454
      Y: -500.319824
      Z: 1674.88257
    }
    Rotation {
      Pitch: -41.2289124
      Yaw: -85.4328918
      Roll: -85.9110718
    }
    Scale {
      X: 2.00000167
      Y: -7.3909812
      Z: 7.13935518
    }
  }
  ParentId: 8932628504793674199
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 0.972000062
        G: 0.0242999792
        A: 1
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 11266072492557105121
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
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
  CoreMesh {
    MeshAsset {
      Id: 16121047485382613212
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
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 2807658677800401776
  Name: "Cube"
  Transform {
    Location {
      X: -83.5002441
      Y: -460.279785
      Z: 1843.04858
    }
    Rotation {
      Pitch: -41.229248
      Yaw: -85.4328613
      Roll: -76.1376343
    }
    Scale {
      X: 1.14619756
      Y: -4.23573
      Z: 2.99295259
    }
  }
  ParentId: 8932628504793674199
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 0.972000062
        G: 0.0242999792
        A: 1
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 11266072492557105121
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
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
  CoreMesh {
    MeshAsset {
      Id: 16121047485382613212
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
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 3414395060723582222
  Name: "Cube"
  Transform {
    Location {
      X: -76.7686768
      Y: -345.471924
      Z: 1923.08228
    }
    Rotation {
      Pitch: -5.05960083
      Yaw: -89.9253235
      Roll: -77.2177124
    }
    Scale {
      X: 0.708767831
      Y: -2.61922479
      Z: 1.85073531
    }
  }
  ParentId: 8932628504793674199
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 0.972000062
        G: 0.0242999792
        A: 1
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 11266072492557105121
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
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
  CoreMesh {
    MeshAsset {
      Id: 16121047485382613212
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
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 14335264751422184743
  Name: "Cube"
  Transform {
    Location {
      X: -93.947937
      Y: -383.36145
      Z: 1887.85474
    }
    Rotation {
      Pitch: -32.1439514
      Yaw: -82.8047791
      Roll: -77.712616
    }
    Scale {
      X: 0.9573192
      Y: -3.53773713
      Z: 2.499753
    }
  }
  ParentId: 8932628504793674199
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 0.972000062
        G: 0.0242999792
        A: 1
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 11266072492557105121
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
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
  CoreMesh {
    MeshAsset {
      Id: 16121047485382613212
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
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 17222321066735869721
  Name: "Cube"
  Transform {
    Location {
      X: 91.1931152
      Y: -3.65222168
      Z: 1284.56909
    }
    Rotation {
      Pitch: 90
      Yaw: -90
      Roll: -90
    }
    Scale {
      X: 14.2138252
      Y: 17.3126545
      Z: 4.20154428
    }
  }
  ParentId: 8932628504793674199
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 3663196600611606098
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:utile"
      Float: 1.65266967
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 0.190000013
        G: 0.105830014
        B: 0.105830014
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
      Id: 15344267039940444735
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
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 16141521046614840113
  Name: "Cube"
  Transform {
    Location {
      X: -533.119385
      Y: -24.730957
      Z: 993.080811
    }
    Rotation {
      Pitch: 85.2449799
      Yaw: 80.28405
      Roll: 74.5845413
    }
    Scale {
      X: 7.32042646
      Y: -10.203743
      Z: 14.0212803
    }
  }
  ParentId: 8932628504793674199
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 0.972000062
        G: 0.0242999792
        A: 1
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 11266072492557105121
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
      Id: 9591959429643442677
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
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 10179534969358355908
  Name: "Cube"
  Transform {
    Location {
      X: -488.913574
      Y: 81.0283203
      Z: -190.642822
    }
    Rotation {
      Pitch: 90
      Yaw: -14.0362549
      Roll: -24.0362549
    }
    Scale {
      X: 18.953886
      Y: -8.97615051
      Z: 15.6993322
    }
  }
  ParentId: 8932628504793674199
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 0.972000062
        G: 0.0242999792
        A: 1
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 11266072492557105121
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
      Id: 9591959429643442677
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
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 6889991158566134712
  Name: "Cube"
  Transform {
    Location {
      X: -117.85318
      Y: -93.5829468
      Z: -789.073792
    }
    Rotation {
      Pitch: 90
      Yaw: -35.2644043
      Roll: -35.2643738
    }
    Scale {
      X: 7.59124565
      Y: -12.4266815
      Z: 26.8512
    }
  }
  ParentId: 8932628504793674199
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 11266072492557105121
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 0.972000062
        G: 0.0242999792
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
      Id: 9591959429643442677
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
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 9831166985995346293
  Name: "Cube"
  Transform {
    Location {
      X: -178.769653
      Y: 44.300293
      Z: -662.65564
    }
    Rotation {
      Pitch: 72.6473923
      Yaw: 10.0013237
      Roll: 0.000701336889
    }
    Scale {
      X: 20.2130661
      Y: -8.97614384
      Z: 23.2985
    }
  }
  ParentId: 8932628504793674199
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 0.972000062
        G: 0.0242999792
        A: 1
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 11266072492557105121
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
      Id: 9591959429643442677
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
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 7398599152865178754
  Name: "Cube"
  Transform {
    Location {
      X: -117.854126
      Y: -132.858337
      Z: -369.559692
    }
    Rotation {
      Pitch: 66.7950134
      Yaw: 89.9999313
      Roll: 89.9999237
    }
    Scale {
      X: 7.59124327
      Y: -11.7052832
      Z: 24.0059853
    }
  }
  ParentId: 8932628504793674199
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 11266072492557105121
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 0.972000062
        G: 0.0242999792
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
      Id: 9591959429643442677
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
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 5782031994604085531
  Name: "Cube"
  Transform {
    Location {
      X: 15.0830078
      Y: -880.391541
      Z: 1037.84583
    }
    Rotation {
      Pitch: 90
      Yaw: -36.869873
      Roll: -126.869843
    }
    Scale {
      X: 1.50255227
      Y: -10.42342
      Z: 7.95276833
    }
  }
  ParentId: 8932628504793674199
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 3663196600611606098
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 0.268
        G: 0.149276018
        B: 0.149276018
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
      Id: 9591959429643442677
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
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 9998632539382706216
  Name: "Cube"
  Transform {
    Location {
      X: 551.390259
      Y: -957.408081
      Z: 1090.54321
    }
    Rotation {
      Yaw: 109.999947
      Roll: 89.9999695
    }
    Scale {
      X: 0.981877685
      Y: -0.5
      Z: 10.9306469
    }
  }
  ParentId: 8932628504793674199
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 3663196600611606098
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 0.268
        G: 0.149276018
        B: 0.149276018
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
      Id: 12095835209017042614
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
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 4243681447907439415
  Name: "Cube"
  Transform {
    Location {
      X: -29.2077026
      Y: 500.319824
      Z: 1674.88403
    }
    Rotation {
      Pitch: -41.2289124
      Yaw: 85.4329147
      Roll: 85.9110947
    }
    Scale {
      X: 2.00000167
      Y: 7.3909812
      Z: 7.13935518
    }
  }
  ParentId: 8932628504793674199
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 0.972000062
        G: 0.0242999792
        A: 1
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 11266072492557105121
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
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
  CoreMesh {
    MeshAsset {
      Id: 16121047485382613212
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
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 1475511593115110263
  Name: "Cube"
  Transform {
    Location {
      X: 2357.12158
      Y: 463.274
      Z: -1072.06494
    }
    Rotation {
      Yaw: -97.6954346
      Roll: -90
    }
    Scale {
      X: 0.981873035
      Y: 0.499997467
      Z: 16.6993313
    }
  }
  ParentId: 8932628504793674199
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 3663196600611606098
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 0.268
        G: 0.149276018
        B: 0.149276018
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
      Id: 12095835209017042614
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
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 7752213240716706644
  Name: "Cube"
  Transform {
    Location {
      X: 1654.62573
      Y: 722.005737
      Z: 1090.54443
    }
    Rotation {
      Pitch: -6.83018879e-06
      Yaw: -92.7104263
      Roll: -89.9999847
    }
    Scale {
      X: 0.981877685
      Y: 0.5
      Z: 10.9306469
    }
  }
  ParentId: 8932628504793674199
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 3663196600611606098
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 0.268
        G: 0.149276018
        B: 0.149276018
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
      Id: 12095835209017042614
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
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 3232936451980516003
  Name: "Cube"
  Transform {
    Location {
      X: 1694.78687
      Y: 5098.87793
      Z: 6084.46436
    }
    Rotation {
      Pitch: -90
      Yaw: 43.3138618
      Roll: 136.686127
    }
    Scale {
      X: 24
      Y: 17.5
      Z: 0.5
    }
  }
  ParentId: 8932628504793674199
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
      Id: 12095835209017042614
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
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 16852479963751894910
  Name: "Cube"
  Transform {
    Location {
      X: 1904.18872
      Y: 5098.87695
      Z: 3704.66528
    }
    Rotation {
      Pitch: -79.9999466
      Yaw: 4.92238e-05
      Roll: 179.999939
    }
    Scale {
      X: 23.9936409
      Y: 3.81380415
      Z: 0.435021579
    }
  }
  ParentId: 8932628504793674199
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
      Id: 12095835209017042614
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
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 10567869405110852140
  Name: "Cube"
  Transform {
    Location {
      X: -117.853882
      Y: 132.858337
      Z: -369.560425
    }
    Rotation {
      Pitch: 66.7950516
      Yaw: -89.9999619
      Roll: -89.9999619
    }
    Scale {
      X: 7.59124327
      Y: 11.7052832
      Z: 24.0059853
    }
  }
  ParentId: 8932628504793674199
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 11266072492557105121
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 0.972000062
        G: 0.0242999792
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
      Id: 9591959429643442677
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
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 629876473498534392
  Name: "Cube"
  Transform {
    Location {
      X: -43.5318604
      Y: 954.365479
      Z: -1001.30847
    }
    Rotation {
      Pitch: 90
      Roll: 88.6936188
    }
    Scale {
      X: 1.5025543
      Y: 8.97405
      Z: 8.75870132
    }
  }
  ParentId: 8932628504793674199
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 3663196600611606098
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 0.268
        G: 0.149276018
        B: 0.149276018
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
      Id: 9591959429643442677
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
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 2246257690144100440
  Name: "Cube"
  Transform {
    Location {
      X: -50.9783936
      Y: 1197.42651
      Z: -38.7503662
    }
    Rotation {
      Yaw: -90
      Roll: -90
    }
    Scale {
      X: 1.70829368
      Y: 23.0364017
      Z: 0.565669656
    }
  }
  ParentId: 8932628504793674199
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 3663196600611606098
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 0.268
        G: 0.149276018
        B: 0.149276018
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
      Id: 12095835209017042614
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
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 791394613955460436
  Name: "Cube"
  Transform {
    Location {
      X: -56.5823975
      Y: 159.343231
      Z: -192.41864
    }
    Rotation {
      Pitch: 90
      Yaw: -67.0102539
      Roll: -67.0102539
    }
    Scale {
      X: 18.2351589
      Y: 10.9463139
      Z: 25.6706905
    }
  }
  ParentId: 8932628504793674199
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 11266072492557105121
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 0.972000062
        G: 0.0242999792
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
      Id: 9591959429643442677
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
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 3352897848979295431
  Name: "Cube"
  Transform {
    Location {
      X: -1378.08484
      Y: 17.8618164
      Z: -1397.24756
    }
    Rotation {
      Pitch: 35.2526894
      Yaw: -94.7409668
      Roll: -90.6394043
    }
    Scale {
      X: 3.52121449
      Y: 5.5301671
      Z: 8.05874538
    }
  }
  ParentId: 8932628504793674199
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 1452491879134265234
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 0.190000013
        G: 0.105830006
        B: 0.105830006
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
      Id: 16965777294932964901
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
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 4325373002286789208
  Name: "Cube"
  Transform {
    Location {
      X: -17.5399475
      Y: 646.336426
      Z: 1546.51782
    }
    Rotation {
      Pitch: -41.2288818
      Yaw: 85.4329
      Roll: 85.9110794
    }
    Scale {
      X: 2.00000167
      Y: 7.3909812
      Z: 7.13935518
    }
  }
  ParentId: 8932628504793674199
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 0.972000062
        G: 0.0242999792
        A: 1
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 11266072492557105121
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
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
  CoreMesh {
    MeshAsset {
      Id: 16121047485382613212
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
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 7880378831145888727
  Name: "Cube"
  Transform {
    Location {
      X: -14.0805054
      Y: 710.702148
      Z: 1458.82202
    }
    Rotation {
      Pitch: -53.6830444
      Yaw: 86.9254456
      Roll: 84.8048706
    }
    Scale {
      X: 2.00000167
      Y: 7.3909812
      Z: 7.13935518
    }
  }
  ParentId: 8932628504793674199
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 0.972000062
        G: 0.0242999792
        A: 1
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 11266072492557105121
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
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
  CoreMesh {
    MeshAsset {
      Id: 16121047485382613212
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
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 10521633515536942965
  Name: "Cube"
  Transform {
    Location {
      X: -14.0805359
      Y: 777.788574
      Z: 1300.86255
    }
    Rotation {
      Pitch: -66.9886475
      Yaw: 89.9999619
      Roll: 82.1150742
    }
    Scale {
      X: 2.00000167
      Y: 7.3909812
      Z: 7.13935518
    }
  }
  ParentId: 8932628504793674199
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 0.972000062
        G: 0.0242999792
        A: 1
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 11266072492557105121
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
      Id: 16121047485382613212
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
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 10994146280496048482
  Name: "Cube"
  Transform {
    Location {
      X: -14.0805054
      Y: 756.239746
      Z: 1383.36646
    }
    Rotation {
      Pitch: -66.8455505
      Yaw: 83.2655792
      Roll: 88.3114777
    }
    Scale {
      X: 2.00000167
      Y: 7.3909812
      Z: 7.13935518
    }
  }
  ParentId: 8932628504793674199
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 0.972000062
        G: 0.0242999792
        A: 1
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 11266072492557105121
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
      Id: 16121047485382613212
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
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 660222928125826659
  Name: "Cube"
  Transform {
    Location {
      X: -36.5169678
      Y: 333.083496
      Z: 1284.75732
    }
    Rotation {
      Pitch: 82.1329269
      Yaw: -92.0059509
      Roll: -89.9993
    }
    Scale {
      X: 15.9070377
      Y: 2.79917932
      Z: 0.720792651
    }
  }
  ParentId: 8932628504793674199
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 0.972000062
        G: 0.0242999792
        A: 1
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 11266072492557105121
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
      Id: 12095835209017042614
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
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 13232820487315974893
  Name: "Cube"
  Transform {
    Location {
      X: -36.5169678
      Y: 333.083496
      Z: 1284.75732
    }
    Rotation {
      Pitch: 76.2299576
      Yaw: 87.9940567
      Roll: 90.0000229
    }
    Scale {
      X: 15.9070377
      Y: 2.79917932
      Z: 0.720792651
    }
  }
  ParentId: 8932628504793674199
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 0.972000062
        G: 0.0242999792
        A: 1
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 11266072492557105121
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
      Id: 12095835209017042614
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
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 8632744082987718699
  Name: "Cube"
  Transform {
    Location {
      X: -36.5169678
      Y: 333.083496
      Z: 1284.75732
    }
    Rotation {
      Pitch: -34.5205193
      Yaw: -92.0019379
      Roll: -90.0002136
    }
    Scale {
      X: 15.9070377
      Y: 2.79917932
      Z: 0.720792651
    }
  }
  ParentId: 8932628504793674199
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 0.972000062
        G: 0.0242999792
        A: 1
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 11266072492557105121
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
      Id: 12095835209017042614
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
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 10996172758276188691
  Name: "Cube"
  Transform {
    Location {
      X: -36.5169678
      Y: 333.083496
      Z: 1284.75732
    }
    Rotation {
      Pitch: -16.4196243
      Yaw: -92.0020523
      Roll: -90.0001678
    }
    Scale {
      X: 15.9070377
      Y: 2.79917932
      Z: 0.720792651
    }
  }
  ParentId: 8932628504793674199
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 0.972000062
        G: 0.0242999792
        A: 1
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 11266072492557105121
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
      Id: 12095835209017042614
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
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 10428883508542484755
  Name: "Cube"
  Transform {
    Location {
      X: -36.5169678
      Y: 333.083496
      Z: 1284.75732
    }
    Rotation {
      Pitch: 3.12987256
      Yaw: -92.0029831
      Roll: -89.9999
    }
    Scale {
      X: 15.9070377
      Y: 2.79917932
      Z: 0.720792651
    }
  }
  ParentId: 8932628504793674199
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 0.972000062
        G: 0.0242999792
        A: 1
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 11266072492557105121
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
      Id: 12095835209017042614
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
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 3306302666146831563
  Name: "Cube"
  Transform {
    Location {
      X: -36.5169678
      Y: 333.083496
      Z: 1284.75732
    }
    Rotation {
      Pitch: 18.1025143
      Yaw: -92.0062408
      Roll: -90.0000839
    }
    Scale {
      X: 15.9070377
      Y: 2.79917932
      Z: 0.720792651
    }
  }
  ParentId: 8932628504793674199
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 0.972000062
        G: 0.0242999792
        A: 1
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 11266072492557105121
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
      Id: 12095835209017042614
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
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 9277253111448181294
  Name: "Cube"
  Transform {
    Location {
      X: -36.5169678
      Y: 333.083496
      Z: 1284.75732
    }
    Rotation {
      Pitch: 35.7020454
      Yaw: -92.0057907
      Roll: -89.9999161
    }
    Scale {
      X: 15.9070377
      Y: 2.79917932
      Z: 0.720792651
    }
  }
  ParentId: 8932628504793674199
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 0.972000062
        G: 0.0242999792
        A: 1
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 11266072492557105121
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
      Id: 12095835209017042614
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
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 5031188605762820109
  Name: "Cube"
  Transform {
    Location {
      X: -36.5169678
      Y: 333.083496
      Z: 1284.75732
    }
    Rotation {
      Pitch: 51.7276878
      Yaw: -92.0059052
      Roll: -89.9999847
    }
    Scale {
      X: 15.9070377
      Y: 2.79917932
      Z: 0.720792651
    }
  }
  ParentId: 8932628504793674199
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 0.972000062
        G: 0.0242999792
        A: 1
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 11266072492557105121
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
      Id: 12095835209017042614
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
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 16158774603595036411
  Name: "Cube"
  Transform {
    Location {
      X: -36.5169678
      Y: 333.083496
      Z: 1284.75732
    }
    Rotation {
      Pitch: 70.2477951
      Yaw: -92.0059
      Roll: -89.9999695
    }
    Scale {
      X: 15.9070377
      Y: 2.79917932
      Z: 0.720792651
    }
  }
  ParentId: 8932628504793674199
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 0.972000062
        G: 0.0242999792
        A: 1
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 11266072492557105121
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
      Id: 12095835209017042614
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
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 8423382282466216431
  Name: "Cube"
  Transform {
    Location {
      X: -36.5169678
      Y: 333.083496
      Z: 1284.75732
    }
    Rotation {
      Pitch: 55.4017715
      Yaw: 87.9940109
      Roll: 89.9999771
    }
    Scale {
      X: 15.9070377
      Y: 2.79917932
      Z: 0.720792651
    }
  }
  ParentId: 8932628504793674199
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 0.972000062
        G: 0.0242999792
        A: 1
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 11266072492557105121
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
      Id: 12095835209017042614
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
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 11735372799166669709
  Name: "Cube"
  Transform {
    Location {
      X: 2150.13037
      Y: 2616.06494
      Z: 752.585205
    }
    Rotation {
      Pitch: 8.29776382
      Yaw: -90
      Roll: -90
    }
    Scale {
      X: 12.3007612
      Y: 12.0505905
      Z: 0.577358842
    }
  }
  ParentId: 8932628504793674199
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
      Id: 15344267039940444735
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
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 7197868311859750529
  Name: "Cube"
  Transform {
    Location {
      X: -554.815674
      Y: 24.7452393
      Z: 993.073181
    }
    Rotation {
      Pitch: 85.2449799
      Yaw: -80.2840576
      Roll: -74.5845642
    }
    Scale {
      X: 8.81866169
      Y: 10.203742
      Z: 12.8973045
    }
  }
  ParentId: 8932628504793674199
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 0.972000062
        G: 0.0242999792
        A: 1
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 11266072492557105121
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
      Id: 9591959429643442677
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
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 15746873879751402128
  Name: "Cube"
  Transform {
    Location {
      X: -48.7501221
      Y: 333.510742
      Z: 1284.75732
    }
    Rotation {
      Pitch: -34.5204887
      Yaw: -92.0019379
      Roll: -90.0002213
    }
    Scale {
      X: 2
      Y: 8.00000095
      Z: 13
    }
  }
  ParentId: 8932628504793674199
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 0.972000062
        G: 0.0242999792
        A: 1
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 11266072492557105121
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
      Id: 9591959429643442677
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
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 4691725378805030708
  Name: "Cube"
  Transform {
    Location {
      X: -48.7501221
      Y: 333.510742
      Z: 1284.75732
    }
    Rotation {
      Pitch: -16.4195824
      Yaw: -92.0020523
      Roll: -90.0001678
    }
    Scale {
      X: 2
      Y: 8.00000095
      Z: 13
    }
  }
  ParentId: 8932628504793674199
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 0.972000062
        G: 0.0242999792
        A: 1
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 11266072492557105121
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
      Id: 9591959429643442677
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
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 16315386025545576470
  Name: "Cube"
  Transform {
    Location {
      X: -48.7501221
      Y: 333.510742
      Z: 1284.75732
    }
    Rotation {
      Pitch: 3.12987256
      Yaw: -92.0029831
      Roll: -89.9999
    }
    Scale {
      X: 2
      Y: 8.00000095
      Z: 13
    }
  }
  ParentId: 8932628504793674199
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 0.972000062
        G: 0.0242999792
        A: 1
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 11266072492557105121
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
      Id: 9591959429643442677
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
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 6580463597485107040
  Name: "Cube"
  Transform {
    Location {
      X: -48.7501221
      Y: 333.510742
      Z: 1284.75732
    }
    Rotation {
      Pitch: 18.1024933
      Yaw: -92.0062408
      Roll: -90.0000763
    }
    Scale {
      X: 2
      Y: 8.00000095
      Z: 13
    }
  }
  ParentId: 8932628504793674199
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 0.972000062
        G: 0.0242999792
        A: 1
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 11266072492557105121
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
      Id: 9591959429643442677
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
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 17516172293542552281
  Name: "Cube"
  Transform {
    Location {
      X: -48.7501221
      Y: 333.510742
      Z: 1284.75732
    }
    Rotation {
      Pitch: 35.7020454
      Yaw: -92.0057907
      Roll: -89.9999161
    }
    Scale {
      X: 2
      Y: 8.00000095
      Z: 13
    }
  }
  ParentId: 8932628504793674199
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 0.972000062
        G: 0.0242999792
        A: 1
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 11266072492557105121
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
      Id: 9591959429643442677
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
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 17164727527384294143
  Name: "Cube"
  Transform {
    Location {
      X: -48.7501221
      Y: 333.510742
      Z: 1284.75732
    }
    Rotation {
      Pitch: 51.7276535
      Yaw: -92.0059052
      Roll: -89.9999847
    }
    Scale {
      X: 2
      Y: 8.00000095
      Z: 13
    }
  }
  ParentId: 8932628504793674199
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 0.972000062
        G: 0.0242999792
        A: 1
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 11266072492557105121
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
      Id: 9591959429643442677
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
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 6266692147213214797
  Name: "Cube"
  Transform {
    Location {
      X: -48.7501221
      Y: 333.510742
      Z: 1284.75732
    }
    Rotation {
      Pitch: 70.2477951
      Yaw: -92.0059
      Roll: -89.9999695
    }
    Scale {
      X: 2
      Y: 8.00000095
      Z: 13
    }
  }
  ParentId: 8932628504793674199
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 0.972000062
        G: 0.0242999792
        A: 1
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 11266072492557105121
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
      Id: 9591959429643442677
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
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 18311426442408315
  Name: "Cube"
  Transform {
    Location {
      X: -48.7501221
      Y: 333.510742
      Z: 1284.75732
    }
    Rotation {
      Pitch: 90
      Yaw: -3.57633519
      Roll: -1.57040405
    }
    Scale {
      X: 2
      Y: 8.00000095
      Z: 13
    }
  }
  ParentId: 8932628504793674199
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 0.972000062
        G: 0.0242999792
        A: 1
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 11266072492557105121
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
      Id: 9591959429643442677
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
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 9341944408042376815
  Name: "Cube"
  Transform {
    Location {
      X: -89.43927
      Y: 0.0933837891
      Z: 1554.99
    }
    Rotation {
      Yaw: -90
      Roll: -88.5938721
    }
    Scale {
      X: 11.6300411
      Y: 9.94086456
      Z: 17.6847038
    }
  }
  ParentId: 8932628504793674199
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 1452491879134265234
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 0.190000013
        G: 0.105830006
        B: 0.105830006
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
      Id: 4254600365676196018
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
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 4017756860636334060
  Name: "Cube"
  Transform {
    Location {
      X: -178.770142
      Y: -44.300293
      Z: -662.656372
    }
    Rotation {
      Pitch: 72.6474609
      Yaw: -10.0012512
      Roll: -0.000671386719
    }
    Scale {
      X: 20.2130661
      Y: 8.97614384
      Z: 23.2985
    }
  }
  ParentId: 8932628504793674199
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 0.972000062
        G: 0.0242999792
        A: 1
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 11266072492557105121
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
      Id: 9591959429643442677
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
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 2511689302643681447
  Name: "Cube"
  Transform {
    Location {
      X: 1068.32764
      Y: -0.00695800781
      Z: -0.0119628906
    }
    Rotation {
      Yaw: -90
      Roll: -90
    }
    Scale {
      X: 16.1552811
      Y: 23.5736427
      Z: 0.519160032
    }
  }
  ParentId: 8932628504793674199
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 3663196600611606098
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 0.268
        G: 0.149276018
        B: 0.149276018
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
      Id: 12095835209017042614
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
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 7100871151591773961
  Name: "Cube"
  Transform {
    Location {
      X: 2165.72
      Y: 2389.25854
      Z: 2510.53247
    }
    Rotation {
      Yaw: -90
      Roll: -90
    }
    Scale {
      X: 28.9128094
      Y: 28.5442429
      Z: 0.435019016
    }
  }
  ParentId: 8932628504793674199
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
      Id: 12095835209017042614
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
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 2919589465231939104
  Name: "Cube"
  Transform {
    Location {
      X: 2166.18457
      Y: 475.325928
      Z: 2043.72937
    }
    Rotation {
      Pitch: -6.83018879e-06
      Yaw: -89.9999924
      Roll: -89.9999847
    }
    Scale {
      X: 20.5842171
      Y: 20.1655807
      Z: 0.435019016
    }
  }
  ParentId: 8932628504793674199
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
      Id: 12095835209017042614
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
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 5109274139691347901
  Name: "Cube"
  Transform {
    Location {
      X: 551.391846
      Y: -738.237122
      Z: 770.08075
    }
    Rotation {
      Pitch: -6.83018879e-06
      Yaw: -89.9999924
      Roll: -89.9999847
    }
    Scale {
      X: 0.491231918
      Y: 0.588199556
      Z: 10.5107546
    }
  }
  ParentId: 8932628504793674199
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
      Id: 12095835209017042614
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
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 12179561231558633490
  Name: "Cube"
  Transform {
    Location {
      X: 551.391724
      Y: 957.408081
      Z: 1090.54456
    }
    Rotation {
      Pitch: -6.83018879e-06
      Yaw: -109.999977
      Roll: -89.9999771
    }
    Scale {
      X: 0.981877685
      Y: 0.5
      Z: 10.9306469
    }
  }
  ParentId: 8932628504793674199
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 3663196600611606098
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 0.268
        G: 0.149276018
        B: 0.149276018
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
      Id: 12095835209017042614
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
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 7801528504436220711
  Name: "Cube"
  Transform {
    Location {
      X: 347.295715
      Y: 1013.8114
      Z: 824.493103
    }
    Rotation {
      Yaw: -109.266205
      Roll: -90
    }
    Scale {
      X: 0.981867433
      Y: 0.164215013
      Z: 8.48946476
    }
  }
  ParentId: 8932628504793674199
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 3663196600611606098
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 0.268
        G: 0.149276018
        B: 0.149276018
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
      Id: 12095835209017042614
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
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 5092287706062133957
  Name: "Cube"
  Transform {
    Location {
      X: 347.286133
      Y: 1013.73523
      Z: 472.395508
    }
    Rotation {
      Yaw: -109.266205
      Roll: -90
    }
    Scale {
      X: 0.981867433
      Y: 0.164215013
      Z: 8.48946476
    }
  }
  ParentId: 8932628504793674199
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 3663196600611606098
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 0.268
        G: 0.149276018
        B: 0.149276018
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
      Id: 12095835209017042614
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
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 15170664005136053150
  Name: "Cube"
  Transform {
    Location {
      X: 461.862793
      Y: 973.637
      Z: 386.165039
    }
    Rotation {
      Yaw: -109.266174
    }
    Scale {
      X: 0.981868684
      Y: 0.164214671
      Z: 11.9825945
    }
  }
  ParentId: 8932628504793674199
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 3663196600611606098
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 0.268
        G: 0.149276018
        B: 0.149276018
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
      Id: 12095835209017042614
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
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 10261249138450070478
  Name: "Cube"
  Transform {
    Location {
      X: 333.640625
      Y: 1036.6189
      Z: -1075.33777
    }
    Rotation {
      Yaw: -109.999969
      Roll: -89.9999695
    }
    Scale {
      X: 0.981875658
      Y: 0.499999315
      Z: 7.9306221
    }
  }
  ParentId: 8932628504793674199
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 3663196600611606098
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 0.268
        G: 0.149276018
        B: 0.149276018
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
      Id: 12095835209017042614
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
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 9627926518772378511
  Name: "Cube"
  Transform {
    Location {
      X: 2091.7373
      Z: 1083.26587
    }
    Rotation {
      Pitch: -6.83018879e-06
      Yaw: -89.9999924
      Roll: -89.9999847
    }
    Scale {
      X: 11.1145878
      Y: 10.8849735
      Z: 1.77752948
    }
  }
  ParentId: 8932628504793674199
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
      Id: 15344267039940444735
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
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 2861612882475612835
  Name: "Cube"
  Transform {
    Location {
      X: -488.912628
      Y: -81.0297546
      Z: -234.568481
    }
    Rotation {
      Pitch: 90
      Yaw: 1.43209624
      Roll: 11.432107
    }
    Scale {
      X: 18.9538841
      Y: 8.97615051
      Z: 19.35112
    }
  }
  ParentId: 8932628504793674199
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 0.972000062
        G: 0.0242999792
        A: 1
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 11266072492557105121
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
      Id: 9591959429643442677
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
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 3219700110173847819
  Name: "Cube"
  Transform {
    Location {
      X: -1333.92102
      Y: 99.3839264
      Z: 469.44458
    }
    Rotation {
      Pitch: 28.7647114
      Yaw: -92.580658
      Roll: -105.202805
    }
    Scale {
      X: 3.90165305
      Y: 5.20941
      Z: 14.5000162
    }
  }
  ParentId: 8932628504793674199
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 1452491879134265234
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 0.190000013
        G: 0.105830006
        B: 0.105830006
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
      Id: 12095835209017042614
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
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 5206275816038318135
  Name: "Cube"
  Transform {
    Location {
      X: -715.002686
      Y: -180.90509
      Z: 783.38623
    }
    Rotation {
      Pitch: 90
      Yaw: -2.38594413
      Roll: 20.8873043
    }
    Scale {
      X: 12.2606621
      Y: 7.75446
      Z: 10.1343498
    }
  }
  ParentId: 8932628504793674199
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 0.972000062
        G: 0.0242999792
        A: 1
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 11266072492557105121
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
      Id: 9591959429643442677
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
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 5322126122079890941
  Name: "Cube"
  Transform {
    Location {
      X: -273.935974
      Y: 812.626343
      Z: 1011.11029
    }
    Rotation {
      Yaw: -90
      Roll: -90
    }
    Scale {
      X: 2.91542149
      Y: 5.38699484
      Z: 3.77671146
    }
  }
  ParentId: 8932628504793674199
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 1452491879134265234
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 0.190000013
        G: 0.105830006
        B: 0.105830006
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
      Id: 12095835209017042614
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
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 7374241718844246697
  Name: "Cube"
  Transform {
    Location {
      X: -3.6151123
      Y: -3.81469727e-06
      Z: -38.759758
    }
    Rotation {
      Pitch: -6.83018879e-06
      Yaw: -89.9999924
      Roll: -89.9999847
    }
    Scale {
      X: 19.6881084
      Y: 20.1134453
      Z: 0.9968611
    }
  }
  ParentId: 8932628504793674199
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 11266072492557105121
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 0.972000062
        G: 0.0242999792
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
      Id: 12095835209017042614
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
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 13080011913036952865
  Name: "Cube"
  Transform {
    Location {
      X: -50.9419861
      Y: 880.391602
      Z: 1037.83655
    }
    Rotation {
      Pitch: 90
      Roll: 85.7998047
    }
    Scale {
      X: 1.50255477
      Y: 8.97404671
      Z: 7.95277691
    }
  }
  ParentId: 8932628504793674199
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 3663196600611606098
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 0.268
        G: 0.149276018
        B: 0.149276018
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
      Id: 9591959429643442677
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
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 10290508546292329942
  Name: "Cube"
  Transform {
    Location {
      X: -117.853607
      Y: 93.5829468
      Z: -789.074646
    }
    Rotation {
      Pitch: 90
      Roll: -1.67559814
    }
    Scale {
      X: 7.59124565
      Y: 12.4266815
      Z: 26.8512
    }
  }
  ParentId: 8932628504793674199
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 11266072492557105121
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 0.972000062
        G: 0.0242999792
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
      Id: 9591959429643442677
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
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 11346812838132726843
  Name: "Cube"
  Transform {
    Location {
      X: -59.1407356
      Y: 3.81469727e-06
      Z: 1.14440918e-05
    }
    Rotation {
    }
    Scale {
      X: 40.5
      Y: 23.662674
      Z: 21
    }
  }
  ParentId: 8932628504793674199
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 0.268
        G: 0.149276018
        B: 0.149276018
        A: 1
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 3663196600611606098
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
      Id: 14448249526906174522
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
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 2000129639166084595
  Name: "Cube"
  Transform {
    Location {
      X: 743.550781
      Y: -0.00152587891
      Z: -0.00695800781
    }
    Rotation {
      Yaw: -90
      Roll: -90
    }
    Scale {
      X: 19.3249626
      Y: 23.4981194
      Z: 0.9968611
    }
  }
  ParentId: 8932628504793674199
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 3663196600611606098
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 0.268
        G: 0.149276018
        B: 0.149276018
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
      Id: 12095835209017042614
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
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 15967480598186286025
  Name: "Cube"
  Transform {
    Location {
      X: 1044.29651
      Y: -0.00109863281
      Z: -0.000732421875
    }
    Rotation {
    }
    Scale {
      X: 27.7918358
      Y: 15.8636637
      Z: 21.1520195
    }
  }
  ParentId: 8932628504793674199
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 0.252651
        G: 0.371000022
        B: 0.32174632
        A: 1
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 3663196600611606098
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
      Id: 14448249526906174522
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
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 2233633901287476226
  Name: "Background"
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
  ParentId: 8245028879746446203
  ChildIds: 2729065801855661460
  ChildIds: 7976396053893117703
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
  Id: 7976396053893117703
  Name: "Cube"
  Transform {
    Location {
      X: 1645.76855
      Y: 1458.73633
      Z: 7906.92969
    }
    Rotation {
      Pitch: -90
      Roll: 1.08279324
    }
    Scale {
      X: 1.00000012
      Y: 100.779182
      Z: 83.4957504
    }
  }
  ParentId: 2233633901287476226
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
      Id: 12095835209017042614
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
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 2729065801855661460
  Name: "Cube"
  Transform {
    Location {
      X: 1470.82227
      Y: -3486.45898
      Z: 7906.92969
    }
    Rotation {
      Pitch: -90
      Roll: 33.9539642
    }
    Scale {
      X: 1
      Y: 34.2234
      Z: 83.4956055
    }
  }
  ParentId: 2233633901287476226
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
      Id: 12095835209017042614
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
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 3985813606936789869
  Name: "Rocks"
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
  ParentId: 8245028879746446203
  ChildIds: 16165489946900780818
  ChildIds: 11463895990563498832
  ChildIds: 3164651413645629268
  ChildIds: 18002107330159846747
  ChildIds: 16052596772062332514
  ChildIds: 13846966353370118171
  ChildIds: 3026286285295778624
  ChildIds: 3202361044521245520
  ChildIds: 4242592332979755949
  ChildIds: 4379569785795589524
  ChildIds: 4659158898465392675
  ChildIds: 4995156288077997993
  ChildIds: 15923169320370534136
  ChildIds: 8519000993318014099
  ChildIds: 5182459854659825191
  ChildIds: 14785170342783890449
  ChildIds: 667945333906875256
  ChildIds: 14729577946700624915
  ChildIds: 10471634024367359282
  ChildIds: 11130032052875844632
  ChildIds: 9388637261903145596
  ChildIds: 18036845061595318944
  ChildIds: 4595095762662155845
  ChildIds: 10717242884459861097
  ChildIds: 14333067950409454009
  ChildIds: 10950490452614549150
  ChildIds: 8894672266549727402
  ChildIds: 5778405926705815834
  ChildIds: 12524895601942467179
  ChildIds: 8214702717793283586
  ChildIds: 13057925667465726831
  ChildIds: 16349602118014490517
  ChildIds: 16732916554683492750
  ChildIds: 8306141473321725935
  ChildIds: 7533160009074582397
  ChildIds: 11040592178660270568
  ChildIds: 12132263486245319764
  ChildIds: 2810575580866645467
  ChildIds: 12939807741559770748
  ChildIds: 4318482856693558028
  ChildIds: 15926290658518094609
  ChildIds: 6086839362576563318
  ChildIds: 10137575737022547770
  ChildIds: 11823777572633445330
  ChildIds: 8666921945590618321
  ChildIds: 13629078479645073880
  ChildIds: 4818132740377724226
  ChildIds: 9093128637438555367
  ChildIds: 14079616995962549025
  ChildIds: 1638108078208221294
  ChildIds: 1094890292556838932
  ChildIds: 5164008385687980168
  ChildIds: 5880869571509195471
  ChildIds: 4157250493939408186
  ChildIds: 13859412932333769628
  ChildIds: 6036105352941888622
  ChildIds: 17462848615876133019
  ChildIds: 1493713045228495762
  ChildIds: 2725083917034495923
  ChildIds: 12173325505860315355
  ChildIds: 5145888625110481169
  ChildIds: 15809108304748012309
  ChildIds: 13989079704361118965
  ChildIds: 3946607785697161020
  ChildIds: 12268450040267177286
  ChildIds: 18157265554287844003
  ChildIds: 7849833189215331971
  ChildIds: 8263014016195761578
  ChildIds: 61021156716933614
  ChildIds: 13988738756129354654
  ChildIds: 10535378952689786133
  ChildIds: 16421398296471554069
  ChildIds: 4770088072005538054
  ChildIds: 8927843903000862755
  ChildIds: 17027092309871835657
  ChildIds: 14689492788126905944
  ChildIds: 9410362286708146961
  ChildIds: 15116070381461361152
  ChildIds: 7229231391636576193
  ChildIds: 17602478521225166374
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
  Id: 17602478521225166374
  Name: "Rock Flat 02"
  Transform {
    Location {
      X: 2532.56885
      Y: -6373.91406
      Z: 9924.8291
    }
    Rotation {
      Pitch: 27.8080139
      Yaw: 116.289085
      Roll: -24.5864563
    }
    Scale {
      X: 3.01625848
      Y: 3.64377689
      Z: 4.33334732
    }
  }
  ParentId: 3985813606936789869
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
      Id: 12095835209017042614
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
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 7229231391636576193
  Name: "Rock Flat 02"
  Transform {
    Location {
      X: -2230.36499
      Y: -3139.79199
      Z: -1185.28357
    }
    Rotation {
      Pitch: 86.3229294
      Yaw: -104.7686
      Roll: 41.216156
    }
    Scale {
      X: 63.8827209
      Y: 37.0519676
      Z: 29.3860397
    }
  }
  ParentId: 3985813606936789869
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
      Id: 12400448753535710169
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
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 15116070381461361152
  Name: "Rock Flat 02"
  Transform {
    Location {
      X: -679.962769
      Y: -5202.32
      Z: -1101.76953
    }
    Rotation {
      Pitch: -86.7308502
      Yaw: 1.65517461
      Roll: 32.2583771
    }
    Scale {
      X: 50.0000076
      Y: 29
      Z: 23
    }
  }
  ParentId: 3985813606936789869
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
      Id: 12400448753535710169
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
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 9410362286708146961
  Name: "Rock Flat 02"
  Transform {
    Location {
      X: 1885.8374
      Y: 2505.15527
      Z: 511.137817
    }
    Rotation {
      Pitch: -84.0322723
      Yaw: -157.298401
      Roll: 16.1655121
    }
    Scale {
      X: 8.81059837
      Y: 9.80749226
      Z: 12.0232687
    }
  }
  ParentId: 3985813606936789869
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
      Id: 2023125884763063182
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
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 14689492788126905944
  Name: "Rock Flat 02"
  Transform {
    Location {
      X: 3881.87598
      Y: 1304.99854
      Z: 527.118652
    }
    Rotation {
      Pitch: -72.8115387
      Yaw: 112.821976
      Roll: 110.269028
    }
    Scale {
      X: 8.81059837
      Y: 9.80749226
      Z: 12.0232687
    }
  }
  ParentId: 3985813606936789869
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
      Id: 2023125884763063182
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
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 17027092309871835657
  Name: "Rock Flat 02"
  Transform {
    Location {
      X: 813.632324
      Y: -8898.11914
      Z: 5292.86328
    }
    Rotation {
      Pitch: -79.8490677
      Yaw: -132.46376
      Roll: 143.956131
    }
    Scale {
      X: 8.72883224
      Y: 16.6049328
      Z: 9.96631241
    }
  }
  ParentId: 3985813606936789869
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
      Id: 2023125884763063182
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
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 8927843903000862755
  Name: "Rock Flat 02"
  Transform {
    Location {
      X: 699.125488
      Y: -22080.1582
      Z: -1764.37134
    }
    Rotation {
      Pitch: -87.4954681
      Yaw: -124.275955
      Roll: 41.9024734
    }
    Scale {
      X: 12.5965929
      Y: 7.5243926
      Z: 87.0038681
    }
  }
  ParentId: 3985813606936789869
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
      Id: 2023125884763063182
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
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 4770088072005538054
  Name: "Rock Flat 02"
  Transform {
    Location {
      X: 8975.66211
      Y: -20975.9238
      Z: -2008.16284
    }
    Rotation {
      Pitch: -87.4954681
      Yaw: -124.275925
      Roll: 41.902504
    }
    Scale {
      X: 12.5965929
      Y: 7.5243926
      Z: 87.0038681
    }
  }
  ParentId: 3985813606936789869
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
      Id: 2023125884763063182
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
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 16421398296471554069
  Name: "Rock Flat 02"
  Transform {
    Location {
      X: 8116.68115
      Y: -14584.1016
      Z: -2218.03076
    }
    Rotation {
      Pitch: -87.4954681
      Yaw: -124.276184
      Roll: 41.9025536
    }
    Scale {
      X: 12.5965929
      Y: 7.5243926
      Z: 87.0038681
    }
  }
  ParentId: 3985813606936789869
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
      Id: 2023125884763063182
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
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 10535378952689786133
  Name: "Rock Flat 02"
  Transform {
    Location {
      X: 752.275635
      Y: -17165.8047
      Z: -979.621094
    }
    Rotation {
      Pitch: -81.3566055
      Yaw: -124.047646
      Roll: 128.976883
    }
    Scale {
      X: 8.72883
      Y: 48.2262497
      Z: 9.96629715
    }
  }
  ParentId: 3985813606936789869
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
      Id: 2023125884763063182
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
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 13988738756129354654
  Name: "Rock Flat 02"
  Transform {
    Location {
      X: 328.787842
      Y: -12556.7871
      Z: -1524.09119
    }
    Rotation {
      Pitch: -83.0650177
      Yaw: -99.4839096
      Roll: 104.630615
    }
    Scale {
      X: 8.72883224
      Y: 16.6049328
      Z: 9.96631241
    }
  }
  ParentId: 3985813606936789869
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
      Id: 2023125884763063182
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
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 61021156716933614
  Name: "Rock Flat 02"
  Transform {
    Location {
      X: -143.190918
      Y: -9814.66406
      Z: -1847.9845
    }
    Rotation {
      Pitch: 80.9246674
      Yaw: 52.6729279
      Roll: 47.7821732
    }
    Scale {
      X: 8.72883224
      Y: 16.6049328
      Z: 9.96631241
    }
  }
  ParentId: 3985813606936789869
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
      Id: 2023125884763063182
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
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 8263014016195761578
  Name: "Rock Flat 02"
  Transform {
    Location {
      X: -3317.80981
      Y: 535.523926
      Z: 3513.01953
    }
    Rotation {
      Pitch: 50.8227959
      Yaw: 11.2827215
      Roll: 146.433273
    }
    Scale {
      X: 10.1251631
      Y: 10.1251678
      Z: 13.4264011
    }
  }
  ParentId: 3985813606936789869
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
      Id: 2023125884763063182
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
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 7849833189215331971
  Name: "Rock Flat 02"
  Transform {
    Location {
      X: -3925.78418
      Y: -3381.7915
      Z: 4643.38086
    }
    Rotation {
      Pitch: -59.7110939
      Yaw: -172.213135
      Roll: 169.993683
    }
    Scale {
      X: 10.1251631
      Y: 10.1251678
      Z: 13.4264011
    }
  }
  ParentId: 3985813606936789869
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
      Id: 2023125884763063182
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
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 18157265554287844003
  Name: "Rock Flat 02"
  Transform {
    Location {
      X: -2479.76367
      Y: -5197.47168
      Z: 4513.35352
    }
    Rotation {
      Pitch: -78.4434433
      Yaw: -155.394943
      Roll: 176.219055
    }
    Scale {
      X: 10.1251631
      Y: 10.1251678
      Z: 13.4264011
    }
  }
  ParentId: 3985813606936789869
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
      Id: 2023125884763063182
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
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 12268450040267177286
  Name: "Rock Flat 02"
  Transform {
    Location {
      X: 4112.64844
      Y: -1856.88037
      Z: -2298.73633
    }
    Rotation {
      Pitch: 33.1917763
      Yaw: -85.570549
      Roll: -3.42791724
    }
    Scale {
      X: 4.79921532
      Y: 4.79921961
      Z: 13.4195576
    }
  }
  ParentId: 3985813606936789869
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
      Id: 2023125884763063182
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
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 3946607785697161020
  Name: "Rock Flat 02"
  Transform {
    Location {
      X: 4355.99951
      Y: -3749.17725
      Z: -2977.05908
    }
    Rotation {
      Pitch: -87.1314545
      Yaw: 7.47992229
      Roll: -91.171669
    }
    Scale {
      X: 4.79921532
      Y: 4.79921961
      Z: 13.4195576
    }
  }
  ParentId: 3985813606936789869
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
      Id: 2023125884763063182
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
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 13989079704361118965
  Name: "Rock Flat 02"
  Transform {
    Location {
      X: 5648.5249
      Y: -20046.8691
      Z: -2575.73584
    }
    Rotation {
      Pitch: -15.5923986
      Yaw: 152.995026
      Roll: 79.6905289
    }
    Scale {
      X: 2.77167606
      Y: 29.8653469
      Z: 16.5704308
    }
  }
  ParentId: 3985813606936789869
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 0.131000012
        G: 0.131000012
        B: 0.131000012
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
      Id: 2023125884763063182
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
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 15809108304748012309
  Name: "Rock Flat 02"
  Transform {
    Location {
      X: 7404.67627
      Y: -14638.4355
      Z: 1363.41052
    }
    Rotation {
      Pitch: -71.2640762
      Yaw: 2.15112686
      Roll: -84.1919937
    }
    Scale {
      X: 3.56423402
      Y: 3.56424236
      Z: 71.4300385
    }
  }
  ParentId: 3985813606936789869
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
      Id: 2023125884763063182
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
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 5145888625110481169
  Name: "Rock Flat 02"
  Transform {
    Location {
      X: 5501.09814
      Y: -15075.7148
      Z: 3741.43701
    }
    Rotation {
      Pitch: -18.585022
      Yaw: 7.0265708
      Roll: -88.0340271
    }
    Scale {
      X: 3.56423402
      Y: 3.56424236
      Z: 71.4300385
    }
  }
  ParentId: 3985813606936789869
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
      Id: 2023125884763063182
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
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 12173325505860315355
  Name: "Rock Flat 02"
  Transform {
    Location {
      X: 6687.83057
      Y: -14759.7734
      Z: 2737.36816
    }
    Rotation {
      Pitch: -35.5300293
      Yaw: 6.32230425
      Roll: -87.7102661
    }
    Scale {
      X: 3.56423402
      Y: 3.56424236
      Z: 71.4300385
    }
  }
  ParentId: 3985813606936789869
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
      Id: 2023125884763063182
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
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 2725083917034495923
  Name: "Rock Flat 02"
  Transform {
    Location {
      X: 3885.15527
      Y: -15493.082
      Z: 4225.5625
    }
    Rotation {
      Pitch: -20.2085876
      Yaw: 6.96754408
      Roll: -88.013855
    }
    Scale {
      X: 3.56423402
      Y: 3.56424236
      Z: 71.4300385
    }
  }
  ParentId: 3985813606936789869
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
      Id: 2023125884763063182
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
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 1493713045228495762
  Name: "Rock Flat 02"
  Transform {
    Location {
      X: 1616.09473
      Y: -15949.4414
      Z: 2755.3125
    }
    Rotation {
      Pitch: 37.0828094
      Yaw: 9.06333542
      Roll: -87.663208
    }
    Scale {
      X: 3.56423402
      Y: 3.56424236
      Z: 71.4300385
    }
  }
  ParentId: 3985813606936789869
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
      Id: 2023125884763063182
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
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 17462848615876133019
  Name: "Rock Flat 02"
  Transform {
    Location {
      X: 511.434082
      Y: -15855.6309
      Z: 1137.77429
    }
    Rotation {
      Pitch: 61.0856628
      Yaw: 11.0320559
      Roll: -86.1419067
    }
    Scale {
      X: 3.56423402
      Y: 3.56424236
      Z: 71.4300385
    }
  }
  ParentId: 3985813606936789869
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
      Id: 2023125884763063182
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
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 6036105352941888622
  Name: "Rock Flat 02"
  Transform {
    Location {
      X: 484.80249
      Y: -12008.6602
      Z: 1147.66492
    }
    Rotation {
      Pitch: 60.6394424
      Yaw: 17.3152142
      Roll: -77.2778168
    }
    Scale {
      X: 3.56424308
      Y: 3.56424618
      Z: 9.96633
    }
  }
  ParentId: 3985813606936789869
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
      Id: 2023125884763063182
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
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 13859412932333769628
  Name: "Rock Flat 02"
  Transform {
    Location {
      X: 1607.13232
      Y: -12008.6602
      Z: 3165.69141
    }
    Rotation {
      Pitch: 18.884079
      Yaw: 8.31301212
      Roll: -83.4470444
    }
    Scale {
      X: 3.56424308
      Y: 3.56424618
      Z: 9.96633
    }
  }
  ParentId: 3985813606936789869
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
      Id: 2023125884763063182
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
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 4157250493939408186
  Name: "Rock Flat 02"
  Transform {
    Location {
      X: 3086.89795
      Y: -11535.7578
      Z: 3508.42578
    }
    Rotation {
      Pitch: 2.61229444
      Yaw: 6.46730137
      Roll: -83.7952728
    }
    Scale {
      X: 3.56424308
      Y: 3.56424618
      Z: 9.96633
    }
  }
  ParentId: 3985813606936789869
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
      Id: 2023125884763063182
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
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 5880869571509195471
  Name: "Rock Flat 02"
  Transform {
    Location {
      X: 4928.62646
      Y: -11164.9355
      Z: 3508.42578
    }
    Rotation {
      Pitch: -18.3799076
      Yaw: 4.11528587
      Roll: -83.4675751
    }
    Scale {
      X: 3.56424308
      Y: 3.56424618
      Z: 9.96633
    }
  }
  ParentId: 3985813606936789869
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
      Id: 2023125884763063182
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
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 5164008385687980168
  Name: "Rock Flat 02"
  Transform {
    Location {
      X: 6671.31689
      Y: -10951.2871
      Z: 2734.00586
    }
    Rotation {
      Pitch: -35.2102661
      Yaw: 1.78807664
      Roll: -82.4071274
    }
    Scale {
      X: 3.56424308
      Y: 3.56424618
      Z: 9.96633
    }
  }
  ParentId: 3985813606936789869
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
      Id: 2023125884763063182
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
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 1094890292556838932
  Name: "Rock Flat 02"
  Transform {
    Location {
      X: 7404.67627
      Y: -10951.2871
      Z: 1363.41052
    }
    Rotation {
      Pitch: -70.2877274
      Yaw: -11.4583883
      Roll: -71.3345871
    }
    Scale {
      X: 3.56424308
      Y: 3.56424618
      Z: 9.96633
    }
  }
  ParentId: 3985813606936789869
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
      Id: 2023125884763063182
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
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 1638108078208221294
  Name: "Rock Flat 02"
  Transform {
    Location {
      X: 4997.41504
      Y: -19989.1465
      Z: -3007.83838
    }
    Rotation {
      Pitch: 8.7033062
      Yaw: -6.97296667
      Roll: 105.194992
    }
    Scale {
      X: 2.77167273
      Y: 26.6104584
      Z: 16.5704212
    }
  }
  ParentId: 3985813606936789869
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 0.131000012
        G: 0.131000012
        B: 0.131000012
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
      Id: 2023125884763063182
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
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 14079616995962549025
  Name: "Rock Flat 02"
  Transform {
    Location {
      X: -1064.52832
      Y: -6780.40771
      Z: 4627.04102
    }
    Rotation {
      Pitch: -84.6015854
      Yaw: 12.8682613
      Roll: 68.2379303
    }
    Scale {
      X: 10.1251631
      Y: 10.1251678
      Z: 13.4264011
    }
  }
  ParentId: 3985813606936789869
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
      Id: 2023125884763063182
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
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 9093128637438555367
  Name: "Rock Flat 02"
  Transform {
    Location {
      X: 6037.95654
      Y: -1491.85742
      Z: -374.036499
    }
    Rotation {
      Pitch: -88.1196442
      Yaw: 54.2150078
      Roll: -137.879868
    }
    Scale {
      X: 4.79921532
      Y: 4.79921961
      Z: 13.4195576
    }
  }
  ParentId: 3985813606936789869
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
      Id: 2023125884763063182
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
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 4818132740377724226
  Name: "Rock Flat 02"
  Transform {
    Location {
      X: 7972.72
      Y: -3021.19653
      Z: 2422.11768
    }
    Rotation {
      Pitch: -59.4499779
      Yaw: 6.20817757
      Roll: -152.734299
    }
    Scale {
      X: 4.79921627
      Y: 4.79921627
      Z: 4.79921627
    }
  }
  ParentId: 3985813606936789869
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
      Id: 2023125884763063182
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
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 13629078479645073880
  Name: "Rock Flat 02"
  Transform {
    Location {
      X: 8417.25586
      Y: -2999.96191
      Z: 259.047974
    }
    Rotation {
      Pitch: -82.9164734
      Yaw: 11.30196
      Roll: -158.155823
    }
    Scale {
      X: 4.79921627
      Y: 4.79921627
      Z: 4.79921627
    }
  }
  ParentId: 3985813606936789869
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
      Id: 2023125884763063182
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
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 8666921945590618321
  Name: "Rock Flat 02"
  Transform {
    Location {
      X: 8359.07227
      Y: -2999.96191
      Z: 989.297241
    }
    Rotation {
      Pitch: -74.388031
      Yaw: 7.62691402
      Roll: -154.363571
    }
    Scale {
      X: 4.79921627
      Y: 4.79921627
      Z: 4.79921627
    }
  }
  ParentId: 3985813606936789869
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
      Id: 2023125884763063182
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
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 11823777572633445330
  Name: "Rock Flat 02"
  Transform {
    Location {
      X: 8422.51562
      Y: -4282.7793
      Z: 3772.6167
    }
    Rotation {
      Pitch: -59.4499779
      Yaw: 6.20816755
      Roll: -152.734299
    }
    Scale {
      X: 4.79921627
      Y: 4.79921627
      Z: 4.79921627
    }
  }
  ParentId: 3985813606936789869
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
      Id: 2023125884763063182
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
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 10137575737022547770
  Name: "Rock Flat 02"
  Transform {
    Location {
      X: 7631.09717
      Y: -2133.06323
      Z: 1020.2074
    }
    Rotation {
      Pitch: -82.9165
      Yaw: 11.3019266
      Roll: -158.155807
    }
    Scale {
      X: 4.79921627
      Y: 4.79921627
      Z: 4.79921627
    }
  }
  ParentId: 3985813606936789869
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
      Id: 2023125884763063182
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
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 6086839362576563318
  Name: "Rock Flat 02"
  Transform {
    Location {
      X: 7572.91357
      Y: -2133.06323
      Z: 1750.45667
    }
    Rotation {
      Pitch: -74.3881302
      Yaw: 7.62689447
      Roll: -154.363586
    }
    Scale {
      X: 4.79921627
      Y: 4.79921627
      Z: 4.79921627
    }
  }
  ParentId: 3985813606936789869
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
      Id: 2023125884763063182
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
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 15926290658518094609
  Name: "Rock Flat 02"
  Transform {
    Location {
      X: 6994.18799
      Y: -1556.36987
      Z: 2191.53467
    }
    Rotation {
      Pitch: -63.974472
      Yaw: 7.19656801
      Roll: -153.85585
    }
    Scale {
      X: 3.1083858
      Y: 3.1083858
      Z: 3.1083858
    }
  }
  ParentId: 3985813606936789869
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
      Id: 2023125884763063182
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
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 4318482856693558028
  Name: "Rock Flat 02"
  Transform {
    Location {
      X: 7265.51416
      Y: -1535.13525
      Z: 732.563232
    }
    Rotation {
      Pitch: -78.8870697
      Yaw: 10.6793327
      Roll: -157.498444
    }
    Scale {
      X: 3.1083858
      Y: 3.1083858
      Z: 3.1083858
    }
  }
  ParentId: 3985813606936789869
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
      Id: 2023125884763063182
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
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 12939807741559770748
  Name: "Rock Flat 02"
  Transform {
    Location {
      X: 7265.51416
      Y: -1535.13525
      Z: -0.000122070312
    }
    Rotation {
      Pitch: -87.2362747
      Yaw: 30.0796146
      Roll: -176.988785
    }
    Scale {
      X: 3.1083858
      Y: 3.1083858
      Z: 3.1083858
    }
  }
  ParentId: 3985813606936789869
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
      Id: 2023125884763063182
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
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 2810575580866645467
  Name: "Rock Flat 02"
  Transform {
    Location {
      X: 389.398438
      Y: 4640.26318
      Z: 850.461548
    }
    Rotation {
      Pitch: 84.7724152
      Yaw: 71.0991516
      Roll: 28.8141251
    }
    Scale {
      X: 8.81059837
      Y: 9.80749226
      Z: 12.0232687
    }
  }
  ParentId: 3985813606936789869
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
      Id: 14984940530629181021
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
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 12132263486245319764
  Name: "Rock Flat 02"
  Transform {
    Location {
      X: -1437.20569
      Y: 5081.96436
      Z: -708.483276
    }
    Rotation {
      Pitch: -85.3870392
      Yaw: -173.702408
      Roll: 100.270302
    }
    Scale {
      X: 8.81059837
      Y: 9.80749226
      Z: 12.0232687
    }
  }
  ParentId: 3985813606936789869
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
      Id: 14984940530629181021
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
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 11040592178660270568
  Name: "Rock Flat 02"
  Transform {
    Location {
      X: -2755.36548
      Y: 1916.11279
      Z: -708.483276
    }
    Rotation {
      Pitch: -85.3881836
      Yaw: -173.697784
      Roll: 166.218979
    }
    Scale {
      X: 8.81059837
      Y: 9.80749226
      Z: 12.0232687
    }
  }
  ParentId: 3985813606936789869
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
      Id: 14984940530629181021
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
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 7533160009074582397
  Name: "Rock Flat 02"
  Transform {
    Location {
      X: -2364.76562
      Y: 246.978027
      Z: -708.483276
    }
    Rotation {
      Pitch: 76.923912
      Yaw: 172.330505
      Roll: -31.1213722
    }
    Scale {
      X: 8.81059837
      Y: 9.80749226
      Z: 12.0232687
    }
  }
  ParentId: 3985813606936789869
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
      Id: 14984940530629181021
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
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 8306141473321725935
  Name: "Rock Flat 02"
  Transform {
    Location {
      X: -2009.28076
      Y: 3984.65771
      Z: -708.483276
    }
    Rotation {
      Pitch: -83.1505661
      Yaw: -97.3308792
      Roll: 94.462326
    }
    Scale {
      X: 8.81059837
      Y: 9.80749226
      Z: 12.0232687
    }
  }
  ParentId: 3985813606936789869
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
      Id: 14984940530629181021
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
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 16732916554683492750
  Name: "Rock Flat 02"
  Transform {
    Location {
      X: -1079.70874
      Y: 3665.74854
      Z: 5480.01709
    }
    Rotation {
      Pitch: -54.0397911
      Yaw: -172.233307
      Roll: -171.738739
    }
    Scale {
      X: 6.83566475
      Y: 9.80748558
      Z: 12.0232649
    }
  }
  ParentId: 3985813606936789869
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
      Id: 14984940530629181021
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
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 16349602118014490517
  Name: "Rock Flat 02"
  Transform {
    Location {
      X: -1845.81165
      Y: 3757.04736
      Z: 3269.31396
    }
    Rotation {
      Pitch: -70.8835602
      Yaw: -173.057693
      Roll: 179.455322
    }
    Scale {
      X: 6.83566475
      Y: 9.80748558
      Z: 12.0232649
    }
  }
  ParentId: 3985813606936789869
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
      Id: 14984940530629181021
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
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 13057925667465726831
  Name: "Rock Flat 02"
  Transform {
    Location {
      X: -1265.22632
      Y: -985.007324
      Z: 3269.31396
    }
    Rotation {
      Pitch: -70.8842316
      Yaw: -154.342
      Roll: 179.455322
    }
    Scale {
      X: 6.83566475
      Y: 9.80748558
      Z: 12.0232649
    }
  }
  ParentId: 3985813606936789869
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
      Id: 14984940530629181021
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
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 8214702717793283586
  Name: "Rock Flat 02"
  Transform {
    Location {
      X: -1493.08594
      Y: -821.885254
      Z: -708.483276
    }
    Rotation {
      Pitch: -83.1519394
      Yaw: -78.6160812
      Roll: 94.4636383
    }
    Scale {
      X: 8.81059837
      Y: 9.80749226
      Z: 12.0232687
    }
  }
  ParentId: 3985813606936789869
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
      Id: 14984940530629181021
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
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 12524895601942467179
  Name: "Rock Flat 02"
  Transform {
    Location {
      X: -510.337891
      Y: -825.655273
      Z: 5480.01709
    }
    Rotation {
      Pitch: -54.039856
      Yaw: -153.517776
      Roll: -171.738739
    }
    Scale {
      X: 6.83566475
      Y: 9.80748558
      Z: 12.0232649
    }
  }
  ParentId: 3985813606936789869
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
      Id: 14984940530629181021
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
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 5778405926705815834
  Name: "Rock Flat 02"
  Transform {
    Location {
      X: 5241.91846
      Y: -621.671387
      Z: 532.912048
    }
    Rotation {
      Pitch: -81.8182449
      Yaw: -72.4369125
      Roll: 111.339241
    }
    Scale {
      X: 5.25363
      Y: 4.50033569
      Z: 6.80922127
    }
  }
  ParentId: 3985813606936789869
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
      Id: 14984940530629181021
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
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 8894672266549727402
  Name: "Rock Flat 02"
  Transform {
    Location {
      X: 9485.95312
      Y: -3870.83154
      Z: -1528.85803
    }
    Rotation {
      Pitch: 78.0643234
      Yaw: 157.618805
      Roll: 59.3773155
    }
    Scale {
      X: 14.3256731
      Y: 7.83018112
      Z: 20.4657326
    }
  }
  ParentId: 3985813606936789869
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
      Id: 14984940530629181021
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
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 10950490452614549150
  Name: "Rock Flat 02"
  Transform {
    Location {
      X: 6166.83252
      Y: -4584.81738
      Z: 7558.55957
    }
    Rotation {
      Pitch: 4.99008799
      Yaw: 8.22607613
      Roll: -83.9292603
    }
    Scale {
      X: 6.52578735
      Y: 3.56688738
      Z: 9.3227787
    }
  }
  ParentId: 3985813606936789869
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
      Id: 14984940530629181021
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
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 14333067950409454009
  Name: "Rock Flat 02"
  Transform {
    Location {
      X: 1893.96
      Y: -9648.19141
      Z: 8334.48438
    }
    Rotation {
      Pitch: 56.3401566
      Yaw: 21.5574188
      Roll: -65.9792938
    }
    Scale {
      X: 5.97970104
      Y: 4.56630898
      Z: 14.9817934
    }
  }
  ParentId: 3985813606936789869
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
      Id: 14984940530629181021
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
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 10717242884459861097
  Name: "Rock Flat 02"
  Transform {
    Location {
      X: 3356.45703
      Y: -7510.69141
      Z: 9775.88281
    }
    Rotation {
      Pitch: 51.715786
      Yaw: 98.2428436
      Roll: -36.4422
    }
    Scale {
      X: 3.77991986
      Y: 4.56631327
      Z: 5.4304738
    }
  }
  ParentId: 3985813606936789869
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
      Id: 14984940530629181021
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
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 4595095762662155845
  Name: "Rock Flat 02"
  Transform {
    Location {
      X: 1650.24927
      Y: 1330.17383
      Z: 410.764648
    }
    Rotation {
      Pitch: -82.5219345
      Yaw: -5.37807083
      Roll: -141.960709
    }
    Scale {
      X: 2.81934381
      Y: 2.18737507
      Z: 4.30921268
    }
  }
  ParentId: 3985813606936789869
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 0.551
        G: 0.551
        B: 0.551
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
      Id: 14984940530629181021
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
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 18036845061595318944
  Name: "Rock Flat 02"
  Transform {
    Location {
      X: 6236.57373
      Y: -11284.7559
      Z: 8685.93555
    }
    Rotation {
      Pitch: -74.273468
      Yaw: -47.4851913
      Roll: -27.645195
    }
    Scale {
      X: 8.74009228
      Y: 8.74008369
      Z: 17.2182941
    }
  }
  ParentId: 3985813606936789869
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
      Id: 14984940530629181021
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
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 9388637261903145596
  Name: "Rock Flat 02"
  Transform {
    Location {
      X: 2221.01709
      Y: -10884.5547
      Z: 7390.76562
    }
    Rotation {
      Pitch: -1.89226961
      Yaw: -15.2570076
      Roll: 90.4646683
    }
    Scale {
      X: 6.3890295
      Y: 22.9087906
      Z: 12.5866337
    }
  }
  ParentId: 3985813606936789869
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
      Id: 14984940530629181021
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
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 11130032052875844632
  Name: "Rock Flat 02"
  Transform {
    Location {
      X: 16.7434082
      Y: -5881.07422
      Z: 5752.66309
    }
    Rotation {
      Pitch: 76.0688095
      Yaw: 39.4912643
      Roll: 14.8217745
    }
    Scale {
      X: 5.97970772
      Y: 4.56630659
      Z: 16.8190784
    }
  }
  ParentId: 3985813606936789869
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
      Id: 14984940530629181021
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
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 10471634024367359282
  Name: "Rock Flat 02"
  Transform {
    Location {
      X: -710.763428
      Y: -6524.26855
      Z: 3371.14502
    }
    Rotation {
      Pitch: -80.6979675
      Yaw: -121.078239
      Roll: -56.1501541
    }
    Scale {
      X: 9.32007217
      Y: 5.88028669
      Z: 21.6588707
    }
  }
  ParentId: 3985813606936789869
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
      Id: 14984940530629181021
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
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 14729577946700624915
  Name: "Rock Flat 02"
  Transform {
    Location {
      X: 515.984619
      Y: -5701.14795
      Z: 8944.75098
    }
    Rotation {
      Pitch: -80.6546783
      Yaw: -52.2835884
      Roll: -124.235573
    }
    Scale {
      X: 7.23745251
      Y: 4.56630564
      Z: 16.8190804
    }
  }
  ParentId: 3985813606936789869
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
      Id: 14984940530629181021
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
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 667945333906875256
  Name: "Rock Flat 02"
  Transform {
    Location {
      X: 9344.55664
      Y: -8647.51367
      Z: 3621.06787
    }
    Rotation {
      Pitch: -75.064064
      Yaw: -38.327095
      Roll: 114.272629
    }
    Scale {
      X: 14.3256779
      Y: 7.83018637
      Z: 28.5508518
    }
  }
  ParentId: 3985813606936789869
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
      Id: 14984940530629181021
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
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 14785170342783890449
  Name: "Rock Flat 02"
  Transform {
    Location {
      X: 8714.82227
      Y: -3262.80176
      Z: 4481.67725
    }
    Rotation {
      Pitch: 75.8886108
      Yaw: 171.485077
      Roll: -138.561386
    }
    Scale {
      X: 14.3256731
      Y: 7.83018112
      Z: 20.4657326
    }
  }
  ParentId: 3985813606936789869
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
      Id: 14984940530629181021
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
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 5182459854659825191
  Name: "Rock Flat 02"
  Transform {
    Location {
      X: 9068.44727
      Y: -4807.64307
      Z: 4675.19385
    }
    Rotation {
      Pitch: 78.0623932
      Yaw: 157.615097
      Roll: -152.080765
    }
    Scale {
      X: 14.3256731
      Y: 7.83018112
      Z: 20.4657326
    }
  }
  ParentId: 3985813606936789869
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
      Id: 14984940530629181021
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
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 8519000993318014099
  Name: "Rock Flat 02"
  Transform {
    Location {
      X: 9289.20898
      Y: -6441.55957
      Z: 4849.8584
    }
    Rotation {
      Pitch: 78.0643921
      Yaw: 157.618805
      Roll: 59.3773842
    }
    Scale {
      X: 14.3256731
      Y: 7.83018112
      Z: 20.4657326
    }
  }
  ParentId: 3985813606936789869
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
      Id: 14984940530629181021
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
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 15923169320370534136
  Name: "Rock Flat 02"
  Transform {
    Location {
      X: 8231.44141
      Y: -10517.1211
      Z: 4854.41162
    }
    Rotation {
      Pitch: -71.9757309
      Yaw: -72.724617
      Roll: 120.485802
    }
    Scale {
      X: 14.3256779
      Y: 7.83018637
      Z: 28.5508518
    }
  }
  ParentId: 3985813606936789869
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
      Id: 14984940530629181021
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
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 4995156288077997993
  Name: "Rock Flat 02"
  Transform {
    Location {
      X: 9016.76367
      Y: -9599.82715
      Z: 3710.00732
    }
    Rotation {
      Pitch: -75.0644531
      Yaw: -38.3285866
      Roll: 79.1974792
    }
    Scale {
      X: 9.54313278
      Y: 6.38903952
      Z: 19.0193138
    }
  }
  ParentId: 3985813606936789869
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
      Id: 14984940530629181021
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
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 4659158898465392675
  Name: "Rock Flat 02"
  Transform {
    Location {
      X: 4892.88574
      Y: -4061.68677
      Z: 8518.10059
    }
    Rotation {
      Pitch: 2.13655138
      Yaw: 28.9428539
      Roll: -165.455261
    }
    Scale {
      X: 9.32007217
      Y: 5.88028669
      Z: 21.6588707
    }
  }
  ParentId: 3985813606936789869
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
      Id: 14984940530629181021
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
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 4379569785795589524
  Name: "Rock Flat 02"
  Transform {
    Location {
      X: -334.455322
      Y: -1070.51514
      Z: -227.986954
    }
    Rotation {
      Pitch: 45.8536491
      Yaw: 176.690857
      Roll: -1.27227819
    }
    Scale {
      X: 2.39262962
      Y: 2.59224725
      Z: 5.10683155
    }
  }
  ParentId: 3985813606936789869
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
      Id: 14984940530629181021
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
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 4242592332979755949
  Name: "Rock Flat 02"
  Transform {
    Location {
      X: -830.475
      Y: -854.639648
      Z: 377.951
    }
    Rotation {
      Pitch: -82.2517395
      Yaw: -105.174591
      Roll: 173.289
    }
    Scale {
      X: 2.59224939
      Y: 2.59224844
      Z: 5.10682917
    }
  }
  ParentId: 3985813606936789869
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
      Id: 14984940530629181021
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
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 3202361044521245520
  Name: "Rock Flat 02"
  Transform {
    Location {
      X: 4134.86523
      Y: -97.3696289
      Z: 4633.36279
    }
    Rotation {
      Pitch: -54.0399857
      Yaw: 40.5442772
      Roll: -171.738876
    }
    Scale {
      X: 4.84542942
      Y: 4.84542751
      Z: 9.54567909
    }
  }
  ParentId: 3985813606936789869
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
      Id: 14984940530629181021
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
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 3026286285295778624
  Name: "Rock Flat 02"
  Transform {
    Location {
      X: 4372.9707
      Y: 126.546875
      Z: 3269.31201
    }
    Rotation {
      Pitch: -70.8847
      Yaw: 39.7202301
      Roll: 179.455383
    }
    Scale {
      X: 4.84542942
      Y: 4.84542751
      Z: 9.54567909
    }
  }
  ParentId: 3985813606936789869
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
      Id: 14984940530629181021
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
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 13846966353370118171
  Name: "Rock Flat 02"
  Transform {
    Location {
      X: 4299.89
      Y: -59.9194336
      Z: 1082.13928
    }
    Rotation {
      Pitch: -71.5776
      Yaw: 35.7681732
      Roll: 175.237259
    }
    Scale {
      X: 6.24535418
      Y: 4.84543
      Z: 9.54568195
    }
  }
  ParentId: 3985813606936789869
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
      Id: 14984940530629181021
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
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 16052596772062332514
  Name: "Rock Flat 02"
  Transform {
    Location {
      X: 8032.15967
      Y: -10413.418
      Z: -1083.83606
    }
    Rotation {
      Pitch: -84.4306259
      Yaw: 32.1197662
      Roll: -0.522436917
    }
    Scale {
      X: 8.74009228
      Y: 8.74008369
      Z: 17.2182941
    }
  }
  ParentId: 3985813606936789869
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
      Id: 14984940530629181021
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
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 18002107330159846747
  Name: "Rock Flat 02"
  Transform {
    Location {
      X: 5661.31299
      Y: -11244.6699
      Z: 6715.17334
    }
    Rotation {
      Pitch: -75.7904434
      Yaw: -63.6429062
      Roll: 95.8586426
    }
    Scale {
      X: 8.74009228
      Y: 8.74008369
      Z: 17.2182941
    }
  }
  ParentId: 3985813606936789869
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
      Id: 14984940530629181021
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
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 3164651413645629268
  Name: "Rock Flat 02"
  Transform {
    Location {
      X: 6990.15771
      Y: -10596.6621
      Z: 4440.06201
    }
    Rotation {
      Pitch: -75.0656433
      Yaw: -38.3290863
      Roll: -111.81855
    }
    Scale {
      X: 6.3890276
      Y: 6.38902521
      Z: 12.5866251
    }
  }
  ParentId: 3985813606936789869
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
      Id: 14984940530629181021
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
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 11463895990563498832
  Name: "Rock Flat 02"
  Transform {
    Location {
      X: 2102.27246
      Y: -10940.6338
      Z: 6153.28076
    }
    Rotation {
      Pitch: -5.57027864
      Yaw: 2.06548762
      Roll: 2.38387227
    }
    Scale {
      X: 6.3890276
      Y: 6.38902521
      Z: 12.5866251
    }
  }
  ParentId: 3985813606936789869
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
      Id: 14984940530629181021
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
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 16165489946900780818
  Name: "Rock Flat 02"
  Transform {
    Location {
      X: 2979.0791
      Y: -10911.5273
      Z: 4463.7041
    }
    Rotation {
      Pitch: -5.57027864
      Yaw: 2.06547427
      Roll: 81.2972488
    }
    Scale {
      X: 8.42382
      Y: 8.42381668
      Z: 16.5952415
    }
  }
  ParentId: 3985813606936789869
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
      Id: 14984940530629181021
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
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 10151175561786695655
  Name: "Props"
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
  ParentId: 8245028879746446203
  ChildIds: 3323552826038292413
  ChildIds: 8044669490417411731
  ChildIds: 7220784063454029254
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
  Id: 7220784063454029254
  Name: "Market Tent 2_New"
  Transform {
    Location {
      X: 3486.8877
      Y: -108.804199
      Z: -145.847534
    }
    Rotation {
      Yaw: -167.769592
    }
    Scale {
      X: 1.32939374
      Y: 1.32939374
      Z: 1.32939374
    }
  }
  ParentId: 10151175561786695655
  ChildIds: 14686071595657630075
  ChildIds: 9204708018921120717
  ChildIds: 2740105147944378774
  ChildIds: 13843380783998258237
  ChildIds: 15513905219182131457
  ChildIds: 5568480288917555061
  ChildIds: 2320252288426866346
  ChildIds: 16089227631073693603
  ChildIds: 3941988583531252897
  ChildIds: 15029915569393331182
  ChildIds: 13793949774871847189
  ChildIds: 3139432661266443076
  ChildIds: 14472720769146467004
  ChildIds: 793548558057218183
  ChildIds: 1388171386916549810
  ChildIds: 14877219381777157571
  ChildIds: 8519286461260075163
  ChildIds: 12620863206749613847
  ChildIds: 994306493312069236
  ChildIds: 17665175552418790097
  ChildIds: 8455558204860713976
  ChildIds: 161599926584036179
  ChildIds: 15154765840972902751
  ChildIds: 15227601446451893688
  ChildIds: 15262264352217700792
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
  Id: 15262264352217700792
  Name: "Table"
  Transform {
    Location {
      X: 136.233475
      Y: 52.2039871
      Z: 43.9903297
    }
    Rotation {
      Pitch: 1.36603776e-05
      Yaw: -96.8638306
      Roll: -179.999954
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 7220784063454029254
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 0.869
        G: 0.869
        B: 0.869
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
    Value: "mc:ecollisionsetting:forceoff"
  }
  CoreMesh {
    MeshAsset {
      Id: 3674060815778311744
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    StaticMesh {
      Physics {
      }
      BoundsScale: 1
    }
  }
  Relevance {
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 15227601446451893688
  Name: "Text 06: ?"
  Transform {
    Location {
      X: -77.7738571
      Y: 212.373947
      Z: 192.644104
    }
    Rotation {
      Pitch: 2.27803874
      Yaw: 16.8766956
      Roll: 179.131393
    }
    Scale {
      X: 0.196383789
      Y: 0.196383789
      Z: 0.196383789
    }
  }
  ParentId: 7220784063454029254
  UnregisteredParameters {
    Overrides {
      Name: "ma:Font.Bevel:id"
      AssetReference {
        Id: 988091216586047331
      }
    }
    Overrides {
      Name: "ma:Font.Faces:id"
      AssetReference {
        Id: 988091216586047331
      }
    }
    Overrides {
      Name: "ma:Font.Sides:id"
      AssetReference {
        Id: 988091216586047331
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
    Value: "mc:ecollisionsetting:forceoff"
  }
  CoreMesh {
    MeshAsset {
      Id: 7830220892511588891
    }
    Teams {
    }
    StaticMesh {
      Physics {
      }
      BoundsScale: 1
    }
  }
  Relevance {
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 15154765840972902751
  Name: "Text 06: ?"
  Transform {
    Location {
      X: 16.7476654
      Y: 186.241913
      Z: 182.387909
    }
    Rotation {
      Pitch: 2.27803874
      Yaw: 64.8776703
      Roll: 179.131393
    }
    Scale {
      X: 0.196383789
      Y: 0.196383789
      Z: 0.196383789
    }
  }
  ParentId: 7220784063454029254
  UnregisteredParameters {
    Overrides {
      Name: "ma:Font.Bevel:id"
      AssetReference {
        Id: 988091216586047331
      }
    }
    Overrides {
      Name: "ma:Font.Faces:id"
      AssetReference {
        Id: 988091216586047331
      }
    }
    Overrides {
      Name: "ma:Font.Sides:id"
      AssetReference {
        Id: 988091216586047331
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
    Value: "mc:ecollisionsetting:forceoff"
  }
  CoreMesh {
    MeshAsset {
      Id: 7830220892511588891
    }
    Teams {
    }
    StaticMesh {
      Physics {
      }
      BoundsScale: 1
    }
  }
  Relevance {
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 161599926584036179
  Name: "Large Round Wood Beam 8m"
  Transform {
    Location {
      X: 182.960281
      Y: 226.838135
      Z: -34.3014221
    }
    Rotation {
      Pitch: 79.3882904
      Yaw: 156.415619
      Roll: -96.6267929
    }
    Scale {
      X: 0.109857723
      Y: 0.507358
      Z: 0.507356048
    }
  }
  ParentId: 7220784063454029254
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 889917629752285723
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:vtile"
      Float: 0.154005185
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:utile"
      Float: 1.1967634
    }
    Overrides {
      Name: "ma:Shared_Detail1:color"
      Color {
        R: 0.5625
        G: 0.5625
        B: 0.5625
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
    Value: "mc:ecollisionsetting:forceoff"
  }
  CoreMesh {
    MeshAsset {
      Id: 15022686768039723999
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    StaticMesh {
      Physics {
      }
      BoundsScale: 1
    }
  }
  Relevance {
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 8455558204860713976
  Name: "Large Round Wood Beam 8m"
  Transform {
    Location {
      X: 172.798676
      Y: -197.184906
      Z: -26.6390743
    }
    Rotation {
      Pitch: 88.7399368
      Yaw: 36.7706604
      Roll: -7.76397137e-05
    }
    Scale {
      X: 0.109857723
      Y: 0.507358
      Z: 0.507356048
    }
  }
  ParentId: 7220784063454029254
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 889917629752285723
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:vtile"
      Float: 0.154005185
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:utile"
      Float: 1.1967634
    }
    Overrides {
      Name: "ma:Shared_Detail1:color"
      Color {
        R: 0.5625
        G: 0.5625
        B: 0.5625
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
    Value: "mc:ecollisionsetting:forceoff"
  }
  CoreMesh {
    MeshAsset {
      Id: 15022686768039723999
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    StaticMesh {
      Physics {
      }
      BoundsScale: 1
    }
  }
  Relevance {
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 17665175552418790097
  Name: "Decal Wood Ends Variations"
  Transform {
    Location {
      X: 165.974976
      Y: 156.73819
      Z: 259.119385
    }
    Rotation {
      Pitch: -0.0777275488
      Yaw: -72.1885
      Roll: 87.3505936
    }
    Scale {
      X: 0.49758625
      Y: 0.49758625
      Z: 0.49758625
    }
  }
  ParentId: 7220784063454029254
  UnregisteredParameters {
    Overrides {
      Name: "bp:color"
      Color {
        R: 0.661458313
        G: 0.661458313
        B: 0.661458313
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
      Id: 6099421689735834058
    }
    TeamSettings {
    }
    DecalBP {
    }
  }
  Relevance {
    Value: "mc:eproxyrelevance:high"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 994306493312069236
  Name: "Decal Wood Ends Variations"
  Transform {
    Location {
      X: 166.889679
      Y: -109.337624
      Z: 258.351379
    }
    Rotation {
      Pitch: 3.19676065
      Yaw: -96.1083298
      Roll: 78.3462524
    }
    Scale {
      X: 0.389004946
      Y: 0.389004946
      Z: 0.389004946
    }
  }
  ParentId: 7220784063454029254
  UnregisteredParameters {
    Overrides {
      Name: "bp:color"
      Color {
        R: 0.651041687
        G: 0.651041687
        B: 0.651041687
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
      Id: 6099421689735834058
    }
    TeamSettings {
    }
    DecalBP {
    }
  }
  Relevance {
    Value: "mc:eproxyrelevance:high"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 12620863206749613847
  Name: "roof"
  Transform {
    Location {
      X: 11.386198
      Y: 21.0719948
      Z: 310.601257
    }
    Rotation {
      Pitch: -21.2123394
      Yaw: -2.09722281
      Roll: 8.41413748e-06
    }
    Scale {
      X: 0.842232466
      Y: 0.842232466
      Z: 0.842232466
    }
  }
  ParentId: 7220784063454029254
  ChildIds: 12561976604395530363
  ChildIds: 16387322892118901082
  ChildIds: 10520904479068845393
  ChildIds: 9614499605487738973
  ChildIds: 16775735510107910703
  ChildIds: 15916573911671113577
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
  Id: 15916573911671113577
  Name: "Prism - 6-Sided Half"
  Transform {
    Location {
      X: -71.7111511
      Y: 6.29166317
      Z: -391.352966
    }
    Rotation {
      Pitch: 71.9194183
      Yaw: 179.999374
      Roll: 179.998489
    }
    Scale {
      X: 9.54239655
      Y: 5.08035326
      Z: 0.0330682769
    }
  }
  ParentId: 12620863206749613847
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 7224969687089129499
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 0.415000021
        G: 0.359071195
        B: 0.18675001
        A: 1
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:utile"
      Float: 1.00132692
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:vtile"
      Float: 1.78743935
    }
  }
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:forceoff"
  }
  CoreMesh {
    MeshAsset {
      Id: 14448249526906174522
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    StaticMesh {
      Physics {
      }
      BoundsScale: 1
    }
  }
  Relevance {
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 16775735510107910703
  Name: "Decal Stains Round 01"
  Transform {
    Location {
      X: 25.1147461
      Y: 26.0097656
      Z: 4.13549805
    }
    Rotation {
    }
    Scale {
      X: 0.398064613
      Y: 0.322888851
      Z: 0.00760078337
    }
  }
  ParentId: 12620863206749613847
  UnregisteredParameters {
    Overrides {
      Name: "bp:color"
      Color {
        R: 0.442708343
        G: 0.400771886
        B: 0.19125
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
      Id: 12385794193739794509
    }
    TeamSettings {
    }
    DecalBP {
    }
  }
  Relevance {
    Value: "mc:eproxyrelevance:high"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 9614499605487738973
  Name: "Prism - 6-Sided Half"
  Transform {
    Location {
      X: 138.774902
      Y: 97.7929688
      Z: 5.08544922
    }
    Rotation {
      Pitch: -0.0806577
      Yaw: 165.264771
      Roll: 6.25305939
    }
    Scale {
      X: 7.93451357
      Y: -0.615
      Z: 0.0275220368
    }
  }
  ParentId: 12620863206749613847
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 7224969687089129499
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:vtile"
      Float: 2.44195724
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:utile"
      Float: 0.274910092
    }
  }
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:forceon"
  }
  CoreMesh {
    MeshAsset {
      Id: 14448249526906174522
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    StaticMesh {
      Physics {
      }
      BoundsScale: 1
    }
  }
  Relevance {
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 10520904479068845393
  Name: "Decal Stains Round 01"
  Transform {
    Location {
      X: -87.6445312
      Y: -83.5854492
      Z: 3.19165039
    }
    Rotation {
    }
    Scale {
      X: 0.51409
      Y: 0.322888851
      Z: 0.0200519543
    }
  }
  ParentId: 12620863206749613847
  UnregisteredParameters {
    Overrides {
      Name: "bp:color"
      Color {
        R: 0.302083343
        G: 0.273467869
        B: 0.1305
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
      Id: 12385794193739794509
    }
    TeamSettings {
    }
    DecalBP {
    }
  }
  Relevance {
    Value: "mc:eproxyrelevance:high"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 16387322892118901082
  Name: "Prism - 6-Sided Half"
  Transform {
    Location {
      X: 135.135742
      Y: -89.1450195
      Z: 4.95263672
    }
    Rotation {
      Pitch: 1.36603776e-05
      Yaw: -166.117233
      Roll: -7.08753109
    }
    Scale {
      X: 7.93451357
      Y: 0.615378857
      Z: 0.0275220368
    }
  }
  ParentId: 12620863206749613847
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 7224969687089129499
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:vtile"
      Float: 2.44195724
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:utile"
      Float: 0.274910092
    }
  }
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:forceon"
  }
  CoreMesh {
    MeshAsset {
      Id: 14448249526906174522
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    StaticMesh {
      Physics {
      }
      BoundsScale: 1
    }
  }
  Relevance {
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 12561976604395530363
  Name: "Prism - 6-Sided Half"
  Transform {
    Location {
      X: -205.803711
      Y: 6.29296875
      Z: 2.24755859
    }
    Rotation {
    }
    Scale {
      X: 7.9344964
      Y: 3.34468
      Z: 0.0275219698
    }
  }
  ParentId: 12620863206749613847
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 7224969687089129499
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 0.415000021
        G: 0.359071195
        B: 0.18675001
        A: 1
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:utile"
      Float: 1.00132692
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:vtile"
      Float: 1.78743935
    }
  }
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:forceon"
  }
  CoreMesh {
    MeshAsset {
      Id: 14448249526906174522
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    StaticMesh {
      Physics {
      }
      BoundsScale: 1
    }
  }
  Relevance {
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 8519286461260075163
  Name: "support"
  Transform {
    Location {
      X: -89.7640839
      Y: -159.505295
      Z: 300.107422
    }
    Rotation {
      Pitch: -2.33462691
      Yaw: 61.3671646
      Roll: -1.06832898
    }
    Scale {
      X: 0.752222598
      Y: 0.752222598
      Z: 0.752222598
    }
  }
  ParentId: 7220784063454029254
  ChildIds: 16217841176661919417
  ChildIds: 16427620957051769529
  ChildIds: 14498063620597935166
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
  Id: 14498063620597935166
  Name: "Craftsman Stairs 01 Pillar"
  Transform {
    Location {
      X: 48.7470703
      Y: -62.4824219
      Z: 43.5744629
    }
    Rotation {
      Pitch: 15.6251154
      Yaw: 35.1067734
      Roll: 68.4124
    }
    Scale {
      X: 7.89076519
      Y: 7.89076519
      Z: 12.9728928
    }
  }
  ParentId: 8519286461260075163
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_Detail1:id"
      AssetReference {
        Id: 889917629752285723
      }
    }
    Overrides {
      Name: "ma:Shared_Detail1:color"
      Color {
        R: 1
        G: 1
        B: 1
        A: 1
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 889917629752285723
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:utile"
      Float: 18.1490173
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:vtile"
      Float: 21.6912899
    }
  }
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:forceoff"
  }
  CoreMesh {
    MeshAsset {
      Id: 4489563712437375651
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    StaticMesh {
      Physics {
      }
      BoundsScale: 1
    }
  }
  Relevance {
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 16427620957051769529
  Name: "Decal Bullet Damage Wood"
  Transform {
    Location {
      X: -49.4589844
      Y: 92.2207
      Z: 123.8479
    }
    Rotation {
      Pitch: -25.6438217
      Yaw: -46.3087463
      Roll: 86.4598389
    }
    Scale {
      X: 0.461137116
      Y: 0.461137116
      Z: 0.461137116
    }
  }
  ParentId: 8519286461260075163
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
      Id: 17786706417721973926
    }
    TeamSettings {
    }
    DecalBP {
    }
  }
  Relevance {
    Value: "mc:eproxyrelevance:high"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 16217841176661919417
  Name: "Decal Wood Ends Variations"
  Transform {
    Location {
      X: -115.761719
      Y: 126.386719
      Z: 149.616211
    }
    Rotation {
      Pitch: 4.08842802
      Yaw: 9.70983696
      Roll: 67.6356888
    }
    Scale {
      X: 1.00000751
      Y: 1.00000083
      Z: 1.49716282
    }
  }
  ParentId: 8519286461260075163
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
      Id: 6099421689735834058
    }
    TeamSettings {
    }
    DecalBP {
    }
  }
  Relevance {
    Value: "mc:eproxyrelevance:high"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 14877219381777157571
  Name: "support"
  Transform {
    Location {
      X: -82.6504288
      Y: 211.918259
      Z: 300.0224
    }
    Rotation {
      Pitch: -2.69549298
      Yaw: 34.5310211
      Roll: 0.105379418
    }
    Scale {
      X: 0.752222598
      Y: 0.752222598
      Z: 0.752222598
    }
  }
  ParentId: 7220784063454029254
  ChildIds: 3637191834661019459
  ChildIds: 7636722802024038385
  ChildIds: 17375062188711936614
  ChildIds: 11793385246000612285
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
  Id: 11793385246000612285
  Name: "MergedModel"
  Transform {
    Location {
      X: 23.1913338
      Y: -252.571686
      Z: -368.466492
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 14877219381777157571
  ChildIds: 14625476805998899318
  ChildIds: 10544983445402809823
  ChildIds: 4475680793920593063
  ChildIds: 7971534428114959295
  ChildIds: 10899465382971821888
  ChildIds: 15107789858204691774
  ChildIds: 8744131192777525304
  ChildIds: 2220372324563409894
  ChildIds: 13902641904971384968
  ChildIds: 10050672889372917638
  ChildIds: 7440750945996781345
  ChildIds: 16584409232172459407
  ChildIds: 6684335317609980941
  ChildIds: 2692553031844449931
  ChildIds: 9205791300406120027
  ChildIds: 17401172868685176930
  ChildIds: 17769767886742615979
  ChildIds: 6764835949630858651
  ChildIds: 2661718671030365330
  ChildIds: 1006987301642794125
  ChildIds: 6657060310992261545
  ChildIds: 2433397675247668689
  ChildIds: 13795356426375928836
  ChildIds: 11914665956135505020
  ChildIds: 9953957949046180400
  ChildIds: 8448598134556024252
  ChildIds: 14555497717074752056
  ChildIds: 4462930678730762105
  ChildIds: 1632465107100491859
  ChildIds: 6104440961017118541
  ChildIds: 13873046360860073226
  ChildIds: 8406957051609628720
  ChildIds: 11136152962940736815
  ChildIds: 14010982463546427334
  ChildIds: 527778892897427619
  ChildIds: 3939541320218625755
  ChildIds: 11849892233917900132
  ChildIds: 5568882932119186420
  ChildIds: 17201574120438599253
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
    Model {
    }
  }
  Relevance {
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 17201574120438599253
  Name: "Ring - Thick"
  Transform {
    Location {
      X: -93.661
      Y: 330.727295
      Z: 485.095673
    }
    Rotation {
      Pitch: 40.822361
      Yaw: -124.083069
      Roll: -47.2036629
    }
    Scale {
      X: 0.778021574
      Y: 0.778024316
      Z: 0.618001819
    }
  }
  ParentId: 11793385246000612285
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 3090596827184957478
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:utile"
      Float: 5.69563437
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 0.677083313
        G: 0.141456127
        B: 0.0952148438
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
    Value: "mc:ecollisionsetting:forceoff"
  }
  CoreMesh {
    MeshAsset {
      Id: 7585887110500972880
    }
    Teams {
    }
    DisableReceiveDecals: true
    StaticMesh {
      Physics {
      }
      BoundsScale: 1
    }
  }
  Relevance {
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 5568882932119186420
  Name: "Ring - Thick"
  Transform {
    Location {
      X: 287.468231
      Y: 81.2022858
      Z: 14.8768263
    }
    Rotation {
      Pitch: -4.85167456
      Yaw: 155.485336
      Roll: -3.10319495
    }
    Scale {
      X: 0.444260031
      Y: 0.444256097
      Z: 0.486297816
    }
  }
  ParentId: 11793385246000612285
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 3090596827184957478
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:utile"
      Float: 5.69563437
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 0.677083313
        G: 0.141456127
        B: 0.0952148438
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
    Value: "mc:ecollisionsetting:forceoff"
  }
  CoreMesh {
    MeshAsset {
      Id: 7585887110500972880
    }
    Teams {
    }
    DisableReceiveDecals: true
    StaticMesh {
      Physics {
      }
      BoundsScale: 1
    }
  }
  Relevance {
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 11849892233917900132
  Name: "Ring - Thick"
  Transform {
    Location {
      X: 270.40976
      Y: 53.8404121
      Z: 10.3186
    }
    Rotation {
      Pitch: -4.85167456
      Yaw: 155.485306
      Roll: -3.10319591
    }
    Scale {
      X: 0.358108968
      Y: 0.358105361
      Z: 0.569000602
    }
  }
  ParentId: 11793385246000612285
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 3090596827184957478
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:utile"
      Float: 3.64721251
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 0.677083313
        G: 0.141456127
        B: 0.0952148438
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
    Value: "mc:ecollisionsetting:forceoff"
  }
  CoreMesh {
    MeshAsset {
      Id: 7585887110500972880
    }
    Teams {
    }
    DisableReceiveDecals: true
    StaticMesh {
      Physics {
      }
      BoundsScale: 1
    }
  }
  Relevance {
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 3939541320218625755
  Name: "Ring - Thick"
  Transform {
    Location {
      X: -32.5727654
      Y: -385.746765
      Z: -3.63886356e-05
    }
    Rotation {
      Pitch: -6.24779892
      Yaw: -27.0728493
      Roll: 2.93851638
    }
    Scale {
      X: 0.450561494
      Y: 0.450559705
      Z: 0.446906
    }
  }
  ParentId: 11793385246000612285
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 3090596827184957478
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:utile"
      Float: 5.69563437
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 0.677083313
        G: 0.141456127
        B: 0.0952148438
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
    Value: "mc:ecollisionsetting:forceoff"
  }
  CoreMesh {
    MeshAsset {
      Id: 7585887110500972880
    }
    Teams {
    }
    DisableReceiveDecals: true
    StaticMesh {
      Physics {
      }
      BoundsScale: 1
    }
  }
  Relevance {
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 527778892897427619
  Name: "Ring - Thick"
  Transform {
    Location {
      X: -9.50812
      Y: -368.775421
      Z: 3.85178161
    }
    Rotation {
      Pitch: 5.74662
      Yaw: -60.6545067
      Roll: -0.349083096
    }
    Scale {
      X: 0.332933158
      Y: 0.332937121
      Z: 0.390883595
    }
  }
  ParentId: 11793385246000612285
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 3090596827184957478
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:utile"
      Float: 3.64721251
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 0.677083313
        G: 0.141456127
        B: 0.0952148438
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
    Value: "mc:ecollisionsetting:forceoff"
  }
  CoreMesh {
    MeshAsset {
      Id: 7585887110500972880
    }
    Teams {
    }
    DisableReceiveDecals: true
    StaticMesh {
      Physics {
      }
      BoundsScale: 1
    }
  }
  Relevance {
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 14010982463546427334
  Name: "Ring - Thick"
  Transform {
    Location {
      X: -34.8694191
      Y: -384.536041
      Z: 10.1471243
    }
    Rotation {
      Pitch: 5.74662
      Yaw: -60.6545067
      Roll: -0.349082679
    }
    Scale {
      X: 0.444260031
      Y: 0.444256097
      Z: 0.486297816
    }
  }
  ParentId: 11793385246000612285
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 3090596827184957478
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:utile"
      Float: 5.69563437
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 0.677083313
        G: 0.141456127
        B: 0.0952148438
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
    Value: "mc:ecollisionsetting:forceoff"
  }
  CoreMesh {
    MeshAsset {
      Id: 7585887110500972880
    }
    Teams {
    }
    DisableReceiveDecals: true
    StaticMesh {
      Physics {
      }
      BoundsScale: 1
    }
  }
  Relevance {
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 11136152962940736815
  Name: "Ring - Thick"
  Transform {
    Location {
      X: -401.059113
      Y: -117.481949
      Z: 463.040558
    }
    Rotation {
      Pitch: 35.8175468
      Yaw: -82.4735794
      Roll: -62.4091301
    }
    Scale {
      X: 0.814078152
      Y: 0.814081311
      Z: 0.646642864
    }
  }
  ParentId: 11793385246000612285
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 3090596827184957478
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:utile"
      Float: 5.69563437
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 0.677083313
        G: 0.141456127
        B: 0.0952148438
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
    Value: "mc:ecollisionsetting:forceoff"
  }
  CoreMesh {
    MeshAsset {
      Id: 7585887110500972880
    }
    Teams {
    }
    DisableReceiveDecals: true
    StaticMesh {
      Physics {
      }
      BoundsScale: 1
    }
  }
  Relevance {
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 8406957051609628720
  Name: "Ring - Thick"
  Transform {
    Location {
      X: -380.545776
      Y: -122.792206
      Z: 452.225677
    }
    Rotation {
      Pitch: 59.8754578
      Yaw: -46.9630356
      Roll: -7.11786222
    }
    Scale {
      X: 0.729857802
      Y: 0.729860544
      Z: 0.579744339
    }
  }
  ParentId: 11793385246000612285
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 3090596827184957478
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:utile"
      Float: 5.69563437
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 0.677083313
        G: 0.141456127
        B: 0.0952148438
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
    Value: "mc:ecollisionsetting:forceoff"
  }
  CoreMesh {
    MeshAsset {
      Id: 7585887110500972880
    }
    Teams {
    }
    DisableReceiveDecals: true
    StaticMesh {
      Physics {
      }
      BoundsScale: 1
    }
  }
  Relevance {
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 13873046360860073226
  Name: "Capsule"
  Transform {
    Location {
      X: -214.720123
      Y: -92.8982697
      Z: 404.095764
    }
    Rotation {
      Pitch: -17.8765297
      Yaw: -19.4539108
      Roll: -97.6613922
    }
    Scale {
      X: 0.0982376784
      Y: 0.163191095
      Z: 0.147316098
    }
  }
  ParentId: 11793385246000612285
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 3090596827184957478
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:utile"
      Float: 1.70951617
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:vtile"
      Float: 1.70951617
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 0.677083313
        G: 0.141456127
        B: 0.0952148438
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
    Value: "mc:ecollisionsetting:forceoff"
  }
  CoreMesh {
    MeshAsset {
      Id: 5944393796542654307
    }
    Teams {
    }
    StaticMesh {
      Physics {
      }
      BoundsScale: 1
    }
  }
  Relevance {
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 6104440961017118541
  Name: "Capsule"
  Transform {
    Location {
      X: -223.759048
      Y: -92.0075
      Z: 408.855835
    }
    Rotation {
      Pitch: -16.2051277
      Yaw: -8.12227249
      Roll: -100.992599
    }
    Scale {
      X: 0.0982408524
      Y: 0.163190186
      Z: 0.163194776
    }
  }
  ParentId: 11793385246000612285
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 3090596827184957478
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:utile"
      Float: 1.70951617
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:vtile"
      Float: 1.70951617
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 0.677083313
        G: 0.141456127
        B: 0.0952148438
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
    Value: "mc:ecollisionsetting:forceoff"
  }
  CoreMesh {
    MeshAsset {
      Id: 5944393796542654307
    }
    Teams {
    }
    StaticMesh {
      Physics {
      }
      BoundsScale: 1
    }
  }
  Relevance {
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 1632465107100491859
  Name: "Capsule"
  Transform {
    Location {
      X: -56.97509
      Y: -158.696991
      Z: 349.373444
    }
    Rotation {
      Pitch: 18.5047092
      Yaw: 154.37793
      Roll: -85.4364853
    }
    Scale {
      X: 0.0851327553
      Y: 0.172466546
      Z: 0.107250206
    }
  }
  ParentId: 11793385246000612285
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 3090596827184957478
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:utile"
      Float: 1.70951617
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:vtile"
      Float: 1.70951617
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 0.677083313
        G: 0.141456127
        B: 0.0952148438
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
    Value: "mc:ecollisionsetting:forceoff"
  }
  CoreMesh {
    MeshAsset {
      Id: 5944393796542654307
    }
    Teams {
    }
    StaticMesh {
      Physics {
      }
      BoundsScale: 1
    }
  }
  Relevance {
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 4462930678730762105
  Name: "Capsule"
  Transform {
    Location {
      X: -48.6087303
      Y: -160.597687
      Z: 346.728516
    }
    Rotation {
      Pitch: 17.1822014
      Yaw: 165.81076
      Roll: -81.9224167
    }
    Scale {
      X: 0.0851355195
      Y: 0.172465578
      Z: 0.118810229
    }
  }
  ParentId: 11793385246000612285
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 3090596827184957478
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:utile"
      Float: 1.70951617
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:vtile"
      Float: 1.70951617
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 0.677083313
        G: 0.141456127
        B: 0.0952148438
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
    Value: "mc:ecollisionsetting:forceoff"
  }
  CoreMesh {
    MeshAsset {
      Id: 5944393796542654307
    }
    Teams {
    }
    StaticMesh {
      Physics {
      }
      BoundsScale: 1
    }
  }
  Relevance {
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 14555497717074752056
  Name: "Ring - Thick"
  Transform {
    Location {
      X: -137.445358
      Y: -220.438614
      Z: 354.698608
    }
    Rotation {
      Pitch: 75.445755
      Yaw: -88.5781555
      Roll: -66.3703
    }
    Scale {
      X: 0.550137699
      Y: 0.550135612
      Z: 0.545674264
    }
  }
  ParentId: 11793385246000612285
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 3090596827184957478
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:utile"
      Float: 5.69563437
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 0.677083313
        G: 0.141456127
        B: 0.0952148438
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
    Value: "mc:ecollisionsetting:forceoff"
  }
  CoreMesh {
    MeshAsset {
      Id: 7585887110500972880
    }
    Teams {
    }
    DisableReceiveDecals: true
    StaticMesh {
      Physics {
      }
      BoundsScale: 1
    }
  }
  Relevance {
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 8448598134556024252
  Name: "Ring - Thick"
  Transform {
    Location {
      X: -147.518494
      Y: -217.554642
      Z: 360.04129
    }
    Rotation {
      Pitch: 40.8006706
      Yaw: -97.3815231
      Roll: -71.6909637
    }
    Scale {
      X: 0.550142288
      Y: 0.550137401
      Z: 0.602199078
    }
  }
  ParentId: 11793385246000612285
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 3090596827184957478
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:utile"
      Float: 5.69563437
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 0.677083313
        G: 0.141456127
        B: 0.0952148438
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
    Value: "mc:ecollisionsetting:forceoff"
  }
  CoreMesh {
    MeshAsset {
      Id: 7585887110500972880
    }
    Teams {
    }
    DisableReceiveDecals: true
    StaticMesh {
      Physics {
      }
      BoundsScale: 1
    }
  }
  Relevance {
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 9953957949046180400
  Name: "Ring - Thick"
  Transform {
    Location {
      X: -74.4447098
      Y: -246.684921
      Z: 328.062897
    }
    Rotation {
      Pitch: 35.2606964
      Yaw: -81.1855316
      Roll: -52.7676086
    }
    Scale {
      X: 0.676915646
      Y: 0.676901102
      Z: 0.684446096
    }
  }
  ParentId: 11793385246000612285
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 3090596827184957478
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:utile"
      Float: 5.69563437
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 0.677083313
        G: 0.141456127
        B: 0.0952148438
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
    Value: "mc:ecollisionsetting:forceoff"
  }
  CoreMesh {
    MeshAsset {
      Id: 7585887110500972880
    }
    Teams {
    }
    DisableReceiveDecals: true
    StaticMesh {
      Physics {
      }
      BoundsScale: 1
    }
  }
  Relevance {
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 11914665956135505020
  Name: "Ring - Thick"
  Transform {
    Location {
      X: -46.0198479
      Y: -251.648346
      Z: 320.512329
    }
    Rotation {
      Pitch: 75.0097198
      Yaw: -160.57428
      Roll: -150.293137
    }
    Scale {
      X: 0.827465415
      Y: 0.82745862
      Z: 0.665248334
    }
  }
  ParentId: 11793385246000612285
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 3090596827184957478
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:utile"
      Float: 5.69563437
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 0.677083313
        G: 0.141456127
        B: 0.0952148438
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
    Value: "mc:ecollisionsetting:forceoff"
  }
  CoreMesh {
    MeshAsset {
      Id: 7585887110500972880
    }
    Teams {
    }
    DisableReceiveDecals: true
    StaticMesh {
      Physics {
      }
      BoundsScale: 1
    }
  }
  Relevance {
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 13795356426375928836
  Name: "Donut"
  Transform {
    Location {
      X: 24.5516853
      Y: -235.333008
      Z: 360.0177
    }
    Rotation {
      Pitch: -38.8926163
      Yaw: 144.892517
      Roll: -90.5857773
    }
    Scale {
      X: 0.324440092
      Y: 0.32443288
      Z: 0.261208862
    }
  }
  ParentId: 11793385246000612285
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 3090596827184957478
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:utile"
      Float: 5.20985603
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:vtile"
      Float: 0.712104201
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 0.677083313
        G: 0.141456127
        B: 0.0952148438
        A: 1
      }
    }
  }
  Collidable_v2 {
    Value: "mc:ecollisionsetting:forceoff"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:forceoff"
  }
  CoreMesh {
    MeshAsset {
      Id: 1978759747315071937
    }
    Teams {
    }
    DisableCastShadows: true
    StaticMesh {
      Physics {
      }
      BoundsScale: 1
    }
  }
  Relevance {
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 2433397675247668689
  Name: "Donut"
  Transform {
    Location {
      X: 19.1766567
      Y: -242.885666
      Z: 360.534332
    }
    Rotation {
      Pitch: -37.3534889
      Yaw: 152.972855
      Roll: -103.493683
    }
    Scale {
      X: 0.277810156
      Y: 0.277804017
      Z: 0.223666817
    }
  }
  ParentId: 11793385246000612285
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 3090596827184957478
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:utile"
      Float: 5.20985603
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:vtile"
      Float: 0.712104201
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 0.677083313
        G: 0.141456127
        B: 0.0952148438
        A: 1
      }
    }
  }
  Collidable_v2 {
    Value: "mc:ecollisionsetting:forceoff"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:forceoff"
  }
  CoreMesh {
    MeshAsset {
      Id: 1978759747315071937
    }
    Teams {
    }
    DisableCastShadows: true
    StaticMesh {
      Physics {
      }
      BoundsScale: 1
    }
  }
  Relevance {
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 6657060310992261545
  Name: "Ring - Thick"
  Transform {
    Location {
      X: -66.7591782
      Y: 307.866089
      Z: 268.374329
    }
    Rotation {
      Pitch: -7.7011404
      Yaw: -41.9074516
      Roll: -9.53010464
    }
    Scale {
      X: 0.606280208
      Y: 0.606282413
      Z: 0.481583506
    }
  }
  ParentId: 11793385246000612285
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 3090596827184957478
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:utile"
      Float: 5.69563437
    }
  }
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:forceoff"
  }
  CoreMesh {
    MeshAsset {
      Id: 7585887110500972880
    }
    Teams {
    }
    DisableReceiveDecals: true
    StaticMesh {
      Physics {
      }
      BoundsScale: 1
    }
  }
  Relevance {
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 1006987301642794125
  Name: "Ring - Thick"
  Transform {
    Location {
      X: -67.6086273
      Y: 306.175446
      Z: 286.473145
    }
    Rotation {
      Pitch: 0.365080416
      Yaw: -41.4089432
      Roll: 2.76325607
    }
    Scale {
      X: 0.606280208
      Y: 0.606282413
      Z: 0.481583506
    }
  }
  ParentId: 11793385246000612285
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 3090596827184957478
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:utile"
      Float: 5.69563437
    }
  }
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:forceoff"
  }
  CoreMesh {
    MeshAsset {
      Id: 7585887110500972880
    }
    Teams {
    }
    DisableReceiveDecals: true
    StaticMesh {
      Physics {
      }
      BoundsScale: 1
    }
  }
  Relevance {
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 2661718671030365330
  Name: "Donut"
  Transform {
    Location {
      X: 83.6266403
      Y: 151.636765
      Z: 211.580582
    }
    Rotation {
      Pitch: 20.1245441
      Yaw: -43.0731049
      Roll: 4.06852245
    }
    Scale {
      X: 0.11288517
      Y: 0.112884901
      Z: 0.166719019
    }
  }
  ParentId: 11793385246000612285
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 3090596827184957478
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:utile"
      Float: 2.79133749
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:vtile"
      Float: 0.300543249
    }
  }
  Collidable_v2 {
    Value: "mc:ecollisionsetting:forceoff"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:forceoff"
  }
  CoreMesh {
    MeshAsset {
      Id: 1978759747315071937
    }
    Teams {
    }
    DisableCastShadows: true
    StaticMesh {
      Physics {
      }
      BoundsScale: 1
    }
  }
  Relevance {
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 6764835949630858651
  Name: "Donut"
  Transform {
    Location {
      X: -2.65773487
      Y: 243.573
      Z: 221.337051
    }
    Rotation {
      Pitch: 18.0706711
      Yaw: -91.2939453
      Roll: 3.25274444
    }
    Scale {
      X: 0.11288517
      Y: 0.112884901
      Z: 0.166719019
    }
  }
  ParentId: 11793385246000612285
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 3090596827184957478
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:utile"
      Float: 2.79133749
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:vtile"
      Float: 0.300543249
    }
  }
  Collidable_v2 {
    Value: "mc:ecollisionsetting:forceoff"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:forceoff"
  }
  CoreMesh {
    MeshAsset {
      Id: 1978759747315071937
    }
    Teams {
    }
    DisableCastShadows: true
    StaticMesh {
      Physics {
      }
      BoundsScale: 1
    }
  }
  Relevance {
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 17769767886742615979
  Name: "Donut"
  Transform {
    Location {
      X: -5.01716757
      Y: 243.858749
      Z: 231.816116
    }
    Rotation {
      Pitch: -71.1376495
      Yaw: -36.8199844
      Roll: -5.87159061
    }
    Scale {
      X: 0.126681983
      Y: 0.126686066
      Z: 0.130697429
    }
  }
  ParentId: 11793385246000612285
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 3090596827184957478
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:utile"
      Float: 2.55326653
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:vtile"
      Float: 0.287441105
    }
  }
  Collidable_v2 {
    Value: "mc:ecollisionsetting:forceoff"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:forceoff"
  }
  CoreMesh {
    MeshAsset {
      Id: 1978759747315071937
    }
    Teams {
    }
    DisableCastShadows: true
    StaticMesh {
      Physics {
      }
      BoundsScale: 1
    }
  }
  Relevance {
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 17401172868685176930
  Name: "Donut"
  Transform {
    Location {
      X: -0.444630653
      Y: 239.717957
      Z: 231.11261
    }
    Rotation {
      Pitch: -83.2203903
      Yaw: 121.459129
      Roll: -163.729843
    }
    Scale {
      X: 0.109631553
      Y: 0.109633543
      Z: 0.120969884
    }
  }
  ParentId: 11793385246000612285
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 3090596827184957478
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:utile"
      Float: 2.79133749
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:vtile"
      Float: 0.287441105
    }
  }
  Collidable_v2 {
    Value: "mc:ecollisionsetting:forceoff"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:forceoff"
  }
  CoreMesh {
    MeshAsset {
      Id: 1978759747315071937
    }
    Teams {
    }
    DisableCastShadows: true
    StaticMesh {
      Physics {
      }
      BoundsScale: 1
    }
  }
  Relevance {
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 9205791300406120027
  Name: "Donut"
  Transform {
    Location {
      X: 76.7078705
      Y: 158.430435
      Z: 222.124359
    }
    Rotation {
      Pitch: -87.7275391
      Yaw: 14.1536064
      Roll: -56.5521965
    }
    Scale {
      X: 0.109633312
      Y: 0.109633058
      Z: 0.16191639
    }
  }
  ParentId: 11793385246000612285
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 3090596827184957478
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:utile"
      Float: 1.86891484
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:vtile"
      Float: 0.262925446
    }
  }
  Collidable_v2 {
    Value: "mc:ecollisionsetting:forceoff"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:forceoff"
  }
  CoreMesh {
    MeshAsset {
      Id: 1978759747315071937
    }
    Teams {
    }
    DisableCastShadows: true
    StaticMesh {
      Physics {
      }
      BoundsScale: 1
    }
  }
  Relevance {
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 2692553031844449931
  Name: "Donut"
  Transform {
    Location {
      X: 81.9585648
      Y: 153.599396
      Z: 223.033569
    }
    Rotation {
      Pitch: -71.1376495
      Yaw: -36.8199844
      Roll: -5.87159061
    }
    Scale {
      X: 0.124748059
      Y: 0.12473847
      Z: 0.171696395
    }
  }
  ParentId: 11793385246000612285
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 3090596827184957478
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:utile"
      Float: 2.79133749
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:vtile"
      Float: 0.262925446
    }
  }
  Collidable_v2 {
    Value: "mc:ecollisionsetting:forceoff"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:forceoff"
  }
  CoreMesh {
    MeshAsset {
      Id: 1978759747315071937
    }
    Teams {
    }
    DisableCastShadows: true
    StaticMesh {
      Physics {
      }
      BoundsScale: 1
    }
  }
  Relevance {
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 6684335317609980941
  Name: "Main Rope"
  Transform {
    Location {
      X: 226.005859
      Y: 14.3027344
      Z: 347.67041
    }
    Rotation {
      Pitch: 29.4706192
      Yaw: 133.635956
      Roll: 177.756012
    }
    Scale {
      X: 1.04580784
      Y: -0.312246531
      Z: 0.915387034
    }
  }
  ParentId: 11793385246000612285
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 3090596827184957478
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:vtile"
      Float: 21.4524231
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:utile"
      Float: 3.2637248
    }
    Overrides {
      Name: "ma:Shared_Detail1:id"
      AssetReference {
        Id: 16805300009998353718
      }
    }
  }
  Collidable_v2 {
    Value: "mc:ecollisionsetting:forceoff"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:forceoff"
  }
  CoreMesh {
    MeshAsset {
      Id: 5509123564555821808
    }
    Teams {
    }
    DisableCastShadows: true
    StaticMesh {
      Physics {
      }
      BoundsScale: 1
    }
  }
  Relevance {
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 16584409232172459407
  Name: "Ring - Thick"
  Transform {
    Location {
      X: 172.144302
      Y: 55.4956207
      Z: 276.764465
    }
    Rotation {
      Pitch: 39.4180679
      Yaw: -43.6815796
      Roll: -13.8607721
    }
    Scale {
      X: 0.566877246
      Y: 0.566879392
      Z: 0.45028469
    }
  }
  ParentId: 11793385246000612285
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 3090596827184957478
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:utile"
      Float: 5.69563437
    }
  }
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:forceoff"
  }
  CoreMesh {
    MeshAsset {
      Id: 7585887110500972880
    }
    Teams {
    }
    DisableReceiveDecals: true
    StaticMesh {
      Physics {
      }
      BoundsScale: 1
    }
  }
  Relevance {
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 7440750945996781345
  Name: "Ring - Thick"
  Transform {
    Location {
      X: -79.4777527
      Y: 309.404907
      Z: 471.224487
    }
    Rotation {
      Pitch: 59.7904358
      Yaw: -73.6055679
      Roll: -36.1976357
    }
    Scale {
      X: 0.729857802
      Y: 0.729860544
      Z: 0.579744339
    }
  }
  ParentId: 11793385246000612285
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 3090596827184957478
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:utile"
      Float: 5.69563437
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 0.677083313
        G: 0.141456127
        B: 0.0952148438
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
    Value: "mc:ecollisionsetting:forceoff"
  }
  CoreMesh {
    MeshAsset {
      Id: 7585887110500972880
    }
    Teams {
    }
    DisableReceiveDecals: true
    StaticMesh {
      Physics {
      }
      BoundsScale: 1
    }
  }
  Relevance {
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 10050672889372917638
  Name: "Capsule"
  Transform {
    Location {
      X: -37.9028473
      Y: 152.554626
      Z: 415.74704
    }
    Rotation {
      Pitch: 18.2000618
      Yaw: 119.440758
      Roll: -96.7539
    }
    Scale {
      X: 0.0982376784
      Y: 0.163191095
      Z: 0.147316098
    }
  }
  ParentId: 11793385246000612285
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 3090596827184957478
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:utile"
      Float: 1.70951617
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:vtile"
      Float: 1.70951617
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 0.677083313
        G: 0.141456127
        B: 0.0952148438
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
    Value: "mc:ecollisionsetting:forceoff"
  }
  CoreMesh {
    MeshAsset {
      Id: 5944393796542654307
    }
    Teams {
    }
    StaticMesh {
      Physics {
      }
      BoundsScale: 1
    }
  }
  Relevance {
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 13902641904971384968
  Name: "Capsule"
  Transform {
    Location {
      X: -31.6819611
      Y: 145.388824
      Z: 412.474243
    }
    Rotation {
      Pitch: 19.0290146
      Yaw: 130.975159
      Roll: -93.0608063
    }
    Scale {
      X: 0.0982408524
      Y: 0.163190186
      Z: 0.163194776
    }
  }
  ParentId: 11793385246000612285
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 3090596827184957478
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:utile"
      Float: 1.70951617
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:vtile"
      Float: 1.70951617
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 0.677083313
        G: 0.141456127
        B: 0.0952148438
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
    Value: "mc:ecollisionsetting:forceoff"
  }
  CoreMesh {
    MeshAsset {
      Id: 5944393796542654307
    }
    Teams {
    }
    StaticMesh {
      Physics {
      }
      BoundsScale: 1
    }
  }
  Relevance {
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 2220372324563409894
  Name: "Capsule"
  Transform {
    Location {
      X: 60.9231262
      Y: 17.7386494
      Z: 361.36377
    }
    Rotation {
      Pitch: 18.9802475
      Yaw: 119.36599
      Roll: -94.9535294
    }
    Scale {
      X: 0.098240912
      Y: 0.16319108
      Z: 0.199307665
    }
  }
  ParentId: 11793385246000612285
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 3090596827184957478
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:utile"
      Float: 1.495543
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:vtile"
      Float: 1.70951617
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 0.677083313
        G: 0.141456127
        B: 0.0952148438
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
    Value: "mc:ecollisionsetting:forceoff"
  }
  CoreMesh {
    MeshAsset {
      Id: 5944393796542654307
    }
    Teams {
    }
    StaticMesh {
      Physics {
      }
      BoundsScale: 1
    }
  }
  Relevance {
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 8744131192777525304
  Name: "Capsule"
  Transform {
    Location {
      X: 62.3126411
      Y: 9.03849602
      Z: 356.953156
    }
    Rotation {
      Pitch: 21.180975
      Yaw: 131.073502
      Roll: -83.1284256
    }
    Scale {
      X: 0.0982408524
      Y: 0.163190186
      Z: 0.163194776
    }
  }
  ParentId: 11793385246000612285
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 3090596827184957478
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:utile"
      Float: 1.70951617
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:vtile"
      Float: 1.70951617
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 0.677083313
        G: 0.141456127
        B: 0.0952148438
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
    Value: "mc:ecollisionsetting:forceoff"
  }
  CoreMesh {
    MeshAsset {
      Id: 5944393796542654307
    }
    Teams {
    }
    StaticMesh {
      Physics {
      }
      BoundsScale: 1
    }
  }
  Relevance {
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 15107789858204691774
  Name: "Donut"
  Transform {
    Location {
      X: 168.463867
      Y: -14.4565229
      Z: 364.760315
    }
    Rotation {
      Pitch: -34.2856064
      Yaw: -22.409544
      Roll: -94.0301132
    }
    Scale {
      X: 0.315893024
      Y: 0.315886021
      Z: 0.254327595
    }
  }
  ParentId: 11793385246000612285
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 3090596827184957478
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:utile"
      Float: 5.20985603
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:vtile"
      Float: 0.712104201
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 0.677083313
        G: 0.141456127
        B: 0.0952148438
        A: 1
      }
    }
  }
  Collidable_v2 {
    Value: "mc:ecollisionsetting:forceoff"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:forceoff"
  }
  CoreMesh {
    MeshAsset {
      Id: 1978759747315071937
    }
    Teams {
    }
    DisableCastShadows: true
    StaticMesh {
      Physics {
      }
      BoundsScale: 1
    }
  }
  Relevance {
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 10899465382971821888
  Name: "Donut"
  Transform {
    Location {
      X: 171.302048
      Y: -8.27174568
      Z: 365.156342
    }
    Rotation {
      Pitch: -34.285675
      Yaw: -22.409502
      Roll: -94.0303268
    }
    Scale {
      X: 0.270491451
      Y: 0.270485461
      Z: 0.217774376
    }
  }
  ParentId: 11793385246000612285
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 3090596827184957478
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:utile"
      Float: 5.20985603
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:vtile"
      Float: 0.712104201
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 0.677083313
        G: 0.141456127
        B: 0.0952148438
        A: 1
      }
    }
  }
  Collidable_v2 {
    Value: "mc:ecollisionsetting:forceoff"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:forceoff"
  }
  CoreMesh {
    MeshAsset {
      Id: 1978759747315071937
    }
    Teams {
    }
    DisableCastShadows: true
    StaticMesh {
      Physics {
      }
      BoundsScale: 1
    }
  }
  Relevance {
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 7971534428114959295
  Name: "Ring - Thick"
  Transform {
    Location {
      X: 156.36203
      Y: 50.9971161
      Z: 346.078369
    }
    Rotation {
      Pitch: 68.069191
      Yaw: 166.062943
      Roll: -142.130676
    }
    Scale {
      X: 0.672794759
      Y: 0.672807455
      Z: 0.616127074
    }
  }
  ParentId: 11793385246000612285
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 3090596827184957478
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:utile"
      Float: 5.69563437
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 0.677083313
        G: 0.141456127
        B: 0.0952148438
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
    Value: "mc:ecollisionsetting:forceoff"
  }
  CoreMesh {
    MeshAsset {
      Id: 7585887110500972880
    }
    Teams {
    }
    DisableReceiveDecals: true
    StaticMesh {
      Physics {
      }
      BoundsScale: 1
    }
  }
  Relevance {
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 4475680793920593063
  Name: "Ring - Thick"
  Transform {
    Location {
      X: 141.476242
      Y: 67.0091476
      Z: 350.374176
    }
    Rotation {
      Pitch: 40.8223915
      Yaw: -124.082565
      Roll: -71.5213547
    }
    Scale {
      X: 0.672799051
      Y: 0.672795594
      Z: 0.562282681
    }
  }
  ParentId: 11793385246000612285
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 3090596827184957478
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:utile"
      Float: 5.69563437
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 0.677083313
        G: 0.141456127
        B: 0.0952148438
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
    Value: "mc:ecollisionsetting:forceoff"
  }
  CoreMesh {
    MeshAsset {
      Id: 7585887110500972880
    }
    Teams {
    }
    DisableReceiveDecals: true
    StaticMesh {
      Physics {
      }
      BoundsScale: 1
    }
  }
  Relevance {
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 10544983445402809823
  Name: "Ring - Thick"
  Transform {
    Location {
      X: 99.01
      Y: 110.563477
      Z: 368.46637
    }
    Rotation {
      Pitch: 75.4470825
      Yaw: -114.888474
      Roll: -65.852066
    }
    Scale {
      X: 0.550132871
      Y: 0.550151527
      Z: 0.514061511
    }
  }
  ParentId: 11793385246000612285
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 3090596827184957478
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:utile"
      Float: 5.69563437
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 0.677083313
        G: 0.141456127
        B: 0.0952148438
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
    Value: "mc:ecollisionsetting:forceoff"
  }
  CoreMesh {
    MeshAsset {
      Id: 7585887110500972880
    }
    Teams {
    }
    DisableReceiveDecals: true
    StaticMesh {
      Physics {
      }
      BoundsScale: 1
    }
  }
  Relevance {
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 14625476805998899318
  Name: "Ring - Thick"
  Transform {
    Location {
      X: 91.3303
      Y: 117.675758
      Z: 373.831757
    }
    Rotation {
      Pitch: 40.8223724
      Yaw: -124.082535
      Roll: -71.5213394
    }
    Scale {
      X: 0.550136447
      Y: 0.550141811
      Z: 0.469136864
    }
  }
  ParentId: 11793385246000612285
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 3090596827184957478
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:utile"
      Float: 5.69563437
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 0.677083313
        G: 0.141456127
        B: 0.0952148438
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
    Value: "mc:ecollisionsetting:forceoff"
  }
  CoreMesh {
    MeshAsset {
      Id: 7585887110500972880
    }
    Teams {
    }
    DisableReceiveDecals: true
    StaticMesh {
      Physics {
      }
      BoundsScale: 1
    }
  }
  Relevance {
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 17375062188711936614
  Name: "Craftsman Stairs 01 Pillar"
  Transform {
    Location {
      X: 48.7470703
      Y: -62.4824219
      Z: 43.5744629
    }
    Rotation {
      Pitch: 15.6251154
      Yaw: 35.1067734
      Roll: 68.4124
    }
    Scale {
      X: 7.89076519
      Y: 7.89076519
      Z: 12.9728928
    }
  }
  ParentId: 14877219381777157571
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_Detail1:id"
      AssetReference {
        Id: 889917629752285723
      }
    }
    Overrides {
      Name: "ma:Shared_Detail1:color"
      Color {
        R: 1
        G: 1
        B: 1
        A: 1
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 889917629752285723
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:utile"
      Float: 22.6800175
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:vtile"
      Float: 11.1151056
    }
  }
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:forceoff"
  }
  CoreMesh {
    MeshAsset {
      Id: 4489563712437375651
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    StaticMesh {
      Physics {
      }
      BoundsScale: 1
    }
  }
  Relevance {
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 7636722802024038385
  Name: "Decal Bullet Damage Wood"
  Transform {
    Location {
      X: -49.4589844
      Y: 92.2207
      Z: 123.8479
    }
    Rotation {
      Pitch: -25.6438217
      Yaw: -46.3087463
      Roll: 86.4598389
    }
    Scale {
      X: 0.461137116
      Y: 0.461137116
      Z: 0.461137116
    }
  }
  ParentId: 14877219381777157571
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
      Id: 17786706417721973926
    }
    TeamSettings {
    }
    DecalBP {
    }
  }
  Relevance {
    Value: "mc:eproxyrelevance:high"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 3637191834661019459
  Name: "Decal Wood Ends Variations"
  Transform {
    Location {
      X: -115.761719
      Y: 126.386719
      Z: 149.616211
    }
    Rotation {
      Pitch: 4.08842802
      Yaw: 9.70983696
      Roll: 67.6356888
    }
    Scale {
      X: 1.00000751
      Y: 1.00000083
      Z: 1.49716282
    }
  }
  ParentId: 14877219381777157571
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
      Id: 6099421689735834058
    }
    TeamSettings {
    }
    DecalBP {
    }
  }
  Relevance {
    Value: "mc:eproxyrelevance:high"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 1388171386916549810
  Name: "Table"
  Transform {
    Location {
      X: 111.433487
      Y: 133.985855
      Z: 43.9903297
    }
    Rotation {
      Pitch: 1.36603776e-05
      Yaw: -90.0554199
      Roll: -179.999954
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 7220784063454029254
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 0.869
        G: 0.869
        B: 0.869
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
    Value: "mc:ecollisionsetting:forceoff"
  }
  CoreMesh {
    MeshAsset {
      Id: 3674060815778311744
    }
    Teams {
    }
    StaticMesh {
      Physics {
      }
      BoundsScale: 1
    }
  }
  Relevance {
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 793548558057218183
  Name: "Table"
  Transform {
    Location {
      X: 139.405167
      Y: -81.2416916
      Z: 43.9901466
    }
    Rotation {
      Yaw: 175.255814
      Roll: -179.999939
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 7220784063454029254
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 0.869
        G: 0.869
        B: 0.869
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
    Value: "mc:ecollisionsetting:forceoff"
  }
  CoreMesh {
    MeshAsset {
      Id: 3674060815778311744
    }
    Teams {
    }
    StaticMesh {
      Physics {
      }
      BoundsScale: 1
    }
  }
  Relevance {
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 14472720769146467004
  Name: "Table"
  Transform {
    Location {
      X: 129.525116
      Y: -65.6099777
      Z: 104.496681
    }
    Rotation {
      Pitch: 6.83018879e-06
      Yaw: 175.799286
      Roll: -179.999954
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 7220784063454029254
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 0.869
        G: 0.869
        B: 0.869
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
    Value: "mc:ecollisionsetting:forceoff"
  }
  CoreMesh {
    MeshAsset {
      Id: 3674060815778311744
    }
    Teams {
    }
    StaticMesh {
      Physics {
      }
      BoundsScale: 1
    }
  }
  Relevance {
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 3139432661266443076
  Name: "Table"
  Transform {
    Location {
      X: 129.729202
      Y: 101.129311
      Z: 104.496864
    }
    Rotation {
      Yaw: -179.999954
      Roll: -179.999954
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 7220784063454029254
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 0.869
        G: 0.869
        B: 0.869
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
    Value: "mc:ecollisionsetting:forceoff"
  }
  CoreMesh {
    MeshAsset {
      Id: 3674060815778311744
    }
    Teams {
    }
    StaticMesh {
      Physics {
      }
      BoundsScale: 1
    }
  }
  Relevance {
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 13793949774871847189
  Name: "Wooden Barrel"
  Transform {
    Location {
      X: -113.751801
      Y: 123.671867
      Z: 3.18115234
    }
    Rotation {
    }
    Scale {
      X: 1.0056175
      Y: 1.0056175
      Z: 1.0056175
    }
  }
  ParentId: 7220784063454029254
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 0.655000031
        G: 0.526429296
        B: 0.28165
        A: 1
      }
    }
    Overrides {
      Name: "ma:Shared_Detail1:color"
      Color {
        R: 0.677083313
        G: 0.677083313
        B: 0.677083313
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
    Value: "mc:ecollisionsetting:forceoff"
  }
  CoreMesh {
    MeshAsset {
      Id: 12565879920591753650
    }
    Teams {
    }
    DisableCastShadows: true
    StaticMesh {
      Physics {
      }
      BoundsScale: 1
    }
  }
  Relevance {
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 15029915569393331182
  Name: "Hung Meat"
  Transform {
    Location {
      X: -8.42014217
      Y: 150.132599
      Z: 116.645554
    }
    Rotation {
      Yaw: -7.87667847
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 7220784063454029254
  ChildIds: 3647196719766733430
  ChildIds: 10940003756863011370
  ChildIds: 11367026247890702792
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
  Id: 11367026247890702792
  Name: "Ropes"
  Transform {
    Location {
      X: -69.1921616
      Y: 50.473259
      Z: 17.0673351
    }
    Rotation {
    }
    Scale {
      X: 1.23175311
      Y: 1.23175311
      Z: 1.23175311
    }
  }
  ParentId: 15029915569393331182
  ChildIds: 4583270570051799818
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
  Id: 4583270570051799818
  Name: "Rope Knot"
  Transform {
    Location {
      X: -1.6229248
      Y: 1.24072266
      Z: 50.5915527
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 11367026247890702792
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
  Id: 10940003756863011370
  Name: "Ropes"
  Transform {
    Location {
      X: 2.45969892
      Y: 44.2009583
      Z: 1.80599535
    }
    Rotation {
    }
    Scale {
      X: 1.23175311
      Y: 1.23175311
      Z: 1.23175311
    }
  }
  ParentId: 15029915569393331182
  ChildIds: 4302018887176602943
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
  Id: 4302018887176602943
  Name: "Rope Knot"
  Transform {
    Location {
      X: 16.378933
      Y: 1.2409873
      Z: 55.2274323
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 10940003756863011370
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
  Id: 3647196719766733430
  Name: "Hung Meats"
  Transform {
    Location {
      X: 3.08422852
      Y: -0.200439453
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 15029915569393331182
  ChildIds: 10057570497174712118
  ChildIds: 5350482140609159534
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
  Id: 5350482140609159534
  Name: "Meat"
  Transform {
    Location {
      X: -65.253334
      Y: 52.2989197
      Z: -8.78811264
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 3647196719766733430
  ChildIds: 2257290255105258502
  ChildIds: 6684393118773638815
  Collidable_v2 {
    Value: "mc:ecollisionsetting:forceoff"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:forceoff"
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
  Id: 6684393118773638815
  Name: "Coral Table 01"
  Transform {
    Location {
      X: -8.28013134
      Y: 3.25698781
    }
    Rotation {
      Pitch: 0.295692533
      Yaw: -178.616425
      Roll: 88.8216171
    }
    Scale {
      X: 0.164998949
      Y: 0.528122962
      Z: 0.869440079
    }
  }
  ParentId: 5350482140609159534
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 0.213541672
        G: 0.0287928041
        B: 0.0170833301
        A: 1
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 18163478602454695003
      }
    }
  }
  Collidable_v2 {
    Value: "mc:ecollisionsetting:forceoff"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:forceoff"
  }
  CoreMesh {
    MeshAsset {
      Id: 3735447043741744555
    }
    Teams {
    }
    StaticMesh {
      Physics {
      }
      BoundsScale: 1
    }
  }
  Relevance {
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 2257290255105258502
  Name: "Bone Human Ribcage Half"
  Transform {
    Location {
      X: 8.28039551
      Y: -3.25695801
      Z: 4.7219162
    }
    Rotation {
      Pitch: 1.34239852
      Yaw: -97.2892227
      Roll: -1.0920409
    }
    Scale {
      X: 1.46050012
      Y: 0.928006709
      Z: 1.56650674
    }
  }
  ParentId: 5350482140609159534
  Collidable_v2 {
    Value: "mc:ecollisionsetting:forceoff"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:forceoff"
  }
  CoreMesh {
    MeshAsset {
      Id: 13754159522859767566
    }
    Teams {
    }
    DisableCastShadows: true
    StaticMesh {
      Physics {
      }
      BoundsScale: 1
    }
  }
  Relevance {
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 10057570497174712118
  Name: "Meat"
  Transform {
    Location {
      X: 27.4746151
      Y: 53.8578415
      Z: -8.64505
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 3647196719766733430
  ChildIds: 16492535443711632849
  ChildIds: 6919196859357628243
  Collidable_v2 {
    Value: "mc:ecollisionsetting:forceoff"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:forceoff"
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
  Id: 6919196859357628243
  Name: "Coral Table 01"
  Transform {
    Location {
      X: -4.12251
      Y: -6.97957659
      Z: 3.55542707
    }
    Rotation {
      Pitch: 1.17286634
      Yaw: -87.7036438
      Roll: 90.3144073
    }
    Scale {
      X: 0.14068158
      Y: 0.398411661
      Z: 0.805890501
    }
  }
  ParentId: 10057570497174712118
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 0.213541672
        G: 0.0287928041
        B: 0.0170833301
        A: 1
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 18163478602454695003
      }
    }
  }
  Collidable_v2 {
    Value: "mc:ecollisionsetting:forceoff"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:forceoff"
  }
  CoreMesh {
    MeshAsset {
      Id: 3735447043741744555
    }
    Teams {
    }
    StaticMesh {
      Physics {
      }
      BoundsScale: 1
    }
  }
  Relevance {
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 16492535443711632849
  Name: "Bone Human Ribcage Half"
  Transform {
    Location {
      X: 4.12242603
      Y: 6.97960043
      Z: 4.34419584
    }
    Rotation {
      Yaw: -6.38342285
    }
    Scale {
      X: 1.2312988
      Y: 0.818615735
      Z: 1.56650615
    }
  }
  ParentId: 10057570497174712118
  Collidable_v2 {
    Value: "mc:ecollisionsetting:forceoff"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:forceoff"
  }
  CoreMesh {
    MeshAsset {
      Id: 13754159522859767566
    }
    Teams {
    }
    DisableCastShadows: true
    StaticMesh {
      Physics {
      }
      BoundsScale: 1
    }
  }
  Relevance {
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 3941988583531252897
  Name: "Bones"
  Transform {
    Location {
      X: 131.980835
      Y: 112.039062
      Z: 100.695595
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 7220784063454029254
  ChildIds: 12148067827447860168
  ChildIds: 12654719606410725205
  ChildIds: 16670538797677695759
  Collidable_v2 {
    Value: "mc:ecollisionsetting:forceoff"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:forceoff"
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
  Id: 16670538797677695759
  Name: "Bone Human Ribcage Half"
  Transform {
    Location {
      X: -4.18981934
      Y: -19.8916016
    }
    Rotation {
      Pitch: -89.3931503
      Yaw: 0.0253787767
      Roll: 23.5570202
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 3941988583531252897
  Collidable_v2 {
    Value: "mc:ecollisionsetting:forceoff"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:forceoff"
  }
  CoreMesh {
    MeshAsset {
      Id: 13754159522859767566
    }
    Teams {
    }
    DisableCastShadows: true
    StaticMesh {
      Physics {
      }
      BoundsScale: 1
    }
  }
  Relevance {
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 12654719606410725205
  Name: "Bone Human Tibula 01"
  Transform {
    Location {
      X: -3.5447998
      Y: -8.08813477
      Z: 6.76868439
    }
    Rotation {
      Pitch: 82.3031464
      Yaw: -179.999954
      Roll: -179.999954
    }
    Scale {
      X: 1.15183342
      Y: 1.15183342
      Z: 1.15183342
    }
  }
  ParentId: 3941988583531252897
  Collidable_v2 {
    Value: "mc:ecollisionsetting:forceoff"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:forceoff"
  }
  CoreMesh {
    MeshAsset {
      Id: 1190425863537549876
    }
    Teams {
    }
    DisableCastShadows: true
    StaticMesh {
      Physics {
      }
      BoundsScale: 1
    }
  }
  Relevance {
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 12148067827447860168
  Name: "Bone Human Ulna 01"
  Transform {
    Location {
      X: 7.73486328
      Y: 27.9794922
      Z: 10.1261749
    }
    Rotation {
      Pitch: 75.8801956
      Yaw: -78.3738098
      Roll: -108.450966
    }
    Scale {
      X: 1.48272431
      Y: 1.48272431
      Z: 1.48272431
    }
  }
  ParentId: 3941988583531252897
  Collidable_v2 {
    Value: "mc:ecollisionsetting:forceoff"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:forceoff"
  }
  CoreMesh {
    MeshAsset {
      Id: 4489563712437375651
    }
    Teams {
    }
    StaticMesh {
      Physics {
      }
      BoundsScale: 1
    }
  }
  Relevance {
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 16089227631073693603
  Name: "Hams"
  Transform {
    Location {
      X: 130.275269
      Y: -61.1925049
      Z: 118.637672
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 7220784063454029254
  ChildIds: 18237226177487678230
  ChildIds: 6190209088137306190
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
  Id: 6190209088137306190
  Name: "Ham"
  Transform {
    Location {
      X: -2.71643066
      Y: -38.2247314
    }
    Rotation {
      Pitch: -18.3580589
      Yaw: 22.1257401
      Roll: -7.29724836
    }
    Scale {
      X: 0.27322197
      Y: 0.27322197
      Z: 0.27322197
    }
  }
  ParentId: 16089227631073693603
  ChildIds: 7484442077231259385
  ChildIds: 12370355106161784812
  ChildIds: 3065979204483600872
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
  Id: 3065979204483600872
  Name: "Bone Human Tibula 01"
  Transform {
    Location {
      X: 99.3956833
      Y: -52.642849
      Z: 8.40085793
    }
    Rotation {
      Pitch: 69.6488113
      Yaw: -176.896255
      Roll: -178.768387
    }
    Scale {
      X: 1.80733383
      Y: 1.8073312
      Z: 1.30452335
    }
  }
  ParentId: 6190209088137306190
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:forceoff"
  }
  CoreMesh {
    MeshAsset {
      Id: 1190425863537549876
    }
    Teams {
    }
    DisableCastShadows: true
    StaticMesh {
      Physics {
      }
      BoundsScale: 1
    }
  }
  Relevance {
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 12370355106161784812
  Name: "Rock 02"
  Transform {
    Location {
      X: 5.38057
      Y: -4.38595057
      Z: -4.38265514
    }
    Rotation {
      Pitch: -29.1217041
      Yaw: 159.214554
      Roll: 6.8412287e-06
    }
    Scale {
      X: 0.217066422
      Y: 0.288306057
      Z: 0.362167388
    }
  }
  ParentId: 6190209088137306190
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 2715939630273116812
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:utile"
      Float: 9.61258602
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:vtile"
      Float: 10.1306829
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 1
        G: 0.326622546
        B: 0.18
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
    Value: "mc:ecollisionsetting:forceoff"
  }
  CoreMesh {
    MeshAsset {
      Id: 2260950217581256970
    }
    Teams {
    }
    DisableCastShadows: true
    StaticMesh {
      Physics {
      }
      BoundsScale: 1
    }
  }
  Relevance {
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 7484442077231259385
  Name: "Rock 02"
  Transform {
    Location {
      X: -0.466118515
      Y: -14.4255466
      Z: -4.26602888
    }
    Rotation {
      Pitch: -29.1216125
      Yaw: 159.214508
      Roll: 7.81854123e-06
    }
    Scale {
      X: 0.205369696
      Y: 0.272770464
      Z: 0.342651933
    }
  }
  ParentId: 6190209088137306190
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 2715939630273116812
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:utile"
      Float: 9.61258602
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:vtile"
      Float: 10.1306829
    }
  }
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:forceon"
  }
  CoreMesh {
    MeshAsset {
      Id: 2260950217581256970
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    DisableCastShadows: true
    StaticMesh {
      Physics {
      }
      BoundsScale: 1
    }
  }
  Relevance {
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 18237226177487678230
  Name: "Ham"
  Transform {
    Location {
      X: 1.35839844
      Y: -5.00354
      Z: 2.39115143
    }
    Rotation {
      Pitch: -19.7087078
    }
    Scale {
      X: 0.362736046
      Y: 0.362736046
      Z: 0.362736046
    }
  }
  ParentId: 16089227631073693603
  ChildIds: 12516663176143181932
  ChildIds: 1873581829960731526
  ChildIds: 15686409000195355372
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
  Id: 15686409000195355372
  Name: "Bone Human Tibula 01"
  Transform {
    Location {
      X: 99.3956833
      Y: -52.642849
      Z: 8.40085793
    }
    Rotation {
      Pitch: 69.6488113
      Yaw: -176.896255
      Roll: -178.768387
    }
    Scale {
      X: 1.80733383
      Y: 1.8073312
      Z: 1.30452335
    }
  }
  ParentId: 18237226177487678230
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:forceoff"
  }
  CoreMesh {
    MeshAsset {
      Id: 1190425863537549876
    }
    Teams {
    }
    DisableCastShadows: true
    StaticMesh {
      Physics {
      }
      BoundsScale: 1
    }
  }
  Relevance {
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 1873581829960731526
  Name: "Rock 02"
  Transform {
    Location {
      X: 5.38057
      Y: -4.38595057
      Z: -4.38265514
    }
    Rotation {
      Pitch: -29.1217041
      Yaw: 159.214554
      Roll: 6.8412287e-06
    }
    Scale {
      X: 0.217066422
      Y: 0.288306057
      Z: 0.362167388
    }
  }
  ParentId: 18237226177487678230
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 2715939630273116812
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:utile"
      Float: 9.61258602
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:vtile"
      Float: 10.1306829
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 1
        G: 0.326622546
        B: 0.18
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
    Value: "mc:ecollisionsetting:forceoff"
  }
  CoreMesh {
    MeshAsset {
      Id: 2260950217581256970
    }
    Teams {
    }
    DisableCastShadows: true
    StaticMesh {
      Physics {
      }
      BoundsScale: 1
    }
  }
  Relevance {
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 12516663176143181932
  Name: "Rock 02"
  Transform {
    Location {
      X: -0.466118515
      Y: -14.4255466
      Z: -4.26602888
    }
    Rotation {
      Pitch: -29.1216125
      Yaw: 159.214508
      Roll: 7.81854123e-06
    }
    Scale {
      X: 0.205369696
      Y: 0.272770464
      Z: 0.342651933
    }
  }
  ParentId: 18237226177487678230
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 2715939630273116812
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:utile"
      Float: 9.61258602
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:vtile"
      Float: 10.1306829
    }
  }
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:forceon"
  }
  CoreMesh {
    MeshAsset {
      Id: 2260950217581256970
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    DisableCastShadows: true
    StaticMesh {
      Physics {
      }
      BoundsScale: 1
    }
  }
  Relevance {
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 2320252288426866346
  Name: "Axe"
  Transform {
    Location {
      X: 102.779541
      Y: 56.4039307
      Z: 136.401505
    }
    Rotation {
      Yaw: -19.8813705
      Roll: 13.2090778
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 7220784063454029254
  ChildIds: 3721960490436596019
  ChildIds: 12347710187127218006
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
  Id: 12347710187127218006
  Name: "Hatchet - Blade"
  Transform {
    Location {
      X: 7.24975586
      Y: -0.0126953125
    }
    Rotation {
      Pitch: -82.8893509
      Yaw: 179.999802
      Roll: -179.999634
    }
    Scale {
      X: 1.27142298
      Y: 0.602960348
      Z: 2.25605607
    }
  }
  ParentId: 2320252288426866346
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_Detail1:id"
      AssetReference {
        Id: 988091216586047331
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 988091216586047331
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
    Overrides {
      Name: "ma:Shared_Detail1:smart"
      Bool: false
    }
    Overrides {
      Name: "ma:Shared_Detail1:utile"
      Float: 2.58747983
    }
    Overrides {
      Name: "ma:Shared_Detail1:vtile"
      Float: 3.73651409
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:utile"
      Float: 4.60957432
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:vtile"
      Float: 6.31614208
    }
  }
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:forceoff"
  }
  CoreMesh {
    MeshAsset {
      Id: 4281380979366999084
    }
    Teams {
    }
    StaticMesh {
      Physics {
      }
      BoundsScale: 1
    }
  }
  Relevance {
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 3721960490436596019
  Name: "Bone Human Humerus 01"
  Transform {
    Location {
      X: -7.24963379
      Y: 0.0128173828
      Z: 1.39552307
    }
    Rotation {
      Pitch: -69.9693451
      Yaw: -179.999954
      Roll: -179.999893
    }
    Scale {
      X: 1.09493542
      Y: 0.606774807
      Z: 1.09493411
    }
  }
  ParentId: 2320252288426866346
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 889917629752285723
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:utile"
      Float: 26.0622749
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:vtile"
      Float: 27.4669838
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 0.51
        G: 0.212781459
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
    Value: "mc:ecollisionsetting:forceoff"
  }
  CoreMesh {
    MeshAsset {
      Id: 482873605194865923
    }
    Teams {
    }
    StaticMesh {
      Physics {
      }
      BoundsScale: 1
    }
  }
  Relevance {
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 5568480288917555061
  Name: "Blood"
  Transform {
    Location {
      X: 131.599121
      Y: 15.987793
      Z: 100.905045
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 7220784063454029254
  ChildIds: 3019486604060443749
  ChildIds: 15330671557709303994
  ChildIds: 5918380077114776473
  ChildIds: 16505225279613099175
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
  Id: 16505225279613099175
  Name: "Liquid Decal"
  Transform {
    Location {
      X: -3.48787332
      Y: -98.1730576
    }
    Rotation {
      Yaw: 88.285408
    }
    Scale {
      X: 0.379945248
      Y: 0.251527965
      Z: 0.361457288
    }
  }
  ParentId: 5568480288917555061
  UnregisteredParameters {
    Overrides {
      Name: "bp:Type"
      Enum {
        Value: "mc:eliquiddecaltype:0"
      }
    }
    Overrides {
      Name: "bp:color"
      Color {
        R: 1
        A: 1
      }
    }
    Overrides {
      Name: "bp:Stain"
      Bool: true
    }
    Overrides {
      Name: "bp:Wet"
      Float: 1
    }
    Overrides {
      Name: "bp:Shape Index"
      Int: 4
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
      Id: 5931224016695282927
    }
    TeamSettings {
    }
    DecalBP {
    }
  }
  Relevance {
    Value: "mc:eproxyrelevance:high"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 5918380077114776473
  Name: "Liquid Decal"
  Transform {
    Location {
      X: 0.98948735
      Y: 20.9249363
    }
    Rotation {
      Yaw: -94.6048584
    }
    Scale {
      X: 0.379944324
      Y: 0.441601872
      Z: 0.0571991913
    }
  }
  ParentId: 5568480288917555061
  UnregisteredParameters {
    Overrides {
      Name: "bp:Type"
      Enum {
        Value: "mc:eliquiddecaltype:0"
      }
    }
    Overrides {
      Name: "bp:color"
      Color {
        R: 1
        A: 1
      }
    }
    Overrides {
      Name: "bp:Stain"
      Bool: true
    }
    Overrides {
      Name: "bp:Wet"
      Float: 1
    }
    Overrides {
      Name: "bp:Shape Index"
      Int: 4
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
      Id: 5931224016695282927
    }
    TeamSettings {
    }
    DecalBP {
    }
  }
  Relevance {
    Value: "mc:eproxyrelevance:high"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 15330671557709303994
  Name: "Liquid Decal"
  Transform {
    Location {
      X: -130.256027
      Y: 212.105209
      Z: -98.2711945
    }
    Rotation {
      Yaw: 165.555115
    }
    Scale {
      X: 0.379945278
      Y: 0.251527965
      Z: 0.0571991913
    }
  }
  ParentId: 5568480288917555061
  UnregisteredParameters {
    Overrides {
      Name: "bp:Type"
      Enum {
        Value: "mc:eliquiddecaltype:0"
      }
    }
    Overrides {
      Name: "bp:color"
      Color {
        R: 1
        A: 1
      }
    }
    Overrides {
      Name: "bp:Stain"
      Bool: true
    }
    Overrides {
      Name: "bp:Wet"
      Float: 1
    }
    Overrides {
      Name: "bp:Shape Index"
      Int: 2
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
      Id: 5931224016695282927
    }
    TeamSettings {
    }
    DecalBP {
    }
  }
  Relevance {
    Value: "mc:eproxyrelevance:high"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 3019486604060443749
  Name: "Decal Stains Round 01"
  Transform {
    Location {
      X: -130.62471
      Y: 223.183105
      Z: -105.523827
    }
    Rotation {
      Yaw: 35.3697586
    }
    Scale {
      X: 0.325321078
      Y: 0.325321078
      Z: 0.0599936768
    }
  }
  ParentId: 5568480288917555061
  UnregisteredParameters {
    Overrides {
      Name: "bp:color"
      Color {
        R: 0.0520833321
        G: 0.00487034209
        B: 0.00590658747
        A: 1
      }
    }
    Overrides {
      Name: "bp:Sort Order"
      Int: 1
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
      Id: 12385794193739794509
    }
    TeamSettings {
    }
    DecalBP {
    }
  }
  Relevance {
    Value: "mc:eproxyrelevance:high"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 15513905219182131457
  Name: "Sausages"
  Transform {
    Location {
      X: 134.388031
      Y: 63.8026314
      Z: 125.25737
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 7220784063454029254
  ChildIds: 9134808561737263219
  ChildIds: 17714406210277358602
  ChildIds: 8497695613913079825
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
  Id: 8497695613913079825
  Name: "Sausage"
  Transform {
    Location {
      X: -3.67465281
      Y: -135.852798
      Z: 50.5867844
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 15513905219182131457
  ChildIds: 2838131189602658249
  ChildIds: 10716575246110009869
  ChildIds: 909745383273924471
  ChildIds: 8916533837162407330
  ChildIds: 4582957407954952092
  ChildIds: 11939605523175956950
  Collidable_v2 {
    Value: "mc:ecollisionsetting:forceoff"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:forceoff"
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
  Id: 11939605523175956950
  Name: "Capsule"
  Transform {
    Location {
      X: 17.5211182
      Y: -6.39147949
      Z: 26.6393433
    }
    Rotation {
      Yaw: -168.793655
      Roll: 1.67819035
    }
    Scale {
      X: 0.121476889
      Y: 0.121476889
      Z: 0.170185238
    }
  }
  ParentId: 8497695613913079825
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 2715939630273116812
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:utile"
      Float: 2.32959223
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:vtile"
      Float: 3.36410618
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 1
        G: 0.125496745
        B: 0.0500000119
        A: 1
      }
    }
  }
  Collidable_v2 {
    Value: "mc:ecollisionsetting:forceoff"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:forceoff"
  }
  CoreMesh {
    MeshAsset {
      Id: 5944393796542654307
    }
    Teams {
    }
    DisableCastShadows: true
    StaticMesh {
      Physics {
      }
      BoundsScale: 1
    }
  }
  Relevance {
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 4582957407954952092
  Name: "Capsule"
  Transform {
    Location {
      X: 17.2032471
      Y: -4.78881836
      Z: 57.4881439
    }
    Rotation {
      Yaw: -168.793991
      Roll: -2.95507908
    }
    Scale {
      X: 0.121476889
      Y: 0.121476889
      Z: 0.170185238
    }
  }
  ParentId: 8497695613913079825
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 2715939630273116812
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:utile"
      Float: 2.32959223
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:vtile"
      Float: 3.36410618
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 1
        G: 0.125496745
        B: 0.0500000119
        A: 1
      }
    }
  }
  Collidable_v2 {
    Value: "mc:ecollisionsetting:forceoff"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:forceoff"
  }
  CoreMesh {
    MeshAsset {
      Id: 5944393796542654307
    }
    Teams {
    }
    DisableCastShadows: true
    StaticMesh {
      Physics {
      }
      BoundsScale: 1
    }
  }
  Relevance {
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 8916533837162407330
  Name: "Capsule"
  Transform {
    Location {
      X: 3.60424805
      Y: 1.03857422
      Z: 77.6066284
    }
    Rotation {
      Pitch: -74.6707687
      Yaw: -169.07663
      Roll: -26.7406216
    }
    Scale {
      X: 0.121476918
      Y: 0.121477373
      Z: 0.13982816
    }
  }
  ParentId: 8497695613913079825
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 2715939630273116812
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:utile"
      Float: 2.32959223
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:vtile"
      Float: 3.36410618
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 1
        G: 0.125496745
        B: 0.0500000119
        A: 1
      }
    }
  }
  Collidable_v2 {
    Value: "mc:ecollisionsetting:forceoff"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:forceoff"
  }
  CoreMesh {
    MeshAsset {
      Id: 5944393796542654307
    }
    Teams {
    }
    DisableCastShadows: true
    StaticMesh {
      Physics {
      }
      BoundsScale: 1
    }
  }
  Relevance {
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 909745383273924471
  Name: "Capsule"
  Transform {
    Location {
      X: -12.776001
      Y: 2.83154297
      Z: 62.1291809
    }
    Rotation {
      Yaw: -168.793915
      Roll: 0.0771047398
    }
    Scale {
      X: 0.121476889
      Y: 0.121476889
      Z: 0.170185238
    }
  }
  ParentId: 8497695613913079825
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 2715939630273116812
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:utile"
      Float: 2.32959223
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:vtile"
      Float: 3.36410618
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 1
        G: 0.125496745
        B: 0.0500000119
        A: 1
      }
    }
  }
  Collidable_v2 {
    Value: "mc:ecollisionsetting:forceoff"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:forceoff"
  }
  CoreMesh {
    MeshAsset {
      Id: 5944393796542654307
    }
    Teams {
    }
    DisableCastShadows: true
    StaticMesh {
      Physics {
      }
      BoundsScale: 1
    }
  }
  Relevance {
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 10716575246110009869
  Name: "Capsule"
  Transform {
    Location {
      X: -12.776001
      Y: 2.83154297
      Z: 31.2371216
    }
    Rotation {
      Yaw: -168.794022
      Roll: 7.43356705
    }
    Scale {
      X: 0.121476889
      Y: 0.121476889
      Z: 0.170185238
    }
  }
  ParentId: 8497695613913079825
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 2715939630273116812
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:utile"
      Float: 2.32959223
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:vtile"
      Float: 3.36410618
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 1
        G: 0.125496745
        B: 0.0500000119
        A: 1
      }
    }
  }
  Collidable_v2 {
    Value: "mc:ecollisionsetting:forceoff"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:forceoff"
  }
  CoreMesh {
    MeshAsset {
      Id: 5944393796542654307
    }
    Teams {
    }
    DisableCastShadows: true
    StaticMesh {
      Physics {
      }
      BoundsScale: 1
    }
  }
  Relevance {
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 2838131189602658249
  Name: "Capsule"
  Transform {
    Location {
      X: -12.776001
      Y: 4.47900391
    }
    Rotation {
      Yaw: -168.793671
      Roll: 0.590770483
    }
    Scale {
      X: 0.121476889
      Y: 0.121476889
      Z: 0.170185238
    }
  }
  ParentId: 8497695613913079825
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 2715939630273116812
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:utile"
      Float: 2.32959223
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:vtile"
      Float: 3.36410618
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 1
        G: 0.125496745
        B: 0.0500000119
        A: 1
      }
    }
  }
  Collidable_v2 {
    Value: "mc:ecollisionsetting:forceoff"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:forceoff"
  }
  CoreMesh {
    MeshAsset {
      Id: 5944393796542654307
    }
    Teams {
    }
    DisableCastShadows: true
    StaticMesh {
      Physics {
      }
      BoundsScale: 1
    }
  }
  Relevance {
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 17714406210277358602
  Name: "Sausage"
  Transform {
    Location {
      X: 1.56350744
      Y: 34.3862572
      Z: 49.6768112
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 15513905219182131457
  ChildIds: 13298761839560290455
  ChildIds: 5926835893197198975
  ChildIds: 14796549899442241304
  ChildIds: 8166129447193265944
  ChildIds: 4564889833071320100
  ChildIds: 6794711389837656430
  Collidable_v2 {
    Value: "mc:ecollisionsetting:forceoff"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:forceoff"
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
  Id: 6794711389837656430
  Name: "Capsule"
  Transform {
    Location {
      X: 12.9475098
      Y: 2.26745605
      Z: 31.1933899
    }
    Rotation {
      Yaw: -139.721436
      Roll: -7.8679285
    }
    Scale {
      X: 0.121476889
      Y: 0.121476889
      Z: 0.170185238
    }
  }
  ParentId: 17714406210277358602
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 2715939630273116812
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:utile"
      Float: 2.32959223
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:vtile"
      Float: 3.36410618
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 1
        G: 0.560066223
        B: 0.269999981
        A: 1
      }
    }
  }
  Collidable_v2 {
    Value: "mc:ecollisionsetting:forceoff"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:forceoff"
  }
  CoreMesh {
    MeshAsset {
      Id: 5944393796542654307
    }
    Teams {
    }
    DisableCastShadows: true
    StaticMesh {
      Physics {
      }
      BoundsScale: 1
    }
  }
  Relevance {
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 4564889833071320100
  Name: "Capsule"
  Transform {
    Location {
      X: 11.8913574
      Y: 3.51379395
      Z: 62.0421906
    }
    Rotation {
      Yaw: -139.721512
      Roll: -2.9550786
    }
    Scale {
      X: 0.121476889
      Y: 0.121476889
      Z: 0.170185238
    }
  }
  ParentId: 17714406210277358602
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 2715939630273116812
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:utile"
      Float: 2.32959223
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:vtile"
      Float: 3.36410618
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 1
        G: 0.560066223
        B: 0.269999981
        A: 1
      }
    }
  }
  Collidable_v2 {
    Value: "mc:ecollisionsetting:forceoff"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:forceoff"
  }
  CoreMesh {
    MeshAsset {
      Id: 5944393796542654307
    }
    Teams {
    }
    DisableCastShadows: true
    StaticMesh {
      Physics {
      }
      BoundsScale: 1
    }
  }
  Relevance {
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 8166129447193265944
  Name: "Capsule"
  Transform {
    Location {
      X: -2.82653809
      Y: 1.99926758
      Z: 82.160675
    }
    Rotation {
      Pitch: -74.6708221
      Yaw: -140.00415
      Roll: -26.741291
    }
    Scale {
      X: 0.121476918
      Y: 0.121477373
      Z: 0.13982816
    }
  }
  ParentId: 17714406210277358602
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 2715939630273116812
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:utile"
      Float: 2.32959223
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:vtile"
      Float: 3.36410618
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 1
        G: 0.560066223
        B: 0.269999981
        A: 1
      }
    }
  }
  Collidable_v2 {
    Value: "mc:ecollisionsetting:forceoff"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:forceoff"
  }
  CoreMesh {
    MeshAsset {
      Id: 5944393796542654307
    }
    Teams {
    }
    DisableCastShadows: true
    StaticMesh {
      Physics {
      }
      BoundsScale: 1
    }
  }
  Relevance {
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 14796549899442241304
  Name: "Capsule"
  Transform {
    Location {
      X: -18.0137939
      Y: -4.39331055
      Z: 66.6832275
    }
    Rotation {
      Yaw: -139.721375
      Roll: 0.0771053508
    }
    Scale {
      X: 0.121476889
      Y: 0.121476889
      Z: 0.170185238
    }
  }
  ParentId: 17714406210277358602
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 2715939630273116812
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:utile"
      Float: 2.32959223
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:vtile"
      Float: 3.36410618
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 1
        G: 0.560066223
        B: 0.269999981
        A: 1
      }
    }
  }
  Collidable_v2 {
    Value: "mc:ecollisionsetting:forceoff"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:forceoff"
  }
  CoreMesh {
    MeshAsset {
      Id: 5944393796542654307
    }
    Teams {
    }
    DisableCastShadows: true
    StaticMesh {
      Physics {
      }
      BoundsScale: 1
    }
  }
  Relevance {
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 5926835893197198975
  Name: "Capsule"
  Transform {
    Location {
      X: -18.0137939
      Y: -4.39331055
      Z: 35.7911682
    }
    Rotation {
      Yaw: -139.721436
      Roll: 7.43329096
    }
    Scale {
      X: 0.121476889
      Y: 0.121476889
      Z: 0.170185238
    }
  }
  ParentId: 17714406210277358602
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 2715939630273116812
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:utile"
      Float: 2.32959223
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:vtile"
      Float: 3.36410618
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 1
        G: 0.560066223
        B: 0.269999981
        A: 1
      }
    }
  }
  Collidable_v2 {
    Value: "mc:ecollisionsetting:forceoff"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:forceoff"
  }
  CoreMesh {
    MeshAsset {
      Id: 5944393796542654307
    }
    Teams {
    }
    DisableCastShadows: true
    StaticMesh {
      Physics {
      }
      BoundsScale: 1
    }
  }
  Relevance {
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 13298761839560290455
  Name: "Capsule"
  Transform {
    Location {
      X: 14.0155029
      Y: 1.00634766
    }
    Rotation {
      Yaw: -139.721436
      Roll: -0.679351866
    }
    Scale {
      X: 0.121476889
      Y: 0.121476889
      Z: 0.170185238
    }
  }
  ParentId: 17714406210277358602
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 2715939630273116812
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:utile"
      Float: 2.32959223
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:vtile"
      Float: 3.36410618
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 1
        G: 0.560066223
        B: 0.269999981
        A: 1
      }
    }
  }
  Collidable_v2 {
    Value: "mc:ecollisionsetting:forceoff"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:forceoff"
  }
  CoreMesh {
    MeshAsset {
      Id: 5944393796542654307
    }
    Teams {
    }
    DisableCastShadows: true
    StaticMesh {
      Physics {
      }
      BoundsScale: 1
    }
  }
  Relevance {
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 9134808561737263219
  Name: "Sausage"
  Transform {
    Location {
      X: 2.1115787
      Y: 65.2496948
      Z: 22.7253494
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 15513905219182131457
  ChildIds: 8257559037697368108
  ChildIds: 4699720196712330243
  ChildIds: 13602029584388286295
  ChildIds: 10030985070528923638
  ChildIds: 6661129978137048255
  ChildIds: 10229870268861893871
  ChildIds: 1717890694522846996
  ChildIds: 9080468372298077937
  Collidable_v2 {
    Value: "mc:ecollisionsetting:forceoff"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:forceoff"
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
  Id: 9080468372298077937
  Name: "Capsule"
  Transform {
    Location {
      X: -15.4893799
      Y: 10.3670654
      Z: 28.0493011
    }
    Rotation {
      Roll: -0.679351807
    }
    Scale {
      X: 0.121476889
      Y: 0.121476889
      Z: 0.170185238
    }
  }
  ParentId: 9134808561737263219
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 2715939630273116812
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:utile"
      Float: 2.32959223
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:vtile"
      Float: 3.36410618
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 1
        G: 0.329801321
        B: 0.120000005
        A: 1
      }
    }
  }
  Collidable_v2 {
    Value: "mc:ecollisionsetting:forceoff"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:forceoff"
  }
  CoreMesh {
    MeshAsset {
      Id: 5944393796542654307
    }
    Teams {
    }
    DisableCastShadows: true
    StaticMesh {
      Physics {
      }
      BoundsScale: 1
    }
  }
  Relevance {
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 1717890694522846996
  Name: "Capsule"
  Transform {
    Location {
      X: -15.4893799
      Y: 8.71472168
      Z: 59.242691
    }
    Rotation {
      Roll: -7.86634111
    }
    Scale {
      X: 0.121476889
      Y: 0.121476889
      Z: 0.170185238
    }
  }
  ParentId: 9134808561737263219
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 2715939630273116812
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:utile"
      Float: 2.32959223
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:vtile"
      Float: 3.36410618
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 1
        G: 0.329801321
        B: 0.120000005
        A: 1
      }
    }
  }
  Collidable_v2 {
    Value: "mc:ecollisionsetting:forceoff"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:forceoff"
  }
  CoreMesh {
    MeshAsset {
      Id: 5944393796542654307
    }
    Teams {
    }
    DisableCastShadows: true
    StaticMesh {
      Physics {
      }
      BoundsScale: 1
    }
  }
  Relevance {
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 10229870268861893871
  Name: "Capsule"
  Transform {
    Location {
      X: -15.4893799
      Y: 7.08056641
      Z: 90.0914917
    }
    Rotation {
      Roll: -2.9550786
    }
    Scale {
      X: 0.121476889
      Y: 0.121476889
      Z: 0.170185238
    }
  }
  ParentId: 9134808561737263219
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 2715939630273116812
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:utile"
      Float: 2.32959223
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:vtile"
      Float: 3.36410618
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 1
        G: 0.329801321
        B: 0.120000005
        A: 1
      }
    }
  }
  Collidable_v2 {
    Value: "mc:ecollisionsetting:forceoff"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:forceoff"
  }
  CoreMesh {
    MeshAsset {
      Id: 5944393796542654307
    }
    Teams {
    }
    DisableCastShadows: true
    StaticMesh {
      Physics {
      }
      BoundsScale: 1
    }
  }
  Relevance {
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 6661129978137048255
  Name: "Capsule"
  Transform {
    Location {
      X: -3.28186035
      Y: -1.27893066
      Z: 110.209976
    }
    Rotation {
      Pitch: -74.6723938
      Yaw: -0.282317132
      Roll: -26.7443905
    }
    Scale {
      X: 0.121476918
      Y: 0.121477373
      Z: 0.13982816
    }
  }
  ParentId: 9134808561737263219
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 2715939630273116812
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:utile"
      Float: 2.32959223
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:vtile"
      Float: 3.36410618
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 1
        G: 0.329801321
        B: 0.120000005
        A: 1
      }
    }
  }
  Collidable_v2 {
    Value: "mc:ecollisionsetting:forceoff"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:forceoff"
  }
  CoreMesh {
    MeshAsset {
      Id: 5944393796542654307
    }
    Teams {
    }
    DisableCastShadows: true
    StaticMesh {
      Physics {
      }
      BoundsScale: 1
    }
  }
  Relevance {
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 10030985070528923638
  Name: "Capsule"
  Transform {
    Location {
      X: 12.4375
      Y: -6.2208252
      Z: 94.7325287
    }
    Rotation {
      Roll: 0.0771068558
    }
    Scale {
      X: 0.121476889
      Y: 0.121476889
      Z: 0.170185238
    }
  }
  ParentId: 9134808561737263219
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 2715939630273116812
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:utile"
      Float: 2.32959223
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:vtile"
      Float: 3.36410618
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 1
        G: 0.329801321
        B: 0.120000005
        A: 1
      }
    }
  }
  Collidable_v2 {
    Value: "mc:ecollisionsetting:forceoff"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:forceoff"
  }
  CoreMesh {
    MeshAsset {
      Id: 5944393796542654307
    }
    Teams {
    }
    DisableCastShadows: true
    StaticMesh {
      Physics {
      }
      BoundsScale: 1
    }
  }
  Relevance {
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 13602029584388286295
  Name: "Capsule"
  Transform {
    Location {
      X: 12.4375
      Y: -6.2208252
      Z: 63.8404694
    }
    Rotation {
      Roll: 7.43216085
    }
    Scale {
      X: 0.121476889
      Y: 0.121476889
      Z: 0.170185238
    }
  }
  ParentId: 9134808561737263219
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 2715939630273116812
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:utile"
      Float: 2.32959223
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:vtile"
      Float: 3.36410618
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 1
        G: 0.329801321
        B: 0.120000005
        A: 1
      }
    }
  }
  Collidable_v2 {
    Value: "mc:ecollisionsetting:forceoff"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:forceoff"
  }
  CoreMesh {
    MeshAsset {
      Id: 5944393796542654307
    }
    Teams {
    }
    DisableCastShadows: true
    StaticMesh {
      Physics {
      }
      BoundsScale: 1
    }
  }
  Relevance {
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 4699720196712330243
  Name: "Capsule"
  Transform {
    Location {
      X: 12.4375
      Y: -6.2208252
      Z: 32.6033478
    }
    Rotation {
      Roll: -5.3152194
    }
    Scale {
      X: 0.121476889
      Y: 0.121476889
      Z: 0.170185238
    }
  }
  ParentId: 9134808561737263219
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 2715939630273116812
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:utile"
      Float: 2.32959223
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:vtile"
      Float: 3.36410618
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 1
        G: 0.329801321
        B: 0.120000005
        A: 1
      }
    }
  }
  Collidable_v2 {
    Value: "mc:ecollisionsetting:forceoff"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:forceoff"
  }
  CoreMesh {
    MeshAsset {
      Id: 5944393796542654307
    }
    Teams {
    }
    DisableCastShadows: true
    StaticMesh {
      Physics {
      }
      BoundsScale: 1
    }
  }
  Relevance {
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 8257559037697368108
  Name: "Capsule"
  Transform {
    Location {
      X: 12.4375
      Y: -6.2208252
    }
    Rotation {
    }
    Scale {
      X: 0.121476889
      Y: 0.121476889
      Z: 0.170185238
    }
  }
  ParentId: 9134808561737263219
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 2715939630273116812
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:utile"
      Float: 2.32959223
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:vtile"
      Float: 3.36410618
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 1
        G: 0.329801321
        B: 0.120000005
        A: 1
      }
    }
  }
  Collidable_v2 {
    Value: "mc:ecollisionsetting:forceoff"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:forceoff"
  }
  CoreMesh {
    MeshAsset {
      Id: 5944393796542654307
    }
    Teams {
    }
    DisableCastShadows: true
    StaticMesh {
      Physics {
      }
      BoundsScale: 1
    }
  }
  Relevance {
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 13843380783998258237
  Name: "Simple Crate 150cm"
  Transform {
    Location {
      X: -39.5805969
      Y: -170.131302
      Z: -3.48784471
    }
    Rotation {
      Yaw: -38.4914551
    }
    Scale {
      X: 0.79446274
      Y: 0.79446274
      Z: 0.79446274
    }
  }
  ParentId: 7220784063454029254
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:forceoff"
  }
  CoreMesh {
    MeshAsset {
      Id: 9368501975616237166
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    StaticMesh {
      Physics {
      }
      BoundsScale: 1
    }
  }
  Relevance {
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 2740105147944378774
  Name: "Tarp"
  Transform {
    Location {
      X: -3.27011466
      Y: 14.9687471
      Z: 162.564743
    }
    Rotation {
    }
    Scale {
      X: 1.0329144
      Y: 1.0329144
      Z: 1.0329144
    }
  }
  ParentId: 7220784063454029254
  ChildIds: 14213050534237814074
  ChildIds: 11501798229963927008
  ChildIds: 95556786562373178
  ChildIds: 10067855966136558317
  ChildIds: 8448513896813987620
  ChildIds: 7148837184983709731
  ChildIds: 11383850869070137197
  ChildIds: 13771081278985838788
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
  Id: 13771081278985838788
  Name: "Cone - Truncated Concave"
  Transform {
    Location {
      X: 138.701767
      Y: 156.427246
      Z: 130.553223
    }
    Rotation {
      Pitch: -82.242157
      Yaw: 129.809601
      Roll: 153.842773
    }
    Scale {
      X: 0.43613559
      Y: 0.413591951
      Z: 0.906511903
    }
  }
  ParentId: 2740105147944378774
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 14211313689670436799
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 0.489583343
        G: 0.371437371
        B: 0.135145381
        A: 1
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:utile"
      Float: 0.328566402
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:vtile"
      Float: 0.392695218
    }
  }
  Collidable_v2 {
    Value: "mc:ecollisionsetting:forceoff"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:forceoff"
  }
  CoreMesh {
    MeshAsset {
      Id: 15311550138640852139
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    StaticMesh {
      Physics {
      }
      BoundsScale: 1
    }
  }
  Relevance {
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 11383850869070137197
  Name: "Ellipsoid - Truncated"
  Transform {
    Location {
      X: 150.477936
      Y: 13.479063
      Z: 124.438477
    }
    Rotation {
      Pitch: -82.3469543
      Yaw: 5.10156488
      Roll: 86.1190948
    }
    Scale {
      X: 0.52999717
      Y: 0.546497762
      Z: 1.0853461
    }
  }
  ParentId: 2740105147944378774
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 14211313689670436799
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 0.415000021
        G: 0.359071195
        B: 0.18675001
        A: 1
      }
    }
  }
  Collidable_v2 {
    Value: "mc:ecollisionsetting:forceoff"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:forceoff"
  }
  CoreMesh {
    MeshAsset {
      Id: 1471773936938775611
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    StaticMesh {
      Physics {
      }
      BoundsScale: 1
    }
  }
  Relevance {
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 7148837184983709731
  Name: "Cone - Truncated Concave"
  Transform {
    Location {
      X: 137.95575
      Y: 161.065308
      Z: 133.159195
    }
    Rotation {
      Pitch: -77.8391418
      Yaw: 112.836807
      Roll: 159.631958
    }
    Scale {
      X: 0.279574543
      Y: 0.323870808
      Z: 0.687103271
    }
  }
  ParentId: 2740105147944378774
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 14211313689670436799
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 0.489583343
        G: 0.371437371
        B: 0.135145381
        A: 1
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:utile"
      Float: 0.328566402
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:vtile"
      Float: 0.392695218
    }
  }
  Collidable_v2 {
    Value: "mc:ecollisionsetting:forceoff"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:forceoff"
  }
  CoreMesh {
    MeshAsset {
      Id: 15311550138640852139
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    StaticMesh {
      Physics {
      }
      BoundsScale: 1
    }
  }
  Relevance {
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 8448513896813987620
  Name: "Cone - Truncated Concave"
  Transform {
    Location {
      X: 146.845947
      Y: -147.495148
      Z: 132.046982
    }
    Rotation {
      Pitch: 4.10570145
      Yaw: 175.090561
      Roll: -95.8820801
    }
    Scale {
      X: 0.377945155
      Y: 0.291457772
      Z: 0.713927448
    }
  }
  ParentId: 2740105147944378774
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 14211313689670436799
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 0.489583343
        G: 0.371437371
        B: 0.135145381
        A: 1
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:utile"
      Float: 0.240500733
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:vtile"
      Float: 0.287441105
    }
  }
  Collidable_v2 {
    Value: "mc:ecollisionsetting:forceoff"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:forceoff"
  }
  CoreMesh {
    MeshAsset {
      Id: 15311550138640852139
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    StaticMesh {
      Physics {
      }
      BoundsScale: 1
    }
  }
  Relevance {
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 10067855966136558317
  Name: "Cone - Truncated Concave"
  Transform {
    Location {
      X: 151.059753
      Y: -145.729065
      Z: 129.85463
    }
    Rotation {
      Pitch: 21.8307934
      Yaw: 178.331009
      Roll: -98.4920044
    }
    Scale {
      X: 0.45225805
      Y: 0.404120624
      Z: 1.06697595
    }
  }
  ParentId: 2740105147944378774
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 14211313689670436799
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 0.489583343
        G: 0.371437371
        B: 0.135145381
        A: 1
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:utile"
      Float: 0.274910092
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:vtile"
      Float: 0.410595059
    }
  }
  Collidable_v2 {
    Value: "mc:ecollisionsetting:forceoff"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:forceoff"
  }
  CoreMesh {
    MeshAsset {
      Id: 15311550138640852139
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    StaticMesh {
      Physics {
      }
      BoundsScale: 1
    }
  }
  Relevance {
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 95556786562373178
  Name: "Cone - Truncated Concave"
  Transform {
    Location {
      X: 147.642181
      Y: -137.513626
      Z: 130.500885
    }
    Rotation {
      Pitch: -22.5083618
      Yaw: -7.42526245
      Roll: 99.3663483
    }
    Scale {
      X: 0.527542055
      Y: 0.474544764
      Z: 1.04226291
    }
  }
  ParentId: 2740105147944378774
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 7224969687089129499
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 0.415000021
        G: 0.359071195
        B: 0.18675001
        A: 1
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:utile"
      Float: 0.412029445
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:vtile"
      Float: 0.560945272
    }
  }
  Collidable_v2 {
    Value: "mc:ecollisionsetting:forceoff"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:forceoff"
  }
  CoreMesh {
    MeshAsset {
      Id: 15311550138640852139
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    StaticMesh {
      Physics {
      }
      BoundsScale: 1
    }
  }
  Relevance {
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 11501798229963927008
  Name: "Cone - Truncated Concave"
  Transform {
    Location {
      X: 140.967422
      Y: 148.638992
      Z: 131.805527
    }
    Rotation {
      Pitch: -50.1219482
      Yaw: 24.6302261
      Roll: -108.884857
    }
    Scale {
      X: 0.419639349
      Y: 0.525225699
      Z: 0.971526325
    }
  }
  ParentId: 2740105147944378774
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 7224969687089129499
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 0.415000021
        G: 0.359071195
        B: 0.18675001
        A: 1
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:utile"
      Float: 0.412029445
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:vtile"
      Float: 0.915924489
    }
  }
  Collidable_v2 {
    Value: "mc:ecollisionsetting:forceoff"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:forceoff"
  }
  CoreMesh {
    MeshAsset {
      Id: 15311550138640852139
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    StaticMesh {
      Physics {
      }
      BoundsScale: 1
    }
  }
  Relevance {
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 14213050534237814074
  Name: "Ellipsoid - Truncated"
  Transform {
    Location {
      X: 150.477936
      Y: 13.479063
      Z: 124.438477
    }
    Rotation {
      Pitch: -56.7672729
      Yaw: -179.532913
      Roll: -89.057251
    }
    Scale {
      X: 0.571809053
      Y: 0.589609683
      Z: 1.06366503
    }
  }
  ParentId: 2740105147944378774
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 7224969687089129499
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 0.415000021
        G: 0.359071195
        B: 0.18675001
        A: 1
      }
    }
  }
  Collidable_v2 {
    Value: "mc:ecollisionsetting:forceoff"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:forceoff"
  }
  CoreMesh {
    MeshAsset {
      Id: 1471773936938775611
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    StaticMesh {
      Physics {
      }
      BoundsScale: 1
    }
  }
  Relevance {
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 9204708018921120717
  Name: "Tent Supports"
  Transform {
    Location {
      X: -1.61108398
      Y: 14.052124
      Z: -3.60272217
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 7220784063454029254
  ChildIds: 2294445691229004917
  ChildIds: 870370374519499785
  ChildIds: 15602658448890848790
  ChildIds: 10956060349611730423
  ChildIds: 11019552214913020684
  ChildIds: 7146815002647938236
  ChildIds: 15154244991775743462
  ChildIds: 10290554656248410565
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
  Id: 10290554656248410565
  Name: "Support"
  Transform {
    Location {
      X: -143.667
      Y: -276.018921
      Z: 23.3027401
    }
    Rotation {
      Pitch: 11.400692
      Yaw: -121.166946
      Roll: -15.9931641
    }
    Scale {
      X: 1.18712234
      Y: 1.18712234
      Z: 1.18712234
    }
  }
  ParentId: 9204708018921120717
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
  Id: 15154244991775743462
  Name: "Support"
  Transform {
    Location {
      X: -175.798508
      Y: 289.846771
      Z: 27.5933094
    }
    Rotation {
      Pitch: 11.400692
      Yaw: 48.4536171
      Roll: -15.9905701
    }
    Scale {
      X: 1.18712234
      Y: 1.18712234
      Z: 1.18712234
    }
  }
  ParentId: 9204708018921120717
  ChildIds: 11044205630714977489
  ChildIds: 9438630936425881859
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
  Id: 9438630936425881859
  Name: "Craftsman Stairs 01 Pillar"
  Transform {
    Location {
      X: -299.718903
      Y: -286.446777
      Z: 107.89299
    }
    Rotation {
      Pitch: -14.5674133
      Yaw: -4.6541748
      Roll: 18.9073257
    }
    Scale {
      X: 0.323938519
      Y: 0.411474466
      Z: 6.39681
    }
  }
  ParentId: 15154244991775743462
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_Detail1:id"
      AssetReference {
        Id: 889917629752285723
      }
    }
    Overrides {
      Name: "ma:Shared_Detail1:color"
      Color {
        R: 1
        G: 1
        B: 1
        A: 1
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 889917629752285723
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:utile"
      Float: 0.429310799
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:vtile"
      Float: 3.19070506
    }
  }
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:forceoff"
  }
  CoreMesh {
    MeshAsset {
      Id: 6530006698448607407
    }
    Teams {
    }
    StaticMesh {
      Physics {
      }
      BoundsScale: 1
    }
  }
  Relevance {
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 11044205630714977489
  Name: "Craftsman Stairs 01 Pillar"
  Transform {
    Location {
      X: -25.9909897
      Y: -45.4031792
      Z: -10.5592289
    }
    Rotation {
      Pitch: -9.99823
      Yaw: -0.81073
      Roll: 7.78750706
    }
    Scale {
      X: 0.296994179
      Y: 0.377259642
      Z: 6.2986517
    }
  }
  ParentId: 15154244991775743462
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_Detail1:id"
      AssetReference {
        Id: 889917629752285723
      }
    }
    Overrides {
      Name: "ma:Shared_Detail1:color"
      Color {
        R: 1
        G: 1
        B: 1
        A: 1
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 889917629752285723
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:utile"
      Float: 0.429310799
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:vtile"
      Float: 3.19070506
    }
  }
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:forceoff"
  }
  CoreMesh {
    MeshAsset {
      Id: 6530006698448607407
    }
    Teams {
    }
    StaticMesh {
      Physics {
      }
      BoundsScale: 1
    }
  }
  Relevance {
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 7146815002647938236
  Name: "Support"
  Transform {
    Location {
      X: 207.39122
      Y: -222.750305
      Z: 20.0628204
    }
    Rotation {
      Pitch: 11.3204918
      Yaw: -93.7027893
      Roll: -15.9368591
    }
    Scale {
      X: 1.18712234
      Y: 1.18712234
      Z: 1.18712234
    }
  }
  ParentId: 9204708018921120717
  ChildIds: 11831536665604768677
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
  Id: 11831536665604768677
  Name: "Craftsman Stairs 01 Pillar"
  Transform {
    Location {
      X: -25.2601891
      Y: -18.9567528
      Z: 75.1237
    }
    Rotation {
      Yaw: 3.0738e-05
      Roll: -0.421905518
    }
    Scale {
      X: 3.41019893
      Y: 3.25093627
      Z: 8.33000374
    }
  }
  ParentId: 7146815002647938236
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_Detail1:id"
      AssetReference {
        Id: 889917629752285723
      }
    }
    Overrides {
      Name: "ma:Shared_Detail1:color"
      Color {
        R: 1
        G: 1
        B: 1
        A: 1
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 889917629752285723
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:utile"
      Float: 14.6294651
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:vtile"
      Float: 27.4669838
    }
  }
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:forceoff"
  }
  CoreMesh {
    MeshAsset {
      Id: 4489563712437375651
    }
    Teams {
    }
    StaticMesh {
      Physics {
      }
      BoundsScale: 1
    }
  }
  Relevance {
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 11019552214913020684
  Name: "Support"
  Transform {
    Location {
      X: 192.517303
      Y: 258.833527
      Z: 7.92845535
    }
    Rotation {
      Pitch: 11.3205185
      Yaw: -3.73345947
      Roll: -15.9337769
    }
    Scale {
      X: 1.18712234
      Y: 1.18712234
      Z: 1.18712234
    }
  }
  ParentId: 9204708018921120717
  ChildIds: 15014566259129341832
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
  Id: 15014566259129341832
  Name: "Craftsman Stairs 01 Pillar"
  Transform {
    Location {
      X: -11.3759251
      Y: -42.5366631
      Z: 95.9049911
    }
    Rotation {
      Pitch: 3.50036931
      Yaw: -11.1977844
      Roll: 4.42877054
    }
    Scale {
      X: 3.41020465
      Y: 3.25094867
      Z: 7.71806288
    }
  }
  ParentId: 11019552214913020684
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_Detail1:id"
      AssetReference {
        Id: 889917629752285723
      }
    }
    Overrides {
      Name: "ma:Shared_Detail1:color"
      Color {
        R: 1
        G: 1
        B: 1
        A: 1
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 889917629752285723
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:utile"
      Float: 14.6294651
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:vtile"
      Float: 27.4669838
    }
  }
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:forceoff"
  }
  CoreMesh {
    MeshAsset {
      Id: 4489563712437375651
    }
    Teams {
    }
    StaticMesh {
      Physics {
      }
      BoundsScale: 1
    }
  }
  Relevance {
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 10956060349611730423
  Name: "Supports"
  Transform {
    Location {
      X: -19.3444824
      Y: 1.12487793
      Z: 295.717468
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 9204708018921120717
  ChildIds: 11398279843333340295
  ChildIds: 10338843366734867199
  ChildIds: 11678092839152788010
  ChildIds: 2739995814399142938
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
  Id: 2739995814399142938
  Name: "Support"
  Transform {
    Location {
      X: -126.174675
      Y: 175.488403
      Z: -69.9376
    }
    Rotation {
      Pitch: 3.52467799
      Yaw: 178.599533
      Roll: 17.0475063
    }
    Scale {
      X: 0.178598642
      Y: 0.14691925
      Z: 3.19426847
    }
  }
  ParentId: 10956060349611730423
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_Detail1:id"
      AssetReference {
        Id: 889917629752285723
      }
    }
    Overrides {
      Name: "ma:Shared_Detail1:color"
      Color {
        R: 1
        G: 0.515695393
        B: 0.290000021
        A: 1
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 889917629752285723
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
      Float: 3.02881408
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 1
        G: 1
        B: 1
        A: 1
      }
    }
  }
  Collidable_v2 {
    Value: "mc:ecollisionsetting:forceoff"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:forceoff"
  }
  CoreMesh {
    MeshAsset {
      Id: 12905923173550510229
    }
    Teams {
    }
    DisableCastShadows: true
    StaticMesh {
      Physics {
      }
      BoundsScale: 1
    }
  }
  Relevance {
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 11678092839152788010
  Name: "Support"
  Transform {
    Location {
      X: -134.393661
      Y: -143.995926
      Z: -76.5662
    }
    Rotation {
      Pitch: 3.52467799
      Yaw: 178.599457
      Roll: -18.0749817
    }
    Scale {
      X: 0.178598642
      Y: 0.14691925
      Z: 3.19426847
    }
  }
  ParentId: 10956060349611730423
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_Detail1:id"
      AssetReference {
        Id: 889917629752285723
      }
    }
    Overrides {
      Name: "ma:Shared_Detail1:color"
      Color {
        R: 1
        G: 0.515695393
        B: 0.290000021
        A: 1
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 889917629752285723
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
      Float: 3.02881408
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 1
        G: 1
        B: 1
        A: 1
      }
    }
  }
  Collidable_v2 {
    Value: "mc:ecollisionsetting:forceoff"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:forceoff"
  }
  CoreMesh {
    MeshAsset {
      Id: 12905923173550510229
    }
    Teams {
    }
    DisableCastShadows: true
    StaticMesh {
      Physics {
      }
      BoundsScale: 1
    }
  }
  Relevance {
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 10338843366734867199
  Name: "Support"
  Transform {
    Location {
      X: -135.087021
      Y: 6.75796175
      Z: 87.8561478
    }
    Rotation {
      Yaw: 179.999954
      Roll: -89.5363464
    }
    Scale {
      X: 0.342265368
      Y: 0.281587273
      Z: 3.99982667
    }
  }
  ParentId: 10956060349611730423
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_Detail1:id"
      AssetReference {
        Id: 889917629752285723
      }
    }
    Overrides {
      Name: "ma:Shared_Detail1:color"
      Color {
        R: 1
        G: 0.515695393
        B: 0.290000021
        A: 1
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 889917629752285723
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
      Float: 1.25131452
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 1
        G: 1
        B: 1
        A: 1
      }
    }
  }
  Collidable_v2 {
    Value: "mc:ecollisionsetting:forceoff"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:forceoff"
  }
  CoreMesh {
    MeshAsset {
      Id: 12905923173550510229
    }
    Teams {
    }
    StaticMesh {
      Physics {
      }
      BoundsScale: 1
    }
  }
  Relevance {
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 11398279843333340295
  Name: "Support"
  Transform {
    Location {
      X: 139.516296
      Y: 0.909398079
      Z: -18.7682838
    }
    Rotation {
      Pitch: 0.0273480751
      Yaw: 179.417053
      Roll: -88.7852783
    }
    Scale {
      X: 0.334892929
      Y: 0.275511444
      Z: 2.91964579
    }
  }
  ParentId: 10956060349611730423
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_Detail1:id"
      AssetReference {
        Id: 889917629752285723
      }
    }
    Overrides {
      Name: "ma:Shared_Detail1:color"
      Color {
        R: 1
        G: 0.515695393
        B: 0.290000021
        A: 1
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 889917629752285723
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:utile"
      Float: 0.300543249
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:vtile"
      Float: 2.136307
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 1
        G: 1
        B: 1
        A: 1
      }
    }
  }
  Collidable_v2 {
    Value: "mc:ecollisionsetting:forceoff"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:forceoff"
  }
  CoreMesh {
    MeshAsset {
      Id: 12905923173550510229
    }
    Teams {
    }
    DisableCastShadows: true
    StaticMesh {
      Physics {
      }
      BoundsScale: 1
    }
  }
  Relevance {
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 15602658448890848790
  Name: "Support"
  Transform {
    Location {
      X: 11.3001776
      Y: 212.597855
      Z: 54.2298126
    }
    Rotation {
      Pitch: -2.68289185
      Yaw: -96.9205933
      Roll: -89.8716431
    }
    Scale {
      X: 0.167534024
      Y: 0.137838125
      Z: 3.03524828
    }
  }
  ParentId: 9204708018921120717
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_Detail1:id"
      AssetReference {
        Id: 889917629752285723
      }
    }
    Overrides {
      Name: "ma:Shared_Detail1:color"
      Color {
        R: 1
        G: 0.515695393
        B: 0.290000021
        A: 1
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 889917629752285723
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:utile"
      Float: 0.184063554
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:vtile"
      Float: 2.44195724
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 1
        G: 1
        B: 1
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
    Value: "mc:ecollisionsetting:forceoff"
  }
  CoreMesh {
    MeshAsset {
      Id: 12905923173550510229
    }
    Teams {
    }
    StaticMesh {
      Physics {
      }
      BoundsScale: 1
    }
  }
  Relevance {
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 870370374519499785
  Name: "Support"
  Transform {
    Location {
      X: 10.1241035
      Y: -180.410339
      Z: 156.551376
    }
    Rotation {
      Pitch: -2.6701355
      Yaw: -82.4727783
      Roll: -90.2926331
    }
    Scale {
      X: 0.177025855
      Y: 0.177000016
      Z: 2.71027493
    }
  }
  ParentId: 9204708018921120717
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_Detail1:id"
      AssetReference {
        Id: 889917629752285723
      }
    }
    Overrides {
      Name: "ma:Shared_Detail1:color"
      Color {
        R: 1
        G: 0.515695393
        B: 0.290000021
        A: 1
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 889917629752285723
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:utile"
      Float: 0.314242631
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:vtile"
      Float: 3.02881408
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 1
        G: 1
        B: 1
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
    Value: "mc:ecollisionsetting:forceoff"
  }
  CoreMesh {
    MeshAsset {
      Id: 12905923173550510229
    }
    Teams {
    }
    StaticMesh {
      Physics {
      }
      BoundsScale: 1
    }
  }
  Relevance {
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 2294445691229004917
  Name: "Support"
  Transform {
    Location {
      X: 136.923935
      Y: 5.83257723
      Z: 249.443146
    }
    Rotation {
      Pitch: -1.15911865
      Yaw: -179.926987
      Roll: -89.3528442
    }
    Scale {
      X: 0.177029163
      Y: 0.145636454
      Z: 3.39675021
    }
  }
  ParentId: 9204708018921120717
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_Detail1:id"
      AssetReference {
        Id: 889917629752285723
      }
    }
    Overrides {
      Name: "ma:Shared_Detail1:color"
      Color {
        R: 1
        G: 0.515695393
        B: 0.290000021
        A: 1
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 889917629752285723
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
      Float: 3.02881408
    }
  }
  Collidable_v2 {
    Value: "mc:ecollisionsetting:forceoff"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:forceoff"
  }
  CoreMesh {
    MeshAsset {
      Id: 12905923173550510229
    }
    Teams {
    }
    DisableCastShadows: true
    StaticMesh {
      Physics {
      }
      BoundsScale: 1
    }
  }
  Relevance {
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 14686071595657630075
  Name: "collision"
  Transform {
    Location {
      X: 11.8199787
      Y: -66.8749695
      Z: 105.505646
    }
    Rotation {
      Yaw: 35.3697624
    }
    Scale {
      X: 3.27016091
      Y: 3.27016091
      Z: 3.27016091
    }
  }
  ParentId: 7220784063454029254
  ChildIds: 4463256418059805930
  ChildIds: 4450428651891400191
  ChildIds: 15537600235903910713
  ChildIds: 10670782402053549325
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
  Id: 10670782402053549325
  Name: "Prism - 3-Sided"
  Transform {
    Location {
      X: -5.35507202
      Y: -20.8443241
      Z: 70.8679352
    }
    Rotation {
      Pitch: 75.9229736
      Yaw: -40.314209
      Roll: -89.9935303
    }
    Scale {
      X: 0.115429647
      Y: 1.12970054
      Z: 0.999993742
    }
  }
  ParentId: 14686071595657630075
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:forceoff"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:forceon"
  }
  CoreMesh {
    MeshAsset {
      Id: 10230959292029196430
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    DisableDistanceFieldLighting: true
    DisableCastShadows: true
    DisableReceiveDecals: true
    StaticMesh {
      Physics {
      }
      BoundsScale: 1
    }
  }
  Relevance {
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 15537600235903910713
  Name: "Prism - 4-Sided Trapezoid Right"
  Transform {
    Location {
      X: -66.1617203
      Y: -7.0649929
      Z: -33.8583794
    }
    Rotation {
      Pitch: 80.8383865
      Yaw: 73.9804382
      Roll: 6.44175816
    }
    Scale {
      X: 1.19314563
      Y: 1.97770226
      Z: 0.0866995528
    }
  }
  ParentId: 14686071595657630075
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:forceoff"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:forceon"
  }
  CoreMesh {
    MeshAsset {
      Id: 8538200685158062347
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    DisableDistanceFieldLighting: true
    DisableCastShadows: true
    DisableReceiveDecals: true
    StaticMesh {
      Physics {
      }
      BoundsScale: 1
    }
  }
  Relevance {
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 4450428651891400191
  Name: "Prism - 4-Sided Trapezoid Right"
  Transform {
    Location {
      X: 16.9052734
      Y: 108.06311
      Z: -30.6246948
    }
    Rotation {
      Pitch: -82.8921432
      Yaw: 17.9695377
      Roll: 21.7390575
    }
    Scale {
      X: -1.19323254
      Y: 1.97770226
      Z: 0.0866995528
    }
  }
  ParentId: 14686071595657630075
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:forceoff"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:forceon"
  }
  CoreMesh {
    MeshAsset {
      Id: 8538200685158062347
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    DisableDistanceFieldLighting: true
    DisableCastShadows: true
    DisableReceiveDecals: true
    StaticMesh {
      Physics {
      }
      BoundsScale: 1
    }
  }
  Relevance {
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 4463256418059805930
  Name: "Prism - 6-Sided Half"
  Transform {
    Location {
      X: 50.9256325
      Y: -7.7523756
      Z: -31.2922058
    }
    Rotation {
      Pitch: 84.1995
      Yaw: 119.171112
      Roll: -21.7480717
    }
    Scale {
      X: 2.12624073
      Y: 1.22918069
      Z: 0.167413071
    }
  }
  ParentId: 14686071595657630075
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:forceoff"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:forceon"
  }
  CoreMesh {
    MeshAsset {
      Id: 14448249526906174522
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    DisableDistanceFieldLighting: true
    DisableCastShadows: true
    DisableReceiveDecals: true
    StaticMesh {
      Physics {
      }
      BoundsScale: 1
    }
  }
  Relevance {
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 8044669490417411731
  Name: "Market Tent"
  Transform {
    Location {
      X: 3375.43799
      Y: -1977.17749
      Z: -203.757812
    }
    Rotation {
      Yaw: 144.860703
    }
    Scale {
      X: 1.64959538
      Y: 1.64959538
      Z: 1.64959538
    }
  }
  ParentId: 10151175561786695655
  ChildIds: 1969232765003426770
  ChildIds: 8306038768373390498
  ChildIds: 3757776603319249593
  ChildIds: 15756481750145165857
  ChildIds: 8536917522275721036
  ChildIds: 3642404607240590142
  ChildIds: 17181671971038447425
  ChildIds: 18115197909493748729
  ChildIds: 12830813687347298921
  ChildIds: 16207674228186408552
  ChildIds: 4757412719544802714
  ChildIds: 9713229598800621830
  ChildIds: 8354433120180750110
  ChildIds: 16497011125034836324
  ChildIds: 3742615958644571957
  ChildIds: 11852153077671336827
  ChildIds: 7007604278087188354
  ChildIds: 16642523468652129511
  ChildIds: 5826285808925523984
  ChildIds: 11414987332307145198
  ChildIds: 1808774454051466497
  ChildIds: 18047953195864549970
  ChildIds: 4028604633555840938
  ChildIds: 1897945110594884438
  ChildIds: 18131126480093650481
  ChildIds: 9685531168427016403
  ChildIds: 11848061030001276887
  ChildIds: 7489128300091707460
  ChildIds: 13816654746647781137
  ChildIds: 6700822449932656120
  ChildIds: 5803132068635410309
  ChildIds: 6425622146591502520
  ChildIds: 1478714173518934875
  ChildIds: 3614834430980394447
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
  Id: 3614834430980394447
  Name: "Support"
  Transform {
    Location {
      X: -33.5248451
      Y: 169.358734
      Z: 261.648865
    }
    Rotation {
      Pitch: 12.3441048
      Yaw: 1.35360622
      Roll: -91.9632492
    }
    Scale {
      X: 0.274001241
      Y: 0.185295
      Z: 0.700520933
    }
  }
  ParentId: 8044669490417411731
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_Detail1:id"
      AssetReference {
        Id: 889917629752285723
      }
    }
    Overrides {
      Name: "ma:Shared_Detail1:utile"
      Float: 1.78743935
    }
  }
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:forceon"
  }
  CoreMesh {
    MeshAsset {
      Id: 16701925266063006038
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    StaticMesh {
      Physics {
      }
      BoundsScale: 1
    }
  }
  Relevance {
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 1478714173518934875
  Name: "Support"
  Transform {
    Location {
      X: -95.1567
      Y: 148.347275
      Z: 216.664459
    }
    Rotation {
      Pitch: 0.617667615
      Yaw: 94.2845917
      Roll: -79.7558899
    }
    Scale {
      X: 0.260256
      Y: 0.283569217
      Z: 0.41638
    }
  }
  ParentId: 8044669490417411731
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_Detail1:id"
      AssetReference {
        Id: 889917629752285723
      }
    }
    Overrides {
      Name: "ma:Shared_Detail1:utile"
      Float: 1.78743935
    }
  }
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:forceon"
  }
  CoreMesh {
    MeshAsset {
      Id: 16701925266063006038
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    StaticMesh {
      Physics {
      }
      BoundsScale: 1
    }
  }
  Relevance {
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 6425622146591502520
  Name: "Tent"
  Transform {
    Location {
      X: 40.256546
      Y: -3.77083874
      Z: 249.020889
    }
    Rotation {
      Pitch: 87.7478714
      Yaw: -39.8944473
      Roll: 47.2757263
    }
    Scale {
      X: 0.620491445
      Y: 1.52550554
      Z: 2.91888237
    }
  }
  ParentId: 8044669490417411731
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 5597435254032670348
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: true
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:utile"
      Float: 0.238746986
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:vtile"
      Float: 0.986649692
    }
  }
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:forceon"
  }
  CoreMesh {
    MeshAsset {
      Id: 15389123512634345687
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    StaticMesh {
      Physics {
      }
      BoundsScale: 1
    }
  }
  Relevance {
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 5803132068635410309
  Name: "MergedModel"
  Transform {
    Location {
      X: -36.7134666
      Y: -7.50049543
      Z: 4.93092632
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 8044669490417411731
  ChildIds: 1187068872782599277
  ChildIds: 13496720999959292280
  ChildIds: 11952265600452726454
  ChildIds: 6343817196646536746
  ChildIds: 5583208225187756364
  ChildIds: 8959102238472766365
  ChildIds: 4917971283585988191
  ChildIds: 6452218443256657170
  ChildIds: 17926629523427189209
  ChildIds: 11595957404391373605
  ChildIds: 7999810847936279501
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
    Model {
    }
  }
  Relevance {
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 7999810847936279501
  Name: "Wooden Barrel"
  Transform {
    Location {
      X: -4.21783304
      Y: 189.860214
      Z: 1.63939941
    }
    Rotation {
      Yaw: -36.9095688
    }
    Scale {
      X: 0.856859088
      Y: 0.856859088
      Z: 0.856859088
    }
  }
  ParentId: 5803132068635410309
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_Detail1:color"
      Color {
        R: 0.635416687
        G: 0.635416687
        B: 0.635416687
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
    Value: "mc:ecollisionsetting:forceon"
  }
  CoreMesh {
    MeshAsset {
      Id: 12565879920591753650
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    StaticMesh {
      Physics {
      }
      BoundsScale: 1
    }
  }
  Relevance {
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 11595957404391373605
  Name: "Wooden Barrel"
  Transform {
    Location {
      X: -27.1461163
      Y: 37.245533
      Z: 161.501053
    }
    Rotation {
      Pitch: -53.2835083
      Yaw: 92.5262146
      Roll: -93.1510468
    }
    Scale {
      X: 0.856859088
      Y: 0.856859088
      Z: 0.856859088
    }
  }
  ParentId: 5803132068635410309
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 0.655000031
        G: 0.526429296
        B: 0.28165
        A: 1
      }
    }
    Overrides {
      Name: "ma:Shared_Detail1:color"
      Color {
        R: 0.609375
        G: 0.609375
        B: 0.609375
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
    Value: "mc:ecollisionsetting:forceon"
  }
  CoreMesh {
    MeshAsset {
      Id: 12565879920591753650
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    StaticMesh {
      Physics {
      }
      BoundsScale: 1
    }
  }
  Relevance {
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 17926629523427189209
  Name: "Wooden Barrel"
  Transform {
    Location {
      X: -22.4601212
      Y: -100.85965
      Z: 80.9472885
    }
    Rotation {
      Pitch: -53.7127571
      Yaw: -92.5670929
      Roll: 93.1828918
    }
    Scale {
      X: 0.856859088
      Y: 0.856859088
      Z: 0.856859088
    }
  }
  ParentId: 5803132068635410309
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 0.655000031
        G: 0.526429296
        B: 0.28165
        A: 1
      }
    }
    Overrides {
      Name: "ma:Shared_Detail1:color"
      Color {
        R: 0.609375
        G: 0.609375
        B: 0.609375
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
    Value: "mc:ecollisionsetting:forceon"
  }
  CoreMesh {
    MeshAsset {
      Id: 12565879920591753650
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    StaticMesh {
      Physics {
      }
      BoundsScale: 1
    }
  }
  Relevance {
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 6452218443256657170
  Name: "Wooden Barrel"
  Transform {
    Location {
      X: -23.7895241
      Y: -11.1067486
      Z: 93.786911
    }
    Rotation {
      Pitch: -53.2835884
      Yaw: 92.5262451
      Roll: -93.1511078
    }
    Scale {
      X: 0.856859088
      Y: 0.856859088
      Z: 0.856859088
    }
  }
  ParentId: 5803132068635410309
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 0.655000031
        G: 0.526429296
        B: 0.28165
        A: 1
      }
    }
    Overrides {
      Name: "ma:Shared_Detail1:color"
      Color {
        R: 0.609375
        G: 0.609375
        B: 0.609375
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
    Value: "mc:ecollisionsetting:forceon"
  }
  CoreMesh {
    MeshAsset {
      Id: 12565879920591753650
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    StaticMesh {
      Physics {
      }
      BoundsScale: 1
    }
  }
  Relevance {
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 4917971283585988191
  Name: "Wooden Barrel"
  Transform {
    Location {
      X: -38.4835701
      Y: 72.2762451
      Z: 94.7731857
    }
    Rotation {
      Pitch: 22.0750408
      Yaw: 89.2351532
      Roll: -92.0326385
    }
    Scale {
      X: 0.856859088
      Y: 0.856859088
      Z: 0.856859088
    }
  }
  ParentId: 5803132068635410309
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_Detail1:color"
      Color {
        R: 0.609375
        G: 0.609375
        B: 0.609375
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
    Value: "mc:ecollisionsetting:forceon"
  }
  CoreMesh {
    MeshAsset {
      Id: 12565879920591753650
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    StaticMesh {
      Physics {
      }
      BoundsScale: 1
    }
  }
  Relevance {
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 8959102238472766365
  Name: "Wooden Barrel"
  Transform {
    Location {
      X: 14.9062119
      Y: -152.071899
      Z: 35.1305389
    }
    Rotation {
      Pitch: -53.7128296
      Yaw: -92.5672226
      Roll: 93.1830139
    }
    Scale {
      X: 0.856859088
      Y: 0.856859088
      Z: 0.856859088
    }
  }
  ParentId: 5803132068635410309
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 0.655000031
        G: 0.526429296
        B: 0.28165
        A: 1
      }
    }
    Overrides {
      Name: "ma:Shared_Detail1:color"
      Color {
        R: 0.609375
        G: 0.609375
        B: 0.609375
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
    Value: "mc:ecollisionsetting:forceon"
  }
  CoreMesh {
    MeshAsset {
      Id: 12565879920591753650
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    StaticMesh {
      Physics {
      }
      BoundsScale: 1
    }
  }
  Relevance {
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 5583208225187756364
  Name: "Wooden Barrel"
  Transform {
    Location {
      X: 24.3142586
      Y: -48.0805244
      Z: 34.6058769
    }
    Rotation {
      Pitch: -53.2836304
      Yaw: 92.5262756
      Roll: -93.1511307
    }
    Scale {
      X: 0.856859088
      Y: 0.856859088
      Z: 0.856859088
    }
  }
  ParentId: 5803132068635410309
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 0.655000031
        G: 0.526429296
        B: 0.28165
        A: 1
      }
    }
    Overrides {
      Name: "ma:Shared_Detail1:color"
      Color {
        R: 0.609375
        G: 0.609375
        B: 0.609375
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
    Value: "mc:ecollisionsetting:forceon"
  }
  CoreMesh {
    MeshAsset {
      Id: 12565879920591753650
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    StaticMesh {
      Physics {
      }
      BoundsScale: 1
    }
  }
  Relevance {
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 6343817196646536746
  Name: "Wooden Barrel"
  Transform {
    Location {
      X: -17.2259636
      Y: 35.3024368
      Z: 36.474678
    }
    Rotation {
      Pitch: 22.0750618
      Yaw: 89.2351761
      Roll: -92.0326614
    }
    Scale {
      X: 0.856859088
      Y: 0.856859088
      Z: 0.856859088
    }
  }
  ParentId: 5803132068635410309
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 0.655000031
        G: 0.526429296
        B: 0.28165
        A: 1
      }
    }
    Overrides {
      Name: "ma:Shared_Detail1:color"
      Color {
        R: 0.609375
        G: 0.609375
        B: 0.609375
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
    Value: "mc:ecollisionsetting:forceon"
  }
  CoreMesh {
    MeshAsset {
      Id: 12565879920591753650
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    StaticMesh {
      Physics {
      }
      BoundsScale: 1
    }
  }
  Relevance {
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 11952265600452726454
  Name: "Wooden Barrel"
  Transform {
    Location {
      X: -15.6461258
      Y: 120.393959
      Z: 37.16362
    }
    Rotation {
      Pitch: -88.1172562
      Yaw: -179.999603
      Roll: 179.999222
    }
    Scale {
      X: 0.856859088
      Y: 0.856859088
      Z: 0.856859088
    }
  }
  ParentId: 5803132068635410309
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 0.655000031
        G: 0.526429296
        B: 0.28165
        A: 1
      }
    }
    Overrides {
      Name: "ma:Shared_Detail1:color"
      Color {
        R: 0.609375
        G: 0.609375
        B: 0.609375
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
    Value: "mc:ecollisionsetting:forceon"
  }
  CoreMesh {
    MeshAsset {
      Id: 12565879920591753650
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    StaticMesh {
      Physics {
      }
      BoundsScale: 1
    }
  }
  Relevance {
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 13496720999959292280
  Name: "Wooden Barrel"
  Transform {
    Location {
      X: 123.743752
      Y: 79.0863342
      Z: 1.63939941
    }
    Rotation {
      Yaw: -36.909584
    }
    Scale {
      X: 0.856859088
      Y: 0.856859088
      Z: 0.856859088
    }
  }
  ParentId: 5803132068635410309
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 0.655000031
        G: 0.526429296
        B: 0.28165
        A: 1
      }
    }
    Overrides {
      Name: "ma:Shared_Detail1:color"
      Color {
        R: 0.609375
        G: 0.609375
        B: 0.609375
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
    Value: "mc:ecollisionsetting:forceon"
  }
  CoreMesh {
    MeshAsset {
      Id: 12565879920591753650
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    StaticMesh {
      Physics {
      }
      BoundsScale: 1
    }
  }
  Relevance {
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 1187068872782599277
  Name: "Wooden Barrel"
  Transform {
    Location {
      X: -13.994216
      Y: -222.046417
    }
    Rotation {
    }
    Scale {
      X: 0.856859088
      Y: 0.856859088
      Z: 0.856859088
    }
  }
  ParentId: 5803132068635410309
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 0.655000031
        G: 0.526429296
        B: 0.28165
        A: 1
      }
    }
    Overrides {
      Name: "ma:Shared_Detail1:color"
      Color {
        R: 0.609375
        G: 0.609375
        B: 0.609375
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
    Value: "mc:ecollisionsetting:forceon"
  }
  CoreMesh {
    MeshAsset {
      Id: 12565879920591753650
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    StaticMesh {
      Physics {
      }
      BoundsScale: 1
    }
  }
  Relevance {
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 6700822449932656120
  Name: "Crescent - 02"
  Transform {
    Location {
      X: -89.3866653
      Y: -11.3261356
      Z: 113.113678
    }
    Rotation {
      Pitch: -0.000648867921
      Yaw: -0.859044552
      Roll: -89.150795
    }
    Scale {
      X: 0.123896398
      Y: 1.89239872
      Z: 2.86266828
    }
  }
  ParentId: 8044669490417411731
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 5597435254032670348
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: true
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:utile"
      Float: 0.282120705
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:vtile"
      Float: 0.986649692
    }
  }
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:forceon"
  }
  CoreMesh {
    MeshAsset {
      Id: 15389123512634345687
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    StaticMesh {
      Physics {
      }
      BoundsScale: 1
    }
  }
  Relevance {
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 13816654746647781137
  Name: "Support"
  Transform {
    Location {
      X: -94.0188446
      Y: 151.237488
      Z: 18.96698
    }
    Rotation {
      Yaw: -0.000183527562
      Roll: -90.0013962
    }
    Scale {
      X: 0.197409853
      Y: 0.192926332
      Z: 0.619884849
    }
  }
  ParentId: 8044669490417411731
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_Detail1:id"
      AssetReference {
        Id: 889917629752285723
      }
    }
    Overrides {
      Name: "ma:Shared_Detail1:color"
      Color {
        R: 1
        G: 0.701572835
        B: 0.5625
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
    Value: "mc:ecollisionsetting:forceon"
  }
  CoreMesh {
    MeshAsset {
      Id: 16701925266063006038
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    StaticMesh {
      Physics {
      }
      BoundsScale: 1
    }
  }
  Relevance {
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 7489128300091707460
  Name: "Support"
  Transform {
    Location {
      X: -95.9491577
      Y: 151.233521
      Z: 192.231094
    }
    Rotation {
      Pitch: 1.36603776e-05
      Yaw: -0.000154549649
      Roll: -90.0013962
    }
    Scale {
      X: 0.197409853
      Y: 0.192926332
      Z: 0.619884849
    }
  }
  ParentId: 8044669490417411731
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_Detail1:id"
      AssetReference {
        Id: 889917629752285723
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
    Value: "mc:ecollisionsetting:forceon"
  }
  CoreMesh {
    MeshAsset {
      Id: 16701925266063006038
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    StaticMesh {
      Physics {
      }
      BoundsScale: 1
    }
  }
  Relevance {
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 11848061030001276887
  Name: "Support"
  Transform {
    Location {
      X: -93.6333618
      Y: 151.235
      Z: 114.647408
    }
    Rotation {
      Pitch: 1.36603776e-05
      Yaw: -0.000125571605
      Roll: -90.0014
    }
    Scale {
      X: 0.143795028
      Y: 0.192926332
      Z: 0.619883716
    }
  }
  ParentId: 8044669490417411731
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_Detail1:id"
      AssetReference {
        Id: 889917629752285723
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
    Value: "mc:ecollisionsetting:forceon"
  }
  CoreMesh {
    MeshAsset {
      Id: 16701925266063006038
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    StaticMesh {
      Physics {
      }
      BoundsScale: 1
    }
  }
  Relevance {
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 9685531168427016403
  Name: "Support"
  Transform {
    Location {
      X: -83.3904724
      Y: -166.154968
      Z: 203.580795
    }
    Rotation {
      Pitch: 0.617667615
      Yaw: 92.9291534
      Roll: -79.7563
    }
    Scale {
      X: 0.293159366
      Y: 0.283570677
      Z: 0.460123
    }
  }
  ParentId: 8044669490417411731
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_Detail1:id"
      AssetReference {
        Id: 889917629752285723
      }
    }
    Overrides {
      Name: "ma:Shared_Detail1:vtile"
      Float: 0.766350031
    }
    Overrides {
      Name: "ma:Shared_Detail1:utile"
      Float: 2.136307
    }
  }
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:forceon"
  }
  CoreMesh {
    MeshAsset {
      Id: 16701925266063006038
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    StaticMesh {
      Physics {
      }
      BoundsScale: 1
    }
  }
  Relevance {
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 18131126480093650481
  Name: "Support"
  Transform {
    Location {
      X: 146.643921
      Y: -158.197281
      Z: 245.018066
    }
    Rotation {
      Pitch: 0.617640316
      Yaw: 92.9289398
      Roll: -66.8342
    }
    Scale {
      X: 0.415463239
      Y: 0.326380253
      Z: 0.0588009879
    }
  }
  ParentId: 8044669490417411731
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_Detail1:id"
      AssetReference {
        Id: 889917629752285723
      }
    }
    Overrides {
      Name: "ma:Shared_Detail1:vtile"
      Float: 0.125
    }
    Overrides {
      Name: "ma:Shared_Detail1:utile"
      Float: 2.91857243
    }
  }
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:forceon"
  }
  CoreMesh {
    MeshAsset {
      Id: 16701925266063006038
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    StaticMesh {
      Physics {
      }
      BoundsScale: 1
    }
  }
  Relevance {
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 1897945110594884438
  Name: "Support"
  Transform {
    Location {
      X: 110.864067
      Y: 161.839264
      Z: 263.9263
    }
    Rotation {
      Pitch: -0.3989923
      Yaw: 94.4152
      Roll: -55.6130257
    }
    Scale {
      X: 0.415463656
      Y: 0.372405738
      Z: 0.058802221
    }
  }
  ParentId: 8044669490417411731
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_Detail1:id"
      AssetReference {
        Id: 889917629752285723
      }
    }
    Overrides {
      Name: "ma:Shared_Detail1:vtile"
      Float: 0.176039323
    }
    Overrides {
      Name: "ma:Shared_Detail1:utile"
      Float: 2.04317498
    }
  }
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:forceon"
  }
  CoreMesh {
    MeshAsset {
      Id: 16701925266063006038
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    StaticMesh {
      Physics {
      }
      BoundsScale: 1
    }
  }
  Relevance {
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 4028604633555840938
  Name: "Support"
  Transform {
    Location {
      X: -94.0182495
      Y: 151.232895
      Z: 212.224304
    }
    Rotation {
      Pitch: -0.155885398
      Yaw: 0.00137986336
      Roll: -91.0640182
    }
    Scale {
      X: 0.197409853
      Y: 0.192926332
      Z: 0.619884849
    }
  }
  ParentId: 8044669490417411731
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_Detail1:id"
      AssetReference {
        Id: 889917629752285723
      }
    }
    Overrides {
      Name: "ma:Shared_Detail1:color"
      Color {
        R: 1
        G: 0.701572835
        B: 0.5625
        A: 1
      }
    }
    Overrides {
      Name: "ma:Shared_Detail1:utile"
      Float: 1.5637126
    }
  }
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:forceon"
  }
  CoreMesh {
    MeshAsset {
      Id: 16701925266063006038
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    StaticMesh {
      Physics {
      }
      BoundsScale: 1
    }
  }
  Relevance {
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 18047953195864549970
  Name: "Support"
  Transform {
    Location {
      X: 101.737503
      Y: 154.398804
      Z: 258.681915
    }
    Rotation {
      Pitch: 20.0310516
      Yaw: 6.05117846
      Roll: -93.3989868
    }
    Scale {
      X: 0.286867559
      Y: 0.314331174
      Z: 0.641027451
    }
  }
  ParentId: 8044669490417411731
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_Detail1:id"
      AssetReference {
        Id: 889917629752285723
      }
    }
    Overrides {
      Name: "ma:Shared_Detail1:utile"
      Float: 2.23368406
    }
    Overrides {
      Name: "ma:Shared_Detail1:vtile"
      Float: 1.09469235
    }
  }
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:forceon"
  }
  CoreMesh {
    MeshAsset {
      Id: 16701925266063006038
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    StaticMesh {
      Physics {
      }
      BoundsScale: 1
    }
  }
  Relevance {
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 1808774454051466497
  Name: "Craftsman Stairs 01 Pillar"
  Transform {
    Location {
      X: -96.9420853
      Y: 149.827103
      Z: 127.770447
    }
    Rotation {
      Pitch: -82.6316605
      Yaw: 24.5756474
      Roll: -20.1434612
    }
    Scale {
      X: 0.200453922
      Y: 0.0945962816
      Z: 0.410753548
    }
  }
  ParentId: 8044669490417411731
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_Detail1:id"
      AssetReference {
        Id: 889917629752285723
      }
    }
    Overrides {
      Name: "ma:Shared_Detail1:color"
      Color {
        R: 0.713541687
        G: 0.50060147
        B: 0.401367188
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
    Value: "mc:ecollisionsetting:forceon"
  }
  CoreMesh {
    MeshAsset {
      Id: 16701925266063006038
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    StaticMesh {
      Physics {
      }
      BoundsScale: 1
    }
  }
  Relevance {
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 11414987332307145198
  Name: "Craftsman Stairs 01 Pillar"
  Transform {
    Location {
      X: -92.9874802
      Y: -166.973953
      Z: 111.19841
    }
    Rotation {
      Pitch: -82.6320572
      Yaw: 24.5750618
      Roll: -24.036108
    }
    Scale {
      X: 0.200455233
      Y: 0.0946042761
      Z: 0.481067389
    }
  }
  ParentId: 8044669490417411731
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_Detail1:id"
      AssetReference {
        Id: 889917629752285723
      }
    }
    Overrides {
      Name: "ma:Shared_Detail1:color"
      Color {
        R: 0.713541687
        G: 0.50060147
        B: 0.401367188
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
    Value: "mc:ecollisionsetting:forceon"
  }
  CoreMesh {
    MeshAsset {
      Id: 16701925266063006038
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    StaticMesh {
      Physics {
      }
      BoundsScale: 1
    }
  }
  Relevance {
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 5826285808925523984
  Name: "Craftsman Stairs 01 Pillar"
  Transform {
    Location {
      X: -78.7556305
      Y: -143.334595
      Z: -3.34939504
    }
    Rotation {
      Pitch: -13.1508932
      Yaw: 0.719621837
      Roll: -3.1601665
    }
    Scale {
      X: 0.237717316
      Y: 0.23233214
      Z: 0.514382601
    }
  }
  ParentId: 8044669490417411731
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_Detail1:id"
      AssetReference {
        Id: 889917629752285723
      }
    }
    Overrides {
      Name: "ma:Shared_Detail1:color"
      Color {
        R: 1
        G: 0.701572835
        B: 0.5625
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
    Value: "mc:ecollisionsetting:forceon"
  }
  CoreMesh {
    MeshAsset {
      Id: 16701925266063006038
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    StaticMesh {
      Physics {
      }
      BoundsScale: 1
    }
  }
  Relevance {
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 16642523468652129511
  Name: "Rock Block 01"
  Transform {
    Location {
      X: -90.7533951
      Y: -166.136307
      Z: 200.350235
    }
    Rotation {
      Yaw: -6.83345797e-06
      Roll: -3.07720041
    }
    Scale {
      X: 0.165759087
      Y: 0.165754274
      Z: 0.182301357
    }
  }
  ParentId: 8044669490417411731
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 988091216586047331
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
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
    Value: "mc:ecollisionsetting:forceon"
  }
  CoreMesh {
    MeshAsset {
      Id: 16718390130615866986
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    StaticMesh {
      Physics {
      }
      BoundsScale: 1
    }
  }
  Relevance {
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 7007604278087188354
  Name: "Craftsman Stairs 01 Pillar"
  Transform {
    Location {
      X: -90.48246
      Y: -155.82341
      Z: -0.052984111
    }
    Rotation {
      Yaw: -6.83345797e-06
      Roll: -3.07720399
    }
    Scale {
      X: 0.271332175
      Y: 0.265169501
      Z: 0.464249343
    }
  }
  ParentId: 8044669490417411731
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_Detail1:id"
      AssetReference {
        Id: 889917629752285723
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
    Value: "mc:ecollisionsetting:forceon"
  }
  CoreMesh {
    MeshAsset {
      Id: 16701925266063006038
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    StaticMesh {
      Physics {
      }
      BoundsScale: 1
    }
  }
  Relevance {
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 11852153077671336827
  Name: "Craftsman Stairs 01 Pillar"
  Transform {
    Location {
      X: -82.9313583
      Y: 122.345291
      Z: -0.529989123
    }
    Rotation {
      Pitch: -12.3408804
      Yaw: -1.3477664
      Roll: 6.28170156
    }
    Scale {
      X: 0.195204675
      Y: 0.190754682
      Z: 0.528198481
    }
  }
  ParentId: 8044669490417411731
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_Detail1:id"
      AssetReference {
        Id: 889917629752285723
      }
    }
    Overrides {
      Name: "ma:Shared_Detail1:color"
      Color {
        R: 1
        G: 0.701572835
        B: 0.5625
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
    Value: "mc:ecollisionsetting:forceon"
  }
  CoreMesh {
    MeshAsset {
      Id: 16701925266063006038
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    StaticMesh {
      Physics {
      }
      BoundsScale: 1
    }
  }
  Relevance {
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 3742615958644571957
  Name: "Rock Block 01"
  Transform {
    Location {
      X: -90.6424484
      Y: 147.249908
      Z: 212.287201
    }
    Rotation {
      Pitch: 6.62735939
      Yaw: 0.71560216
      Roll: 6.17740917
    }
    Scale {
      X: 0.159881279
      Y: 0.159882009
      Z: 0.115664057
    }
  }
  ParentId: 8044669490417411731
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 988091216586047331
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
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
    Value: "mc:ecollisionsetting:forceon"
  }
  CoreMesh {
    MeshAsset {
      Id: 16718390130615866986
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    StaticMesh {
      Physics {
      }
      BoundsScale: 1
    }
  }
  Relevance {
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 16497011125034836324
  Name: "Craftsman Stairs 01 Pillar"
  Transform {
    Location {
      X: -90.4828796
      Y: 125.42083
      Z: 1.80116379
    }
    Rotation {
      Yaw: 3.43304669e-06
      Roll: 6.1359539
    }
    Scale {
      X: 0.271332145
      Y: 0.265169501
      Z: 0.464249343
    }
  }
  ParentId: 8044669490417411731
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_Detail1:id"
      AssetReference {
        Id: 889917629752285723
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
    Value: "mc:ecollisionsetting:forceon"
  }
  CoreMesh {
    MeshAsset {
      Id: 16701925266063006038
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    StaticMesh {
      Physics {
      }
      BoundsScale: 1
    }
  }
  Relevance {
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 8354433120180750110
  Name: "Craftsman Stairs 01 Pillar"
  Transform {
    Location {
      X: 76.1717529
      Y: 133.470093
      Z: 4.26078081
    }
    Rotation {
      Pitch: -6.17656708
      Yaw: 8.23098278
      Roll: 5.42263508
    }
    Scale {
      X: 0.277786791
      Y: 0.361147434
      Z: 0.5122419
    }
  }
  ParentId: 8044669490417411731
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_Detail1:id"
      AssetReference {
        Id: 889917629752285723
      }
    }
    Overrides {
      Name: "ma:Shared_Detail1:utile"
      Float: 2.04317498
    }
    Overrides {
      Name: "ma:Shared_Detail1:vtile"
      Float: 0.560945272
    }
  }
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:forceon"
  }
  CoreMesh {
    MeshAsset {
      Id: 16701925266063006038
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    StaticMesh {
      Physics {
      }
      BoundsScale: 1
    }
  }
  Relevance {
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 9713229598800621830
  Name: "Rock Block 01"
  Transform {
    Location {
      X: 122.201492
      Y: -153.038162
      Z: 118.513176
    }
    Rotation {
      Pitch: -12.678319
      Yaw: 3.0557363
      Roll: 1.41942382
    }
    Scale {
      X: 0.188861296
      Y: 0.204588622
      Z: 0.0950935781
    }
  }
  ParentId: 8044669490417411731
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 988091216586047331
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
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
    Value: "mc:ecollisionsetting:forceon"
  }
  CoreMesh {
    MeshAsset {
      Id: 16718390130615866986
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    StaticMesh {
      Physics {
      }
      BoundsScale: 1
    }
  }
  Relevance {
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 4757412719544802714
  Name: "Rock Block 01"
  Transform {
    Location {
      X: 89.1988754
      Y: 149.943771
      Z: 134.702927
    }
    Rotation {
      Pitch: -10.1134539
      Yaw: 8.97971344
      Roll: 7.74699211
    }
    Scale {
      X: 0.171188325
      Y: 0.185443923
      Z: 0.0861950144
    }
  }
  ParentId: 8044669490417411731
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 988091216586047331
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
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
    Value: "mc:ecollisionsetting:forceon"
  }
  CoreMesh {
    MeshAsset {
      Id: 16718390130615866986
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    StaticMesh {
      Physics {
      }
      BoundsScale: 1
    }
  }
  Relevance {
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 16207674228186408552
  Name: "Rock Block 01"
  Transform {
    Location {
      X: -34.2057953
      Y: -155.016937
      Z: 193.281448
    }
    Rotation {
      Pitch: 10.444458
      Yaw: -176.43219
      Roll: 3.68065119
    }
    Scale {
      X: 0.149272978
      Y: 0.139049366
      Z: 0.0751609281
    }
  }
  ParentId: 8044669490417411731
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 988091216586047331
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 0.572
        G: 0.572
        B: 0.572
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
    Value: "mc:ecollisionsetting:forceon"
  }
  CoreMesh {
    MeshAsset {
      Id: 16718390130615866986
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    StaticMesh {
      Physics {
      }
      BoundsScale: 1
    }
  }
  Relevance {
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 12830813687347298921
  Name: "Rock Block 01"
  Transform {
    Location {
      X: 133.98764
      Y: -154.488022
      Z: 209.843567
    }
    Rotation {
      Pitch: -3.32547545
      Yaw: -2.98716331
      Roll: -1.37307751
    }
    Scale {
      X: 0.171188325
      Y: 0.185443923
      Z: 0.0861950144
    }
  }
  ParentId: 8044669490417411731
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 988091216586047331
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
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
    Value: "mc:ecollisionsetting:forceon"
  }
  CoreMesh {
    MeshAsset {
      Id: 16718390130615866986
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    StaticMesh {
      Physics {
      }
      BoundsScale: 1
    }
  }
  Relevance {
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 18115197909493748729
  Name: "Rock Block 01"
  Transform {
    Location {
      X: 143.838623
      Y: -159.65419
      Z: 246.42215
    }
    Rotation {
      Pitch: -15.4084692
      Yaw: 178.202057
      Roll: -178.363953
    }
    Scale {
      X: 0.126003399
      Y: 0.198606297
      Z: 0.174351811
    }
  }
  ParentId: 8044669490417411731
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 988091216586047331
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
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
    Value: "mc:ecollisionsetting:forceon"
  }
  CoreMesh {
    MeshAsset {
      Id: 16718390130615866986
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    StaticMesh {
      Physics {
      }
      BoundsScale: 1
    }
  }
  Relevance {
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 17181671971038447425
  Name: "Rock Block 01"
  Transform {
    Location {
      X: 107.246826
      Y: 162.23436
      Z: 262.160339
    }
    Rotation {
      Pitch: 31.6209679
      Yaw: -0.38894552
      Roll: -1.33575833
    }
    Scale {
      X: 0.10863848
      Y: 0.211332977
      Z: 0.170387477
    }
  }
  ParentId: 8044669490417411731
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 988091216586047331
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
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
    Value: "mc:ecollisionsetting:forceon"
  }
  CoreMesh {
    MeshAsset {
      Id: 16718390130615866986
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    StaticMesh {
      Physics {
      }
      BoundsScale: 1
    }
  }
  Relevance {
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 3642404607240590142
  Name: "Craftsman Stairs 01 Pillar"
  Transform {
    Location {
      X: 107.107124
      Y: -146.594772
      Z: -4.35579729
    }
    Rotation {
      Pitch: -6.98202372
      Yaw: -5.02449839e-05
      Roll: -1.82098985
    }
    Scale {
      X: 0.321628422
      Y: 0.314325958
      Z: 0.504768968
    }
  }
  ParentId: 8044669490417411731
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_Detail1:id"
      AssetReference {
        Id: 889917629752285723
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
    Value: "mc:ecollisionsetting:forceon"
  }
  CoreMesh {
    MeshAsset {
      Id: 16701925266063006038
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    StaticMesh {
      Physics {
      }
      BoundsScale: 1
    }
  }
  Relevance {
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 8536917522275721036
  Name: "Tent"
  Transform {
    Location {
      X: -57.7844925
      Y: -8.72757
      Z: 228.585739
    }
    Rotation {
      Pitch: 53.5811272
      Yaw: -174.881989
      Roll: -85.9768753
    }
    Scale {
      X: 0.254293
      Y: 0.752077103
      Z: 2.96109772
    }
  }
  ParentId: 8044669490417411731
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 5597435254032670348
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: true
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:utile"
      Float: 0.319747955
    }
  }
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:forceon"
  }
  CoreMesh {
    MeshAsset {
      Id: 15389123512634345687
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    StaticMesh {
      Physics {
      }
      BoundsScale: 1
    }
  }
  Relevance {
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 15756481750145165857
  Name: "Decal Wood Ends Variations"
  Transform {
    Location {
      X: 135.183334
      Y: 163.621429
      Z: 280.357
    }
    Rotation {
      Pitch: -0.0772767588
      Yaw: -85.2589493
      Roll: 55.6136627
    }
    Scale {
      X: 0.360618412
      Y: 0.318379968
      Z: 0.0604129247
    }
  }
  ParentId: 8044669490417411731
  UnregisteredParameters {
    Overrides {
      Name: "bp:color"
      Color {
        R: 0.661458313
        G: 0.661458313
        B: 0.661458313
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
      Id: 6099421689735834058
    }
    TeamSettings {
    }
    DecalBP {
    }
  }
  Relevance {
    Value: "mc:eproxyrelevance:medium"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 3757776603319249593
  Name: "Decal Wood Ends Variations"
  Transform {
    Location {
      X: 173.716476
      Y: -157.477768
      Z: 256.47464
    }
    Rotation {
      Pitch: 0.401526302
      Yaw: -87.5071487
      Roll: 66.83535
    }
    Scale {
      X: 0.367694855
      Y: 0.288494229
      Z: 0.0459499918
    }
  }
  ParentId: 8044669490417411731
  UnregisteredParameters {
    Overrides {
      Name: "bp:color"
      Color {
        R: 0.661458313
        G: 0.661458313
        B: 0.661458313
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
      Id: 6099421689735834058
    }
    TeamSettings {
    }
    DecalBP {
    }
  }
  Relevance {
    Value: "mc:eproxyrelevance:medium"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 8306038768373390498
  Name: "Decal Stains Round 01"
  Transform {
    Location {
      X: 45.7217178
      Y: -89.2181396
      Z: 245.604294
    }
    Rotation {
      Pitch: 0.19556196
      Yaw: -88.2644501
      Roll: -6.71806622
    }
    Scale {
      X: 0.348352432
      Y: 0.243530154
      Z: 0.243531242
    }
  }
  ParentId: 8044669490417411731
  UnregisteredParameters {
    Overrides {
      Name: "bp:color"
      Color {
        R: 0.026041666
        G: 0.0235748161
        B: 0.0112499995
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
      Id: 12385794193739794509
    }
    TeamSettings {
    }
    DecalBP {
    }
  }
  Relevance {
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 1969232765003426770
  Name: "collision"
  Transform {
    Location {
      X: -79.9411621
      Y: -167.659668
      Z: -29.3681641
    }
    Rotation {
      Pitch: 6.72087145
      Yaw: 0.0747215077
      Roll: 1.9917909e-06
    }
    Scale {
      X: 2.88143373
      Y: -6.90906668
      Z: 2.58364606
    }
  }
  ParentId: 8044669490417411731
  UnregisteredParameters {
  }
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:forceoff"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:forceon"
  }
  CoreMesh {
    MeshAsset {
      Id: 8538200685158062347
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    StaticMesh {
      Physics {
      }
      BoundsScale: 1
    }
  }
  Relevance {
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 3323552826038292413
  Name: "Market Tent"
  Transform {
    Location {
      X: 233.381348
      Y: -1210.06543
      Z: -165.728226
    }
    Rotation {
      Yaw: 37.0964508
    }
    Scale {
      X: 1.64959538
      Y: 1.64959538
      Z: 1.64959538
    }
  }
  ParentId: 10151175561786695655
  ChildIds: 11176643592868291313
  ChildIds: 17988207114336206307
  ChildIds: 3176169907645901255
  ChildIds: 16051235213683992930
  ChildIds: 2844302413485799439
  ChildIds: 12837380483457393405
  ChildIds: 3837162781949608598
  ChildIds: 18143999692304678815
  ChildIds: 14400440378787188202
  ChildIds: 4920941840627565559
  ChildIds: 8766515210529415647
  ChildIds: 4746876122034286595
  ChildIds: 4620542442376369675
  ChildIds: 12901015623881618947
  ChildIds: 7182395505447028197
  ChildIds: 3072370857868285218
  ChildIds: 372056669003046972
  ChildIds: 4956322953470886260
  ChildIds: 1283993406018343076
  ChildIds: 7864767755968853677
  ChildIds: 8411617053344274733
  ChildIds: 2364082491887418370
  ChildIds: 16346884645804309225
  ChildIds: 18432057642646269283
  ChildIds: 5687884532439634385
  ChildIds: 16384595316927128241
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
  Id: 16384595316927128241
  Name: "Decal Wood Ends Variations"
  Transform {
    Location {
      X: 135.82225
      Y: 164.173843
      Z: 280.033752
    }
    Rotation {
      Pitch: 0.621233
      Yaw: -82.6827698
      Roll: 55.4454689
    }
    Scale {
      X: 0.351528108
      Y: 0.328603327
      Z: 0.114798918
    }
  }
  ParentId: 3323552826038292413
  UnregisteredParameters {
    Overrides {
      Name: "bp:color"
      Color {
        R: 0.666666687
        G: 0.666666687
        B: 0.666666687
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
      Id: 6099421689735834058
    }
    TeamSettings {
    }
    DecalBP {
    }
  }
  Relevance {
    Value: "mc:eproxyrelevance:medium"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 5687884532439634385
  Name: "Decal Wood Ends Variations"
  Transform {
    Location {
      X: 173.586395
      Y: -156.754959
      Z: 256.70108
    }
    Rotation {
      Pitch: -0.685054302
      Yaw: -87.0421677
      Roll: 66.8344345
    }
    Scale {
      X: 0.340664089
      Y: 0.270460129
      Z: 0.0459449142
    }
  }
  ParentId: 3323552826038292413
  UnregisteredParameters {
    Overrides {
      Name: "bp:color"
      Color {
        R: 0.666666687
        G: 0.666666687
        B: 0.666666687
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
      Id: 6099421689735834058
    }
    TeamSettings {
    }
    DecalBP {
    }
  }
  Relevance {
    Value: "mc:eproxyrelevance:medium"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 18432057642646269283
  Name: "Basket_with_carrots"
  Transform {
    Location {
      X: 101.267715
      Y: -4.29698801
      Z: 59.9564056
    }
    Rotation {
      Pitch: -26.6254215
      Yaw: 126.189606
      Roll: 3.48534489
    }
    Scale {
      X: 0.606209278
      Y: 0.606209278
      Z: 0.606209278
    }
  }
  ParentId: 3323552826038292413
  ChildIds: 10308629179415707326
  ChildIds: 17435452239705083125
  ChildIds: 10643798900094176123
  ChildIds: 6171724435444923213
  ChildIds: 361378729058347116
  ChildIds: 12314469938342758704
  ChildIds: 6955470644106724286
  ChildIds: 15386782538861576180
  ChildIds: 3605296459741249296
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
  Id: 3605296459741249296
  Name: "Fern 01"
  Transform {
    Location {
      X: -25.1429176
      Y: -4.81069
      Z: 21.3951912
    }
    Rotation {
      Pitch: -0.0327453613
      Yaw: -108.629181
      Roll: -12.6300049
    }
    Scale {
      X: 0.16770488
      Y: 0.16770488
      Z: 0.251791269
    }
  }
  ParentId: 18432057642646269283
  UnregisteredParameters {
    Overrides {
      Name: "ma:Nature_Leaves:id"
      AssetReference {
        Id: 8340788593877699680
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
    Value: "mc:ecollisionsetting:forceoff"
  }
  CoreMesh {
    MeshAsset {
      Id: 17415737976547250906
    }
    Teams {
    }
    StaticMesh {
      Physics {
      }
      BoundsScale: 1
    }
  }
  Relevance {
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 15386782538861576180
  Name: "Fern 01"
  Transform {
    Location {
      X: -31.19837
      Y: -26.6404228
      Z: 23.260088
    }
    Rotation {
      Pitch: 16.0281849
      Yaw: -47.0224304
      Roll: 1.57427526
    }
    Scale {
      X: 0.139174044
      Y: 0.139174044
      Z: 0.208955184
    }
  }
  ParentId: 18432057642646269283
  UnregisteredParameters {
    Overrides {
      Name: "ma:Nature_Leaves:id"
      AssetReference {
        Id: 8340788593877699680
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
    Value: "mc:ecollisionsetting:forceoff"
  }
  CoreMesh {
    MeshAsset {
      Id: 17415737976547250906
    }
    Teams {
    }
    StaticMesh {
      Physics {
      }
      BoundsScale: 1
    }
  }
  Relevance {
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 6955470644106724286
  Name: "Group"
  Transform {
    Location {
      X: -3.1788063
      Y: -35.5239944
      Z: 47.844696
    }
    Rotation {
      Pitch: 18.1961689
      Yaw: -118.983688
      Roll: 21.4892502
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 18432057642646269283
  ChildIds: 10910397578342659675
  ChildIds: 1366902102018190773
  ChildIds: 12492182782862482215
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
  Id: 12492182782862482215
  Name: "Fern 01"
  Transform {
    Location {
      X: 3.33178711
      Y: 1.88571835
      Z: 21.0409012
    }
    Rotation {
      Pitch: -1.08694255
      Yaw: 73.8654175
      Roll: -21.8234119
    }
    Scale {
      X: 0.167704776
      Y: 0.167702422
      Z: 0.318768024
    }
  }
  ParentId: 6955470644106724286
  UnregisteredParameters {
    Overrides {
      Name: "ma:Nature_Leaves:id"
      AssetReference {
        Id: 8340788593877699680
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
    Value: "mc:ecollisionsetting:forceoff"
  }
  CoreMesh {
    MeshAsset {
      Id: 17415737976547250906
    }
    Teams {
    }
    StaticMesh {
      Physics {
      }
      BoundsScale: 1
    }
  }
  Relevance {
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 1366902102018190773
  Name: "Cone - Bullet"
  Transform {
    Location {
      X: -7.79354143
      Y: -2.88958549
      Z: 0.000160694122
    }
    Rotation {
      Pitch: 25.1053829
      Yaw: 176.443695
      Roll: 173.347733
    }
    Scale {
      X: 0.0665624812
      Y: 0.0919983834
      Z: 0.0798169151
    }
  }
  ParentId: 6955470644106724286
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 3817933812062928360
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 0.99
        G: 0.432715237
        A: 1
      }
    }
  }
  Collidable_v2 {
    Value: "mc:ecollisionsetting:forceoff"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:forceoff"
  }
  CoreMesh {
    MeshAsset {
      Id: 2264041107168619230
    }
    Teams {
    }
    StaticMesh {
      Physics {
      }
      BoundsScale: 1
    }
  }
  Relevance {
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 10910397578342659675
  Name: "Teardrop - Truncated"
  Transform {
    Location {
      X: 4.46239901
      Y: 1.0043869
      Z: 27.2368069
    }
    Rotation {
      Pitch: 24.1477642
      Yaw: 176.405884
      Roll: 171.270203
    }
    Scale {
      X: 0.152966484
      Y: 0.14869535
      Z: 0.218121663
    }
  }
  ParentId: 6955470644106724286
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 3817933812062928360
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 0.98
        G: 0.447814584
        A: 1
      }
    }
  }
  Collidable_v2 {
    Value: "mc:ecollisionsetting:forceoff"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:forceoff"
  }
  CoreMesh {
    MeshAsset {
      Id: 3702365963781758101
    }
    Teams {
    }
    StaticMesh {
      Physics {
      }
      BoundsScale: 1
    }
  }
  Relevance {
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 12314469938342758704
  Name: "Cone - Bullet"
  Transform {
    Location {
      X: -7.75275517
      Y: 10.7943926
      Z: 35.0301323
    }
    Rotation {
      Pitch: -21.5470676
      Yaw: -4.58267593
      Roll: 30.3240414
    }
    Scale {
      X: 0.0474652462
      Y: 0.0656034
      Z: 0.0569169
    }
  }
  ParentId: 18432057642646269283
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 3817933812062928360
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 0.99
        G: 0.472053
        A: 1
      }
    }
  }
  Collidable_v2 {
    Value: "mc:ecollisionsetting:forceoff"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:forceoff"
  }
  CoreMesh {
    MeshAsset {
      Id: 2264041107168619230
    }
    Teams {
    }
    StaticMesh {
      Physics {
      }
      BoundsScale: 1
    }
  }
  Relevance {
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 361378729058347116
  Name: "Cone - Bullet"
  Transform {
    Location {
      X: -1.55596352
      Y: 8.8561
      Z: 40.4616928
    }
    Rotation {
      Pitch: -27.1405334
      Yaw: 53.59692
      Roll: 0.385489881
    }
    Scale {
      X: 0.0474652462
      Y: 0.0656034
      Z: 0.0569169
    }
  }
  ParentId: 18432057642646269283
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 3817933812062928360
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 0.99
        G: 0.472053
        A: 1
      }
    }
  }
  Collidable_v2 {
    Value: "mc:ecollisionsetting:forceoff"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:forceoff"
  }
  CoreMesh {
    MeshAsset {
      Id: 2264041107168619230
    }
    Teams {
    }
    StaticMesh {
      Physics {
      }
      BoundsScale: 1
    }
  }
  Relevance {
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 6171724435444923213
  Name: "Teardrop - Truncated"
  Transform {
    Location {
      X: -5.83159637
      Y: 1.48408794
      Z: 23.1101627
    }
    Rotation {
      Pitch: -26.1938076
      Yaw: 54.542347
      Roll: 2.14261389
    }
    Scale {
      X: 0.10052374
      Y: 0.0977169126
      Z: 0.143341228
    }
  }
  ParentId: 18432057642646269283
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 3817933812062928360
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 0.97
        G: 0.462516576
        A: 1
      }
    }
  }
  Collidable_v2 {
    Value: "mc:ecollisionsetting:forceoff"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:forceoff"
  }
  CoreMesh {
    MeshAsset {
      Id: 3702365963781758101
    }
    Teams {
    }
    StaticMesh {
      Physics {
      }
      BoundsScale: 1
    }
  }
  Relevance {
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 10643798900094176123
  Name: "Teardrop - Truncated"
  Transform {
    Location {
      X: -14.190731
      Y: 0.833697319
      Z: 19.7655296
    }
    Rotation {
      Pitch: -21.1478825
      Yaw: -3.28945112
      Roll: 32.0347633
    }
    Scale {
      X: 0.10052374
      Y: 0.0977169126
      Z: 0.143341228
    }
  }
  ParentId: 18432057642646269283
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 3817933812062928360
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 0.97
        G: 0.462516576
        A: 1
      }
    }
  }
  Collidable_v2 {
    Value: "mc:ecollisionsetting:forceoff"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:forceoff"
  }
  CoreMesh {
    MeshAsset {
      Id: 3702365963781758101
    }
    Teams {
    }
    StaticMesh {
      Physics {
      }
      BoundsScale: 1
    }
  }
  Relevance {
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 17435452239705083125
  Name: "Cone - Bullet"
  Transform {
    Location {
      X: 7.79212189
      Y: 9.63020706
      Z: 43.0552444
    }
    Rotation {
      Pitch: -28.2041378
      Yaw: 95.6456299
      Roll: -27.9712811
    }
    Scale {
      X: 0.0474652462
      Y: 0.0656034
      Z: 0.0569169
    }
  }
  ParentId: 18432057642646269283
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 3817933812062928360
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 0.99
        G: 0.472053
        A: 1
      }
    }
  }
  Collidable_v2 {
    Value: "mc:ecollisionsetting:forceoff"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:forceoff"
  }
  CoreMesh {
    MeshAsset {
      Id: 2264041107168619230
    }
    Teams {
    }
    StaticMesh {
      Physics {
      }
      BoundsScale: 1
    }
  }
  Relevance {
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 10308629179415707326
  Name: "Teardrop - Truncated"
  Transform {
    Location {
      X: 0.262970924
      Y: 0.941259384
      Z: 27.5145969
    }
    Rotation {
      Pitch: -26.9704151
      Yaw: 95.9805
      Roll: -25.94487
    }
    Scale {
      X: 0.10052374
      Y: 0.0977169126
      Z: 0.143341228
    }
  }
  ParentId: 18432057642646269283
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 3817933812062928360
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 0.97
        G: 0.462516576
        A: 1
      }
    }
  }
  Collidable_v2 {
    Value: "mc:ecollisionsetting:forceoff"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:forceoff"
  }
  CoreMesh {
    MeshAsset {
      Id: 3702365963781758101
    }
    Teams {
    }
    StaticMesh {
      Physics {
      }
      BoundsScale: 1
    }
  }
  Relevance {
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 16346884645804309225
  Name: "Decal Stains Round 01"
  Transform {
    Location {
      X: 101.937332
      Y: 77.729187
      Z: 74.0152512
    }
    Rotation {
      Pitch: -26.1748962
      Yaw: 5.237082
      Roll: -4.12338352
    }
    Scale {
      X: 0.07568378
      Y: 0.07568378
      Z: 0.07568378
    }
  }
  ParentId: 3323552826038292413
  UnregisteredParameters {
    Overrides {
      Name: "bp:color"
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
      Id: 12385794193739794509
    }
    TeamSettings {
    }
    DecalBP {
    }
  }
  Relevance {
    Value: "mc:eproxyrelevance:medium"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 2364082491887418370
  Name: "Support"
  Transform {
    Location {
      X: -33.5247498
      Y: 169.35881
      Z: 261.648865
    }
    Rotation {
      Pitch: 12.3441048
      Yaw: 1.3536067
      Roll: -91.9632568
    }
    Scale {
      X: 0.274001241
      Y: 0.185295
      Z: 0.700520933
    }
  }
  ParentId: 3323552826038292413
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_Detail1:id"
      AssetReference {
        Id: 889917629752285723
      }
    }
    Overrides {
      Name: "ma:Shared_Detail1:utile"
      Float: 1.78743935
    }
  }
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:forceoff"
  }
  CoreMesh {
    MeshAsset {
      Id: 16701925266063006038
    }
    Teams {
    }
    StaticMesh {
      Physics {
      }
      BoundsScale: 1
    }
  }
  Relevance {
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 8411617053344274733
  Name: "Support"
  Transform {
    Location {
      X: -95.1567459
      Y: 148.347153
      Z: 216.664459
    }
    Rotation {
      Pitch: 0.617667615
      Yaw: 94.2846069
      Roll: -79.7559204
    }
    Scale {
      X: 0.260256
      Y: 0.283569217
      Z: 0.416379929
    }
  }
  ParentId: 3323552826038292413
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_Detail1:id"
      AssetReference {
        Id: 889917629752285723
      }
    }
    Overrides {
      Name: "ma:Shared_Detail1:utile"
      Float: 1.78743935
    }
  }
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:forceoff"
  }
  CoreMesh {
    MeshAsset {
      Id: 16701925266063006038
    }
    Teams {
    }
    StaticMesh {
      Physics {
      }
      BoundsScale: 1
    }
  }
  Relevance {
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 7864767755968853677
  Name: "Tent"
  Transform {
    Location {
      X: 40.2564888
      Y: -3.7710495
      Z: 249.020889
    }
    Rotation {
      Pitch: 87.7483063
      Yaw: -39.8947754
      Roll: 47.2759361
    }
    Scale {
      X: 0.620491445
      Y: 1.52550554
      Z: 2.91888237
    }
  }
  ParentId: 3323552826038292413
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 14764814241270937025
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: true
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 0.52
        G: 0.0516556315
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
    Value: "mc:ecollisionsetting:forceoff"
  }
  CoreMesh {
    MeshAsset {
      Id: 15389123512634345687
    }
    Teams {
    }
    StaticMesh {
      Physics {
      }
      BoundsScale: 1
    }
  }
  Relevance {
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 1283993406018343076
  Name: "collision"
  Transform {
    Location {
      X: -79.9414062
      Y: -167.660645
      Z: -29.3684082
    }
    Rotation {
      Pitch: 6.72087145
      Yaw: 0.074710317
      Roll: 1.58125943e-06
    }
    Scale {
      X: 2.88143349
      Y: -6.90906668
      Z: 2.58364606
    }
  }
  ParentId: 3323552826038292413
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:forceoff"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:forceon"
  }
  CoreMesh {
    MeshAsset {
      Id: 8538200685158062347
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    StaticMesh {
      Physics {
      }
      BoundsScale: 1
    }
  }
  Relevance {
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 4956322953470886260
  Name: "Crescent - 02"
  Transform {
    Location {
      X: -89.3865
      Y: -11.3259554
      Z: 113.113678
    }
    Rotation {
      Pitch: -0.000648867921
      Yaw: -0.859045088
      Roll: -89.150795
    }
    Scale {
      X: 0.123896398
      Y: 1.89239872
      Z: 2.86266828
    }
  }
  ParentId: 3323552826038292413
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 14764814241270937025
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: true
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:utile"
      Float: 0.937319338
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:vtile"
      Float: 1.51492381
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 0.390625
        G: 0.032552
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
    Value: "mc:ecollisionsetting:forceoff"
  }
  CoreMesh {
    MeshAsset {
      Id: 15389123512634345687
    }
    Teams {
    }
    DisableDistanceFieldLighting: true
    StaticMesh {
      Physics {
      }
      BoundsScale: 1
    }
  }
  Relevance {
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 372056669003046972
  Name: "Support"
  Transform {
    Location {
      X: -94.0189
      Y: 151.237335
      Z: 18.96698
    }
    Rotation {
      Yaw: -0.000183105469
      Roll: -90.0014
    }
    Scale {
      X: 0.197409853
      Y: 0.192926332
      Z: 0.619884849
    }
  }
  ParentId: 3323552826038292413
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_Detail1:id"
      AssetReference {
        Id: 889917629752285723
      }
    }
    Overrides {
      Name: "ma:Shared_Detail1:color"
      Color {
        R: 1
        G: 0.701572835
        B: 0.5625
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
    Value: "mc:ecollisionsetting:forceoff"
  }
  CoreMesh {
    MeshAsset {
      Id: 16701925266063006038
    }
    Teams {
    }
    StaticMesh {
      Physics {
      }
      BoundsScale: 1
    }
  }
  Relevance {
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 3072370857868285218
  Name: "Support"
  Transform {
    Location {
      X: -95.9493256
      Y: 151.233337
      Z: 192.231094
    }
    Rotation {
      Yaw: -0.000152587891
      Roll: -90.0014
    }
    Scale {
      X: 0.197409853
      Y: 0.192926332
      Z: 0.619884849
    }
  }
  ParentId: 3323552826038292413
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_Detail1:id"
      AssetReference {
        Id: 889917629752285723
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
    Value: "mc:ecollisionsetting:forceoff"
  }
  CoreMesh {
    MeshAsset {
      Id: 16701925266063006038
    }
    Teams {
    }
    StaticMesh {
      Physics {
      }
      BoundsScale: 1
    }
  }
  Relevance {
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 7182395505447028197
  Name: "Support"
  Transform {
    Location {
      X: -93.6334152
      Y: 151.235031
      Z: 114.647408
    }
    Rotation {
      Yaw: -0.000122070312
      Roll: -90.0014
    }
    Scale {
      X: 0.143795028
      Y: 0.192926332
      Z: 0.619883716
    }
  }
  ParentId: 3323552826038292413
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_Detail1:id"
      AssetReference {
        Id: 889917629752285723
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
    Value: "mc:ecollisionsetting:forceoff"
  }
  CoreMesh {
    MeshAsset {
      Id: 16701925266063006038
    }
    Teams {
    }
    StaticMesh {
      Physics {
      }
      BoundsScale: 1
    }
  }
  Relevance {
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 12901015623881618947
  Name: "Support"
  Transform {
    Location {
      X: -83.3906097
      Y: -166.155121
      Z: 203.580795
    }
    Rotation {
      Pitch: 0.617667615
      Yaw: 92.9291534
      Roll: -79.7563171
    }
    Scale {
      X: 0.293159366
      Y: 0.283570677
      Z: 0.460123
    }
  }
  ParentId: 3323552826038292413
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_Detail1:id"
      AssetReference {
        Id: 889917629752285723
      }
    }
    Overrides {
      Name: "ma:Shared_Detail1:vtile"
      Float: 0.766350031
    }
    Overrides {
      Name: "ma:Shared_Detail1:utile"
      Float: 2.136307
    }
  }
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:forceoff"
  }
  CoreMesh {
    MeshAsset {
      Id: 16701925266063006038
    }
    Teams {
    }
    StaticMesh {
      Physics {
      }
      BoundsScale: 1
    }
  }
  Relevance {
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 4620542442376369675
  Name: "Support"
  Transform {
    Location {
      X: 146.643799
      Y: -158.19751
      Z: 245.018066
    }
    Rotation {
      Pitch: 0.617633462
      Yaw: 92.9289551
      Roll: -66.8341675
    }
    Scale {
      X: 0.415463239
      Y: 0.326380253
      Z: 0.0588009879
    }
  }
  ParentId: 3323552826038292413
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_Detail1:id"
      AssetReference {
        Id: 889917629752285723
      }
    }
    Overrides {
      Name: "ma:Shared_Detail1:vtile"
      Float: 0.125
    }
    Overrides {
      Name: "ma:Shared_Detail1:utile"
      Float: 2.91857243
    }
  }
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:forceoff"
  }
  CoreMesh {
    MeshAsset {
      Id: 16701925266063006038
    }
    Teams {
    }
    DisableCastShadows: true
    StaticMesh {
      Physics {
      }
      BoundsScale: 1
    }
  }
  Relevance {
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 4746876122034286595
  Name: "Support"
  Transform {
    Location {
      X: 110.863907
      Y: 161.839096
      Z: 263.9263
    }
    Rotation {
      Pitch: -0.398986816
      Yaw: 94.4152
      Roll: -55.6130676
    }
    Scale {
      X: 0.415463626
      Y: 0.372405738
      Z: 0.0588022135
    }
  }
  ParentId: 3323552826038292413
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_Detail1:id"
      AssetReference {
        Id: 889917629752285723
      }
    }
    Overrides {
      Name: "ma:Shared_Detail1:vtile"
      Float: 0.176039323
    }
    Overrides {
      Name: "ma:Shared_Detail1:utile"
      Float: 2.04317498
    }
  }
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:forceoff"
  }
  CoreMesh {
    MeshAsset {
      Id: 16701925266063006038
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    StaticMesh {
      Physics {
      }
      BoundsScale: 1
    }
  }
  Relevance {
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 8766515210529415647
  Name: "Basket"
  Transform {
    Location {
      X: 102.667641
      Y: -71.4880295
      Z: 62.6910095
    }
    Rotation {
      Pitch: 30.0939083
      Yaw: 179.999756
      Roll: 6.39629434e-08
    }
    Scale {
      X: 0.712758601
      Y: 0.712758601
      Z: 0.712758601
    }
  }
  ParentId: 3323552826038292413
  ChildIds: 11439416371291717254
  ChildIds: 670534152069779490
  ChildIds: 14921640030672769564
  ChildIds: 2407419263135350079
  ChildIds: 10593679274107927686
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
  Id: 10593679274107927686
  Name: "Apples"
  Transform {
    Location {
      X: -3.15917301
      Y: -138.559891
      Z: 20.0646801
    }
    Rotation {
      Pitch: 39.7910423
      Yaw: -179.999695
      Roll: 0.000151357628
    }
    Scale {
      X: 1.17301941
      Y: 1.17301941
      Z: 1.17301941
    }
  }
  ParentId: 8766515210529415647
  ChildIds: 9088247944470424279
  ChildIds: 148409061760880091
  ChildIds: 6708282054003242950
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
  Id: 6708282054003242950
  Name: "apple"
  Transform {
    Location {
      X: -1.19053376
      Y: -118.363037
      Z: 9.65219593
    }
    Rotation {
      Pitch: 33.8736
      Yaw: 179.379684
      Roll: -1.49285889
    }
    Scale {
      X: 1.80098414
      Y: 1.80098414
      Z: 1.80098414
    }
  }
  ParentId: 10593679274107927686
  ChildIds: 12632907575787203949
  ChildIds: 3753709761282868182
  ChildIds: 18254732190182512313
  ChildIds: 1205002214686771824
  Collidable_v2 {
    Value: "mc:ecollisionsetting:forceoff"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:forceoff"
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
  Id: 1205002214686771824
  Name: "Ring - Extra Thick"
  Transform {
    Location {
      Z: 4.15966797
    }
    Rotation {
      Yaw: -179.999954
      Roll: -179.999954
    }
    Scale {
      X: 0.0648578927
      Y: 0.0648579448
      Z: 0.0309310071
    }
  }
  ParentId: 6708282054003242950
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 15309680093221024410
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
  }
  Collidable_v2 {
    Value: "mc:ecollisionsetting:forceoff"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:forceoff"
  }
  CoreMesh {
    MeshAsset {
      Id: 5489775416547967874
    }
    Teams {
    }
    DisableCastShadows: true
    StaticMesh {
      Physics {
      }
      BoundsScale: 1
    }
  }
  Relevance {
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 18254732190182512313
  Name: "Ring - Extra Thick"
  Transform {
    Location {
      Y: -0.740722656
      Z: 5.93017578
    }
    Rotation {
      Roll: 151.079468
    }
    Scale {
      X: 0.0157939661
      Y: 0.0157939903
      Z: 0.02015795
    }
  }
  ParentId: 6708282054003242950
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 889917629752285723
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
  }
  Collidable_v2 {
    Value: "mc:ecollisionsetting:forceoff"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:forceoff"
  }
  CoreMesh {
    MeshAsset {
      Id: 10413465125058823580
    }
    Teams {
    }
    DisableCastShadows: true
    StaticMesh {
      Physics {
      }
      BoundsScale: 1
    }
  }
  Relevance {
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 3753709761282868182
  Name: "Ring - Extra Thick"
  Transform {
    Location {
    }
    Rotation {
      Yaw: -179.999954
      Roll: -179.999954
    }
    Scale {
      X: 0.130088791
      Y: 0.130088791
      Z: 0.120678425
    }
  }
  ParentId: 6708282054003242950
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 15309680093221024410
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
  }
  Collidable_v2 {
    Value: "mc:ecollisionsetting:forceoff"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:forceoff"
  }
  CoreMesh {
    MeshAsset {
      Id: 5489775416547967874
    }
    Teams {
    }
    DisableCastShadows: true
    StaticMesh {
      Physics {
      }
      BoundsScale: 1
    }
  }
  Relevance {
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 12632907575787203949
  Name: "Ring - Extra Thick"
  Transform {
    Location {
      Z: 0.705566406
    }
    Rotation {
    }
    Scale {
      X: 0.133398145
      Y: 0.133398145
      Z: 0.20720613
    }
  }
  ParentId: 6708282054003242950
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 15309680093221024410
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
  }
  Collidable_v2 {
    Value: "mc:ecollisionsetting:forceoff"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:forceoff"
  }
  CoreMesh {
    MeshAsset {
      Id: 5271639852184247581
    }
    Teams {
    }
    StaticMesh {
      Physics {
      }
      BoundsScale: 1
    }
  }
  Relevance {
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 148409061760880091
  Name: "apple"
  Transform {
    Location {
      X: 6.55805063
      Y: -97.8582611
      Z: 1.60182691
    }
    Rotation {
      Pitch: 27.2198181
      Yaw: 103.332054
      Roll: -35.6387024
    }
    Scale {
      X: 1.80098414
      Y: 1.80098414
      Z: 1.80098414
    }
  }
  ParentId: 10593679274107927686
  ChildIds: 1695307504701735868
  ChildIds: 8491142040491913813
  ChildIds: 6900325145262593325
  ChildIds: 7460359729234544353
  Collidable_v2 {
    Value: "mc:ecollisionsetting:forceoff"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:forceoff"
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
  Id: 7460359729234544353
  Name: "Ring - Extra Thick"
  Transform {
    Location {
      Z: 4.15966797
    }
    Rotation {
      Yaw: -179.999954
      Roll: -179.999954
    }
    Scale {
      X: 0.0648578927
      Y: 0.0648579448
      Z: 0.0309310071
    }
  }
  ParentId: 148409061760880091
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 15309680093221024410
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
  }
  Collidable_v2 {
    Value: "mc:ecollisionsetting:forceoff"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:forceoff"
  }
  CoreMesh {
    MeshAsset {
      Id: 5489775416547967874
    }
    Teams {
    }
    DisableCastShadows: true
    StaticMesh {
      Physics {
      }
      BoundsScale: 1
    }
  }
  Relevance {
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 6900325145262593325
  Name: "Ring - Extra Thick"
  Transform {
    Location {
      Y: -0.740722656
      Z: 5.93017578
    }
    Rotation {
      Roll: 151.079468
    }
    Scale {
      X: 0.0157939661
      Y: 0.0157939903
      Z: 0.02015795
    }
  }
  ParentId: 148409061760880091
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 889917629752285723
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
  }
  Collidable_v2 {
    Value: "mc:ecollisionsetting:forceoff"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:forceoff"
  }
  CoreMesh {
    MeshAsset {
      Id: 10413465125058823580
    }
    Teams {
    }
    DisableCastShadows: true
    StaticMesh {
      Physics {
      }
      BoundsScale: 1
    }
  }
  Relevance {
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 8491142040491913813
  Name: "Ring - Extra Thick"
  Transform {
    Location {
    }
    Rotation {
      Yaw: -179.999954
      Roll: -179.999954
    }
    Scale {
      X: 0.130088791
      Y: 0.130088791
      Z: 0.120678425
    }
  }
  ParentId: 148409061760880091
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 15309680093221024410
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
  }
  Collidable_v2 {
    Value: "mc:ecollisionsetting:forceoff"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:forceoff"
  }
  CoreMesh {
    MeshAsset {
      Id: 5489775416547967874
    }
    Teams {
    }
    DisableCastShadows: true
    StaticMesh {
      Physics {
      }
      BoundsScale: 1
    }
  }
  Relevance {
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 1695307504701735868
  Name: "Ring - Extra Thick"
  Transform {
    Location {
      Z: 0.705566406
    }
    Rotation {
    }
    Scale {
      X: 0.133398145
      Y: 0.133398145
      Z: 0.20720613
    }
  }
  ParentId: 148409061760880091
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 15309680093221024410
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
  }
  Collidable_v2 {
    Value: "mc:ecollisionsetting:forceoff"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:forceoff"
  }
  CoreMesh {
    MeshAsset {
      Id: 5271639852184247581
    }
    Teams {
    }
    StaticMesh {
      Physics {
      }
      BoundsScale: 1
    }
  }
  Relevance {
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 9088247944470424279
  Name: "apple"
  Transform {
    Location {
      X: 15.4970026
      Y: -128.787399
      Z: -4.54347038
    }
    Rotation {
      Pitch: -40.7364502
      Yaw: 12.0514765
      Roll: -1.70391846
    }
    Scale {
      X: 1.80098414
      Y: 1.80098414
      Z: 1.80098414
    }
  }
  ParentId: 10593679274107927686
  ChildIds: 2328304045485303919
  ChildIds: 18123882168032587965
  ChildIds: 677076216423904652
  ChildIds: 3107550320727931620
  Collidable_v2 {
    Value: "mc:ecollisionsetting:forceoff"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:forceoff"
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
  Id: 3107550320727931620
  Name: "Ring - Extra Thick"
  Transform {
    Location {
      Z: 4.15966797
    }
    Rotation {
      Yaw: -179.999954
      Roll: -179.999954
    }
    Scale {
      X: 0.0648578927
      Y: 0.0648579448
      Z: 0.0309310071
    }
  }
  ParentId: 9088247944470424279
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 15309680093221024410
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
  }
  Collidable_v2 {
    Value: "mc:ecollisionsetting:forceoff"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:forceoff"
  }
  CoreMesh {
    MeshAsset {
      Id: 5489775416547967874
    }
    Teams {
    }
    DisableCastShadows: true
    StaticMesh {
      Physics {
      }
      BoundsScale: 1
    }
  }
  Relevance {
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 677076216423904652
  Name: "Ring - Extra Thick"
  Transform {
    Location {
      Y: -0.740722656
      Z: 5.93017578
    }
    Rotation {
      Roll: 151.079468
    }
    Scale {
      X: 0.0157939661
      Y: 0.0157939903
      Z: 0.02015795
    }
  }
  ParentId: 9088247944470424279
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 889917629752285723
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
  }
  Collidable_v2 {
    Value: "mc:ecollisionsetting:forceoff"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:forceoff"
  }
  CoreMesh {
    MeshAsset {
      Id: 10413465125058823580
    }
    Teams {
    }
    DisableCastShadows: true
    StaticMesh {
      Physics {
      }
      BoundsScale: 1
    }
  }
  Relevance {
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 18123882168032587965
  Name: "Ring - Extra Thick"
  Transform {
    Location {
    }
    Rotation {
      Yaw: -179.999954
      Roll: -179.999954
    }
    Scale {
      X: 0.130088791
      Y: 0.130088791
      Z: 0.120678425
    }
  }
  ParentId: 9088247944470424279
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 15309680093221024410
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
  }
  Collidable_v2 {
    Value: "mc:ecollisionsetting:forceoff"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:forceoff"
  }
  CoreMesh {
    MeshAsset {
      Id: 5489775416547967874
    }
    Teams {
    }
    DisableCastShadows: true
    StaticMesh {
      Physics {
      }
      BoundsScale: 1
    }
  }
  Relevance {
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 2328304045485303919
  Name: "Ring - Extra Thick"
  Transform {
    Location {
      Z: 0.705566406
    }
    Rotation {
    }
    Scale {
      X: 0.133398145
      Y: 0.133398145
      Z: 0.20720613
    }
  }
  ParentId: 9088247944470424279
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 15309680093221024410
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
  }
  Collidable_v2 {
    Value: "mc:ecollisionsetting:forceoff"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:forceoff"
  }
  CoreMesh {
    MeshAsset {
      Id: 5271639852184247581
    }
    Teams {
    }
    StaticMesh {
      Physics {
      }
      BoundsScale: 1
    }
  }
  Relevance {
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 2407419263135350079
  Name: "Cone - Truncated Hollow Wide Thin"
  Transform {
    Location {
      Z: 18.879858
    }
    Rotation {
      Yaw: -179.999954
      Roll: -179.999954
    }
    Scale {
      X: 0.796248436
      Y: 0.796249628
      Z: 0.0105688302
    }
  }
  ParentId: 8766515210529415647
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 13791225619385764102
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:vtile"
      Float: 0.300543249
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:utile"
      Float: 0.732941091
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 0.567708313
        G: 0.285359621
        B: 0.11827255
        A: 1
      }
    }
  }
  Collidable_v2 {
    Value: "mc:ecollisionsetting:forceoff"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:forceoff"
  }
  CoreMesh {
    MeshAsset {
      Id: 17587880652047825598
    }
    Teams {
    }
    DisableCastShadows: true
    StaticMesh {
      Physics {
      }
      BoundsScale: 1
    }
  }
  Relevance {
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 14921640030672769564
  Name: "Cone - Truncated Hollow Wide Thin"
  Transform {
    Location {
      X: -0.00025387769
      Y: -2.94027686e-05
      Z: 18.2164497
    }
    Rotation {
      Yaw: -179.999969
      Roll: -179.999954
    }
    Scale {
      X: 0.202869698
      Y: 0.202897653
      Z: 0.524670243
    }
  }
  ParentId: 8766515210529415647
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 13791225619385764102
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:utile"
      Float: 0.579942
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:vtile"
      Float: 0.125
    }
  }
  Collidable_v2 {
    Value: "mc:ecollisionsetting:forceoff"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:forceoff"
  }
  CoreMesh {
    MeshAsset {
      Id: 12531876463208577149
    }
    Teams {
    }
    DisableCastShadows: true
    StaticMesh {
      Physics {
      }
      BoundsScale: 1
    }
  }
  Relevance {
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 670534152069779490
  Name: "Ring"
  Transform {
    Location {
      X: 9.27057481e-05
      Y: -0.000404809
      Z: 49.1996765
    }
    Rotation {
      Yaw: -179.999969
      Roll: -179.999954
    }
    Scale {
      X: 0.238230571
      Y: 0.238240883
      Z: 0.687293172
    }
  }
  ParentId: 8766515210529415647
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 13791225619385764102
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 0.567708313
        G: 0.285359621
        B: 0.11827255
        A: 1
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:utile"
      Float: 0.579942
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:vtile"
      Float: 0.125
    }
  }
  Collidable_v2 {
    Value: "mc:ecollisionsetting:forceoff"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:forceoff"
  }
  CoreMesh {
    MeshAsset {
      Id: 12531876463208577149
    }
    Teams {
    }
    DisableCastShadows: true
    StaticMesh {
      Physics {
      }
      BoundsScale: 1
    }
  }
  Relevance {
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 11439416371291717254
  Name: "Collision"
  Transform {
    Location {
      Z: 49.3818207
    }
    Rotation {
      Yaw: -179.999954
      Roll: -179.999954
    }
    Scale {
      X: 1
      Y: 1.00000048
      Z: 0.630126834
    }
  }
  ParentId: 8766515210529415647
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 13791225619385764102
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:vtile"
      Float: 0.262925446
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:utile"
      Float: 0.837806
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 0.567708313
        G: 0.285359621
        B: 0.11827255
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
    Value: "mc:ecollisionsetting:forceoff"
  }
  CoreMesh {
    MeshAsset {
      Id: 8509644064107880223
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    StaticMesh {
      Physics {
      }
      BoundsScale: 1
    }
  }
  Relevance {
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 4920941840627565559
  Name: "Spices"
  Transform {
    Location {
      X: 38.4470596
      Y: -156.741882
      Z: 122.992699
    }
    Rotation {
      Yaw: -5.23474121
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 3323552826038292413
  ChildIds: 16247461503421478372
  ChildIds: 18372525350977348136
  ChildIds: 12580261544753801344
  ChildIds: 7683540618838037
  ChildIds: 11676649314271076683
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
  Id: 11676649314271076683
  Name: "Kelp Tall Bush 01"
  Transform {
    Location {
      Z: 30.981369
    }
    Rotation {
      Yaw: 175.36647
      Roll: -179.999954
    }
    Scale {
      X: 0.123304546
      Y: 0.123304546
      Z: 0.123304546
    }
  }
  ParentId: 4920941840627565559
  UnregisteredParameters {
    Overrides {
      Name: "ma:Nature_Leaves:color"
      Color {
        R: 0.679999948
        A: 1
      }
    }
    Overrides {
      Name: "ma:Nature_Leaves:id"
      AssetReference {
        Id: 7619810327466626601
      }
    }
  }
  Collidable_v2 {
    Value: "mc:ecollisionsetting:forceoff"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:forceoff"
  }
  CoreMesh {
    MeshAsset {
      Id: 18014941405078390650
    }
    Teams {
    }
    DisableCastShadows: true
    StaticMesh {
      Physics {
      }
      BoundsScale: 1
    }
  }
  Relevance {
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 7683540618838037
  Name: "Kelp Tall Bush 01"
  Transform {
    Location {
      Z: 18.3625641
    }
    Rotation {
      Pitch: 5.46415104e-05
      Yaw: -73.5424
      Roll: -179.999863
    }
    Scale {
      X: 0.123304546
      Y: 0.123304546
      Z: 0.123304546
    }
  }
  ParentId: 4920941840627565559
  UnregisteredParameters {
    Overrides {
      Name: "ma:Nature_Leaves:color"
      Color {
        R: 0.679999948
        A: 1
      }
    }
    Overrides {
      Name: "ma:Nature_Leaves:id"
      AssetReference {
        Id: 7619810327466626601
      }
    }
  }
  Collidable_v2 {
    Value: "mc:ecollisionsetting:forceoff"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:forceoff"
  }
  CoreMesh {
    MeshAsset {
      Id: 18014941405078390650
    }
    Teams {
    }
    DisableCastShadows: true
    StaticMesh {
      Physics {
      }
      BoundsScale: 1
    }
  }
  Relevance {
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 12580261544753801344
  Name: "Kelp Tall Bush 01"
  Transform {
    Location {
    }
    Rotation {
      Pitch: -3.4150944e-05
      Yaw: 111.090538
      Roll: -179.999954
    }
    Scale {
      X: 0.1
      Y: 0.1
      Z: 0.1
    }
  }
  ParentId: 4920941840627565559
  UnregisteredParameters {
    Overrides {
      Name: "ma:Nature_Leaves:color"
      Color {
        R: 0.679999948
        A: 1
      }
    }
    Overrides {
      Name: "ma:Nature_Leaves:id"
      AssetReference {
        Id: 7619810327466626601
      }
    }
  }
  Collidable_v2 {
    Value: "mc:ecollisionsetting:forceoff"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:forceoff"
  }
  CoreMesh {
    MeshAsset {
      Id: 18014941405078390650
    }
    Teams {
    }
    DisableCastShadows: true
    StaticMesh {
      Physics {
      }
      BoundsScale: 1
    }
  }
  Relevance {
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 18372525350977348136
  Name: "Kelp Tall Bush 01"
  Transform {
    Location {
      Z: 12.6187897
    }
    Rotation {
      Roll: -179.999954
    }
    Scale {
      X: 0.1
      Y: 0.1
      Z: 0.1
    }
  }
  ParentId: 4920941840627565559
  UnregisteredParameters {
    Overrides {
      Name: "ma:Nature_Leaves:color"
      Color {
        R: 0.679999948
        A: 1
      }
    }
    Overrides {
      Name: "ma:Nature_Leaves:id"
      AssetReference {
        Id: 7619810327466626601
      }
    }
  }
  Collidable_v2 {
    Value: "mc:ecollisionsetting:forceoff"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:forceoff"
  }
  CoreMesh {
    MeshAsset {
      Id: 18014941405078390650
    }
    Teams {
    }
    DisableCastShadows: true
    StaticMesh {
      Physics {
      }
      BoundsScale: 1
    }
  }
  Relevance {
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 16247461503421478372
  Name: "Rope Knot"
  Transform {
    Location {
      X: -1.6229248
      Y: 1.24072266
      Z: 50.5915527
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 4920941840627565559
  ChildIds: 9469583856732590352
  ChildIds: 7030409591260696192
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
  Id: 7030409591260696192
  Name: "Rope"
  Transform {
    Location {
      X: 1.11405325
      Y: -0.887205362
      Z: -33.887928
    }
    Rotation {
    }
    Scale {
      X: 0.0394513607
      Y: 0.0394513607
      Z: 0.670018196
    }
  }
  ParentId: 16247461503421478372
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 3090596827184957478
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:utile"
      Float: 0.375107974
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:vtile"
      Float: 4.32024097
    }
  }
  Collidable_v2 {
    Value: "mc:ecollisionsetting:forceoff"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:forceoff"
  }
  CoreMesh {
    MeshAsset {
      Id: 13950225922132296555
    }
    Teams {
    }
    DisableCastShadows: true
    StaticMesh {
      Physics {
      }
      BoundsScale: 1
    }
  }
  Relevance {
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 9469583856732590352
  Name: "Donut"
  Transform {
    Location {
      X: 0.207633272
      Y: -0.000248759694
      Z: 0.555889189
    }
    Rotation {
      Pitch: -73.1495361
      Yaw: -3.05175781e-05
      Roll: 0.00014091967
    }
    Scale {
      X: 0.0530998968
      Y: 0.0530997775
      Z: 0.0784227327
    }
  }
  ParentId: 16247461503421478372
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 3090596827184957478
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:utile"
      Float: 2.79133749
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:vtile"
      Float: 0.392695218
    }
  }
  Collidable_v2 {
    Value: "mc:ecollisionsetting:forceoff"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:forceoff"
  }
  CoreMesh {
    MeshAsset {
      Id: 1978759747315071937
    }
    Teams {
    }
    DisableCastShadows: true
    StaticMesh {
      Physics {
      }
      BoundsScale: 1
    }
  }
  Relevance {
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 14400440378787188202
  Name: "Spices"
  Transform {
    Location {
      X: 91.1888962
      Y: -156.523285
      Z: 133.950348
    }
    Rotation {
      Yaw: -5.23474121
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 3323552826038292413
  ChildIds: 2525231646809164391
  ChildIds: 9493485658245834885
  ChildIds: 8050803717414594418
  ChildIds: 11090788690761867
  ChildIds: 11350426481782981365
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
  Id: 11350426481782981365
  Name: "Kelp Tall Bush 01"
  Transform {
    Location {
      Z: 30.981369
    }
    Rotation {
      Yaw: 175.36647
      Roll: -179.999954
    }
    Scale {
      X: 0.123304546
      Y: 0.123304546
      Z: 0.123304546
    }
  }
  ParentId: 14400440378787188202
  UnregisteredParameters {
    Overrides {
      Name: "ma:Nature_Leaves:color"
      Color {
        R: 0.421875
        G: 0.139067963
        B: 0.0505371168
        A: 1
      }
    }
    Overrides {
      Name: "ma:Nature_Leaves:id"
      AssetReference {
        Id: 1994043067864941227
      }
    }
  }
  Collidable_v2 {
    Value: "mc:ecollisionsetting:forceoff"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:forceoff"
  }
  CoreMesh {
    MeshAsset {
      Id: 18014941405078390650
    }
    Teams {
    }
    DisableCastShadows: true
    StaticMesh {
      Physics {
      }
      BoundsScale: 1
    }
  }
  Relevance {
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 11090788690761867
  Name: "Kelp Tall Bush 01"
  Transform {
    Location {
      Z: 21.6805267
    }
    Rotation {
      Pitch: 5.46415104e-05
      Yaw: -73.5423584
      Roll: -179.999863
    }
    Scale {
      X: 0.123304546
      Y: 0.123304546
      Z: 0.123304546
    }
  }
  ParentId: 14400440378787188202
  UnregisteredParameters {
    Overrides {
      Name: "ma:Nature_Leaves:color"
      Color {
        R: 0.421875
        G: 0.139067963
        B: 0.0505371168
        A: 1
      }
    }
    Overrides {
      Name: "ma:Nature_Leaves:id"
      AssetReference {
        Id: 1994043067864941227
      }
    }
  }
  Collidable_v2 {
    Value: "mc:ecollisionsetting:forceoff"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:forceoff"
  }
  CoreMesh {
    MeshAsset {
      Id: 18014941405078390650
    }
    Teams {
    }
    DisableCastShadows: true
    StaticMesh {
      Physics {
      }
      BoundsScale: 1
    }
  }
  Relevance {
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 8050803717414594418
  Name: "Kelp Tall Bush 01"
  Transform {
    Location {
    }
    Rotation {
      Pitch: -3.4150944e-05
      Yaw: 111.090538
      Roll: -179.999954
    }
    Scale {
      X: 0.1
      Y: 0.1
      Z: 0.1
    }
  }
  ParentId: 14400440378787188202
  UnregisteredParameters {
    Overrides {
      Name: "ma:Nature_Leaves:color"
      Color {
        R: 0.421875
        G: 0.139067963
        B: 0.0505371168
        A: 1
      }
    }
    Overrides {
      Name: "ma:Nature_Leaves:id"
      AssetReference {
        Id: 1994043067864941227
      }
    }
  }
  Collidable_v2 {
    Value: "mc:ecollisionsetting:forceoff"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:forceoff"
  }
  CoreMesh {
    MeshAsset {
      Id: 18014941405078390650
    }
    Teams {
    }
    DisableCastShadows: true
    StaticMesh {
      Physics {
      }
      BoundsScale: 1
    }
  }
  Relevance {
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 9493485658245834885
  Name: "Kelp Tall Bush 01"
  Transform {
    Location {
      Z: 12.6187897
    }
    Rotation {
      Roll: -179.999954
    }
    Scale {
      X: 0.1
      Y: 0.1
      Z: 0.1
    }
  }
  ParentId: 14400440378787188202
  UnregisteredParameters {
    Overrides {
      Name: "ma:Nature_Leaves:color"
      Color {
        R: 0.9
        G: 0.214569524
        A: 1
      }
    }
    Overrides {
      Name: "ma:Nature_Leaves:id"
      AssetReference {
        Id: 1994043067864941227
      }
    }
  }
  Collidable_v2 {
    Value: "mc:ecollisionsetting:forceoff"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:forceoff"
  }
  CoreMesh {
    MeshAsset {
      Id: 18014941405078390650
    }
    Teams {
    }
    DisableCastShadows: true
    StaticMesh {
      Physics {
      }
      BoundsScale: 1
    }
  }
  Relevance {
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 2525231646809164391
  Name: "Rope Knot"
  Transform {
    Location {
      X: -0.975341797
      Y: -0.366333
      Z: 20.014328
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 14400440378787188202
  ChildIds: 9718094050139851170
  ChildIds: 345129835858895333
  ChildIds: 15108012182054732165
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
  Id: 15108012182054732165
  Name: "Donut"
  Transform {
    Location {
      X: 24.6345787
      Y: 2.03218627
      Z: 56.5495872
    }
    Rotation {
      Pitch: 0.403541207
      Yaw: -3.05175781e-05
      Roll: 4.86044482e-05
    }
    Scale {
      X: 0.0595846064
      Y: 0.0595844574
      Z: 0.0879999176
    }
  }
  ParentId: 2525231646809164391
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 3090596827184957478
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:utile"
      Float: 2.91857243
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:vtile"
      Float: 0.536490858
    }
  }
  Collidable_v2 {
    Value: "mc:ecollisionsetting:forceoff"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:forceoff"
  }
  CoreMesh {
    MeshAsset {
      Id: 1978759747315071937
    }
    Teams {
    }
    DisableCastShadows: true
    StaticMesh {
      Physics {
      }
      BoundsScale: 1
    }
  }
  Relevance {
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 345129835858895333
  Name: "Donut"
  Transform {
    Location {
      X: 1.66829395
      Y: -0.117726207
      Z: 36.9581947
    }
    Rotation {
      Pitch: -80.0506287
      Yaw: -179.999634
      Roll: 179.999634
    }
    Scale {
      X: 0.0569990277
      Y: 0.0569988936
      Z: 0.0841813162
    }
  }
  ParentId: 2525231646809164391
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 3090596827184957478
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:utile"
      Float: 2.91857243
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:vtile"
      Float: 0.536490858
    }
  }
  Collidable_v2 {
    Value: "mc:ecollisionsetting:forceoff"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:forceoff"
  }
  CoreMesh {
    MeshAsset {
      Id: 1978759747315071937
    }
    Teams {
    }
    DisableCastShadows: true
    StaticMesh {
      Physics {
      }
      BoundsScale: 1
    }
  }
  Relevance {
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 9718094050139851170
  Name: "Rope"
  Transform {
    Location {
      X: 0.274362594
      Y: 0.354111791
      Z: 9.44878387
    }
    Rotation {
    }
    Scale {
      X: 0.0326279439
      Y: 0.0326279439
      Z: 0.554133415
    }
  }
  ParentId: 2525231646809164391
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 3090596827184957478
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:utile"
      Float: 0.375107974
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:vtile"
      Float: 4.32024097
    }
  }
  Collidable_v2 {
    Value: "mc:ecollisionsetting:forceoff"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:forceoff"
  }
  CoreMesh {
    MeshAsset {
      Id: 13950225922132296555
    }
    Teams {
    }
    DisableCastShadows: true
    StaticMesh {
      Physics {
      }
      BoundsScale: 1
    }
  }
  Relevance {
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 18143999692304678815
  Name: "Main Rope"
  Transform {
    Location {
      X: 151.994141
      Y: -156.992188
      Z: 244.074951
    }
    Rotation {
      Pitch: 28.8403358
      Yaw: 179.196121
      Roll: -179.999954
    }
    Scale {
      X: 0.457122952
      Y: -0.136482775
      Z: 0.457122624
    }
  }
  ParentId: 3323552826038292413
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 3090596827184957478
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:vtile"
      Float: 24.7947521
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:utile"
      Float: 18.1490173
    }
    Overrides {
      Name: "ma:Shared_Detail1:id"
      AssetReference {
        Id: 16805300009998353718
      }
    }
  }
  Collidable_v2 {
    Value: "mc:ecollisionsetting:forceoff"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:forceoff"
  }
  CoreMesh {
    MeshAsset {
      Id: 5509123564555821808
    }
    Teams {
    }
    DisableCastShadows: true
    StaticMesh {
      Physics {
      }
      BoundsScale: 1
    }
  }
  Relevance {
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 3837162781949608598
  Name: "Support"
  Transform {
    Location {
      X: -94.0183945
      Y: 151.232697
      Z: 212.224304
    }
    Rotation {
      Pitch: -0.155883789
      Yaw: 0.00138255802
      Roll: -91.0639954
    }
    Scale {
      X: 0.197409853
      Y: 0.192926332
      Z: 0.619884849
    }
  }
  ParentId: 3323552826038292413
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_Detail1:id"
      AssetReference {
        Id: 889917629752285723
      }
    }
    Overrides {
      Name: "ma:Shared_Detail1:color"
      Color {
        R: 1
        G: 0.701572835
        B: 0.5625
        A: 1
      }
    }
    Overrides {
      Name: "ma:Shared_Detail1:utile"
      Float: 1.5637126
    }
  }
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:forceoff"
  }
  CoreMesh {
    MeshAsset {
      Id: 16701925266063006038
    }
    Teams {
    }
    StaticMesh {
      Physics {
      }
      BoundsScale: 1
    }
  }
  Relevance {
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 12837380483457393405
  Name: "Support"
  Transform {
    Location {
      X: 101.737679
      Y: 154.399
      Z: 258.681915
    }
    Rotation {
      Pitch: 20.0310516
      Yaw: 6.0511651
      Roll: -93.3989868
    }
    Scale {
      X: 0.286867559
      Y: 0.314331174
      Z: 0.641027451
    }
  }
  ParentId: 3323552826038292413
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_Detail1:id"
      AssetReference {
        Id: 889917629752285723
      }
    }
    Overrides {
      Name: "ma:Shared_Detail1:utile"
      Float: 2.23368406
    }
    Overrides {
      Name: "ma:Shared_Detail1:vtile"
      Float: 1.09469235
    }
  }
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:forceoff"
  }
  CoreMesh {
    MeshAsset {
      Id: 16701925266063006038
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    StaticMesh {
      Physics {
      }
      BoundsScale: 1
    }
  }
  Relevance {
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 2844302413485799439
  Name: "Support"
  Transform {
    Location {
      X: -76.4797363
      Y: 136.932861
      Z: 0.952835083
    }
    Rotation {
      Roll: 4.21459818
    }
    Scale {
      X: 0.843613446
      Y: 0.843613446
      Z: 0.843613446
    }
  }
  ParentId: 3323552826038292413
  ChildIds: 13515332108579233360
  ChildIds: 10426336329297638204
  ChildIds: 1552198263448729478
  ChildIds: 1008350697474644328
  ChildIds: 13333694081719653724
  ChildIds: 15330686031403626652
  ChildIds: 10138585001682649202
  ChildIds: 5779260572523270521
  ChildIds: 16934697709418985897
  ChildIds: 1705896363446218130
  ChildIds: 13903481225587541399
  ChildIds: 9281483903531578459
  ChildIds: 6816119073924242714
  ChildIds: 5211915156053246823
  ChildIds: 1043738092596059695
  ChildIds: 13884527837278162437
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
  Id: 13884527837278162437
  Name: "Craftsman Stairs 01 Pillar"
  Transform {
    Location {
      X: -2.69789314
      Y: -330.94986
      Z: -29.5018044
    }
    Rotation {
      Pitch: -13.0618286
      Yaw: 1.70112133
      Roll: -7.48657227
    }
    Scale {
      X: 0.281784624
      Y: 0.275401175
      Z: 0.609737277
    }
  }
  ParentId: 2844302413485799439
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_Detail1:id"
      AssetReference {
        Id: 889917629752285723
      }
    }
    Overrides {
      Name: "ma:Shared_Detail1:color"
      Color {
        R: 1
        G: 0.701572835
        B: 0.5625
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
    Value: "mc:ecollisionsetting:forceoff"
  }
  CoreMesh {
    MeshAsset {
      Id: 16701925266063006038
    }
    Teams {
    }
    StaticMesh {
      Physics {
      }
      BoundsScale: 1
    }
  }
  Relevance {
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 1043738092596059695
  Name: "Rock Block 01"
  Transform {
    Location {
      X: -16.9196873
      Y: -375.650635
      Z: 209.319733
    }
    Rotation {
      Yaw: -8.52045616e-07
      Roll: -7.29179668
    }
    Scale {
      X: 0.196487
      Y: 0.196481302
      Z: 0.216095835
    }
  }
  ParentId: 2844302413485799439
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 988091216586047331
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: true
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 0.625
        G: 0.625
        B: 0.625
        A: 1
      }
    }
  }
  Collidable_v2 {
    Value: "mc:ecollisionsetting:forceoff"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:forceoff"
  }
  CoreMesh {
    MeshAsset {
      Id: 16718390130615866986
    }
    Teams {
    }
    StaticMesh {
      Physics {
      }
      BoundsScale: 1
    }
  }
  Relevance {
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 5211915156053246823
  Name: "Craftsman Stairs 01 Pillar"
  Transform {
    Location {
      X: -16.5986805
      Y: -346.001038
      Z: -26.6928577
    }
    Rotation {
      Yaw: -8.51197285e-07
      Roll: -7.29179955
    }
    Scale {
      X: 0.321630925
      Y: 0.314325839
      Z: 0.550310493
    }
  }
  ParentId: 2844302413485799439
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_Detail1:id"
      AssetReference {
        Id: 889917629752285723
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
    Value: "mc:ecollisionsetting:forceoff"
  }
  CoreMesh {
    MeshAsset {
      Id: 16701925266063006038
    }
    Teams {
    }
    StaticMesh {
      Physics {
      }
      BoundsScale: 1
    }
  }
  Relevance {
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 6816119073924242714
  Name: "Craftsman Stairs 01 Pillar"
  Transform {
    Location {
      X: -7.64751339
      Y: -17.1159
      Z: -3.02375889
    }
    Rotation {
      Pitch: -12.4060364
      Yaw: -0.422851562
      Roll: 1.96732891
    }
    Scale {
      X: 0.231391132
      Y: 0.22611621
      Z: 0.626114309
    }
  }
  ParentId: 2844302413485799439
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_Detail1:id"
      AssetReference {
        Id: 889917629752285723
      }
    }
    Overrides {
      Name: "ma:Shared_Detail1:color"
      Color {
        R: 1
        G: 0.701572835
        B: 0.5625
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
    Value: "mc:ecollisionsetting:forceoff"
  }
  CoreMesh {
    MeshAsset {
      Id: 16701925266063006038
    }
    Teams {
    }
    StaticMesh {
      Physics {
      }
      BoundsScale: 1
    }
  }
  Relevance {
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 9281483903531578459
  Name: "Rock Block 01"
  Transform {
    Location {
      X: -16.7883511
      Y: -6.21465158
      Z: 250.732224
    }
    Rotation {
      Pitch: 6.66194773
      Yaw: 0.224427119
      Roll: 1.9344269
    }
    Scale {
      X: 0.189519554
      Y: 0.189520463
      Z: 0.13710551
    }
  }
  ParentId: 2844302413485799439
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 988091216586047331
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: true
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 0.625
        G: 0.625
        B: 0.625
        A: 1
      }
    }
  }
  Collidable_v2 {
    Value: "mc:ecollisionsetting:forceoff"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:forceoff"
  }
  CoreMesh {
    MeshAsset {
      Id: 16718390130615866986
    }
    Teams {
    }
    StaticMesh {
      Physics {
      }
      BoundsScale: 1
    }
  }
  Relevance {
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 13903481225587541399
  Name: "Craftsman Stairs 01 Pillar"
  Transform {
    Location {
      X: -16.5991211
      Y: -13.6833496
    }
    Rotation {
      Roll: 1.92134273
    }
    Scale {
      X: 0.321630895
      Y: 0.314325809
      Z: 0.550310493
    }
  }
  ParentId: 2844302413485799439
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_Detail1:id"
      AssetReference {
        Id: 889917629752285723
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
    Value: "mc:ecollisionsetting:forceoff"
  }
  CoreMesh {
    MeshAsset {
      Id: 16701925266063006038
    }
    Teams {
    }
    StaticMesh {
      Physics {
      }
      BoundsScale: 1
    }
  }
  Relevance {
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 1705896363446218130
  Name: "Craftsman Stairs 01 Pillar"
  Transform {
    Location {
      X: 180.949493
      Y: -4.38187
      Z: 3.60889912
    }
    Rotation {
      Pitch: -5.55732155
      Yaw: 8.65953255
      Roll: 1.23178458
    }
    Scale {
      X: 0.329282075
      Y: 0.428095788
      Z: 0.607199728
    }
  }
  ParentId: 2844302413485799439
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_Detail1:id"
      AssetReference {
        Id: 889917629752285723
      }
    }
    Overrides {
      Name: "ma:Shared_Detail1:utile"
      Float: 2.04317498
    }
    Overrides {
      Name: "ma:Shared_Detail1:vtile"
      Float: 0.560945272
    }
  }
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:forceoff"
  }
  CoreMesh {
    MeshAsset {
      Id: 16701925266063006038
    }
    Teams {
    }
    StaticMesh {
      Physics {
      }
      BoundsScale: 1
    }
  }
  Relevance {
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 16934697709418985897
  Name: "Rock Block 01"
  Transform {
    Location {
      X: 224.503098
      Y: -339.475189
      Z: 35.3705711
    }
    Rotation {
      Pitch: -12.4191141
      Yaw: 3.99250412
      Roll: -2.89018726
    }
    Scale {
      X: 0.202922672
      Y: 0.219820961
      Z: 0.102173582
    }
  }
  ParentId: 2844302413485799439
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 988091216586047331
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: true
    }
  }
  Collidable_v2 {
    Value: "mc:ecollisionsetting:forceoff"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:forceoff"
  }
  CoreMesh {
    MeshAsset {
      Id: 16718390130615866986
    }
    Teams {
    }
    DisableCastShadows: true
    StaticMesh {
      Physics {
      }
      BoundsScale: 1
    }
  }
  Relevance {
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 5779260572523270521
  Name: "Rock Block 01"
  Transform {
    Location {
      X: 187.84848
      Y: -1.84674394
      Z: 73.8688126
    }
    Rotation {
      Pitch: -8.95825
      Yaw: 2.98722196
      Roll: 4.60003901
    }
    Scale {
      X: 0.202922672
      Y: 0.219820961
      Z: 0.102173582
    }
  }
  ParentId: 2844302413485799439
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 988091216586047331
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: true
    }
  }
  Collidable_v2 {
    Value: "mc:ecollisionsetting:forceoff"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:forceoff"
  }
  CoreMesh {
    MeshAsset {
      Id: 16718390130615866986
    }
    Teams {
    }
    DisableCastShadows: true
    StaticMesh {
      Physics {
      }
      BoundsScale: 1
    }
  }
  Relevance {
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 10138585001682649202
  Name: "Rock Block 01"
  Transform {
    Location {
      X: 63.4386635
      Y: -362.211456
      Z: 199.401978
    }
    Rotation {
      Pitch: -5.18225527
      Yaw: -177.166473
      Roll: 95.7799149
    }
    Scale {
      X: 0.117813528
      Y: 0.117462881
      Z: 0.232850045
    }
  }
  ParentId: 2844302413485799439
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 988091216586047331
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 0.572
        G: 0.572
        B: 0.572
        A: 1
      }
    }
  }
  Collidable_v2 {
    Value: "mc:ecollisionsetting:forceoff"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:forceoff"
  }
  CoreMesh {
    MeshAsset {
      Id: 16372496464315477095
    }
    Teams {
    }
    DisableCastShadows: true
    StaticMesh {
      Physics {
      }
      BoundsScale: 1
    }
  }
  Relevance {
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 15330686031403626652
  Name: "Rock Block 01"
  Transform {
    Location {
      X: 50.1104927
      Y: -361.889923
      Z: 201.931885
    }
    Rotation {
      Pitch: 10.1540041
      Yaw: -175.667831
      Roll: 7.95411777
    }
    Scale {
      X: 0.176944748
      Y: 0.164825916
      Z: 0.0890940279
    }
  }
  ParentId: 2844302413485799439
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 988091216586047331
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 0.625
        G: 0.625
        B: 0.625
        A: 1
      }
    }
  }
  Collidable_v2 {
    Value: "mc:ecollisionsetting:forceoff"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:forceoff"
  }
  CoreMesh {
    MeshAsset {
      Id: 16718390130615866986
    }
    Teams {
    }
    DisableCastShadows: true
    StaticMesh {
      Physics {
      }
      BoundsScale: 1
    }
  }
  Relevance {
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 13333694081719653724
  Name: "Rock Block 01"
  Transform {
    Location {
      X: 230.890381
      Y: -365.036438
      Z: 222.46727
    }
    Rotation {
      Pitch: -10.3215084
      Yaw: 3.50660443
      Roll: 78.338562
    }
    Scale {
      X: 0.117813528
      Y: 0.117462881
      Z: 0.232850045
    }
  }
  ParentId: 2844302413485799439
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 988091216586047331
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 0.572
        G: 0.572
        B: 0.572
        A: 1
      }
    }
  }
  Collidable_v2 {
    Value: "mc:ecollisionsetting:forceoff"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:forceoff"
  }
  CoreMesh {
    MeshAsset {
      Id: 16372496464315477095
    }
    Teams {
    }
    DisableCastShadows: true
    StaticMesh {
      Physics {
      }
      BoundsScale: 1
    }
  }
  Relevance {
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 1008350697474644328
  Name: "Rock Block 01"
  Transform {
    Location {
      X: 249.483109
      Y: -362.707397
      Z: 221.55722
    }
    Rotation {
      Pitch: -3.5359273
      Yaw: -2.73470712
      Roll: -5.58998156
    }
    Scale {
      X: 0.202922672
      Y: 0.219820961
      Z: 0.102173582
    }
  }
  ParentId: 2844302413485799439
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 988091216586047331
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: true
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 0.625
        G: 0.625
        B: 0.625
        A: 1
      }
    }
  }
  Collidable_v2 {
    Value: "mc:ecollisionsetting:forceoff"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:forceoff"
  }
  CoreMesh {
    MeshAsset {
      Id: 16718390130615866986
    }
    Teams {
    }
    DisableCastShadows: true
    StaticMesh {
      Physics {
      }
      BoundsScale: 1
    }
  }
  Relevance {
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 1552198263448729478
  Name: "Rock Block 01"
  Transform {
    Location {
      X: 261.160156
      Y: -372.001648
      Z: 264.349304
    }
    Rotation {
      Pitch: -15.2337341
      Yaw: 177.047867
      Roll: -173.997742
    }
    Scale {
      X: 0.149361521
      Y: 0.235423341
      Z: 0.206672624
    }
  }
  ParentId: 2844302413485799439
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 988091216586047331
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: true
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 0.625
        G: 0.625
        B: 0.625
        A: 1
      }
    }
  }
  Collidable_v2 {
    Value: "mc:ecollisionsetting:forceoff"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:forceoff"
  }
  CoreMesh {
    MeshAsset {
      Id: 16718390130615866986
    }
    Teams {
    }
    StaticMesh {
      Physics {
      }
      BoundsScale: 1
    }
  }
  Relevance {
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 10426336329297638204
  Name: "Rock Block 01"
  Transform {
    Location {
      X: 217.785187
      Y: 7.15502644
      Z: 310.996216
    }
    Rotation {
      Pitch: 31.4970741
      Yaw: -2.97789764
      Roll: -6.28016329
    }
    Scale {
      X: 0.128777549
      Y: 0.250509232
      Z: 0.201973379
    }
  }
  ParentId: 2844302413485799439
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 988091216586047331
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: true
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 0.625
        G: 0.625
        B: 0.625
        A: 1
      }
    }
  }
  Collidable_v2 {
    Value: "mc:ecollisionsetting:forceoff"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:forceoff"
  }
  CoreMesh {
    MeshAsset {
      Id: 16718390130615866986
    }
    Teams {
    }
    StaticMesh {
      Physics {
      }
      BoundsScale: 1
    }
  }
  Relevance {
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 13515332108579233360
  Name: "Craftsman Stairs 01 Pillar"
  Transform {
    Location {
      X: 217.619629
      Y: -334.715973
      Z: -30.9755287
    }
    Rotation {
      Pitch: -6.96305656
      Yaw: 0.51560688
      Roll: -6.06696033
    }
    Scale {
      X: 0.381250888
      Y: 0.372594744
      Z: 0.598341465
    }
  }
  ParentId: 2844302413485799439
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_Detail1:id"
      AssetReference {
        Id: 889917629752285723
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
    Value: "mc:ecollisionsetting:forceoff"
  }
  CoreMesh {
    MeshAsset {
      Id: 16701925266063006038
    }
    Teams {
    }
    StaticMesh {
      Physics {
      }
      BoundsScale: 1
    }
  }
  Relevance {
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 16051235213683992930
  Name: "Tent"
  Transform {
    Location {
      X: -57.7845535
      Y: -8.72760582
      Z: 228.585739
    }
    Rotation {
      Pitch: 53.5811272
      Yaw: -174.881989
      Roll: -85.9768677
    }
    Scale {
      X: 0.254293
      Y: 0.752077103
      Z: 2.96109772
    }
  }
  ParentId: 3323552826038292413
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 14764814241270937025
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: true
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 0.52
        G: 0.0516556315
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
    Value: "mc:ecollisionsetting:forceoff"
  }
  CoreMesh {
    MeshAsset {
      Id: 15389123512634345687
    }
    Teams {
    }
    StaticMesh {
      Physics {
      }
      BoundsScale: 1
    }
  }
  Relevance {
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 3176169907645901255
  Name: "Fantasy Clay Pot 02"
  Transform {
    Location {
      X: 166.37056
      Y: -106.526413
      Z: 3.02320242
    }
    Rotation {
      Yaw: -52.7532959
    }
    Scale {
      X: 0.606209278
      Y: 0.606209278
      Z: 0.606209278
    }
  }
  ParentId: 3323552826038292413
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_Detail1:color"
      Color {
        R: 0.0569811724
        G: 0.157733634
        B: 0.164930344
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
    Value: "mc:ecollisionsetting:forceon"
  }
  CoreMesh {
    MeshAsset {
      Id: 8985846431173858098
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
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 17988207114336206307
  Name: "Fantasy Clay Pot 03"
  Transform {
    Location {
      X: 159.197205
      Y: -158.669266
      Z: 4.50882959
    }
    Rotation {
      Yaw: 8.34567
    }
    Scale {
      X: 0.549845636
      Y: 0.549845636
      Z: 0.476561815
    }
  }
  ParentId: 3323552826038292413
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_Detail1:id"
      AssetReference {
        Id: 2715939630273116812
      }
    }
    Overrides {
      Name: "ma:Shared_Detail1:color"
      Color {
        R: 0.852430344
        G: 0.201024488
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
    Value: "mc:ecollisionsetting:forceon"
  }
  CoreMesh {
    MeshAsset {
      Id: 5077890242058173313
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
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 11176643592868291313
  Name: "MergedModel"
  Transform {
    Location {
      X: 52.9185486
      Y: 20.5663891
      Z: -1.88656
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 3323552826038292413
  ChildIds: 16688631879682286989
  ChildIds: 14321691774385714108
  ChildIds: 10846110051034362813
  ChildIds: 173025169332092926
  ChildIds: 8307968032283471325
  ChildIds: 4173970075248773037
  ChildIds: 17694317533325067892
  ChildIds: 13264427667108366483
  ChildIds: 10980772663788267632
  ChildIds: 14108566998535330553
  ChildIds: 5735750742179627468
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
    Model {
    }
  }
  Relevance {
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 5735750742179627468
  Name: "Small Open Crate"
  Transform {
    Location {
      X: 47.5326118
      Y: 59.1159592
      Z: 74.8098679
    }
    Rotation {
      Pitch: 1.07910836
      Yaw: 94.168335
      Roll: -25.7991467
    }
    Scale {
      X: 0.654051
      Y: 0.498584509
      Z: 0.498585731
    }
  }
  ParentId: 11176643592868291313
  UnregisteredParameters {
  }
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:forceon"
  }
  CoreMesh {
    MeshAsset {
      Id: 3674060815778311744
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    StaticMesh {
      Physics {
      }
      BoundsScale: 1
    }
  }
  Relevance {
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 14108566998535330553
  Name: "Wooden Barrel"
  Transform {
    Location {
      X: -107.248489
      Y: -122.082848
      Z: 5.06767845
    }
    Rotation {
      Yaw: -3.07358496e-05
    }
    Scale {
      X: 0.856859088
      Y: 0.856859088
      Z: 0.856859088
    }
  }
  ParentId: 11176643592868291313
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 0.655000031
        G: 0.526429296
        B: 0.28165
        A: 1
      }
    }
    Overrides {
      Name: "ma:Shared_Detail1:color"
      Color {
        R: 0.692708313
        G: 0.692708313
        B: 0.692708313
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
    Value: "mc:ecollisionsetting:forceon"
  }
  CoreMesh {
    MeshAsset {
      Id: 12565879920591753650
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    StaticMesh {
      Physics {
      }
      BoundsScale: 1
    }
  }
  Relevance {
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 10980772663788267632
  Name: "Door Large"
  Transform {
    Location {
      X: 87.5837708
      Y: -22.4882259
      Z: 49.1044312
    }
    Rotation {
      Pitch: -64.5963135
      Yaw: 179.769897
      Roll: 3.66384
    }
    Scale {
      X: 0.371840924
      Y: 0.447028697
      Z: 0.184230879
    }
  }
  ParentId: 11176643592868291313
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_Detail1:id"
      AssetReference {
        Id: 12889861000896994476
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 0.770833313
        G: 0.770833313
        B: 0.770833313
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
    Value: "mc:ecollisionsetting:forceon"
  }
  CoreMesh {
    MeshAsset {
      Id: 3487921759055330973
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    StaticMesh {
      Physics {
      }
      BoundsScale: 1
    }
  }
  Relevance {
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 13264427667108366483
  Name: "Door Large"
  Transform {
    Location {
      X: 89.7355576
      Y: -23.9983921
      Z: 53.4291496
    }
    Rotation {
      Pitch: 64.5957947
      Yaw: -0.258684874
      Roll: -3.68869376
    }
    Scale {
      X: 0.371840924
      Y: 0.447028697
      Z: 0.184230879
    }
  }
  ParentId: 11176643592868291313
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_Detail1:id"
      AssetReference {
        Id: 12889861000896994476
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 0.770833313
        G: 0.770833313
        B: 0.770833313
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
    Value: "mc:ecollisionsetting:forceon"
  }
  CoreMesh {
    MeshAsset {
      Id: 3487921759055330973
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    StaticMesh {
      Physics {
      }
      BoundsScale: 1
    }
  }
  Relevance {
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 17694317533325067892
  Name: "Wooden Barrel"
  Transform {
    Location {
      X: -6.6987009
      Y: -186.349396
      Z: 8.45688629
    }
    Rotation {
      Yaw: -36.9096146
    }
    Scale {
      X: 0.856859088
      Y: 0.856859088
      Z: 0.856859088
    }
  }
  ParentId: 11176643592868291313
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 0.655000031
        G: 0.526429296
        B: 0.28165
        A: 1
      }
    }
    Overrides {
      Name: "ma:Shared_Detail1:color"
      Color {
        R: 0.692708313
        G: 0.692708313
        B: 0.692708313
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
    Value: "mc:ecollisionsetting:forceon"
  }
  CoreMesh {
    MeshAsset {
      Id: 12565879920591753650
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    StaticMesh {
      Physics {
      }
      BoundsScale: 1
    }
  }
  Relevance {
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 4173970075248773037
  Name: "Wooden Barrel"
  Transform {
    Location {
      X: -98.7726517
      Y: -218.632309
      Z: 6.81748629
    }
    Rotation {
    }
    Scale {
      X: 0.856859088
      Y: 0.856859088
      Z: 0.856859088
    }
  }
  ParentId: 11176643592868291313
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 0.655000031
        G: 0.526429296
        B: 0.28165
        A: 1
      }
    }
    Overrides {
      Name: "ma:Shared_Detail1:color"
      Color {
        R: 0.692708313
        G: 0.692708313
        B: 0.692708313
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
    Value: "mc:ecollisionsetting:forceon"
  }
  CoreMesh {
    MeshAsset {
      Id: 12565879920591753650
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    StaticMesh {
      Physics {
      }
      BoundsScale: 1
    }
  }
  Relevance {
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 8307968032283471325
  Name: "Small Open Crate"
  Transform {
    Location {
      X: 35.0807457
      Y: -15.0682459
      Z: 79.450264
    }
    Rotation {
      Pitch: -6.67425537
      Yaw: 80.8204346
      Roll: -23.9265194
    }
    Scale {
      X: 0.685415506
      Y: 0.409692943
      Z: 0.456944
    }
  }
  ParentId: 11176643592868291313
  UnregisteredParameters {
  }
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:forceon"
  }
  CoreMesh {
    MeshAsset {
      Id: 3674060815778311744
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    StaticMesh {
      Physics {
      }
      BoundsScale: 1
    }
  }
  Relevance {
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 173025169332092926
  Name: "Small Open Crate"
  Transform {
    Location {
      X: -36.2412376
      Y: 180.616531
      Z: 90.9700165
    }
    Rotation {
      Yaw: -45.9213943
    }
    Scale {
      X: 0.654001653
      Y: 0.387427747
      Z: 0.598585069
    }
  }
  ParentId: 11176643592868291313
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 1
        G: 0.710437417
        B: 0.401041687
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
    Value: "mc:ecollisionsetting:forceon"
  }
  CoreMesh {
    MeshAsset {
      Id: 3674060815778311744
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    StaticMesh {
      Physics {
      }
      BoundsScale: 1
    }
  }
  Relevance {
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 10846110051034362813
  Name: "Small Open Crate"
  Transform {
    Location {
      X: 71.6613159
      Y: -31.8562813
      Z: 7.47475576
    }
    Rotation {
      Yaw: 24.6582012
    }
    Scale {
      X: 0.819793284
      Y: 0.485642
      Z: 0.546529949
    }
  }
  ParentId: 11176643592868291313
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 1
        G: 0.725545049
        B: 0.432291687
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
    Value: "mc:ecollisionsetting:forceon"
  }
  CoreMesh {
    MeshAsset {
      Id: 3674060815778311744
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    StaticMesh {
      Physics {
      }
      BoundsScale: 1
    }
  }
  Relevance {
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 14321691774385714108
  Name: "Simple Crate 150cm"
  Transform {
    Location {
      X: 10.4191847
      Y: 181.98912
    }
    Rotation {
      Yaw: -7.36376476
    }
    Scale {
      X: 0.606209278
      Y: 0.606209278
      Z: 0.606209278
    }
  }
  ParentId: 11176643592868291313
  UnregisteredParameters {
  }
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:forceon"
  }
  CoreMesh {
    MeshAsset {
      Id: 9368501975616237166
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    StaticMesh {
      Physics {
      }
      BoundsScale: 1
    }
  }
  Relevance {
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 16688631879682286989
  Name: "Simple Crate 150cm"
  Transform {
    Location {
      X: -93.0522919
      Y: 198.75528
    }
    Rotation {
      Yaw: 9.41868114
    }
    Scale {
      X: 0.606209278
      Y: 0.606209278
      Z: 0.606209278
    }
  }
  ParentId: 11176643592868291313
  UnregisteredParameters {
  }
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:forceon"
  }
  CoreMesh {
    MeshAsset {
      Id: 9368501975616237166
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    StaticMesh {
      Physics {
      }
      BoundsScale: 1
    }
  }
  Relevance {
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 6329136737391299298
  Name: "Post"
  Transform {
    Location {
      Z: 512.785767
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 8245028879746446203
  ChildIds: 15710327633297539824
  ChildIds: 18157273161143259923
  ChildIds: 2237704584254603733
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
  Id: 2237704584254603733
  Name: "Advanced Color Grading Post Process"
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
  ParentId: 6329136737391299298
  UnregisteredParameters {
    Overrides {
      Name: "bp:Shadow Gamma"
      Color {
        R: 1
        G: 0.988476813
        B: 0.97
        A: 1
      }
    }
    Overrides {
      Name: "bp:Shadow Gain"
      Color {
        R: 0.880000055
        G: 0.880000055
        B: 0.880000055
        A: 1
      }
    }
    Overrides {
      Name: "bp:Shadow Max"
      Float: 0.126796693
    }
    Overrides {
      Name: "bp:Midtones Saturation"
      Color {
        R: 0.83
        G: 1
        B: 0.993245065
        A: 1
      }
    }
    Overrides {
      Name: "bp:Highlights Gamma"
      Color {
        R: 0.88
        G: 1
        B: 0.957086086
        A: 1
      }
    }
    Overrides {
      Name: "bp:Expand Gamut"
      Float: 1
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
      Id: 6614001797053447531
    }
    TeamSettings {
    }
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 18157273161143259923
  Name: "Ambient Occlusion Recolor Post Process"
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
  ParentId: 6329136737391299298
  UnregisteredParameters {
    Overrides {
      Name: "bp:Blend Weight"
      Float: 1
    }
    Overrides {
      Name: "bp:AO Tightness"
      Float: 0.5
    }
    Overrides {
      Name: "bp:Use Two Colors"
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
  Blueprint {
    BlueprintAsset {
      Id: 15600307528483656322
    }
    TeamSettings {
    }
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 15710327633297539824
  Name: "Environment Fog Default VFX"
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
  ParentId: 6329136737391299298
  UnregisteredParameters {
    Overrides {
      Name: "bp:Fog Density"
      Float: 2.61132264
    }
    Overrides {
      Name: "bp:Volumetric Fog"
      Bool: true
    }
    Overrides {
      Name: "bp:Albedo"
      Color {
        R: 0.43
        G: 0.9547019
        B: 1
        A: 1
      }
    }
    Overrides {
      Name: "bp:Light Absorption Amount"
      Float: 3.08546281
    }
    Overrides {
      Name: "bp:Color"
      Color {
        R: 0.43
        G: 0.909403741
        B: 1
        A: 1
      }
    }
    Overrides {
      Name: "bp:Directional Inscattering Color"
      Color {
        R: 0.0478799976
        G: 0.0478799976
        B: 0.0840000063
        A: 1
      }
    }
    Overrides {
      Name: "bp:Beam View Direction"
      Float: 0.95
    }
    Overrides {
      Name: "bp:View Distance"
      Float: 6434.07422
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
      Id: 6314272736386573419
    }
    TeamSettings {
    }
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 15608996382633166892
  Name: "Sky"
  Transform {
    Location {
      Z: 425.238434
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 8245028879746446203
  ChildIds: 9033870194856689784
  ChildIds: 12259110230280777692
  ChildIds: 13760997400986158408
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
  Id: 13760997400986158408
  Name: "Sky Dome"
  Transform {
    Location {
      X: 4054.20117
      Y: -3444.0874
      Z: 3288.66211
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 15608996382633166892
  UnregisteredParameters {
    Overrides {
      Name: "bp:Zenith Color"
      Color {
        R: 0.311025977
        G: 0.366000026
        B: 0.27317968
        A: 1
      }
    }
    Overrides {
      Name: "bp:Horizon Color"
      Color {
        R: 0.0268800016
        G: 0.10523548
        B: 0.112
        A: 0.895000041
      }
    }
    Overrides {
      Name: "bp:Haze Color"
      Color {
        R: 0.171050012
        G: 0.311000019
        B: 0.291536778
        A: 1
      }
    }
    Overrides {
      Name: "bp:Use Sun Color for Cloud Color"
      Bool: false
    }
    Overrides {
      Name: "bp:Cloud Ambient Brightness"
      Float: 3
    }
    Overrides {
      Name: "bp:Cloud Rim Brightness"
      Float: 50
    }
    Overrides {
      Name: "bp:Cloud Opacity"
      Float: 0
    }
    Overrides {
      Name: "bp:Cloud Ambient Color"
      Color {
        R: 2
        G: 2
        B: 2
        A: 1
      }
    }
    Overrides {
      Name: "bp:Cloud Color"
      Color {
        R: 2
        G: 2
        B: 2
        A: 1
      }
    }
    Overrides {
      Name: "bp:Cloud Shape"
      Int: 4
    }
    Overrides {
      Name: "bp:Cloud Lighting Brightness"
      Float: 1
    }
    Overrides {
      Name: "bp:Cloud Wisp Opacity"
      Float: 0.4
    }
    Overrides {
      Name: "bp:Cloud Speed"
      Float: 1
    }
    Overrides {
      Name: "bp:Brightness"
      Float: 5
    }
    Overrides {
      Name: "bp:Background Clouds"
      Bool: true
    }
    Overrides {
      Name: "bp:High Cloud Index"
      Int: 2
    }
    Overrides {
      Name: "bp:High Cloud Opacity"
      Float: 0
    }
    Overrides {
      Name: "bp:High Cloud Noise Amount"
      Float: 0.1
    }
    Overrides {
      Name: "bp:High Cloud Noise Scale"
      Float: 0.2
    }
    Overrides {
      Name: "bp:Overall Tint"
      Color {
        R: 0.00121599797
        G: 0.00765432091
        B: 0.076000005
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
      Id: 7887238662729938253
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 12259110230280777692
  Name: "Skylight"
  Transform {
    Location {
      Y: 0.00048828125
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 15608996382633166892
  UnregisteredParameters {
    Overrides {
      Name: "bp:Index"
      Int: 3
    }
    Overrides {
      Name: "bp:Occlusion Contrast"
      Float: 0.315624118
    }
    Overrides {
      Name: "bp:Intensity"
      Float: 1.50780964
    }
    Overrides {
      Name: "bp:Lower Hemisphere Color"
      Color {
        R: 0.0666259378
        G: 0.0307134502
        A: 1
      }
    }
    Overrides {
      Name: "bp:Occlusion Tint"
      Color {
        R: 0.0274509825
        G: 0.0274509825
        B: 0.0392156877
        A: 1
      }
    }
    Overrides {
      Name: "bp:Occlusion Exponent"
      Float: 1.35214722
    }
    Overrides {
      Name: "bp:Cast Shadows"
      Bool: true
    }
    Overrides {
      Name: "bp:Cast Volumetric Shadows"
      Bool: true
    }
    Overrides {
      Name: "bp:Volumetric Intensity"
      Float: 1.72616959
    }
    Overrides {
      Name: "bp:Use Captured Sky"
      Bool: false
    }
    Overrides {
      Name: "bp:Ambient Image"
      Enum {
        Value: "mc:eambientcubemapssmall:27"
      }
    }
    Overrides {
      Name: "bp:Blend Amount"
      Float: 0.310546279
    }
    Overrides {
      Name: "bp:Tint Color"
      Color {
        R: 0.9
        G: 0.912582755
        B: 1
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
      Id: 11515840070784317904
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 9033870194856689784
  Name: "Sun Light"
  Transform {
    Location {
      X: 4294.98535
      Y: -3088.32617
      Z: 3174.06812
    }
    Rotation {
      Pitch: -51.9549561
      Yaw: 74.0517883
      Roll: -21.0033875
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 15608996382633166892
  UnregisteredParameters {
    Overrides {
      Name: "bp:Use Temperature"
      Bool: false
    }
    Overrides {
      Name: "bp:Shape"
      Int: 1
    }
    Overrides {
      Name: "bp:Size"
      Float: 5
    }
    Overrides {
      Name: "bp:Light Shaft Bloom"
      Bool: true
    }
    Overrides {
      Name: "bp:Cast Volumetric Shadows"
      Bool: true
    }
    Overrides {
      Name: "bp:Light Shaft Mask Darkness"
      Float: 0.62949127
    }
    Overrides {
      Name: "bp:Intensity"
      Float: 10
    }
    Overrides {
      Name: "bp:Sun Disc Color"
      Color {
        R: 3
        G: 3
        B: 3
        A: 1
      }
    }
    Overrides {
      Name: "bp:Light Shaft Bloom Scale"
      Float: 0.2
    }
    Overrides {
      Name: "bp:Light Shaft Bloom Threshold"
      Float: 1
    }
    Overrides {
      Name: "bp:Light Shaft Occlusion"
      Bool: true
    }
    Overrides {
      Name: "bp:Light Shaft Bloom Tint"
      Color {
        R: 1
        G: 0.998476863
        B: 0.77
        A: 1
      }
    }
    Overrides {
      Name: "bp:Cast Shadows"
      Bool: true
    }
    Overrides {
      Name: "bp:Light Color"
      Color {
        R: 0.213855
        G: 0.233626321
        B: 0.807000041
        A: 1
      }
    }
    Overrides {
      Name: "bp:Volumetric Intensity"
      Float: 3
    }
    Overrides {
      Name: "bp:Indirect Lighting Intensity"
      Float: 2
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
  Id: 2696054191779283435
  Name: "Decals_GLOBAL"
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
  ParentId: 8245028879746446203
  ChildIds: 6215816047167959653
  ChildIds: 7181835623726752388
  ChildIds: 12724201053126719161
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
  Id: 12724201053126719161
  Name: "2D Basic Shapes Decal"
  Transform {
    Location {
      X: 5144.38574
      Y: -11740.6113
      Z: -4256.78711
    }
    Rotation {
      Pitch: -3.43920898
      Yaw: 79.4492645
      Roll: -17.4420776
    }
    Scale {
      X: 99.5000305
      Y: 76
      Z: 76.5
    }
  }
  ParentId: 2696054191779283435
  UnregisteredParameters {
    Overrides {
      Name: "bp:Color"
      Color {
        R: 0.475020051
        G: 0.630000055
        B: 0.596421063
        A: 1
      }
    }
    Overrides {
      Name: "bp:Emissive Boost"
      Float: 1.53085625
    }
    Overrides {
      Name: "bp:Sides"
      Int: 3
    }
    Overrides {
      Name: "bp:Stroke Width"
      Float: 0
    }
    Overrides {
      Name: "bp:Blur"
      Float: 1
    }
    Overrides {
      Name: "bp:Corner Rounding"
      Float: 0.180272967
    }
    Overrides {
      Name: "bp:Stroke Color"
      Color {
      }
    }
    Overrides {
      Name: "bp:Indent"
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
  EditorIndicatorVisibility {
    Value: "mc:eindicatorvisibility:visiblewhenselected"
  }
  Blueprint {
    BlueprintAsset {
      Id: 8451383996549962535
    }
    TeamSettings {
    }
    DecalBP {
    }
  }
  Relevance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 7181835623726752388
  Name: "2D Basic Shapes Decal"
  Transform {
    Location {
      X: 10172.8105
      Y: -9614.02344
      Z: 6095.04297
    }
    Rotation {
      Pitch: -12.4681091
      Yaw: 78.8823242
      Roll: 14.8882065
    }
    Scale {
      X: 52.1986275
      Y: 40.51577
      Z: 85.3573532
    }
  }
  ParentId: 2696054191779283435
  UnregisteredParameters {
    Overrides {
      Name: "bp:Color"
      Color {
        R: 0.312208325
        G: 0.469370753
        B: 0.661458313
        A: 1
      }
    }
    Overrides {
      Name: "bp:Emissive Boost"
      Float: 1.73300457
    }
    Overrides {
      Name: "bp:Sides"
      Int: 3
    }
    Overrides {
      Name: "bp:Stroke Width"
      Float: 0
    }
    Overrides {
      Name: "bp:Blur"
      Float: 1
    }
    Overrides {
      Name: "bp:Corner Rounding"
      Float: 0.180272967
    }
    Overrides {
      Name: "bp:Stroke Color"
      Color {
      }
    }
    Overrides {
      Name: "bp:Indent"
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
  EditorIndicatorVisibility {
    Value: "mc:eindicatorvisibility:visiblewhenselected"
  }
  Blueprint {
    BlueprintAsset {
      Id: 8451383996549962535
    }
    TeamSettings {
    }
    DecalBP {
    }
  }
  Relevance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 6215816047167959653
  Name: "2D Basic Shapes Decal"
  Transform {
    Location {
      X: 8725.4
      Y: -11420.0654
      Z: 9991.7666
    }
    Rotation {
      Pitch: -23.7288208
      Yaw: 10.7987919
      Roll: 28.2308292
    }
    Scale {
      X: 82.3890762
      Y: 40.5157242
      Z: 51.9636116
    }
  }
  ParentId: 2696054191779283435
  UnregisteredParameters {
    Overrides {
      Name: "bp:Color"
      Color {
        R: 0.312208325
        G: 0.469370753
        B: 0.661458313
        A: 1
      }
    }
    Overrides {
      Name: "bp:Emissive Boost"
      Float: 1.73300457
    }
    Overrides {
      Name: "bp:Sides"
      Int: 3
    }
    Overrides {
      Name: "bp:Stroke Width"
      Float: 0
    }
    Overrides {
      Name: "bp:Blur"
      Float: 1
    }
    Overrides {
      Name: "bp:Corner Rounding"
      Float: 0.180272967
    }
    Overrides {
      Name: "bp:Stroke Color"
      Color {
      }
    }
    Overrides {
      Name: "bp:Indent"
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
  EditorIndicatorVisibility {
    Value: "mc:eindicatorvisibility:visiblewhenselected"
  }
  Blueprint {
    BlueprintAsset {
      Id: 8451383996549962535
    }
    TeamSettings {
    }
    DecalBP {
    }
  }
  Relevance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 8818624767393311274
  Name: "VFX_GLOBAL"
  Transform {
    Location {
      Z: 897.116455
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 8245028879746446203
  ChildIds: 13063405696394826103
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
  Id: 13063405696394826103
  Name: "Volumetric Fog Injector Volume VFX"
  Transform {
    Location {
      X: 2731.75537
      Y: -8445.61914
      Z: -2409.46191
    }
    Rotation {
    }
    Scale {
      X: 52.368866
      Y: 23.7236233
      Z: 20.7124901
    }
  }
  ParentId: 8818624767393311274
  UnregisteredParameters {
    Overrides {
      Name: "bp:Density"
      Float: 24.2944393
    }
    Overrides {
      Name: "bp:Particle Scale Multiplier"
      Float: 7.04352474
    }
    Overrides {
      Name: "bp:Wind Speed"
      Vector {
        Y: 50
      }
    }
    Overrides {
      Name: "bp:Color"
      Color {
        R: 0.047816
        G: 0.0630133078
        B: 0.139000013
        A: 0.25
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
      Id: 17402671442609455053
    }
    TeamSettings {
    }
    Vfx {
      AutoPlay: true
    }
  }
  Relevance {
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 548546779820333317
  Name: "Lights_GLOBAL"
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
  ParentId: 8245028879746446203
  ChildIds: 9182219574977144119
  ChildIds: 14319874339735437096
  ChildIds: 15671016551994710920
  ChildIds: 15391634313380596584
  ChildIds: 915942768655587344
  ChildIds: 11899926355205574404
  ChildIds: 5200510954408459110
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
  Id: 5200510954408459110
  Name: "Point Light"
  Transform {
    Location {
      X: 2590.8623
      Y: 390.635742
      Z: 256.675323
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 548546779820333317
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
      R: 0.718000054
      G: 0.167533353
      A: 1
    }
    VolumetricIntensity: 4.55074787
    TeamSettings {
    }
    Light {
      Temperature: 6500
      LocalLight {
        AttenuationRadius: 1124.89563
        PointLight {
          SourceRadius: 20
          SoftSourceRadius: 20
          FallOffExponent: 8
        }
      }
      MaxDrawDistance: 9000
      MaxDistanceFadeRange: 1000
    }
    ShadowBias: 0.4
    ShadowSlopeBias: 0.6
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 11899926355205574404
  Name: "Point Light"
  Transform {
    Location {
      X: 2876.42725
      Y: -1726.94971
      Z: 118.254181
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 548546779820333317
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
      R: 0.718000054
      G: 0.167533353
      A: 1
    }
    CastShadows: true
    VolumetricIntensity: 4.55074787
    TeamSettings {
    }
    Light {
      Temperature: 6500
      LocalLight {
        AttenuationRadius: 1000
        PointLight {
          SourceRadius: 20
          SoftSourceRadius: 20
          FallOffExponent: 8
        }
      }
      MaxDrawDistance: 9000
      MaxDistanceFadeRange: 1000
    }
    ShadowBias: 0.4
    ShadowSlopeBias: 0.6
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 915942768655587344
  Name: "Point Light"
  Transform {
    Location {
      X: 205.409912
      Y: -777.555176
      Z: 118.254303
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 548546779820333317
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
      R: 0.718000054
      G: 0.167533353
      A: 1
    }
    CastShadows: true
    VolumetricIntensity: 4.55074787
    TeamSettings {
    }
    Light {
      Temperature: 6500
      LocalLight {
        AttenuationRadius: 1000
        PointLight {
          SourceRadius: 20
          SoftSourceRadius: 20
          FallOffExponent: 8
        }
      }
      MaxDrawDistance: 9000
      MaxDistanceFadeRange: 1000
    }
    ShadowBias: 0.4
    ShadowSlopeBias: 0.6
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 15391634313380596584
  Name: "Point Light"
  Transform {
    Location {
      X: 3853.30371
      Y: -1340.87061
      Z: 197.544403
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 548546779820333317
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
      R: 0.718000054
      G: 0.167533353
      A: 1
    }
    CastShadows: true
    VolumetricIntensity: 4.55074787
    TeamSettings {
    }
    Light {
      Temperature: 6500
      LocalLight {
        AttenuationRadius: 1000
        PointLight {
          SourceRadius: 20
          SoftSourceRadius: 20
          FallOffExponent: 8
        }
      }
      MaxDrawDistance: 9000
      MaxDistanceFadeRange: 1000
    }
    ShadowBias: 0.4
    ShadowSlopeBias: 0.6
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 15671016551994710920
  Name: "Area Light"
  Transform {
    Location {
      X: 1736.33838
      Y: -2435.71118
      Z: 714.170288
    }
    Rotation {
      Pitch: -54.8301697
      Yaw: 78.5214157
      Roll: 58.4083176
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 548546779820333317
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
    Intensity: 46.7772675
    Color {
      G: 0.0501999557
      B: 0.502000034
      A: 1
    }
    TeamSettings {
    }
    Light {
      Temperature: 6500
      LocalLight {
        AttenuationRadius: 2360.60547
        AreaLight {
          BarnDoorAngle: 90
          SourceWidth: 100
          SourceHeight: 100
        }
      }
      MaxDrawDistance: 20000
      MaxDistanceFadeRange: 1000
    }
    ShadowBias: 0.4
    ShadowSlopeBias: 0.6
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 14319874339735437096
  Name: "Area Light"
  Transform {
    Location {
      X: 3220.37598
      Y: -2789.61255
      Z: 3072.8208
    }
    Rotation {
      Pitch: -13.5666809
      Yaw: 21.3139782
      Roll: -12.9423828
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 548546779820333317
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
    Intensity: 200
    Color {
      R: 1
      G: 0.240000367
      B: 0.24000001
      A: 1
    }
    TeamSettings {
    }
    Light {
      Temperature: 6500
      LocalLight {
        AttenuationRadius: 2038.24634
        AreaLight {
          BarnDoorAngle: 90
          SourceWidth: 100
          SourceHeight: 100
        }
      }
      MaxDrawDistance: 20000
      MaxDistanceFadeRange: 1000
    }
    ShadowBias: 0.4
    ShadowSlopeBias: 0.6
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 9182219574977144119
  Name: "Area Light"
  Transform {
    Location {
      X: 2227.83594
      Y: -3260.94727
      Z: 1011.53229
    }
    Rotation {
      Pitch: 28.0115814
      Yaw: 1.41371679
      Roll: -14.2768555
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 548546779820333317
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
    Intensity: 250
    Color {
      R: 0.37
      G: 0.399205327
      B: 1
      A: 1
    }
    TeamSettings {
    }
    Light {
      Temperature: 6500
      LocalLight {
        AttenuationRadius: 2682.96436
        AreaLight {
          BarnDoorAngle: 90
          SourceWidth: 100
          SourceHeight: 100
        }
      }
      MaxDrawDistance: 20000
      MaxDistanceFadeRange: 1000
    }
    ShadowBias: 0.4
    ShadowSlopeBias: 0.6
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
