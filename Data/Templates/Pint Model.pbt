Assets {
  Id: 8737138581913145554
  Name: "Pint Model"
  PlatformAssetType: 5
  TemplateAsset {
    ObjectBlock {
      RootId: 12369869910924860159
      Objects {
        Id: 12369869910924860159
        Name: "Pint Model"
        Transform {
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 4781671109827199097
        ChildIds: 1487570737216519764
        ChildIds: 9107822958225922944
        ChildIds: 11630760869202108803
        ChildIds: 5262209956242088156
        ChildIds: 11847125045896616317
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
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
        Id: 1487570737216519764
        Name: "ZeroUsesHideObjects"
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
        ParentId: 12369869910924860159
        UnregisteredParameters {
          Overrides {
            Name: "cs:FoamBody"
            ObjectReference {
              SubObjectId: 5262209956242088156
            }
          }
          Overrides {
            Name: "cs:FoamTop"
            ObjectReference {
              SubObjectId: 11847125045896616317
            }
          }
          Overrides {
            Name: "cs:Delay"
            Float: 0.4
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
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
            Id: 8356067853218292389
          }
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 9107822958225922944
        Name: "RotateMegaphoneProjectile"
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
        ParentId: 12369869910924860159
        UnregisteredParameters {
          Overrides {
            Name: "cs:BounceSound"
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
            Id: 7214134381644032122
          }
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 11630760869202108803
        Name: "MergedModel"
        Transform {
          Location {
            X: 15.3554077
            Y: -6.44788361
            Z: -11.3184814
          }
          Rotation {
            Pitch: 0.974019051
            Yaw: 169.172989
            Roll: 0.983714819
          }
          Scale {
            X: 0.920133412
            Y: 0.920143723
            Z: 0.920133412
          }
        }
        ParentId: 12369869910924860159
        ChildIds: 6243437075446214120
        ChildIds: 810885940083052662
        ChildIds: 4085210414503150489
        ChildIds: 2606353230260463384
        ChildIds: 6576570088462911634
        ChildIds: 6269847543345506904
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
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
        Id: 6243437075446214120
        Name: "Body"
        Transform {
          Location {
            X: -1.92159021
            Y: 0.422955424
            Z: 0.193900585
          }
          Rotation {
            Pitch: -5.58518887
            Yaw: -14.2767735
            Roll: 1.41869462
          }
          Scale {
            X: 0.233554423
            Y: 0.233554408
            Z: 0.649205625
          }
        }
        ParentId: 11630760869202108803
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 10378479423839914021
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.603614628
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
            Id: 3675331815437637144
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          InteractWithTriggers: true
          StaticMesh {
            Physics {
            }
            BoundsScale: 1
          }
        }
        Relevance {
          Value: "mc:eproxyrelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 810885940083052662
        Name: "Cylinder"
        Transform {
          Location {
            X: 0.274773836
            Y: 0.42298761
            Z: 21.9601784
          }
          Rotation {
            Pitch: -5.58518887
            Yaw: -14.2767735
            Roll: 1.41869462
          }
          Scale {
            X: 0.0507661067
            Y: 0.0507661
            Z: 0.109665439
          }
        }
        ParentId: 11630760869202108803
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 10378479423839914021
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.420000017
              G: 0.420000017
              B: 0.420000017
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
            Id: 12531876463208577149
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          InteractWithTriggers: true
          StaticMesh {
            Physics {
            }
            BoundsScale: 1
          }
        }
        Relevance {
          Value: "mc:eproxyrelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 4085210414503150489
        Name: "Cylinder"
        Transform {
          Location {
            X: -1.84089136
            Y: 0.42298761
            Z: 0.993549764
          }
          Rotation {
            Pitch: -5.58518887
            Yaw: -14.2767735
            Roll: 1.41869462
          }
          Scale {
            X: 0.225401685
            Y: 0.225401655
            Z: 0.0080563575
          }
        }
        ParentId: 11630760869202108803
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14709805438888632003
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.189180851
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.282247305
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
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          InteractWithTriggers: true
          StaticMesh {
            Physics {
            }
            BoundsScale: 1
          }
        }
        Relevance {
          Value: "mc:eproxyrelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 2606353230260463384
        Name: "Cylinder"
        Transform {
          Location {
            X: -1.5281328
            Y: 0.42298758
            Z: 4.09304619
          }
          Rotation {
            Pitch: -5.58518887
            Yaw: -14.2767735
            Roll: 1.41869462
          }
          Scale {
            X: 0.0583131388
            Y: 0.0583131276
            Z: 0.12596862
          }
        }
        ParentId: 11630760869202108803
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 10378479423839914021
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.420000017
              G: 0.420000017
              B: 0.420000017
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
            Id: 12531876463208577149
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          InteractWithTriggers: true
          StaticMesh {
            Physics {
            }
            BoundsScale: 1
          }
        }
        Relevance {
          Value: "mc:eproxyrelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 6576570088462911634
        Name: "Cylinder"
        Transform {
          Location {
            X: 1.16866887
            Y: 0.422987938
            Z: 30.8188419
          }
          Rotation {
            Pitch: -5.58518887
            Yaw: -14.2767735
            Roll: 1.41869462
          }
          Scale {
            X: 0.0478583835
            Y: 0.0478583835
            Z: 0.179482251
          }
        }
        ParentId: 11630760869202108803
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 10378479423839914021
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.420000017
              G: 0.420000017
              B: 0.420000017
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
            Id: 12531876463208577149
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          InteractWithTriggers: true
          StaticMesh {
            Physics {
            }
            BoundsScale: 1
          }
        }
        Relevance {
          Value: "mc:eproxyrelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 6269847543345506904
        Name: "Cylinder"
        Transform {
          Location {
            X: 8.22031116
            Y: -1.69383764
            Z: 4.49134779
          }
          Rotation {
            Yaw: -1.70754738e-05
            Roll: 2.13443423e-06
          }
          Scale {
            X: 0.116501704
            Y: 0.157457978
            Z: 0.157457903
          }
        }
        ParentId: 11630760869202108803
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14709805438888632003
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.603614628
          }
          Overrides {
            Name: "ma:Font.Faces:id"
            AssetReference {
              Id: 10378479423839914021
            }
          }
          Overrides {
            Name: "ma:Font.Sides:id"
            AssetReference {
              Id: 10378479423839914021
            }
          }
          Overrides {
            Name: "ma:Font.Bevel:id"
            AssetReference {
              Id: 10378479423839914021
            }
          }
          Overrides {
            Name: "ma:Font.Bevel:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Font.Faces:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Font.Sides:smart"
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
            Id: 410364522451838382
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          InteractWithTriggers: true
          StaticMesh {
            Physics {
            }
            BoundsScale: 1
          }
        }
        Relevance {
          Value: "mc:eproxyrelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 5262209956242088156
        Name: "Foam Body"
        Transform {
          Location {
            X: 14.2889404
            Y: -7.20076275
            Z: 20.7722778
          }
          Rotation {
            Pitch: -2.64016175
            Yaw: 123.370872
            Roll: -175.885345
          }
          Scale {
            X: 0.15283151
            Y: 0.152831286
            Z: 0.562703133
          }
        }
        ParentId: 12369869910924860159
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_Detail2:id"
            AssetReference {
              Id: 7476377563651236792
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 16004462784330140
            }
          }
          Overrides {
            Name: "ma:Shared_Detail1:id"
            AssetReference {
              Id: 12889861000896994476
            }
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
          Value: "mc:ecollisionsetting:forceon"
        }
        CoreMesh {
          MeshAsset {
            Id: 6530006698448607407
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          DisableDistanceFieldLighting: true
          DisableCastShadows: true
          StaticMesh {
            Physics {
              Mass: 100
              LinearDamping: 0.01
            }
            BoundsScale: 1
          }
        }
        Relevance {
          Value: "mc:eproxyrelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 11847125045896616317
        Name: "Foam Top"
        Transform {
          Location {
            X: 14.9058838
            Y: -7.19730854
            Z: 16.7724609
          }
          Rotation {
            Pitch: 3.48537707
            Yaw: 121.687927
            Roll: 3.6422
          }
          Scale {
            X: 0.211409882
            Y: 0.216347784
            Z: 0.273568213
          }
        }
        ParentId: 12369869910924860159
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 10774243534213072101
            }
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        EditorIndicatorVisibility {
          Value: "mc:eindicatorvisibility:visiblewhenselected"
        }
        CoreMesh {
          MeshAsset {
            Id: 3803511065999934027
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          StaticMesh {
            Physics {
              Mass: 100
              LinearDamping: 0.01
            }
            BoundsScale: 1
          }
        }
        Relevance {
          Value: "mc:eproxyrelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
    }
    Assets {
      Id: 3675331815437637144
      Name: "Cone - Truncated Hollow Wide Thin"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_cone_truncated_hollow_006"
      }
    }
    Assets {
      Id: 10378479423839914021
      Name: "Metal Iron 01"
      PlatformAssetType: 2
      PrimaryAsset {
        AssetType: "MaterialAssetRef"
        AssetId: "mi_metal_iron_001"
      }
    }
    Assets {
      Id: 12531876463208577149
      Name: "Ring 01"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_torus_002"
      }
    }
    Assets {
      Id: 13950225922132296555
      Name: "Cylinder"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_cylinder_002"
      }
    }
    Assets {
      Id: 410364522451838382
      Name: "Text 03: D"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "F5_Text_003"
      }
    }
    Assets {
      Id: 6530006698448607407
      Name: "Cone - Truncated Wide"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_cone_truncated_003"
      }
    }
    Assets {
      Id: 7476377563651236792
      Name: "Basic Cloud"
      PlatformAssetType: 2
      PrimaryAsset {
        AssetType: "MaterialAssetRef"
        AssetId: "fxma_generic_cloud_nonadaptive"
      }
    }
    Assets {
      Id: 12889861000896994476
      Name: "Invisible"
      PlatformAssetType: 2
      PrimaryAsset {
        AssetType: "MaterialAssetRef"
        AssetId: "mi_invisible_001"
      }
    }
    Assets {
      Id: 3803511065999934027
      Name: "Clay Form 20"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_prim_org_clayform_020_ref"
      }
    }
    PrimaryAssetId {
      AssetType: "None"
      AssetId: "None"
    }
  }
  SerializationVersion: 118
  VirtualFolderPath: "Social Elements"
}
