Name: "Class Selection Areas"
RootId: 3281734247870618909
Objects {
  Id: 11740795219228208423
  Name: "Client Context"
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
  ParentId: 3281734247870618909
  ChildIds: 16950031459520665739
  ChildIds: 11892929425233717926
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
  Id: 11892929425233717926
  Name: "Elf Class Selection"
  Transform {
    Location {
      X: 16783.6191
      Y: 1184.14355
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 11740795219228208423
  ChildIds: 9047288694584916593
  ChildIds: 12220229597544669101
  ChildIds: 15283551281101203096
  ChildIds: 3558966053684698792
  ChildIds: 7409096718841962070
  ChildIds: 5372752028538435387
  ChildIds: 5991830129628126109
  UnregisteredParameters {
    Overrides {
      Name: "cs:AnimatedMesh"
      ObjectReference {
        SelfId: 841534158063459245
      }
    }
    Overrides {
      Name: "cs:Camera"
      ObjectReference {
        SelfId: 3558966053684698792
      }
    }
  }
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
  Id: 5991830129628126109
  Name: "Group"
  Transform {
    Location {
      X: 14597.0254
      Y: 700.241211
      Z: 14524.6729
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 11892929425233717926
  ChildIds: 12247497396350211751
  ChildIds: 11471709628459175794
  ChildIds: 15995209359082903793
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
  Id: 15995209359082903793
  Name: "Spotlight"
  Transform {
    Location {
      X: 134.808594
      Y: -165.573975
    }
    Rotation {
      Yaw: 120.388283
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 5991830129628126109
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
    Intensity: 3
    Color {
      R: 0.941721916
      G: 0.8
      B: 1
      A: 1
    }
    CastShadows: true
    VolumetricIntensity: 5
    TeamSettings {
    }
    Light {
      Temperature: 6500
      LocalLight {
        AttenuationRadius: 478.801636
        SpotLight {
          SourceRadius: 20
          SoftSourceRadius: 20
          FallOffExponent: 8
          UseFallOffExponent: true
          InnerConeAngle: 30
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
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 11471709628459175794
  Name: "Spotlight"
  Transform {
    Location {
      X: 285.765625
      Y: 111.668457
    }
    Rotation {
      Yaw: -153.44722
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 5991830129628126109
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
    Intensity: 6
    Color {
      R: 1
      G: 0.911721826
      B: 0.69
      A: 1
    }
    CastShadows: true
    VolumetricIntensity: 5
    TeamSettings {
    }
    Light {
      Temperature: 6500
      LocalLight {
        AttenuationRadius: 478.801636
        SpotLight {
          SourceRadius: 20
          SoftSourceRadius: 20
          FallOffExponent: 8
          UseFallOffExponent: true
          InnerConeAngle: 30
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
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 12247497396350211751
  Name: "Spotlight"
  Transform {
    Location {
      X: -420.580078
      Y: 53.9053955
      Z: 109.655273
    }
    Rotation {
      Yaw: 20.3667946
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 5991830129628126109
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
    Intensity: 10
    Color {
      R: 0.77
      G: 0.89033103
      B: 1
      A: 1
    }
    CastShadows: true
    VolumetricIntensity: 5
    TeamSettings {
    }
    Light {
      Temperature: 6500
      LocalLight {
        AttenuationRadius: 996.858521
        SpotLight {
          SourceRadius: 20
          SoftSourceRadius: 20
          FallOffExponent: 8
          UseFallOffExponent: true
          InnerConeAngle: 30
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
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 5372752028538435387
  Name: "Small_palm_flower"
  Transform {
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 11892929425233717926
  CameraCollidable {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  TemplateInstance {
    ParameterOverrideMap {
      key: 3572973441900576158
      value {
        Overrides {
          Name: "CoreProxy.CameraCollidable"
          Enum {
            Value: "mc:ecollisionsetting:forceoff"
          }
        }
      }
    }
    ParameterOverrideMap {
      key: 4137738316238168700
      value {
        Overrides {
          Name: "Name"
          String: "Small_palm_flower"
        }
        Overrides {
          Name: "Position"
          Vector {
            X: 13470.5
            Y: 1093.65674
            Z: 14268.3428
          }
        }
        Overrides {
          Name: "Scale"
          Vector {
            X: 1.13689232
            Y: 1.13689232
            Z: 1.13689232
          }
        }
        Overrides {
          Name: "Rotation"
          Rotator {
          }
        }
      }
    }
    ParameterOverrideMap {
      key: 5207518042932427826
      value {
        Overrides {
          Name: "CoreProxy.CameraCollidable"
          Enum {
            Value: "mc:ecollisionsetting:forceoff"
          }
        }
      }
    }
    ParameterOverrideMap {
      key: 9338269498777302214
      value {
        Overrides {
          Name: "CoreProxy.CameraCollidable"
          Enum {
            Value: "mc:ecollisionsetting:forceoff"
          }
        }
      }
    }
    ParameterOverrideMap {
      key: 9592143972325852580
      value {
        Overrides {
          Name: "CoreProxy.CameraCollidable"
          Enum {
            Value: "mc:ecollisionsetting:forceoff"
          }
        }
      }
    }
    ParameterOverrideMap {
      key: 17165211897140797991
      value {
        Overrides {
          Name: "CoreProxy.CameraCollidable"
          Enum {
            Value: "mc:ecollisionsetting:forceoff"
          }
        }
      }
    }
    ParameterOverrideMap {
      key: 17212955378837482682
      value {
        Overrides {
          Name: "CoreProxy.CameraCollidable"
          Enum {
            Value: "mc:ecollisionsetting:forceoff"
          }
        }
      }
    }
    TemplateAsset {
      Id: 15098451683578824339
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 7409096718841962070
  Name: "Small_palm"
  Transform {
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 11892929425233717926
  CameraCollidable {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  TemplateInstance {
    ParameterOverrideMap {
      key: 4182307201867080222
      value {
        Overrides {
          Name: "CoreProxy.CameraCollidable"
          Enum {
            Value: "mc:ecollisionsetting:forceoff"
          }
        }
      }
    }
    ParameterOverrideMap {
      key: 10143524279940654328
      value {
        Overrides {
          Name: "CoreProxy.CameraCollidable"
          Enum {
            Value: "mc:ecollisionsetting:forceoff"
          }
        }
      }
    }
    ParameterOverrideMap {
      key: 16295755683547083001
      value {
        Overrides {
          Name: "Name"
          String: "Small_palm"
        }
        Overrides {
          Name: "Position"
          Vector {
            X: 13422.1152
            Y: 930.300049
            Z: 14189.5938
          }
        }
        Overrides {
          Name: "Scale"
          Vector {
            X: 1.1564796
            Y: 1.1564796
            Z: 1.1564796
          }
        }
        Overrides {
          Name: "Rotation"
          Rotator {
          }
        }
      }
    }
    TemplateAsset {
      Id: 2576864945443041003
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 3558966053684698792
  Name: "Camera"
  Transform {
    Location {
      X: 14952.125
      Y: 542.706421
      Z: 14466.2676
    }
    Rotation {
      Pitch: -6.19055176
      Yaw: 153.542465
      Roll: 1.07347674e-07
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 11892929425233717926
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
    MinDistance: 300
    MaxDistance: 600
    PositionOffset {
    }
    RotationOffset {
      Pitch: -6.19055176
      Yaw: 153.542465
      Roll: 1.07347674e-07
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
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 15283551281101203096
  Name: "Elf_flower_pot"
  Transform {
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 11892929425233717926
  CameraCollidable {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  TemplateInstance {
    ParameterOverrideMap {
      key: 320337397066248388
      value {
        Overrides {
          Name: "Name"
          String: "Ellipsoid - Truncated"
        }
      }
    }
    ParameterOverrideMap {
      key: 1927447620196285414
      value {
        Overrides {
          Name: "Name"
          String: "Bush Green 01"
        }
      }
    }
    ParameterOverrideMap {
      key: 3779340607703268820
      value {
        Overrides {
          Name: "Name"
          String: "Ellipsoid - Truncated"
        }
      }
    }
    ParameterOverrideMap {
      key: 6703188258853548339
      value {
        Overrides {
          Name: "Name"
          String: "Ellipsoid - Truncated"
        }
      }
    }
    ParameterOverrideMap {
      key: 8181801342487456189
      value {
        Overrides {
          Name: "Name"
          String: "Ellipsoid - Truncated"
        }
      }
    }
    ParameterOverrideMap {
      key: 9013998010525385417
      value {
        Overrides {
          Name: "Name"
          String: "Ellipsoid - Truncated"
        }
      }
    }
    ParameterOverrideMap {
      key: 10442679834165193073
      value {
        Overrides {
          Name: "Name"
          String: "Ellipsoid - Truncated"
        }
      }
    }
    ParameterOverrideMap {
      key: 10720695434641584546
      value {
        Overrides {
          Name: "Name"
          String: "Ellipsoid - Truncated"
        }
      }
    }
    ParameterOverrideMap {
      key: 12061124954568668578
      value {
        Overrides {
          Name: "Name"
          String: "Ellipsoid - Truncated"
        }
      }
    }
    ParameterOverrideMap {
      key: 12117263865094098545
      value {
        Overrides {
          Name: "Name"
          String: "Elf_flower_pot"
        }
        Overrides {
          Name: "Position"
          Vector {
            X: 14371.6523
            Y: 548.185669
            Z: 14288.5898
          }
        }
        Overrides {
          Name: "Scale"
          Vector {
            X: 0.537840366
            Y: 0.537840366
            Z: 0.537840366
          }
        }
        Overrides {
          Name: "Rotation"
          Rotator {
            Yaw: -30.4508152
          }
        }
      }
    }
    ParameterOverrideMap {
      key: 13367592792021753236
      value {
        Overrides {
          Name: "Name"
          String: "Ellipsoid - Truncated"
        }
      }
    }
    ParameterOverrideMap {
      key: 16672277214526031906
      value {
        Overrides {
          Name: "Name"
          String: "Ellipsoid - Truncated"
        }
      }
    }
    ParameterOverrideMap {
      key: 17957224690480603173
      value {
        Overrides {
          Name: "Name"
          String: "Ellipsoid - Truncated"
        }
      }
    }
    TemplateAsset {
      Id: 6905881845296895516
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 12220229597544669101
  Name: "Elven_column_building"
  Transform {
    Location {
      X: 14324.8242
      Y: 1001.09473
      Z: 14071.3154
    }
    Rotation {
      Yaw: 91.4443741
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 11892929425233717926
  ChildIds: 14833669000757119523
  ChildIds: 6378236207005791790
  ChildIds: 1874189497732780366
  ChildIds: 14643379550115523532
  ChildIds: 10349043632578070246
  ChildIds: 16151049319494452114
  ChildIds: 15048281044118353243
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
  Id: 15048281044118353243
  Name: "Ivy 05"
  Transform {
    Location {
      X: 512.02948
      Y: 4.6340332
      Z: 918.305664
    }
    Rotation {
      Pitch: -12.478241
      Yaw: 114.789192
      Roll: 85.4431305
    }
    Scale {
      X: 1.13754809
      Y: 1.13754809
      Z: 1.13754809
    }
  }
  ParentId: 12220229597544669101
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
      Id: 11521250418432815603
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
  Id: 16151049319494452114
  Name: "MergedModel"
  Transform {
    Location {
      X: 3998.87793
      Y: 5832.62695
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 12220229597544669101
  ChildIds: 12075902135459862020
  ChildIds: 5407156950148066191
  ChildIds: 17698136263301390778
  ChildIds: 9624616040620428208
  ChildIds: 5615777858708271707
  ChildIds: 6713601600255016237
  ChildIds: 12865802224991681301
  ChildIds: 2435409125179716276
  ChildIds: 2488975427904667898
  ChildIds: 4765789597735559480
  ChildIds: 17663801516580671556
  ChildIds: 9962421978855021046
  ChildIds: 6257069481798311135
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
  Id: 6257069481798311135
  Name: "Ivy 04"
  Transform {
    Location {
      X: -3760.63477
      Y: -4859.17871
      Z: -4.67773438
    }
    Rotation {
      Pitch: 3.4150944e-05
      Yaw: -0.257778287
      Roll: 92.2410049
    }
    Scale {
      X: 1.581236
      Y: 1.581236
      Z: 1.581236
    }
  }
  ParentId: 16151049319494452114
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
      Id: 9241339813623090261
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
  Id: 9962421978855021046
  Name: "Ivy 05"
  Transform {
    Location {
      X: -3369.85938
      Y: -5288.7959
      Z: 130.75
    }
    Rotation {
      Pitch: 1.77214718
      Yaw: -53.0676765
      Roll: 96.6197739
    }
    Scale {
      X: 1.61385632
      Y: 1.61385632
      Z: 1.61385632
    }
  }
  ParentId: 16151049319494452114
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
      Id: 11521250418432815603
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
  Id: 17663801516580671556
  Name: "Short Banner Fleur-de-lis"
  Transform {
    Location {
      X: -4141.7334
      Y: -4887.46533
      Z: 165.162109
    }
    Rotation {
      Yaw: 3.93693113
    }
    Scale {
      X: 2.792768
      Y: 2.792768
      Z: 2.792768
    }
  }
  ParentId: 16151049319494452114
  UnregisteredParameters {
    Overrides {
      Name: "ma:Prop_Cloth:color"
      Color {
        G: 0.387499511
        B: 0.484375
        A: 1
      }
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
      Id: 17853943551029294903
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
  Id: 4765789597735559480
  Name: "Elven_bannister"
  Transform {
    Location {
      X: 9082.43457
      Y: 13861.6299
      Z: 4331.34961
    }
    Rotation {
      Yaw: -5.23111248
    }
    Scale {
      X: 1.24802315
      Y: 1.24802315
      Z: 1.24802315
    }
  }
  ParentId: 16151049319494452114
  CameraCollidable {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  TemplateInstance {
    ParameterOverrideMap {
      key: 1087970490233162383
      value {
      }
    }
    ParameterOverrideMap {
      key: 1098764772194726930
      value {
        Overrides {
          Name: "ma:Shared_BaseMaterial:color"
          Color {
            R: 0.723958313
            G: 0.723958313
            B: 0.606010079
            A: 1
          }
        }
        Overrides {
          Name: "Name"
          String: "SciFi Trim 01"
        }
      }
    }
    ParameterOverrideMap {
      key: 8830366910998568517
      value {
        Overrides {
          Name: "ma:Shared_BaseMaterial:id"
          AssetReference {
            Id: 11337413471323694429
          }
        }
      }
    }
    ParameterOverrideMap {
      key: 8846893437263903214
      value {
        Overrides {
          Name: "Name"
          String: "collision"
        }
      }
    }
    ParameterOverrideMap {
      key: 10903999051012644632
      value {
        Overrides {
          Name: "ma:Shared_BaseMaterial:id"
          AssetReference {
            Id: 11337413471323694429
          }
        }
      }
    }
    ParameterOverrideMap {
      key: 12743444847015052782
      value {
        Overrides {
          Name: "ma:Shared_BaseMaterial:id"
          AssetReference {
            Id: 11337413471323694429
          }
        }
      }
    }
    ParameterOverrideMap {
      key: 12959015206063195225
      value {
        Overrides {
          Name: "Name"
          String: "Elven_bannister"
        }
        Overrides {
          Name: "Position"
          Vector {
            X: -3457.04443
            Y: -5794.04785
            Z: 190.813965
          }
        }
        Overrides {
          Name: "Rotation"
          Rotator {
            Yaw: 152.43515
          }
        }
        Overrides {
          Name: "Scale"
          Vector {
            X: 1.24802315
            Y: 1.24802315
            Z: 1.24802315
          }
        }
      }
    }
    ParameterOverrideMap {
      key: 14497495760541582849
      value {
        Overrides {
          Name: "ma:Shared_BaseMaterial:id"
          AssetReference {
            Id: 11337413471323694429
          }
        }
      }
    }
    TemplateAsset {
      Id: 5576557899363017038
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 2488975427904667898
  Name: "Elven_bannister"
  Transform {
    Location {
      X: 9610.12695
      Y: 13473.7158
      Z: 4331.34961
    }
    Rotation {
      Yaw: 55.72295
    }
    Scale {
      X: 1.24802315
      Y: 1.24802315
      Z: 1.24802315
    }
  }
  ParentId: 16151049319494452114
  CameraCollidable {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  TemplateInstance {
    ParameterOverrideMap {
      key: 1087970490233162383
      value {
      }
    }
    ParameterOverrideMap {
      key: 1098764772194726930
      value {
        Overrides {
          Name: "ma:Shared_BaseMaterial:color"
          Color {
            R: 0.723958313
            G: 0.723958313
            B: 0.606010079
            A: 1
          }
        }
        Overrides {
          Name: "Name"
          String: "SciFi Trim 01"
        }
      }
    }
    ParameterOverrideMap {
      key: 8830366910998568517
      value {
        Overrides {
          Name: "ma:Shared_BaseMaterial:id"
          AssetReference {
            Id: 11337413471323694429
          }
        }
      }
    }
    ParameterOverrideMap {
      key: 8846893437263903214
      value {
        Overrides {
          Name: "Name"
          String: "collision"
        }
      }
    }
    ParameterOverrideMap {
      key: 10903999051012644632
      value {
        Overrides {
          Name: "ma:Shared_BaseMaterial:id"
          AssetReference {
            Id: 11337413471323694429
          }
        }
      }
    }
    ParameterOverrideMap {
      key: 12743444847015052782
      value {
        Overrides {
          Name: "ma:Shared_BaseMaterial:id"
          AssetReference {
            Id: 11337413471323694429
          }
        }
      }
    }
    ParameterOverrideMap {
      key: 12959015206063195225
      value {
        Overrides {
          Name: "Name"
          String: "Elven_bannister"
        }
        Overrides {
          Name: "Position"
          Vector {
            X: -3801.81
            Y: -5188.06104
            Z: 190.813965
          }
        }
        Overrides {
          Name: "Rotation"
          Rotator {
            Yaw: -147.386887
          }
        }
        Overrides {
          Name: "Scale"
          Vector {
            X: 1.24802315
            Y: 1.24802315
            Z: 1.24802315
          }
        }
      }
    }
    ParameterOverrideMap {
      key: 14497495760541582849
      value {
        Overrides {
          Name: "ma:Shared_BaseMaterial:id"
          AssetReference {
            Id: 11337413471323694429
          }
        }
      }
    }
    TemplateAsset {
      Id: 5576557899363017038
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 2435409125179716276
  Name: "Elven_bannister"
  Transform {
    Location {
      X: 10243.374
      Y: 13730.5947
      Z: 4331.34961
    }
    Rotation {
      Yaw: 115.405617
    }
    Scale {
      X: 1.24802315
      Y: 1.24802315
      Z: 1.24802315
    }
  }
  ParentId: 16151049319494452114
  CameraCollidable {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  TemplateInstance {
    ParameterOverrideMap {
      key: 1087970490233162383
      value {
      }
    }
    ParameterOverrideMap {
      key: 1098764772194726930
      value {
        Overrides {
          Name: "ma:Shared_BaseMaterial:color"
          Color {
            R: 0.723958313
            G: 0.723958313
            B: 0.606010079
            A: 1
          }
        }
        Overrides {
          Name: "Name"
          String: "SciFi Trim 01"
        }
      }
    }
    ParameterOverrideMap {
      key: 8830366910998568517
      value {
        Overrides {
          Name: "ma:Shared_BaseMaterial:id"
          AssetReference {
            Id: 11337413471323694429
          }
        }
      }
    }
    ParameterOverrideMap {
      key: 8846893437263903214
      value {
        Overrides {
          Name: "Name"
          String: "collision"
        }
      }
    }
    ParameterOverrideMap {
      key: 10903999051012644632
      value {
        Overrides {
          Name: "ma:Shared_BaseMaterial:id"
          AssetReference {
            Id: 11337413471323694429
          }
        }
      }
    }
    ParameterOverrideMap {
      key: 12743444847015052782
      value {
        Overrides {
          Name: "ma:Shared_BaseMaterial:id"
          AssetReference {
            Id: 11337413471323694429
          }
        }
      }
    }
    ParameterOverrideMap {
      key: 12959015206063195225
      value {
        Overrides {
          Name: "Name"
          String: "Elven_bannister"
        }
        Overrides {
          Name: "Position"
          Vector {
            X: -4456.51
            Y: -5205.47949
            Z: 190.813965
          }
        }
        Overrides {
          Name: "Rotation"
          Rotator {
            Yaw: -86.4328613
          }
        }
        Overrides {
          Name: "Scale"
          Vector {
            X: 1.24802315
            Y: 1.24802315
            Z: 1.24802315
          }
        }
      }
    }
    ParameterOverrideMap {
      key: 14497495760541582849
      value {
        Overrides {
          Name: "ma:Shared_BaseMaterial:id"
          AssetReference {
            Id: 11337413471323694429
          }
        }
      }
    }
    TemplateAsset {
      Id: 5576557899363017038
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 12865802224991681301
  Name: "Elven_bannister"
  Transform {
    Location {
      X: 10706.3994
      Y: 13081.4521
      Z: 4165.40918
    }
    Rotation {
      Pitch: 2.30789351
      Yaw: 25.7555351
      Roll: -15.4989805
    }
    Scale {
      X: 1.24802315
      Y: 1.24802315
      Z: 1.24802315
    }
  }
  ParentId: 16151049319494452114
  CameraCollidable {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  TemplateInstance {
    ParameterOverrideMap {
      key: 1087970490233162383
      value {
      }
    }
    ParameterOverrideMap {
      key: 1098764772194726930
      value {
        Overrides {
          Name: "ma:Shared_BaseMaterial:color"
          Color {
            R: 0.723958313
            G: 0.723958313
            B: 0.606010079
            A: 1
          }
        }
        Overrides {
          Name: "Name"
          String: "SciFi Trim 01"
        }
      }
    }
    ParameterOverrideMap {
      key: 8830366910998568517
      value {
        Overrides {
          Name: "ma:Shared_BaseMaterial:id"
          AssetReference {
            Id: 11337413471323694429
          }
        }
      }
    }
    ParameterOverrideMap {
      key: 8846893437263903214
      value {
        Overrides {
          Name: "Name"
          String: "collision"
        }
      }
    }
    ParameterOverrideMap {
      key: 10903999051012644632
      value {
        Overrides {
          Name: "ma:Shared_BaseMaterial:id"
          AssetReference {
            Id: 11337413471323694429
          }
        }
      }
    }
    ParameterOverrideMap {
      key: 12743444847015052782
      value {
        Overrides {
          Name: "ma:Shared_BaseMaterial:id"
          AssetReference {
            Id: 11337413471323694429
          }
        }
      }
    }
    ParameterOverrideMap {
      key: 12959015206063195225
      value {
        Overrides {
          Name: "Name"
          String: "Elven_bannister"
        }
        Overrides {
          Name: "Position"
          Vector {
            X: -4798.97461
            Y: -5796.84
            Z: 190.813965
          }
        }
        Overrides {
          Name: "Rotation"
          Rotator {
            Yaw: -26.7501812
          }
        }
        Overrides {
          Name: "Scale"
          Vector {
            X: 1.24802315
            Y: 1.24802315
            Z: 1.24802315
          }
        }
      }
    }
    ParameterOverrideMap {
      key: 14497495760541582849
      value {
        Overrides {
          Name: "ma:Shared_BaseMaterial:id"
          AssetReference {
            Id: 11337413471323694429
          }
        }
      }
    }
    TemplateAsset {
      Id: 5576557899363017038
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 6713601600255016237
  Name: "Fantasy Castle Accessory Roof 02"
  Transform {
    Location {
      X: -4112.4458
      Y: -5764.53076
      Z: 1328.26514
    }
    Rotation {
      Yaw: -134.626083
    }
    Scale {
      X: 0.651585639
      Y: 0.651585639
      Z: 0.651585639
    }
  }
  ParentId: 16151049319494452114
  UnregisteredParameters {
    Overrides {
      Name: "ma:Building_WallOuter:id"
      AssetReference {
        Id: 11337413471323694429
      }
    }
    Overrides {
      Name: "ma:Shared_Detail1:id"
      AssetReference {
        Id: 11337413471323694429
      }
    }
    Overrides {
      Name: "ma:Shared_Detail2:id"
      AssetReference {
        Id: 11337413471323694429
      }
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
      Id: 7700976009969522757
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
  Id: 5615777858708271707
  Name: "Group"
  Transform {
    Location {
      X: -4115.14209
      Y: -5776.78223
    }
    Rotation {
      Yaw: 119.999863
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 16151049319494452114
  ChildIds: 17279611483315911036
  ChildIds: 4794656017330287631
  ChildIds: 5438510591593507741
  ChildIds: 16107565702728810640
  ChildIds: 7187984206058339369
  ChildIds: 16292036562505539157
  ChildIds: 12067864437835865217
  ChildIds: 1011017456812036059
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
  Id: 1011017456812036059
  Name: "Prism - 8-Sided"
  Transform {
    Location {
      Z: 190.262207
    }
    Rotation {
      Yaw: 3.19872522
    }
    Scale {
      X: 18.0755596
      Y: 18.0755596
      Z: 0.54022342
    }
  }
  ParentId: 5615777858708271707
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 18198612390204212876
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
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
    Value: "mc:ecollisionsetting:forceoff"
  }
  CoreMesh {
    MeshAsset {
      Id: 10777523509111713302
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
  Id: 12067864437835865217
  Name: "Elv_Arch_Element_01"
  Transform {
    Location {
      X: -88.522583
      Y: 674.780273
      Z: 944.441895
    }
    Rotation {
      Yaw: -97.0882568
    }
    Scale {
      X: 1.2
      Y: 1.2
      Z: 1.2
    }
  }
  ParentId: 5615777858708271707
  ChildIds: 5410960708232991639
  ChildIds: 7922061756229075908
  ChildIds: 12729565855708210288
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
  Id: 12729565855708210288
  Name: "Arch Fancy Peaked 6m"
  Transform {
    Location {
      X: 111.217499
      Y: -180.000168
      Z: 40.7421875
    }
    Rotation {
      Pitch: -5.11209106
      Yaw: 10.5451736
      Roll: -0.77532959
    }
    Scale {
      X: 0.714597583
      Y: 0.778622687
      Z: 0.852051914
    }
  }
  ParentId: 12067864437835865217
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 11337413471323694429
      }
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
      Id: 7142781972612396783
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
  Id: 7922061756229075908
  Name: "Arch Fancy Peaked 6m"
  Transform {
    Location {
      X: 116.232399
      Y: -201.12294
      Z: 20.5208321
    }
    Rotation {
      Pitch: 8.08681393
      Yaw: 10.3661289
      Roll: -0.779998779
    }
    Scale {
      X: 0.692338347
      Y: 0.845704138
      Z: 0.654289544
    }
  }
  ParentId: 12067864437835865217
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 11337413471323694429
      }
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
      Id: 7142781972612396783
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
  Id: 5410960708232991639
  Name: "Arch Fancy Peaked 6m"
  Transform {
    Location {
      X: 77.8985062
      Y: 187.413635
      Z: 416.449371
    }
    Rotation {
      Pitch: -4.09851074
      Yaw: 10.6113367
      Roll: 179.77623
    }
    Scale {
      X: 0.531674862
      Y: 0.457501501
      Z: 0.303426594
    }
  }
  ParentId: 12067864437835865217
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 11337413471323694429
      }
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
      Id: 7142781972612396783
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
  Id: 16292036562505539157
  Name: "Prism - 8-Sided"
  Transform {
    Location {
      Z: 164.226562
    }
    Rotation {
      Yaw: 3.19870019
    }
    Scale {
      X: 20.8712254
      Y: 20.8712254
      Z: 0.98863709
    }
  }
  ParentId: 5615777858708271707
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 8329339828071933523
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: true
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:vtile"
      Float: 0.228988484
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:utile"
      Float: 3.45057178
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 0.844238281
        G: 0.857845902
        B: 0.947916687
        A: 1
      }
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
      Id: 10777523509111713302
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
  Id: 7187984206058339369
  Name: "Prism - 8-Sided"
  Transform {
    Location {
      Z: 1025.62891
    }
    Rotation {
      Yaw: 3.19870472
    }
    Scale {
      X: 13.285388
      Y: 13.285388
      Z: 0.675528347
    }
  }
  ParentId: 5615777858708271707
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 7754470856388882901
      }
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
      Id: 12371872750459640945
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
  Id: 16107565702728810640
  Name: "Prism - 8-Sided"
  Transform {
    Location {
      Z: 1030.62891
    }
    Rotation {
      Yaw: 3.19870901
    }
    Scale {
      X: 12.3270426
      Y: 12.3270426
      Z: 8.75195694
    }
  }
  ParentId: 5615777858708271707
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 17409295383154929877
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 0.0411512554
        G: 0.179063499
        B: 0.213541672
        A: 1
      }
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
      Id: 7147607578013694397
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
  Id: 5438510591593507741
  Name: "Elv_Arch_Element_01"
  Transform {
    Location {
      X: -614.22345
      Y: 282.474731
      Z: 944.441895
    }
    Rotation {
      Yaw: -36.2269592
    }
    Scale {
      X: 1.2
      Y: 1.2
      Z: 1.2
    }
  }
  ParentId: 5615777858708271707
  ChildIds: 9010065173367531410
  ChildIds: 13180918619050947619
  ChildIds: 6935277182617549154
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
  Id: 6935277182617549154
  Name: "Arch Fancy Peaked 6m"
  Transform {
    Location {
      X: 111.217926
      Y: -179.999756
      Z: 40.7421875
    }
    Rotation {
      Pitch: -5.11209106
      Yaw: 10.5451736
      Roll: -0.77532959
    }
    Scale {
      X: 0.714597583
      Y: 0.778622687
      Z: 0.852051914
    }
  }
  ParentId: 5438510591593507741
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 11337413471323694429
      }
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
      Id: 7142781972612396783
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
  Id: 13180918619050947619
  Name: "Arch Fancy Peaked 6m"
  Transform {
    Location {
      X: 116.232605
      Y: -201.123505
      Z: 20.5208321
    }
    Rotation {
      Pitch: 8.08681393
      Yaw: 10.3661289
      Roll: -0.779998779
    }
    Scale {
      X: 0.692338347
      Y: 0.845704138
      Z: 0.654289544
    }
  }
  ParentId: 5438510591593507741
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 11337413471323694429
      }
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
      Id: 7142781972612396783
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
  Id: 9010065173367531410
  Name: "Arch Fancy Peaked 6m"
  Transform {
    Location {
      X: 77.8338
      Y: 187.759888
      Z: 416.450592
    }
    Rotation {
      Pitch: -4.09851074
      Yaw: 10.611351
      Roll: 179.77623
    }
    Scale {
      X: 0.531674862
      Y: 0.457501501
      Z: 0.303426594
    }
  }
  ParentId: 5438510591593507741
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 11337413471323694429
      }
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
      Id: 7142781972612396783
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
  Id: 4794656017330287631
  Name: "Elf_column"
  Transform {
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 5615777858708271707
  CameraCollidable {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  TemplateInstance {
    ParameterOverrideMap {
      key: 2687176109397299431
      value {
        Overrides {
          Name: "DisableCastShadows"
          Bool: false
        }
        Overrides {
          Name: "Name"
          String: "Pipe-spiral"
        }
      }
    }
    ParameterOverrideMap {
      key: 3213966160840712952
      value {
        Overrides {
          Name: "Name"
          String: "Elf_column"
        }
        Overrides {
          Name: "Position"
          Vector {
            X: -675.711487
            Y: -29.6539307
            Z: 196.167969
          }
        }
        Overrides {
          Name: "Rotation"
          Rotator {
            Yaw: 19.0079479
          }
        }
        Overrides {
          Name: "Scale"
          Vector {
            X: 1.03729403
            Y: 1.03729403
            Z: 1.03729403
          }
        }
      }
    }
    ParameterOverrideMap {
      key: 4665460184897816916
      value {
        Overrides {
          Name: "DisableCastShadows"
          Bool: false
        }
        Overrides {
          Name: "Name"
          String: "Pipe-spiral"
        }
      }
    }
    ParameterOverrideMap {
      key: 9306839694617463602
      value {
        Overrides {
          Name: "DisableCastShadows"
          Bool: false
        }
        Overrides {
          Name: "Name"
          String: "Pipe-spiral"
        }
      }
    }
    ParameterOverrideMap {
      key: 9577406271061975406
      value {
        Overrides {
          Name: "Name"
          String: "Pipe-spiral"
        }
      }
    }
    ParameterOverrideMap {
      key: 10903975137501348580
      value {
        Overrides {
          Name: "ma:Shared_BaseMaterial:id"
          AssetReference {
            Id: 1626097446304398136
          }
        }
        Overrides {
          Name: "ma:Shared_BaseMaterial:color"
          Color {
            R: 0.760416687
            G: 0.760416687
            B: 0.760416687
            A: 1
          }
        }
      }
    }
    ParameterOverrideMap {
      key: 11990023407897065158
      value {
        Overrides {
          Name: "DisableCastShadows"
          Bool: false
        }
        Overrides {
          Name: "Name"
          String: "Pipe-spiral"
        }
      }
    }
    ParameterOverrideMap {
      key: 12664518514096419953
      value {
        Overrides {
          Name: "Name"
          String: "Pipe-spiral"
        }
      }
    }
    ParameterOverrideMap {
      key: 15530557103067096821
      value {
        Overrides {
          Name: "DisableCastShadows"
          Bool: false
        }
        Overrides {
          Name: "Name"
          String: "Pipe-spiral"
        }
      }
    }
    TemplateAsset {
      Id: 4075384341934062930
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 17279611483315911036
  Name: "Prism - 8-Sided"
  Transform {
    Location {
      Z: -369.50708
    }
    Rotation {
      Yaw: 3.19870615
    }
    Scale {
      X: 18.3000011
      Y: 18.3000011
      Z: 11.5653982
    }
  }
  ParentId: 5615777858708271707
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 15380009543243484126
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
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
    Value: "mc:ecollisionsetting:forceoff"
  }
  CoreMesh {
    MeshAsset {
      Id: 10777523509111713302
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
  Id: 9624616040620428208
  Name: "Group"
  Transform {
    Location {
      X: -4115.14209
      Y: -5776.78223
    }
    Rotation {
      Yaw: -179.999954
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 16151049319494452114
  ChildIds: 7847333694917146815
  ChildIds: 13869810418403590185
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
  Id: 13869810418403590185
  Name: "Elv_Arch_Element_01"
  Transform {
    Location {
      X: -614.22345
      Y: 282.474731
      Z: 944.441895
    }
    Rotation {
      Yaw: -36.2269592
    }
    Scale {
      X: 1.2
      Y: 1.2
      Z: 1.2
    }
  }
  ParentId: 9624616040620428208
  ChildIds: 388124951083729355
  ChildIds: 8439874185728481795
  ChildIds: 6021751574230366342
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
  Id: 6021751574230366342
  Name: "Arch Fancy Peaked 6m"
  Transform {
    Location {
      X: 111.218628
      Y: -179.999893
      Z: 40.7421875
    }
    Rotation {
      Pitch: -5.11209106
      Yaw: 10.5451736
      Roll: -0.77532959
    }
    Scale {
      X: 0.714597583
      Y: 0.778622687
      Z: 0.852051914
    }
  }
  ParentId: 13869810418403590185
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 11337413471323694429
      }
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
      Id: 7142781972612396783
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
  Id: 8439874185728481795
  Name: "Arch Fancy Peaked 6m"
  Transform {
    Location {
      X: 116.232948
      Y: -201.123291
      Z: 20.5208321
    }
    Rotation {
      Pitch: 8.08681393
      Yaw: 10.3661289
      Roll: -0.779998779
    }
    Scale {
      X: 0.692338347
      Y: 0.845704138
      Z: 0.654289544
    }
  }
  ParentId: 13869810418403590185
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 11337413471323694429
      }
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
      Id: 7142781972612396783
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
  Id: 388124951083729355
  Name: "Arch Fancy Peaked 6m"
  Transform {
    Location {
      X: 79.9310379
      Y: 188.592422
      Z: 416.468903
    }
    Rotation {
      Pitch: -4.09851074
      Yaw: 10.6113367
      Roll: 179.77623
    }
    Scale {
      X: 0.531674862
      Y: 0.457501501
      Z: 0.303426594
    }
  }
  ParentId: 13869810418403590185
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 11337413471323694429
      }
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
      Id: 7142781972612396783
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
  Id: 7847333694917146815
  Name: "Elf_column"
  Transform {
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 9624616040620428208
  CameraCollidable {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  TemplateInstance {
    ParameterOverrideMap {
      key: 2687176109397299431
      value {
        Overrides {
          Name: "Name"
          String: "Pipe-spiral"
        }
      }
    }
    ParameterOverrideMap {
      key: 3213966160840712952
      value {
        Overrides {
          Name: "Name"
          String: "Elf_column"
        }
        Overrides {
          Name: "Position"
          Vector {
            X: -675.711487
            Y: -29.6539307
            Z: 196.167969
          }
        }
        Overrides {
          Name: "Rotation"
          Rotator {
            Yaw: 19.0079479
          }
        }
        Overrides {
          Name: "Scale"
          Vector {
            X: 1.03729403
            Y: 1.03729403
            Z: 1.03729403
          }
        }
      }
    }
    ParameterOverrideMap {
      key: 4665460184897816916
      value {
        Overrides {
          Name: "Name"
          String: "Pipe-spiral"
        }
      }
    }
    ParameterOverrideMap {
      key: 9306839694617463602
      value {
        Overrides {
          Name: "Name"
          String: "Pipe-spiral"
        }
      }
    }
    ParameterOverrideMap {
      key: 9577406271061975406
      value {
        Overrides {
          Name: "Name"
          String: "Pipe-spiral"
        }
      }
    }
    ParameterOverrideMap {
      key: 10903975137501348580
      value {
        Overrides {
          Name: "ma:Shared_BaseMaterial:id"
          AssetReference {
            Id: 1626097446304398136
          }
        }
        Overrides {
          Name: "ma:Shared_BaseMaterial:color"
          Color {
            R: 0.760416687
            G: 0.760416687
            B: 0.760416687
            A: 1
          }
        }
      }
    }
    ParameterOverrideMap {
      key: 11990023407897065158
      value {
        Overrides {
          Name: "Name"
          String: "Pipe-spiral"
        }
      }
    }
    ParameterOverrideMap {
      key: 12664518514096419953
      value {
        Overrides {
          Name: "Name"
          String: "Pipe-spiral"
        }
      }
    }
    ParameterOverrideMap {
      key: 15530557103067096821
      value {
        Overrides {
          Name: "Name"
          String: "Pipe-spiral"
        }
      }
    }
    TemplateAsset {
      Id: 4075384341934062930
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 17698136263301390778
  Name: "Group"
  Transform {
    Location {
      X: -4115.14209
      Y: -5776.78223
    }
    Rotation {
      Yaw: -120.000008
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 16151049319494452114
  ChildIds: 3927785810231552105
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
  Id: 3927785810231552105
  Name: "Elv_Arch_Element_01"
  Transform {
    Location {
      X: -614.22345
      Y: 282.474731
      Z: 944.441895
    }
    Rotation {
      Yaw: -36.2269592
    }
    Scale {
      X: 1.2
      Y: 1.2
      Z: 1.2
    }
  }
  ParentId: 17698136263301390778
  ChildIds: 16513231934378169333
  ChildIds: 7743099669453891770
  ChildIds: 18412806989618960660
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
  Id: 18412806989618960660
  Name: "Arch Fancy Peaked 6m"
  Transform {
    Location {
      X: 111.218193
      Y: -180.000137
      Z: 40.7421875
    }
    Rotation {
      Pitch: -5.11209106
      Yaw: 10.5451736
      Roll: -0.77532959
    }
    Scale {
      X: 0.714597583
      Y: 0.778622687
      Z: 0.852051914
    }
  }
  ParentId: 3927785810231552105
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 11337413471323694429
      }
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
      Id: 7142781972612396783
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
  Id: 7743099669453891770
  Name: "Arch Fancy Peaked 6m"
  Transform {
    Location {
      X: 116.232986
      Y: -201.123459
      Z: 20.5208321
    }
    Rotation {
      Pitch: 8.08681393
      Yaw: 10.3661289
      Roll: -0.779998779
    }
    Scale {
      X: 0.692338347
      Y: 0.845704138
      Z: 0.654289544
    }
  }
  ParentId: 3927785810231552105
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 11337413471323694429
      }
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
      Id: 7142781972612396783
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
  Id: 16513231934378169333
  Name: "Arch Fancy Peaked 6m"
  Transform {
    Location {
      X: 77.5231247
      Y: 186.919601
      Z: 416.480286
    }
    Rotation {
      Pitch: -4.09851074
      Yaw: 10.61131
      Roll: 179.77623
    }
    Scale {
      X: 0.531674862
      Y: 0.457501501
      Z: 0.303426594
    }
  }
  ParentId: 3927785810231552105
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 11337413471323694429
      }
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
      Id: 7142781972612396783
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
  Id: 5407156950148066191
  Name: "Group"
  Transform {
    Location {
      X: -4115.14209
      Y: -5776.78223
    }
    Rotation {
      Yaw: -60.0000381
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 16151049319494452114
  ChildIds: 14440608334266618308
  ChildIds: 9131484012535629197
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
  Id: 9131484012535629197
  Name: "Elf_column"
  Transform {
    Location {
      X: 18112.8633
      Y: 15522.875
      Z: 5765.84229
    }
    Rotation {
      Yaw: 4.42959404
    }
    Scale {
      X: 1.03729403
      Y: 1.03729403
      Z: 1.03729403
    }
  }
  ParentId: 5407156950148066191
  CameraCollidable {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  TemplateInstance {
    ParameterOverrideMap {
      key: 2687176109397299431
      value {
        Overrides {
          Name: "Name"
          String: "Pipe-spiral"
        }
      }
    }
    ParameterOverrideMap {
      key: 3213966160840712952
      value {
        Overrides {
          Name: "Name"
          String: "Elf_column"
        }
        Overrides {
          Name: "Position"
          Vector {
            X: -375.531525
            Y: 566.283752
            Z: 196.167969
          }
        }
        Overrides {
          Name: "Rotation"
          Rotator {
            Yaw: 19.0079079
          }
        }
        Overrides {
          Name: "Scale"
          Vector {
            X: 1.03729403
            Y: 1.03729403
            Z: 1.03729403
          }
        }
      }
    }
    ParameterOverrideMap {
      key: 4665460184897816916
      value {
        Overrides {
          Name: "Name"
          String: "Pipe-spiral"
        }
      }
    }
    ParameterOverrideMap {
      key: 9306839694617463602
      value {
        Overrides {
          Name: "Name"
          String: "Pipe-spiral"
        }
      }
    }
    ParameterOverrideMap {
      key: 9577406271061975406
      value {
        Overrides {
          Name: "Name"
          String: "Pipe-spiral"
        }
      }
    }
    ParameterOverrideMap {
      key: 10903975137501348580
      value {
        Overrides {
          Name: "ma:Shared_BaseMaterial:id"
          AssetReference {
            Id: 1626097446304398136
          }
        }
        Overrides {
          Name: "ma:Shared_BaseMaterial:color"
          Color {
            R: 0.760416687
            G: 0.760416687
            B: 0.760416687
            A: 1
          }
        }
      }
    }
    ParameterOverrideMap {
      key: 11990023407897065158
      value {
        Overrides {
          Name: "Name"
          String: "Pipe-spiral"
        }
      }
    }
    ParameterOverrideMap {
      key: 12664518514096419953
      value {
        Overrides {
          Name: "Name"
          String: "Pipe-spiral"
        }
      }
    }
    ParameterOverrideMap {
      key: 15530557103067096821
      value {
        Overrides {
          Name: "Name"
          String: "Pipe-spiral"
        }
      }
    }
    TemplateAsset {
      Id: 4075384341934062930
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 14440608334266618308
  Name: "Elv_Arch_Element_01"
  Transform {
    Location {
      X: -614.22345
      Y: 282.474731
      Z: 944.441895
    }
    Rotation {
      Yaw: -36.2269592
    }
    Scale {
      X: 1.2
      Y: 1.2
      Z: 1.2
    }
  }
  ParentId: 5407156950148066191
  ChildIds: 16820423335205409998
  ChildIds: 5622608796602961605
  ChildIds: 8398559433718604541
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
  Id: 8398559433718604541
  Name: "Arch Fancy Peaked 6m"
  Transform {
    Location {
      X: 111.217827
      Y: -179.999863
      Z: 40.7421875
    }
    Rotation {
      Pitch: -5.11209106
      Yaw: 10.5451736
      Roll: -0.77532959
    }
    Scale {
      X: 0.714597583
      Y: 0.778622687
      Z: 0.852051914
    }
  }
  ParentId: 14440608334266618308
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 11337413471323694429
      }
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
      Id: 7142781972612396783
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
  Id: 5622608796602961605
  Name: "Arch Fancy Peaked 6m"
  Transform {
    Location {
      X: 116.232933
      Y: -201.123047
      Z: 20.5208321
    }
    Rotation {
      Pitch: 8.08681393
      Yaw: 10.3661289
      Roll: -0.779998779
    }
    Scale {
      X: 0.692338347
      Y: 0.845704138
      Z: 0.654289544
    }
  }
  ParentId: 14440608334266618308
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 11337413471323694429
      }
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
      Id: 7142781972612396783
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
  Id: 16820423335205409998
  Name: "Arch Fancy Peaked 6m"
  Transform {
    Location {
      X: 74.4349899
      Y: 176.844421
      Z: 416.443268
    }
    Rotation {
      Pitch: -4.09851074
      Yaw: 10.61131
      Roll: 179.77623
    }
    Scale {
      X: 0.531674862
      Y: 0.457501501
      Z: 0.303426594
    }
  }
  ParentId: 14440608334266618308
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 11337413471323694429
      }
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
      Id: 7142781972612396783
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
  Id: 12075902135459862020
  Name: "Group"
  Transform {
    Location {
      X: -4115.14209
      Y: -5776.78223
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 16151049319494452114
  ChildIds: 17505389870175605100
  ChildIds: 12837545727988857760
  ChildIds: 11927767548598125209
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
  Id: 11927767548598125209
  Name: "Elf_column"
  Transform {
    Location {
      X: 18112.8633
      Y: 15522.875
      Z: 5765.84229
    }
    Rotation {
      Yaw: 4.42959404
    }
    Scale {
      X: 1.03729403
      Y: 1.03729403
      Z: 1.03729403
    }
  }
  ParentId: 12075902135459862020
  CameraCollidable {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  TemplateInstance {
    ParameterOverrideMap {
      key: 2687176109397299431
      value {
        Overrides {
          Name: "Name"
          String: "Pipe-spiral"
        }
      }
    }
    ParameterOverrideMap {
      key: 3213966160840712952
      value {
        Overrides {
          Name: "Name"
          String: "Elf_column"
        }
        Overrides {
          Name: "Position"
          Vector {
            X: -375.531525
            Y: 566.283752
            Z: 196.167969
          }
        }
        Overrides {
          Name: "Rotation"
          Rotator {
            Yaw: 19.0079079
          }
        }
        Overrides {
          Name: "Scale"
          Vector {
            X: 1.03729403
            Y: 1.03729403
            Z: 1.03729403
          }
        }
      }
    }
    ParameterOverrideMap {
      key: 4665460184897816916
      value {
        Overrides {
          Name: "Name"
          String: "Pipe-spiral"
        }
      }
    }
    ParameterOverrideMap {
      key: 9306839694617463602
      value {
        Overrides {
          Name: "Name"
          String: "Pipe-spiral"
        }
      }
    }
    ParameterOverrideMap {
      key: 9577406271061975406
      value {
        Overrides {
          Name: "Name"
          String: "Pipe-spiral"
        }
      }
    }
    ParameterOverrideMap {
      key: 10903975137501348580
      value {
        Overrides {
          Name: "ma:Shared_BaseMaterial:id"
          AssetReference {
            Id: 1626097446304398136
          }
        }
        Overrides {
          Name: "ma:Shared_BaseMaterial:color"
          Color {
            R: 0.760416687
            G: 0.760416687
            B: 0.760416687
            A: 1
          }
        }
      }
    }
    ParameterOverrideMap {
      key: 11990023407897065158
      value {
        Overrides {
          Name: "Name"
          String: "Pipe-spiral"
        }
      }
    }
    ParameterOverrideMap {
      key: 12664518514096419953
      value {
        Overrides {
          Name: "Name"
          String: "Pipe-spiral"
        }
      }
    }
    ParameterOverrideMap {
      key: 15530557103067096821
      value {
        Overrides {
          Name: "Name"
          String: "Pipe-spiral"
        }
      }
    }
    TemplateAsset {
      Id: 4075384341934062930
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 12837545727988857760
  Name: "Elv_Arch_Element_01"
  Transform {
    Location {
      X: -614.22345
      Y: 282.474731
      Z: 944.441895
    }
    Rotation {
      Yaw: -36.2269592
    }
    Scale {
      X: 1.2
      Y: 1.2
      Z: 1.2
    }
  }
  ParentId: 12075902135459862020
  ChildIds: 13831946696879378775
  ChildIds: 4291373726454448592
  ChildIds: 1053092641402625346
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
  Id: 1053092641402625346
  Name: "Arch Fancy Peaked 6m"
  Transform {
    Location {
      X: 111.218933
      Y: -179.999786
      Z: 40.7421875
    }
    Rotation {
      Pitch: -5.11209106
      Yaw: 10.5451736
      Roll: -0.77532959
    }
    Scale {
      X: 0.714597583
      Y: 0.778622687
      Z: 0.852051914
    }
  }
  ParentId: 12837545727988857760
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 11337413471323694429
      }
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
      Id: 7142781972612396783
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
  Id: 4291373726454448592
  Name: "Arch Fancy Peaked 6m"
  Transform {
    Location {
      X: 116.233101
      Y: -201.123291
      Z: 20.5208321
    }
    Rotation {
      Pitch: 8.08681393
      Yaw: 10.3661289
      Roll: -0.779998779
    }
    Scale {
      X: 0.692338347
      Y: 0.845704138
      Z: 0.654289544
    }
  }
  ParentId: 12837545727988857760
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 11337413471323694429
      }
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
      Id: 7142781972612396783
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
  Id: 13831946696879378775
  Name: "Arch Fancy Peaked 6m"
  Transform {
    Location {
      X: 70.4195862
      Y: 186.257309
      Z: 416.464844
    }
    Rotation {
      Pitch: -4.09851074
      Yaw: 10.6113234
      Roll: 179.77623
    }
    Scale {
      X: 0.531674862
      Y: 0.457501501
      Z: 0.303426594
    }
  }
  ParentId: 12837545727988857760
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 11337413471323694429
      }
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
      Id: 7142781972612396783
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
  Id: 17505389870175605100
  Name: "Elf_column"
  Transform {
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 12075902135459862020
  CameraCollidable {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  TemplateInstance {
    ParameterOverrideMap {
      key: 2687176109397299431
      value {
        Overrides {
          Name: "Name"
          String: "Pipe-spiral"
        }
      }
    }
    ParameterOverrideMap {
      key: 3213966160840712952
      value {
        Overrides {
          Name: "Name"
          String: "Elf_column"
        }
        Overrides {
          Name: "Position"
          Vector {
            X: -675.711487
            Y: -29.6539307
            Z: 196.167969
          }
        }
        Overrides {
          Name: "Rotation"
          Rotator {
            Yaw: 19.0079479
          }
        }
      }
    }
    ParameterOverrideMap {
      key: 4665460184897816916
      value {
        Overrides {
          Name: "Name"
          String: "Pipe-spiral"
        }
      }
    }
    ParameterOverrideMap {
      key: 9306839694617463602
      value {
        Overrides {
          Name: "Name"
          String: "Pipe-spiral"
        }
      }
    }
    ParameterOverrideMap {
      key: 9577406271061975406
      value {
        Overrides {
          Name: "Name"
          String: "Pipe-spiral"
        }
      }
    }
    ParameterOverrideMap {
      key: 11990023407897065158
      value {
        Overrides {
          Name: "Name"
          String: "Pipe-spiral"
        }
      }
    }
    ParameterOverrideMap {
      key: 12664518514096419953
      value {
        Overrides {
          Name: "Name"
          String: "Pipe-spiral"
        }
      }
    }
    ParameterOverrideMap {
      key: 15530557103067096821
      value {
        Overrides {
          Name: "Name"
          String: "Pipe-spiral"
        }
      }
    }
    TemplateAsset {
      Id: 4075384341934062930
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 10349043632578070246
  Name: "Decal Vines End 01"
  Transform {
    Location {
      X: 291.657562
      Y: 551.872498
      Z: 812.770508
    }
    Rotation {
      Pitch: 2.95450735
      Yaw: 163.377945
      Roll: 86.8881531
    }
    Scale {
      X: 0.999992311
      Y: 1.00001216
      Z: 0.943663716
    }
  }
  ParentId: 12220229597544669101
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
      Id: 2406204288165372094
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
  Id: 14643379550115523532
  Name: "Ivy 03"
  Transform {
    Location {
      X: 56.5274048
      Y: 636.562561
      Z: 957.955078
    }
    Rotation {
      Pitch: -2.68499756
      Yaw: -54.4092712
      Roll: -115.409027
    }
    Scale {
      X: 1.76321411
      Y: 1.76321411
      Z: 1.76321411
    }
  }
  ParentId: 12220229597544669101
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
      Id: 15977747936357021178
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
  Id: 1874189497732780366
  Name: "Ivy 05"
  Transform {
    Location {
      X: 361.298889
      Y: 565.74646
      Z: 1023.83301
    }
    Rotation {
      Pitch: -12.4783516
      Yaw: 141.389282
      Roll: 85.4434814
    }
    Scale {
      X: 1.13754809
      Y: 1.13754809
      Z: 1.13754809
    }
  }
  ParentId: 12220229597544669101
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
      Id: 11521250418432815603
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
  Id: 6378236207005791790
  Name: "Ivy 04"
  Transform {
    Location {
      X: 427.535278
      Y: 127.095673
      Z: 829.746094
    }
    Rotation {
      Pitch: -0.708898485
      Yaw: 131.388275
      Roll: 95.6490631
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 12220229597544669101
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
      Id: 9241339813623090261
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
  Id: 14833669000757119523
  Name: "Ivy 05"
  Transform {
    Location {
      X: 48.7479858
      Y: 507.663025
      Z: 396.207031
    }
    Rotation {
      Pitch: -0.67477417
      Yaw: 177.026199
      Roll: 91.6429
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 12220229597544669101
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
      Id: 11521250418432815603
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
  Id: 9047288694584916593
  Name: "MergedModel"
  Transform {
    Location {
      X: 8592.61914
      Y: 1717.35229
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 11892929425233717926
  ChildIds: 6058433382413870091
  ChildIds: 4042223295826066854
  ChildIds: 10784053626646621244
  ChildIds: 13251861405859440097
  ChildIds: 5439429418901137499
  ChildIds: 18132426208428321405
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
  Id: 18132426208428321405
  Name: "Plant_part_02"
  Transform {
    Location {
      X: 5718.39062
      Y: 605.853271
      Z: 15152.2
    }
    Rotation {
      Pitch: 45.5884705
      Yaw: 100.353119
      Roll: -10.3739014
    }
    Scale {
      X: 2.17728233
      Y: 2.17728233
      Z: 2.17728233
    }
  }
  ParentId: 9047288694584916593
  ChildIds: 2767239066181097140
  ChildIds: 4452752222239841389
  ChildIds: 15026372590027290305
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
  Id: 15026372590027290305
  Name: "Coral Table 02"
  Transform {
    Location {
      X: -0.217055246
      Y: 0.730286
      Z: 0.0889320895
    }
    Rotation {
      Pitch: 0.82514143
      Yaw: 30.4888878
      Roll: -17.5620422
    }
    Scale {
      X: 0.165388197
      Y: 0.165415034
      Z: 0.9022246
    }
  }
  ParentId: 18132426208428321405
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 16167680134006870113
      }
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
      Id: 13161146325196931920
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
  Id: 4452752222239841389
  Name: "Coral Tubes Small"
  Transform {
    Location {
      X: 0.799241722
      Y: -1.83661485
      Z: 3.48285985
    }
    Rotation {
      Pitch: 2.75285983
      Yaw: 30.3989334
      Roll: -15.5359192
    }
    Scale {
      X: 0.194210961
      Y: 0.194210961
      Z: 0.37800464
    }
  }
  ParentId: 18132426208428321405
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 15891502903232153966
      }
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
      Id: 14281826121533999733
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
  Id: 2767239066181097140
  Name: "Coral Table 02"
  Transform {
    Location {
      X: -0.291015625
      Y: 1.11132812
    }
    Rotation {
      Pitch: -9.50164604
      Yaw: -4.50369549
      Roll: -14.2630844
    }
    Scale {
      X: 0.19532384
      Y: 0.19532384
      Z: 0.744195163
    }
  }
  ParentId: 18132426208428321405
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 0.570000052
        B: 0.215165272
        A: 1
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 16167680134006870113
      }
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
      Id: 13161146325196931920
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
  Id: 5439429418901137499
  Name: "Plant_part_02"
  Transform {
    Location {
      X: 5869.74609
      Y: 913.180664
      Z: 15448.0146
    }
    Rotation {
      Pitch: 41.7026787
      Yaw: 29.3027401
      Roll: 9.04446125
    }
    Scale {
      X: 2.08244014
      Y: 2.08244014
      Z: 2.08244014
    }
  }
  ParentId: 9047288694584916593
  ChildIds: 15796753598229054344
  ChildIds: 15785917835738478224
  ChildIds: 16675617331189522727
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
  Id: 16675617331189522727
  Name: "Coral Table 02"
  Transform {
    Location {
      X: -0.217055246
      Y: 0.730286
      Z: 0.0889320895
    }
    Rotation {
      Pitch: 0.82514143
      Yaw: 30.4888878
      Roll: -17.5620422
    }
    Scale {
      X: 0.165388197
      Y: 0.165415034
      Z: 0.9022246
    }
  }
  ParentId: 5439429418901137499
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 16167680134006870113
      }
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
      Id: 13161146325196931920
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
  Id: 15785917835738478224
  Name: "Coral Tubes Small"
  Transform {
    Location {
      X: 0.799241722
      Y: -1.83661485
      Z: 3.48285985
    }
    Rotation {
      Pitch: 2.75285983
      Yaw: 30.3989334
      Roll: -15.5359192
    }
    Scale {
      X: 0.194210961
      Y: 0.194210961
      Z: 0.37800464
    }
  }
  ParentId: 5439429418901137499
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 15891502903232153966
      }
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
      Id: 14281826121533999733
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
  Id: 15796753598229054344
  Name: "Coral Table 02"
  Transform {
    Location {
      X: -0.291015625
      Y: 1.11132812
    }
    Rotation {
      Pitch: -9.50164604
      Yaw: -4.50369549
      Roll: -14.2630844
    }
    Scale {
      X: 0.19532384
      Y: 0.19532384
      Z: 0.744195163
    }
  }
  ParentId: 5439429418901137499
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 0.570000052
        B: 0.215165272
        A: 1
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 16167680134006870113
      }
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
      Id: 13161146325196931920
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
  Id: 13251861405859440097
  Name: "Plant_flower_part_02"
  Transform {
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 9047288694584916593
  CameraCollidable {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  TemplateInstance {
    ParameterOverrideMap {
      key: 5652087806941531378
      value {
        Overrides {
          Name: "CoreProxy.CameraCollidable"
          Enum {
            Value: "mc:ecollisionsetting:forceoff"
          }
        }
      }
    }
    ParameterOverrideMap {
      key: 6894922659357543217
      value {
        Overrides {
          Name: "CoreProxy.CameraCollidable"
          Enum {
            Value: "mc:ecollisionsetting:forceoff"
          }
        }
      }
    }
    ParameterOverrideMap {
      key: 13596306798365901416
      value {
        Overrides {
          Name: "CoreProxy.CameraCollidable"
          Enum {
            Value: "mc:ecollisionsetting:forceoff"
          }
        }
      }
    }
    ParameterOverrideMap {
      key: 15917029441460979278
      value {
        Overrides {
          Name: "Name"
          String: "Plant_flower_part_02"
        }
        Overrides {
          Name: "Position"
          Vector {
            X: 5932.95117
            Y: 885.96582
            Z: 15415.8154
          }
        }
        Overrides {
          Name: "Rotation"
          Rotator {
            Pitch: 10.5479975
            Yaw: 19.1850071
            Roll: -42.0323181
          }
        }
        Overrides {
          Name: "Scale"
          Vector {
            X: 2.85910082
            Y: 2.85910082
            Z: 2.85910082
          }
        }
      }
    }
    TemplateAsset {
      Id: 3588891595602626762
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 10784053626646621244
  Name: "Palm_Tree_kelp_01_new"
  Transform {
    Location {
      X: 6035.78125
      Y: 1113.51807
      Z: 14127.3936
    }
    Rotation {
      Pitch: -18.9303894
      Yaw: -100.645416
      Roll: 17.192194
    }
    Scale {
      X: 0.773502648
      Y: 0.773502648
      Z: 0.773502648
    }
  }
  ParentId: 9047288694584916593
  ChildIds: 10743935571476539612
  ChildIds: 11432498702598811085
  ChildIds: 4330562541313215477
  ChildIds: 11846793931572362570
  ChildIds: 11457946049987846639
  ChildIds: 2720575736275884630
  ChildIds: 6212219269106387248
  ChildIds: 12458648772879042678
  ChildIds: 8557786934104043160
  ChildIds: 17865687692570222525
  ChildIds: 860508877255497802
  ChildIds: 5338339620272644486
  ChildIds: 2984374788279780204
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
  Id: 2984374788279780204
  Name: "Horn"
  Transform {
    Location {
      X: 0.9140625
      Y: 10.3066406
      Z: 782.44043
    }
    Rotation {
      Pitch: 2.91541839
      Yaw: 0.976737261
      Roll: 17.7615318
    }
    Scale {
      X: 0.59924686
      Y: 0.594422519
      Z: 1.22857702
    }
  }
  ParentId: 10784053626646621244
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 17938161672663144037
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:utile"
      Float: 0.183762923
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:vtile"
      Float: 0.396376163
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
      Id: 114278397929005302
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
  Id: 5338339620272644486
  Name: "Fern 03"
  Transform {
    Location {
      X: -12.3242188
      Y: 77.4375
      Z: 925.193115
    }
    Rotation {
      Pitch: 23.0329876
      Yaw: -135.679138
      Roll: -42.953331
    }
    Scale {
      X: 1.79650187
      Y: 1.79650843
      Z: 3.37851739
    }
  }
  ParentId: 10784053626646621244
  UnregisteredParameters {
    Overrides {
      Name: "ma:Nature_Leaves:id"
      AssetReference {
        Id: 532304363034804995
      }
    }
    Overrides {
      Name: "ma:Nature_Leaves:color"
      Color {
        R: 0.0797902197
        G: 0.159999967
        B: 0.0191666652
        A: 1
      }
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
      Id: 1984553197323830660
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
  Id: 860508877255497802
  Name: "Fern 03"
  Transform {
    Location {
      X: 43.6210938
      Y: 54.7363281
      Z: 1134.57324
    }
    Rotation {
      Pitch: 1.02307343
      Yaw: -45.2230606
      Roll: 31.0987129
    }
    Scale {
      X: 2.90592861
      Y: 2.90592551
      Z: 3.38072848
    }
  }
  ParentId: 10784053626646621244
  UnregisteredParameters {
    Overrides {
      Name: "ma:Nature_Leaves:id"
      AssetReference {
        Id: 532304363034804995
      }
    }
    Overrides {
      Name: "ma:Nature_Leaves:color"
      Color {
        R: 0.0797902197
        G: 0.159999967
        B: 0.0191666652
        A: 1
      }
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
      Id: 1984553197323830660
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
  Id: 17865687692570222525
  Name: "Fern 03"
  Transform {
    Location {
      X: 38.9414062
      Y: 39.9941406
      Z: 1109.49121
    }
    Rotation {
      Pitch: -6.82326317
      Yaw: -41.5188713
      Roll: 19.885479
    }
    Scale {
      X: 2.54142141
      Y: 2.54141855
      Z: 2.39355087
    }
  }
  ParentId: 10784053626646621244
  UnregisteredParameters {
    Overrides {
      Name: "ma:Nature_Leaves:id"
      AssetReference {
        Id: 532304363034804995
      }
    }
    Overrides {
      Name: "ma:Nature_Leaves:color"
      Color {
        R: 0.0797902197
        G: 0.159999967
        B: 0.0191666652
        A: 1
      }
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
      Id: 12416815806534727809
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
  Id: 8557786934104043160
  Name: "Horn"
  Transform {
    Location {
      X: 49.1738281
      Y: 44.3476562
      Z: 1123.90576
    }
    Rotation {
      Pitch: -1.95551717
      Yaw: 157.524506
      Roll: -8.44107151
    }
    Scale {
      X: 0.223520085
      Y: 0.223528221
      Z: 0.69232589
    }
  }
  ParentId: 10784053626646621244
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 5512000712628422335
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 0.791666687
        G: 0.658084333
        B: 0.551949322
        A: 1
      }
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
      Id: 114278397929005302
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
  Id: 12458648772879042678
  Name: "Horn"
  Transform {
    Location {
      X: 35.5234375
      Y: 37.6308594
      Z: 1061.09424
    }
    Rotation {
      Pitch: -11.6220512
      Yaw: -151.020325
      Roll: 16.1558456
    }
    Scale {
      X: 0.299942225
      Y: 0.299942225
      Z: 0.511068702
    }
  }
  ParentId: 10784053626646621244
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 5512000712628422335
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 0.416666657
        G: 0.346360147
        B: 0.290499628
        A: 1
      }
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
      Id: 114278397929005302
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
  Id: 6212219269106387248
  Name: "Horn"
  Transform {
    Location {
      X: 0.9140625
      Y: -0.4296875
      Z: 709.269531
    }
    Rotation {
      Pitch: 4.75353813
      Yaw: -84.4660492
      Roll: 2.90210509
    }
    Scale {
      X: 0.784117103
      Y: 0.777814507
      Z: 2.92030454
    }
  }
  ParentId: 10784053626646621244
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 8220563240647999580
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:utile"
      Float: 0.295751333
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:vtile"
      Float: 1.18859982
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
      Id: 114278397929005302
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
  Id: 2720575736275884630
  Name: "Bush Green 01"
  Transform {
    Location {
      X: 48.6015625
      Y: 54.6464844
      Z: 1166.27856
    }
    Rotation {
      Pitch: -6.45387268
      Yaw: 0.307067931
      Roll: -173.625885
    }
    Scale {
      X: 0.637665093
      Y: 0.637666225
      Z: 0.958822131
    }
  }
  ParentId: 10784053626646621244
  UnregisteredParameters {
    Overrides {
      Name: "ma:Nature_Leaves:color"
      Color {
        R: 0.100000024
        G: 0.04406045
        B: 0.0203125048
        A: 1
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 12889861000896994476
      }
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
      Id: 901541979513849367
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
  Id: 11457946049987846639
  Name: "Sphere"
  Transform {
    Location {
      X: -36.1660156
      Y: 103.810547
      Z: 917.238037
    }
    Rotation {
      Pitch: 5.63401079
      Yaw: -3.00592089
      Roll: 8.24372578
    }
    Scale {
      X: 0.767500818
      Y: 0.767500818
      Z: 0.767500818
    }
  }
  ParentId: 10784053626646621244
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 1964254608213071037
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 0.708333313
        G: 0.708333313
        B: 0.708333313
        A: 1
      }
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
      Id: 3179843506183788979
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
  Id: 11846793931572362570
  Name: "Bush Green 01"
  Transform {
    Location {
      X: -18.0371094
      Y: 84.5117188
      Z: 915.015381
    }
    Rotation {
      Pitch: 10.2478924
      Yaw: 7.62842464
      Roll: -142.11084
    }
    Scale {
      X: 0.422923744
      Y: 0.422924638
      Z: 0.635927379
    }
  }
  ParentId: 10784053626646621244
  UnregisteredParameters {
    Overrides {
      Name: "ma:Nature_Leaves:color"
      Color {
        R: 0.100000024
        G: 0.04406045
        B: 0.0203125048
        A: 1
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 12889861000896994476
      }
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
      Id: 901541979513849367
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
  Id: 4330562541313215477
  Name: "Sphere"
  Transform {
    Location {
      X: 8.91796875
      Y: 68.921875
      Z: 1096.4082
    }
    Rotation {
      Pitch: 5.63401079
      Yaw: -3.00592089
      Roll: -28.1413174
    }
    Scale {
      X: 0.767500818
      Y: 0.767500818
      Z: 0.767500818
    }
  }
  ParentId: 10784053626646621244
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 1964254608213071037
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 0.708333313
        G: 0.708333313
        B: 0.708333313
        A: 1
      }
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
      Id: 3179843506183788979
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
  Id: 11432498702598811085
  Name: "Bush Green 01"
  Transform {
    Location {
      X: 0.8828125
      Y: -2.6171875
      Z: 795.653809
    }
    Rotation {
      Pitch: -0.0128202643
      Yaw: 1.02504563
      Roll: -159.300491
    }
    Scale {
      X: 0.419044316
      Y: 0.293457508
      Z: 0.526468873
    }
  }
  ParentId: 10784053626646621244
  UnregisteredParameters {
    Overrides {
      Name: "ma:Nature_Leaves:color"
      Color {
        R: 0.100000024
        G: 0.04406045
        B: 0.0203125048
        A: 1
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 12889861000896994476
      }
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
      Id: 901541979513849367
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
  Id: 10743935571476539612
  Name: "Teardrop - Truncated"
  Transform {
    Location {
    }
    Rotation {
      Pitch: -6.83018879e-06
      Yaw: 2.77476465e-06
      Roll: -1.19861797e-05
    }
    Scale {
      X: 1.39091361
      Y: 1.39091361
      Z: 5.10751343
    }
  }
  ParentId: 10784053626646621244
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 8220563240647999580
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:utile"
      Float: 0.285120934
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:vtile"
      Float: 1.59300232
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
      Id: 3702365963781758101
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
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
  Id: 4042223295826066854
  Name: "Palm_Tree_kelp_01_new"
  Transform {
    Location {
      X: 5864.16
      Y: 915.477051
      Z: 14188.0078
    }
    Rotation {
      Yaw: -15.4721985
    }
    Scale {
      X: 1.10803139
      Y: 1.10803139
      Z: 1.10803139
    }
  }
  ParentId: 9047288694584916593
  ChildIds: 12536036264201827139
  ChildIds: 12223017635445154299
  ChildIds: 2809384469678605537
  ChildIds: 17214521864197586309
  ChildIds: 8489412142369187381
  ChildIds: 4006144921760195033
  ChildIds: 10548773827103852682
  ChildIds: 1256176820402954483
  ChildIds: 3774857081774557416
  ChildIds: 18123532052116482431
  ChildIds: 9075366345799838514
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
  Id: 9075366345799838514
  Name: "Horn"
  Transform {
    Location {
      X: 0.9140625
      Y: 10.3066406
      Z: 782.44043
    }
    Rotation {
      Pitch: 2.91541839
      Yaw: 0.976737261
      Roll: 17.7615318
    }
    Scale {
      X: 0.59924686
      Y: 0.594422519
      Z: 1.22857702
    }
  }
  ParentId: 4042223295826066854
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 8220563240647999580
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:utile"
      Float: 0.183762923
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:vtile"
      Float: 0.396376163
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
      Id: 114278397929005302
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
  Id: 18123532052116482431
  Name: "Fern 03"
  Transform {
    Location {
      X: -12.3242188
      Y: 77.4375
      Z: 925.193115
    }
    Rotation {
      Pitch: 23.0329876
      Yaw: -135.679138
      Roll: -42.953331
    }
    Scale {
      X: 1.79650187
      Y: 1.79650843
      Z: 3.37851739
    }
  }
  ParentId: 4042223295826066854
  UnregisteredParameters {
    Overrides {
      Name: "ma:Nature_Leaves:id"
      AssetReference {
        Id: 532304363034804995
      }
    }
    Overrides {
      Name: "ma:Nature_Leaves:color"
      Color {
        R: 0.0797902197
        G: 0.159999967
        B: 0.0191666652
        A: 1
      }
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
      Id: 1984553197323830660
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
  Id: 3774857081774557416
  Name: "Fern 03"
  Transform {
    Location {
      X: 43.6210938
      Y: 54.7363281
      Z: 1134.57324
    }
    Rotation {
      Pitch: 1.02307343
      Yaw: -45.2230606
      Roll: 31.0987129
    }
    Scale {
      X: 2.90592861
      Y: 2.90592551
      Z: 3.38072848
    }
  }
  ParentId: 4042223295826066854
  UnregisteredParameters {
    Overrides {
      Name: "ma:Nature_Leaves:id"
      AssetReference {
        Id: 2152887979477253565
      }
    }
    Overrides {
      Name: "ma:Nature_Leaves:color"
      Color {
        R: 0.0797902197
        G: 0.159999967
        B: 0.0191666652
        A: 1
      }
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
      Id: 1984553197323830660
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
  Id: 1256176820402954483
  Name: "Fern 03"
  Transform {
    Location {
      X: 38.9414062
      Y: 39.9941406
      Z: 1109.49121
    }
    Rotation {
      Pitch: -6.82326317
      Yaw: -41.5188713
      Roll: 19.885479
    }
    Scale {
      X: 2.54142141
      Y: 2.54141855
      Z: 2.39355087
    }
  }
  ParentId: 4042223295826066854
  UnregisteredParameters {
    Overrides {
      Name: "ma:Nature_Leaves:id"
      AssetReference {
        Id: 532304363034804995
      }
    }
    Overrides {
      Name: "ma:Nature_Leaves:color"
      Color {
        R: 0.0797902197
        G: 0.159999967
        B: 0.0191666652
        A: 1
      }
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
      Id: 12416815806534727809
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
  Id: 10548773827103852682
  Name: "Horn"
  Transform {
    Location {
      X: 49.1738281
      Y: 44.3476562
      Z: 1123.90576
    }
    Rotation {
      Pitch: -1.95551717
      Yaw: 157.524506
      Roll: -8.44107151
    }
    Scale {
      X: 0.223520085
      Y: 0.223528221
      Z: 0.69232589
    }
  }
  ParentId: 4042223295826066854
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 5512000712628422335
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 0.791666687
        G: 0.658084333
        B: 0.551949322
        A: 1
      }
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
      Id: 114278397929005302
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
  Id: 4006144921760195033
  Name: "Horn"
  Transform {
    Location {
      X: 35.5234375
      Y: 37.6308594
      Z: 1061.09424
    }
    Rotation {
      Pitch: -11.6220512
      Yaw: -151.020325
      Roll: 16.1558456
    }
    Scale {
      X: 0.299942225
      Y: 0.299942225
      Z: 0.511068702
    }
  }
  ParentId: 4042223295826066854
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 5512000712628422335
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 0.416666657
        G: 0.346360147
        B: 0.290499628
        A: 1
      }
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
      Id: 114278397929005302
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
  Id: 8489412142369187381
  Name: "Horn"
  Transform {
    Location {
      X: 0.9140625
      Y: -0.4296875
      Z: 709.269531
    }
    Rotation {
      Pitch: 4.75353813
      Yaw: -84.4660492
      Roll: 2.90210509
    }
    Scale {
      X: 0.784117103
      Y: 0.777814507
      Z: 2.92030454
    }
  }
  ParentId: 4042223295826066854
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 8220563240647999580
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:utile"
      Float: 0.295751333
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:vtile"
      Float: 1.18859982
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 0.416666657
        G: 0.391929686
        B: 0.303819418
        A: 1
      }
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
      Id: 114278397929005302
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
  Id: 17214521864197586309
  Name: "Bush Green 01"
  Transform {
    Location {
      X: 48.6015625
      Y: 54.6464844
      Z: 1166.27856
    }
    Rotation {
      Pitch: -6.45387268
      Yaw: 0.307067931
      Roll: -173.625885
    }
    Scale {
      X: 0.637665093
      Y: 0.637666225
      Z: 0.958822131
    }
  }
  ParentId: 4042223295826066854
  UnregisteredParameters {
    Overrides {
      Name: "ma:Nature_Leaves:color"
      Color {
        R: 0.0677083358
        G: 0.0298325904
        B: 0.0137532558
        A: 1
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 12889861000896994476
      }
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
      Id: 901541979513849367
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
  Id: 2809384469678605537
  Name: "Bush Green 01"
  Transform {
    Location {
      X: -18.0371094
      Y: 84.5117188
      Z: 915.015381
    }
    Rotation {
      Pitch: 10.2478924
      Yaw: 7.62842464
      Roll: -142.11084
    }
    Scale {
      X: 0.422923744
      Y: 0.422924638
      Z: 0.635927379
    }
  }
  ParentId: 4042223295826066854
  UnregisteredParameters {
    Overrides {
      Name: "ma:Nature_Leaves:color"
      Color {
        R: 0.0677083358
        G: 0.0298325904
        B: 0.0137532558
        A: 1
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 12889861000896994476
      }
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
      Id: 901541979513849367
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
  Id: 12223017635445154299
  Name: "Bush Green 01"
  Transform {
    Location {
      X: 0.8828125
      Y: -2.6171875
      Z: 795.653809
    }
    Rotation {
      Pitch: -0.0128202643
      Yaw: 1.02504563
      Roll: -159.300491
    }
    Scale {
      X: 0.419044316
      Y: 0.293457508
      Z: 0.526468873
    }
  }
  ParentId: 4042223295826066854
  UnregisteredParameters {
    Overrides {
      Name: "ma:Nature_Leaves:color"
      Color {
        R: 0.100000024
        G: 0.04406045
        B: 0.0203125048
        A: 1
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 12889861000896994476
      }
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
      Id: 901541979513849367
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
  Id: 12536036264201827139
  Name: "Teardrop - Truncated"
  Transform {
    Location {
    }
    Rotation {
      Pitch: -6.83018879e-06
      Yaw: 2.77476465e-06
      Roll: -1.19861797e-05
    }
    Scale {
      X: 1.39091361
      Y: 1.39091361
      Z: 5.10751343
    }
  }
  ParentId: 4042223295826066854
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 8220563240647999580
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:utile"
      Float: 0.285120934
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:vtile"
      Float: 1.59300232
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 0.416666657
        G: 0.391929686
        B: 0.303819418
        A: 1
      }
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
      Id: 3702365963781758101
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
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
  Id: 6058433382413870091
  Name: "Palm_Tree_kelp_01_new"
  Transform {
    Location {
      X: 5830.0957
      Y: 1017.74463
      Z: 14127.3936
    }
    Rotation {
      Pitch: 22.4642239
      Yaw: 93.7449493
      Roll: 7.19223309
    }
    Scale {
      X: 0.97847724
      Y: 0.97847724
      Z: 0.97847724
    }
  }
  ParentId: 9047288694584916593
  ChildIds: 6234620172391317390
  ChildIds: 12712890244457757243
  ChildIds: 17533617407714680592
  ChildIds: 12783125270224520865
  ChildIds: 8064771256736376569
  ChildIds: 2381869533656480144
  ChildIds: 13994439146806007707
  ChildIds: 9647710557895916632
  ChildIds: 13609793943427677294
  ChildIds: 5205484027150106739
  ChildIds: 17766433772029746653
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
  Id: 17766433772029746653
  Name: "Horn"
  Transform {
    Location {
      X: 0.9140625
      Y: 10.3066406
      Z: 782.44043
    }
    Rotation {
      Pitch: 2.91541839
      Yaw: 0.976737261
      Roll: 17.7615318
    }
    Scale {
      X: 0.59924686
      Y: 0.594422519
      Z: 1.22857702
    }
  }
  ParentId: 6058433382413870091
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 8220563240647999580
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:utile"
      Float: 0.183762923
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:vtile"
      Float: 0.396376163
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
      Id: 114278397929005302
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
  Id: 5205484027150106739
  Name: "Fern 03"
  Transform {
    Location {
      X: -12.3242188
      Y: 77.4375
      Z: 925.193115
    }
    Rotation {
      Pitch: 23.0329876
      Yaw: -135.679138
      Roll: -42.953331
    }
    Scale {
      X: 1.79650187
      Y: 1.79650843
      Z: 3.37851739
    }
  }
  ParentId: 6058433382413870091
  UnregisteredParameters {
    Overrides {
      Name: "ma:Nature_Leaves:id"
      AssetReference {
        Id: 532304363034804995
      }
    }
    Overrides {
      Name: "ma:Nature_Leaves:color"
      Color {
        R: 0.0797902197
        G: 0.159999967
        B: 0.0191666652
        A: 1
      }
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
      Id: 1984553197323830660
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
  Id: 13609793943427677294
  Name: "Fern 03"
  Transform {
    Location {
      X: 43.6210938
      Y: 54.7363281
      Z: 1134.57324
    }
    Rotation {
      Pitch: 1.02307343
      Yaw: -45.2230606
      Roll: 31.0987129
    }
    Scale {
      X: 2.90592861
      Y: 2.90592551
      Z: 3.38072848
    }
  }
  ParentId: 6058433382413870091
  UnregisteredParameters {
    Overrides {
      Name: "ma:Nature_Leaves:id"
      AssetReference {
        Id: 532304363034804995
      }
    }
    Overrides {
      Name: "ma:Nature_Leaves:color"
      Color {
        R: 0.0797902197
        G: 0.159999967
        B: 0.0191666652
        A: 1
      }
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
      Id: 1984553197323830660
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
  Id: 9647710557895916632
  Name: "Fern 03"
  Transform {
    Location {
      X: 38.9414062
      Y: 39.9941406
      Z: 1109.49121
    }
    Rotation {
      Pitch: -6.82326317
      Yaw: -41.5188713
      Roll: 19.885479
    }
    Scale {
      X: 2.54142141
      Y: 2.54141855
      Z: 2.39355087
    }
  }
  ParentId: 6058433382413870091
  UnregisteredParameters {
    Overrides {
      Name: "ma:Nature_Leaves:id"
      AssetReference {
        Id: 532304363034804995
      }
    }
    Overrides {
      Name: "ma:Nature_Leaves:color"
      Color {
        R: 0.0797902197
        G: 0.159999967
        B: 0.0191666652
        A: 1
      }
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
      Id: 12416815806534727809
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
  Id: 13994439146806007707
  Name: "Horn"
  Transform {
    Location {
      X: 49.1738281
      Y: 44.3476562
      Z: 1123.90576
    }
    Rotation {
      Pitch: -1.95551717
      Yaw: 157.524506
      Roll: -8.44107151
    }
    Scale {
      X: 0.223520085
      Y: 0.223528221
      Z: 0.69232589
    }
  }
  ParentId: 6058433382413870091
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 5512000712628422335
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 0.791666687
        G: 0.658084333
        B: 0.551949322
        A: 1
      }
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
      Id: 114278397929005302
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
  Id: 2381869533656480144
  Name: "Horn"
  Transform {
    Location {
      X: 35.5234375
      Y: 37.6308594
      Z: 1061.09424
    }
    Rotation {
      Pitch: -11.6220512
      Yaw: -151.020325
      Roll: 16.1558456
    }
    Scale {
      X: 0.299942225
      Y: 0.299942225
      Z: 0.511068702
    }
  }
  ParentId: 6058433382413870091
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 5512000712628422335
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 0.416666657
        G: 0.346360147
        B: 0.290499628
        A: 1
      }
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
      Id: 114278397929005302
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
  Id: 8064771256736376569
  Name: "Horn"
  Transform {
    Location {
      X: 0.9140625
      Y: -0.4296875
      Z: 709.269531
    }
    Rotation {
      Pitch: 4.75353813
      Yaw: -84.4660492
      Roll: 2.90210509
    }
    Scale {
      X: 0.784117103
      Y: 0.777814507
      Z: 2.92030454
    }
  }
  ParentId: 6058433382413870091
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 8220563240647999580
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:utile"
      Float: 0.295751333
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:vtile"
      Float: 1.18859982
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
      Id: 114278397929005302
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
  Id: 12783125270224520865
  Name: "Bush Green 01"
  Transform {
    Location {
      X: 48.6015625
      Y: 54.6464844
      Z: 1166.27856
    }
    Rotation {
      Pitch: -6.45387268
      Yaw: 0.307067931
      Roll: -173.625885
    }
    Scale {
      X: 0.637665093
      Y: 0.637666225
      Z: 0.958822131
    }
  }
  ParentId: 6058433382413870091
  UnregisteredParameters {
    Overrides {
      Name: "ma:Nature_Leaves:color"
      Color {
        R: 0.100000024
        G: 0.04406045
        B: 0.0203125048
        A: 1
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 12889861000896994476
      }
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
      Id: 901541979513849367
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
  Id: 17533617407714680592
  Name: "Bush Green 01"
  Transform {
    Location {
      X: -18.0371094
      Y: 84.5117188
      Z: 915.015381
    }
    Rotation {
      Pitch: 10.2478924
      Yaw: 7.62842464
      Roll: -142.11084
    }
    Scale {
      X: 0.422923744
      Y: 0.422924638
      Z: 0.635927379
    }
  }
  ParentId: 6058433382413870091
  UnregisteredParameters {
    Overrides {
      Name: "ma:Nature_Leaves:color"
      Color {
        R: 0.100000024
        G: 0.04406045
        B: 0.0203125048
        A: 1
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 12889861000896994476
      }
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
      Id: 901541979513849367
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
  Id: 12712890244457757243
  Name: "Bush Green 01"
  Transform {
    Location {
      X: 0.8828125
      Y: -2.6171875
      Z: 795.653809
    }
    Rotation {
      Pitch: -0.0128202643
      Yaw: 1.02504563
      Roll: -159.300491
    }
    Scale {
      X: 0.419044316
      Y: 0.293457508
      Z: 0.526468873
    }
  }
  ParentId: 6058433382413870091
  UnregisteredParameters {
    Overrides {
      Name: "ma:Nature_Leaves:color"
      Color {
        R: 0.100000024
        G: 0.04406045
        B: 0.0203125048
        A: 1
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 12889861000896994476
      }
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
      Id: 901541979513849367
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
  Id: 6234620172391317390
  Name: "Teardrop - Truncated"
  Transform {
    Location {
    }
    Rotation {
      Pitch: -6.83018879e-06
      Yaw: 2.77476465e-06
      Roll: -1.19861797e-05
    }
    Scale {
      X: 1.39091361
      Y: 1.39091361
      Z: 5.10751343
    }
  }
  ParentId: 6058433382413870091
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 8220563240647999580
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:utile"
      Float: 0.285120934
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:vtile"
      Float: 1.59300232
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
      Id: 3702365963781758101
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
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
  Id: 16950031459520665739
  Name: "Orc Class Selection"
  Transform {
    Location {
      X: -27333.2852
      Y: -12765.543
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 11740795219228208423
  ChildIds: 1035698935485997232
  ChildIds: 13684900413712216387
  ChildIds: 4167055801794542468
  ChildIds: 4534494283641744948
  ChildIds: 4390716176174881699
  UnregisteredParameters {
    Overrides {
      Name: "cs:AnimatedMesh"
      ObjectReference {
        SelfId: 17215386265013305405
      }
    }
    Overrides {
      Name: "cs:Camera"
      ObjectReference {
        SelfId: 13684900413712216387
      }
    }
  }
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
  Id: 4390716176174881699
  Name: "YellowFL_Plant_Big"
  Transform {
    Location {
      X: -54382.7891
      Y: -25386.6211
      Z: 6913.12842
    }
    Rotation {
      Yaw: 22.6101055
    }
    Scale {
      X: 1.01201439
      Y: 1.01201439
      Z: 1.01201439
    }
  }
  ParentId: 16950031459520665739
  CameraCollidable {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  TemplateInstance {
    ParameterOverrideMap {
      key: 332376740116708933
      value {
        Overrides {
          Name: "CoreProxy.CameraCollidable"
          Enum {
            Value: "mc:ecollisionsetting:forceoff"
          }
        }
        Overrides {
          Name: "Name"
          String: "Fern 01"
        }
      }
    }
    ParameterOverrideMap {
      key: 6229405622172869471
      value {
        Overrides {
          Name: "CoreProxy.CameraCollidable"
          Enum {
            Value: "mc:ecollisionsetting:forceoff"
          }
        }
        Overrides {
          Name: "Name"
          String: "Fern 01"
        }
      }
    }
    ParameterOverrideMap {
      key: 7359047989305185374
      value {
        Overrides {
          Name: "CoreProxy.CameraCollidable"
          Enum {
            Value: "mc:ecollisionsetting:forceoff"
          }
        }
        Overrides {
          Name: "Name"
          String: "Fern 01"
        }
      }
    }
    ParameterOverrideMap {
      key: 8006897166724501526
      value {
        Overrides {
          Name: "Name"
          String: "YellowFL_Plant_Big"
        }
        Overrides {
          Name: "Position"
          Vector {
            X: 1300.53125
            Y: 24194.373
            Z: 6176.9
          }
        }
        Overrides {
          Name: "Rotation"
          Rotator {
            Yaw: 22.6100674
          }
        }
        Overrides {
          Name: "Scale"
          Vector {
            X: 1.01201439
            Y: 1.01201439
            Z: 1.01201439
          }
        }
      }
    }
    TemplateAsset {
      Id: 5154525849982912730
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 4534494283641744948
  Name: "Rock_02"
  Transform {
    Location {
      X: 2838.65039
      Y: 23823.2305
      Z: 6189.07031
    }
    Rotation {
      Pitch: 3.3774941
      Yaw: -35.7161255
      Roll: -5.51776123
    }
    Scale {
      X: 0.521720827
      Y: 0.521720827
      Z: 0.521720827
    }
  }
  ParentId: 16950031459520665739
  ChildIds: 8625114932108318481
  ChildIds: 17919129053133809671
  ChildIds: 16967779512361588207
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
  InstanceHistory {
    SelfId: 4534494283641744948
    SubobjectId: 7974900407688567360
    InstanceId: 5468623890446109484
    TemplateId: 11106787426060956844
    WasRoot: true
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 16967779512361588207
  Name: "Rock Flat 01"
  Transform {
    Location {
      X: -207.992188
      Y: 51.9589844
      Z: -296.678711
    }
    Rotation {
      Yaw: 40.0706558
    }
    Scale {
      X: 1.60089803
      Y: 2.76108027
      Z: 1.38382185
    }
  }
  ParentId: 4534494283641744948
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 8619008964759729738
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:utile"
      Float: 0.731081128
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:vtile"
      Float: 0.315476328
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
      Id: 4842806961858489681
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
  InstanceHistory {
    SelfId: 16967779512361588207
    SubobjectId: 13490781987154354587
    InstanceId: 5468623890446109484
    TemplateId: 11106787426060956844
  }
  Relevance {
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 17919129053133809671
  Name: "Rock Flat 01"
  Transform {
    Location {
      X: -212.007812
      Y: -130.025391
      Z: -97.9414062
    }
    Rotation {
      Yaw: 40.7653465
    }
    Scale {
      X: 1.66001689
      Y: 2.53018165
      Z: 3.10168195
    }
  }
  ParentId: 4534494283641744948
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 8619008964759729738
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: true
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:utile"
      Float: 0.373081625
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:vtile"
      Float: 0.630788624
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 0.838541687
        G: 0.838541687
        B: 0.838541687
        A: 1
      }
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
      Id: 4842806961858489681
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
  InstanceHistory {
    SelfId: 17919129053133809671
    SubobjectId: 12172319136831528051
    InstanceId: 5468623890446109484
    TemplateId: 11106787426060956844
  }
  Relevance {
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 8625114932108318481
  Name: "Rock Flat 01"
  Transform {
    Location {
      X: 61.9662437
      Y: 29.6900558
      Z: 96.277832
    }
    Rotation {
      Yaw: -137.57811
    }
    Scale {
      X: 1.59871423
      Y: 2.76106572
      Z: 2.0389123
    }
  }
  ParentId: 4534494283641744948
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:utile"
      Float: 3.33973026
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:vtile"
      Float: 2.06394839
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 0.592013657
        G: 0.346124053
        B: 0.155198142
        A: 1
      }
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
      Id: 4842806961858489681
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
  InstanceHistory {
    SelfId: 8625114932108318481
    SubobjectId: 2878885901451109221
    InstanceId: 5468623890446109484
    TemplateId: 11106787426060956844
  }
  Relevance {
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 4167055801794542468
  Name: "Group"
  Transform {
    Location {
      X: 2846.16016
      Y: 23791.4082
      Z: 6431.71533
    }
    Rotation {
      Yaw: 21.941061
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 16950031459520665739
  ChildIds: 13599246443379113324
  ChildIds: 12134065613612743746
  ChildIds: 254714560733895109
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
  Id: 254714560733895109
  Name: "Spotlight"
  Transform {
    Location {
      X: 134.808594
      Y: -165.573975
    }
    Rotation {
      Yaw: 120.388283
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 4167055801794542468
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
    Intensity: 3
    Color {
      R: 0.941721916
      G: 0.8
      B: 1
      A: 1
    }
    CastShadows: true
    VolumetricIntensity: 5
    TeamSettings {
    }
    Light {
      Temperature: 6500
      LocalLight {
        AttenuationRadius: 478.801636
        SpotLight {
          SourceRadius: 20
          SoftSourceRadius: 20
          FallOffExponent: 8
          UseFallOffExponent: true
          InnerConeAngle: 30
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
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 12134065613612743746
  Name: "Spotlight"
  Transform {
    Location {
      X: 285.765625
      Y: 111.668457
    }
    Rotation {
      Yaw: -153.44722
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 4167055801794542468
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
    Intensity: 6
    Color {
      R: 1
      G: 0.911721826
      B: 0.69
      A: 1
    }
    CastShadows: true
    VolumetricIntensity: 5
    TeamSettings {
    }
    Light {
      Temperature: 6500
      LocalLight {
        AttenuationRadius: 478.801636
        SpotLight {
          SourceRadius: 20
          SoftSourceRadius: 20
          FallOffExponent: 8
          UseFallOffExponent: true
          InnerConeAngle: 30
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
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 13599246443379113324
  Name: "Spotlight"
  Transform {
    Location {
      X: -420.580078
      Y: 53.9053955
      Z: 109.655273
    }
    Rotation {
      Yaw: 20.3667946
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 4167055801794542468
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
    Intensity: 10
    Color {
      R: 0.77
      G: 0.89033103
      B: 1
      A: 1
    }
    CastShadows: true
    VolumetricIntensity: 5
    TeamSettings {
    }
    Light {
      Temperature: 6500
      LocalLight {
        AttenuationRadius: 996.858521
        SpotLight {
          SourceRadius: 20
          SoftSourceRadius: 20
          FallOffExponent: 8
          UseFallOffExponent: true
          InnerConeAngle: 30
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
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 13684900413712216387
  Name: "Camera"
  Transform {
    Location {
      X: 3149.00195
      Y: 23596.0898
      Z: 6436.72607
    }
    Rotation {
      Pitch: -4.60501099
      Yaw: 142.752609
      Roll: 1.07067322e-07
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 16950031459520665739
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
    MinDistance: 300
    MaxDistance: 600
    PositionOffset {
    }
    RotationOffset {
      Pitch: -4.60501099
      Yaw: 142.752609
      Roll: 1.07067322e-07
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
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 1035698935485997232
  Name: "Orc_Merchant_01"
  Transform {
    Location {
      X: 2915.82617
      Y: 23809.6836
      Z: 6280
    }
    Rotation {
      Yaw: -60.7937
    }
    Scale {
      X: 0.999999881
      Y: 0.999999881
      Z: 0.999999881
    }
  }
  ParentId: 16950031459520665739
  ChildIds: 9791333806625692652
  ChildIds: 17215386265013305405
  ChildIds: 14378816857251198460
  UnregisteredParameters {
    Overrides {
      Name: "cs:AttackRange"
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
  Folder {
    IsGroup: true
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 14378816857251198460
  Name: "Point Light"
  Transform {
    Location {
      X: -1.92745459
      Y: 2.75631952
      Z: 267.381836
    }
    Rotation {
      Pitch: 2.04905664e-05
      Yaw: -153.628052
      Roll: 9.51463335e-06
    }
    Scale {
      X: 0.80365628
      Y: 0.80365628
      Z: 0.80365628
    }
  }
  ParentId: 1035698935485997232
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
    Intensity: 6
    Color {
      R: 1
      G: 0.832935929
      B: 0.413333297
      A: 1
    }
    VolumetricIntensity: 21.4032211
    TeamSettings {
    }
    Light {
      Temperature: 6500
      LocalLight {
        AttenuationRadius: 250
        PointLight {
          SourceRadius: 20
          SoftSourceRadius: 20
          SourceLength: 234.734772
          FallOffExponent: 8
          UseFallOffExponent: true
        }
      }
      MaxDrawDistance: 5000
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
  Id: 17215386265013305405
  Name: "Fantasy Human Guy"
  Transform {
    Location {
      X: 0.0923983306
      Y: 0.095192343
      Z: 105.555733
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 1035698935485997232
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 0.341963321
        G: 0.859375
        B: 0.0203302037
        A: 1
      }
    }
    Overrides {
      Name: "ma:Shared_Detail3:color"
      Color {
        R: 0.98333323
        G: 0.885651231
        A: 1
      }
    }
    Overrides {
      Name: "ma:Shared_Detail2:color"
      Color {
        R: 0.0954856873
        G: 0.07656385
        B: 0.0416092537
        A: 1
      }
    }
    Overrides {
      Name: "ma:Shared_Detail1:color"
      Color {
        R: 0.498263687
        G: 0.119838938
        A: 1
      }
    }
    Overrides {
      Name: "ma:Shared_Detail1:id"
      AssetReference {
        Id: 11535961666482776542
      }
    }
    Overrides {
      Name: "ma:Shared_Detail1:vtile"
      Float: 0.683553934
    }
    Overrides {
      Name: "ma:Shared_Detail1:utile"
      Float: 0.916286588
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
      Id: 13812233672819790707
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    AnimatedMesh {
      AnimationStance: "2hand_rifle_aim_shoulder"
      AnimationStancePlaybackRate: 1
      AnimationStanceShouldLoop: true
      AnimationPlaybackRateMultiplier: 1
      PlayOnStartAnimation {
        PlaybackRate: 1
        ShouldLoop: true
      }
      SkinnedMeshes {
      }
      SkinnedMeshes {
      }
      SkinnedMeshes {
      }
      SkinnedMeshes {
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
  Id: 9791333806625692652
  Name: "attach_costume_script"
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
  ParentId: 1035698935485997232
  ChildIds: 18282324942988174790
  UnregisteredParameters {
    Overrides {
      Name: "cs:FantasyHumanGuy"
      ObjectReference {
        SelfId: 17215386265013305405
      }
    }
  }
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Script {
    ScriptAsset {
      Id: 16934296303714198679
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 18282324942988174790
  Name: "head"
  Transform {
    Location {
      X: -3.74597168
      Y: 0.188476562
      Z: 190.712616
    }
    Rotation {
      Pitch: -9.93499756
      Yaw: 0.000120403849
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 9791333806625692652
  ChildIds: 7833372133761063789
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
  Id: 7833372133761063789
  Name: "Orc_head"
  Transform {
    Location {
      X: 9.41420364
      Y: 0.786358774
      Z: -3.56285524
    }
    Rotation {
      Pitch: 9.93498802
      Yaw: -0.000122070312
      Roll: -3.05175781e-05
    }
    Scale {
      X: 0.838198483
      Y: 0.838198483
      Z: 0.838198483
    }
  }
  ParentId: 18282324942988174790
  ChildIds: 18297542590993216807
  ChildIds: 3753197028435857479
  ChildIds: 8483322584597537294
  ChildIds: 11589106988074374123
  ChildIds: 9023368930833111066
  ChildIds: 10415743635941984116
  ChildIds: 18160045035847744604
  ChildIds: 9266036821369122663
  ChildIds: 12250424074565721329
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
  Id: 12250424074565721329
  Name: "head_Capsule"
  Transform {
    Location {
      X: 2.03466797
      Y: -4.2734375
      Z: 4.42382812
    }
    Rotation {
      Pitch: 16.8496037
      Yaw: 138.075775
      Roll: 155.664566
    }
    Scale {
      X: 0.0889127329
      Y: 0.041033
      Z: -0.0378621779
    }
  }
  ParentId: 7833372133761063789
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 10556886957675734021
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:utile"
      Float: 15.3961496
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:vtile"
      Float: 12.1718826
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 0.86284703
        G: 0.86284703
        B: 0.86284703
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
      Id: 7436120957885304537
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
  Id: 9266036821369122663
  Name: "head_Capsule"
  Transform {
    Location {
      X: 2.03955078
      Y: 2.02734375
      Z: 4.21386719
    }
    Rotation {
      Pitch: 21.5659523
      Yaw: -144.91626
      Roll: -159.31636
    }
    Scale {
      X: 0.0862858817
      Y: 0.0388207696
      Z: -0.0416591242
    }
  }
  ParentId: 7833372133761063789
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 10556886957675734021
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:utile"
      Float: 15.3961496
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:vtile"
      Float: 12.1718826
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 0.86284703
        G: 0.86284703
        B: 0.86284703
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
      Id: 7436120957885304537
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
  Id: 18160045035847744604
  Name: "head_Capsule"
  Transform {
    Location {
      X: 1.69921172
      Y: -2.82197642
      Z: 5.68145943
    }
    Rotation {
      Pitch: -2.51116943
      Yaw: -112.988541
      Roll: -156.224716
    }
    Scale {
      X: 0.078148067
      Y: 0.0672382414
      Z: 0.0260702297
    }
  }
  ParentId: 7833372133761063789
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 13698917788564053945
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:utile"
      Float: 15.3961496
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:vtile"
      Float: 12.1718826
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
      Id: 12324597429549854992
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
  Id: 10415743635941984116
  Name: "head_Capsule"
  Transform {
    Location {
      X: 1.85760629
      Y: 0.360867709
      Z: 5.79321384
    }
    Rotation {
      Pitch: 1.54309678
      Yaw: -74.7865601
      Roll: -155.652069
    }
    Scale {
      X: 0.0757109597
      Y: 0.0672576949
      Z: 0.0276172645
    }
  }
  ParentId: 7833372133761063789
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 13698917788564053945
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:utile"
      Float: 15.3961496
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:vtile"
      Float: 12.1718826
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
      Id: 12324597429549854992
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
  Id: 9023368930833111066
  Name: "ear"
  Transform {
    Location {
      X: -6.61665344
      Y: -9.02172852
      Z: 7.44949341
    }
    Rotation {
      Yaw: 178.35701
    }
    Scale {
      X: -1
      Y: 1
      Z: 1
    }
  }
  ParentId: 7833372133761063789
  ChildIds: 3829095001158872487
  ChildIds: 13272334182707989026
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
  Id: 13272334182707989026
  Name: "head_Capsule"
  Transform {
    Location {
      X: 0.426908284
      Y: 1.48044384
    }
    Rotation {
      Pitch: 55.9753036
      Yaw: -62.9982719
      Roll: 11.2920961
    }
    Scale {
      X: 0.137546122
      Y: 0.0524525829
      Z: 0.149
    }
  }
  ParentId: 9023368930833111066
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 13698917788564053945
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:utile"
      Float: 15.3961496
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:vtile"
      Float: 12.1718826
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 0.137152359
        G: 0.110431574
        B: 0.0226347111
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
      Id: 5949268049384519735
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
  Id: 3829095001158872487
  Name: "head_Capsule"
  Transform {
    Location {
      X: -0.426890075
      Y: -1.48044384
      Z: 2.62660265
    }
    Rotation {
      Pitch: 6.91968489
      Yaw: -161.973862
      Roll: -55.8463821
    }
    Scale {
      X: 0.00659075193
      Y: 0.076556325
      Z: 0.145
    }
  }
  ParentId: 9023368930833111066
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 13698917788564053945
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:utile"
      Float: 15.3961496
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:vtile"
      Float: 12.1718826
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 0.078125
        G: 0.0604971498
        B: 0.00257705804
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
      Id: 17205556389324759255
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
  Id: 11589106988074374123
  Name: "ear"
  Transform {
    Location {
      X: -6.61663246
      Y: 7.37840796
      Z: 7.43986559
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 7833372133761063789
  ChildIds: 7544030383989393590
  ChildIds: 7362107272683139213
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
  Id: 7362107272683139213
  Name: "head_Capsule"
  Transform {
    Location {
      X: 0.426556855
      Y: 1.47985184
      Z: -1.66362639e-07
    }
    Rotation {
      Pitch: 55.9753036
      Yaw: -62.9982605
      Roll: 11.2920961
    }
    Scale {
      X: 0.137541205
      Y: 0.0524167605
      Z: 0.145320982
    }
  }
  ParentId: 11589106988074374123
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 13698917788564053945
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:utile"
      Float: 15.3961496
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:vtile"
      Float: 12.1718826
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
      Id: 5949268049384519735
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
  Id: 7544030383989393590
  Name: "head_Capsule"
  Transform {
    Location {
      X: -0.426557243
      Y: -1.47985137
      Z: 2.62648964
    }
    Rotation {
      Pitch: 6.91968489
      Yaw: -161.973862
      Roll: -55.8463745
    }
    Scale {
      X: 0.00656847935
      Y: 0.0765633583
      Z: 0.149041653
    }
  }
  ParentId: 11589106988074374123
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 13698917788564053945
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:utile"
      Float: 15.3961496
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:vtile"
      Float: 12.1718826
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 0.078125
        G: 0.0604971498
        B: 0.00257705804
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
      Id: 17205556389324759255
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
  Id: 8483322584597537294
  Name: "head_Capsule"
  Transform {
    Location {
      X: -9.3553009
      Y: 10.2220602
      Z: 8.96836853
    }
    Rotation {
      Pitch: -76.5438919
      Yaw: 39.0055656
      Roll: -94.6054535
    }
    Scale {
      X: 0.0512368977
      Y: 0.0512368977
      Z: 0.0512368977
    }
  }
  ParentId: 7833372133761063789
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 11337413471323694429
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:utile"
      Float: 15.3961496
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:vtile"
      Float: 12.1718826
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
  Id: 3753197028435857479
  Name: "head_Capsule"
  Transform {
    Location {
      X: -0.661706924
      Y: -1.03050721
    }
    Rotation {
      Pitch: -0.00039615095
      Yaw: -89.9993591
      Roll: 25.1016502
    }
    Scale {
      X: 0.090098761
      Y: 0.0863327
      Z: 0.0563116744
    }
  }
  ParentId: 7833372133761063789
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 13698917788564053945
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
      Id: 7363477334452929865
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
  Id: 18297542590993216807
  Name: "Decal Military Symbols 01"
  Transform {
    Location {
      X: 3.44870758
      Y: -1.07390618
      Z: 16.108429
    }
    Rotation {
      Pitch: -0.937163353
      Yaw: -87.0101
      Roll: 70.2134628
    }
    Scale {
      X: 0.0296296012
      Y: 0.0238095801
      Z: 0.0270903967
    }
  }
  ParentId: 7833372133761063789
  UnregisteredParameters {
    Overrides {
      Name: "bp:color"
      Color {
        R: 0.186666608
        G: 0.0123620285
        A: 1
      }
    }
    Overrides {
      Name: "bp:Shape Index"
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
      Id: 6010285296167592853
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
  Id: 8915448524562499576
  Name: "Prism - 8-Sided"
  Transform {
    Location {
      X: 31055.5469
      Y: 2067.60352
      Z: 14261.5781
    }
    Rotation {
      Yaw: -145.357025
    }
    Scale {
      X: 18.0755596
      Y: 18.0755596
      Z: 0.54022342
    }
  }
  ParentId: 3281734247870618909
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 18198612390204212876
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
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
    Value: "mc:ecollisionsetting:forceoff"
  }
  CoreMesh {
    MeshAsset {
      Id: 10777523509111713302
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
