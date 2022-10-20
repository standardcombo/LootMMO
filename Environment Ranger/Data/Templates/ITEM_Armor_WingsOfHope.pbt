Assets {
  Id: 12285606462837178360
  Name: "ITEM_Armor_WingsOfHope"
  PlatformAssetType: 5
  TemplateAsset {
    ObjectBlock {
      RootId: 17990200767814133049
      Objects {
        Id: 17990200767814133049
        Name: "ITEM_Armor_WingsOfHope"
        Transform {
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 4781671109827199097
        ChildIds: 305208422474037523
        UnregisteredParameters {
          Overrides {
            Name: "cs:Icon"
            AssetReference {
              Id: 290331051898579263
            }
          }
          Overrides {
            Name: "cs:SOCKET_upper_spine"
            ObjectReference {
              SubObjectId: 305208422474037523
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
        Folder {
          IsGroup: true
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 305208422474037523
        Name: "Wings"
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
        ParentId: 17990200767814133049
        ChildIds: 14039582513438168686
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
        Id: 14039582513438168686
        Name: "Wing Base"
        Transform {
          Location {
            X: -15.5498047
            Z: 12.7736816
          }
          Rotation {
            Yaw: -90
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 305208422474037523
        ChildIds: 10203857881934804376
        ChildIds: 17335897134527859868
        ChildIds: 602602218472838358
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
        Id: 10203857881934804376
        Name: "Blue Butterfly"
        Transform {
          Location {
          }
          Rotation {
            Pitch: -7.03485537
            Yaw: 90
          }
          Scale {
            X: 0.315259874
            Y: 0.315259874
            Z: 0.315259874
          }
        }
        ParentId: 14039582513438168686
        ChildIds: 8787708131630442069
        ChildIds: 15647096563199351254
        UnregisteredParameters {
          Overrides {
            Name: "cs:DebugAnimTest"
            Bool: true
          }
          Overrides {
            Name: "cs:StartCurled"
            Bool: false
          }
          Overrides {
            Name: "cs:RandomStart"
            Bool: true
          }
          Overrides {
            Name: "cs:DelayedStart"
            Float: 0
          }
          Overrides {
            Name: "cs:FlapSpeed"
            Float: 1
          }
          Overrides {
            Name: "cs:CurlEventName"
            String: "Butterfly_Curl"
          }
          Overrides {
            Name: "cs:UncurlEventName"
            String: "Butterfly_Uncurl"
          }
          Overrides {
            Name: "cs:ResetBinding"
            String: "ability_extra_29"
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:forceoff"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:forceon"
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
        Id: 8787708131630442069
        Name: "Wing R"
        Transform {
          Location {
          }
          Rotation {
            Pitch: -0.886077881
            Yaw: 28.9806404
            Roll: 3.42779374
          }
          Scale {
            X: 0.999999583
            Y: 0.999999583
            Z: 0.999999583
          }
        }
        ParentId: 10203857881934804376
        ChildIds: 9453431083474078168
        ChildIds: 17219487424644704178
        ChildIds: 17250510785691196415
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
        Id: 9453431083474078168
        Name: "Upper Wing"
        Transform {
          Location {
            X: -0.0772721916
            Y: 194.668915
            Z: 47.8639832
          }
          Rotation {
            Pitch: 6.83018879e-06
            Yaw: -179.999954
            Roll: -0.000213623047
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 8787708131630442069
        ChildIds: 8247545903600508225
        ChildIds: 7752578133719680469
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
        Id: 8247545903600508225
        Name: "Black Wing"
        Transform {
          Location {
            X: -4.14177608
            Y: 19.0710945
            Z: -41.6745605
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 9453431083474078168
        ChildIds: 710773744672622763
        ChildIds: 2137897477589237397
        ChildIds: 15372746724040290240
        ChildIds: 5433719191169162707
        ChildIds: 11720269607333763911
        ChildIds: 4702340298115403870
        ChildIds: 13724805579694253662
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
        Id: 710773744672622763
        Name: "Hill 05"
        Transform {
          Location {
            X: 0.0789295807
            Y: 21.451931
            Z: 28.4191608
          }
          Rotation {
            Pitch: 9.73480129
            Yaw: -90.1161346
            Roll: 89.8272858
          }
          Scale {
            X: 0.473114043
            Y: 0.266105682
            Z: 0.00100000016
          }
        }
        ParentId: 8247545903600508225
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 10120512676309829011
            }
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
            Id: 11198688474246660903
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
        Id: 2137897477589237397
        Name: "Hill 05"
        Transform {
          Location {
            X: 0.080078125
            Y: -74.7524414
            Z: 80.9437256
          }
          Rotation {
            Pitch: -49.9557915
            Yaw: 89.9997711
            Roll: 89.9997711
          }
          Scale {
            X: 0.181516051
            Y: -0.129646719
            Z: 0.00101896678
          }
        }
        ParentId: 8247545903600508225
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 10120512676309829011
            }
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
            Id: 11198688474246660903
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
        Id: 15372746724040290240
        Name: "Hill 05"
        Transform {
          Location {
            X: 0.080078125
            Y: -53.5029297
            Z: 35.3664551
          }
          Rotation {
            Pitch: -4.95096493
            Yaw: -90.0001526
            Roll: -90.0001678
          }
          Scale {
            X: 0.181516051
            Y: -0.129646719
            Z: 0.00101896678
          }
        }
        ParentId: 8247545903600508225
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 10120512676309829011
            }
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
            Id: 11198688474246660903
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
        Id: 5433719191169162707
        Name: "Hill 05"
        Transform {
          Location {
            X: -0.236816406
            Y: 106.802734
            Z: 6.10351562e-05
          }
          Rotation {
            Pitch: 27.3747063
            Yaw: -90.0001297
            Roll: -90.0001144
          }
          Scale {
            X: 0.181516051
            Y: -0.129646719
            Z: 0.00101896678
          }
        }
        ParentId: 8247545903600508225
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 10120512676309829011
            }
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
            Id: 11198688474246660903
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
        Id: 11720269607333763911
        Name: "Front Black"
        Transform {
          Location {
            X: 9.2706728
            Y: -43.0112343
            Z: 39.9554977
          }
          Rotation {
            Pitch: -79.9249039
            Yaw: 89.9996109
            Roll: 89.9996643
          }
          Scale {
            X: 1.01908278
            Y: 1.01908278
            Z: 1.01908278
          }
        }
        ParentId: 8247545903600508225
        ChildIds: 97616180437903897
        ChildIds: 15803188145471470329
        ChildIds: 3302372166657798212
        ChildIds: 11444812722516984929
        ChildIds: 752375558103993118
        ChildIds: 8599012159329496577
        ChildIds: 8840771949900362851
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
        Id: 97616180437903897
        Name: "Horn"
        Transform {
          Location {
            X: -15.9780979
            Y: 44.4686966
            Z: 0.861580491
          }
          Rotation {
            Pitch: -88.5566406
            Yaw: -83.0004272
            Roll: -2.87960815
          }
          Scale {
            X: 0.00209002104
            Y: 0.149105906
            Z: 0.765559554
          }
        }
        ParentId: 11720269607333763911
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 10120512676309829011
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
          Value: "mc:ecollisionsetting:forceoff"
        }
        CoreMesh {
          MeshAsset {
            Id: 10227161647766562745
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
        Id: 15803188145471470329
        Name: "Horn"
        Transform {
          Location {
            X: 22.7857952
            Y: 42.6382904
            Z: 4.77409554
          }
          Rotation {
            Pitch: -89.1404114
            Yaw: -68.402832
            Roll: -17.6251221
          }
          Scale {
            X: 0.00247279019
            Y: 0.176410437
            Z: 1.05071115
          }
        }
        ParentId: 11720269607333763911
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 10120512676309829011
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
          Value: "mc:ecollisionsetting:forceoff"
        }
        CoreMesh {
          MeshAsset {
            Id: 10227161647766562745
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
        Id: 3302372166657798212
        Name: "Horn"
        Transform {
          Location {
            X: -30.7948
            Y: 35.2759171
            Z: 4.82573271
          }
          Rotation {
            Pitch: 90
            Yaw: 180
            Roll: 59.790947
          }
          Scale {
            X: 0.00177213375
            Y: 0.126441061
            Z: 0.296396405
          }
        }
        ParentId: 11720269607333763911
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 10120512676309829011
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
          Value: "mc:ecollisionsetting:forceoff"
        }
        CoreMesh {
          MeshAsset {
            Id: 10227161647766562745
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
        Id: 11444812722516984929
        Name: "Horn"
        Transform {
          Location {
            X: 11.0115814
            Y: 42.8400116
            Z: 4.78137779
          }
          Rotation {
            Pitch: 90
            Yaw: -90
            Roll: 161.493561
          }
          Scale {
            X: 0.00155281497
            Y: 0.1107921
            Z: 0.342926
          }
        }
        ParentId: 11720269607333763911
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 10120512676309829011
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
          Value: "mc:ecollisionsetting:forceoff"
        }
        CoreMesh {
          MeshAsset {
            Id: 10227161647766562745
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
        Id: 752375558103993118
        Name: "Horn"
        Transform {
          Location {
            X: 32.1037254
            Y: 43.3793716
            Z: 4.78134775
          }
          Rotation {
            Pitch: -90
            Yaw: -26.565033
            Roll: -75.0069
          }
          Scale {
            X: 0.000788620964
            Y: 0.0562674701
            Z: 0.174160242
          }
        }
        ParentId: 11720269607333763911
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 10120512676309829011
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
          Value: "mc:ecollisionsetting:forceoff"
        }
        CoreMesh {
          MeshAsset {
            Id: 10227161647766562745
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
        Id: 8599012159329496577
        Name: "Text 04: C"
        Transform {
          Location {
            X: -33.6579247
            Y: -31.4958935
            Z: 4.38785553
          }
          Rotation {
            Pitch: 2.73207552e-05
            Yaw: -137.934494
            Roll: 89.9999466
          }
          Scale {
            X: 0.438312322
            Y: 0.000981274643
            Z: 1.32652342
          }
        }
        ParentId: 11720269607333763911
        UnregisteredParameters {
          Overrides {
            Name: "ma:Font.Bevel:id"
            AssetReference {
              Id: 10120512676309829011
            }
          }
          Overrides {
            Name: "ma:Font.Faces:id"
            AssetReference {
              Id: 10120512676309829011
            }
          }
          Overrides {
            Name: "ma:Font.Sides:id"
            AssetReference {
              Id: 10120512676309829011
            }
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
            Id: 7307109347043237742
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
        Id: 8840771949900362851
        Name: "Fantasy Castle Stairs Spiral Trim 01 - Large"
        Transform {
          Location {
            X: 6.67260027
            Y: -220.366867
            Z: 4.85893822
          }
          Rotation {
            Pitch: 2.04905664e-05
            Yaw: -156.78772
            Roll: 6.00651729e-05
          }
          Scale {
            X: 0.0985126495
            Y: 0.211157814
            Z: 0.00981274527
          }
        }
        ParentId: 11720269607333763911
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_Detail1:id"
            AssetReference {
              Id: 10120512676309829011
            }
          }
          Overrides {
            Name: "ma:Shared_Detail2:id"
            AssetReference {
              Id: 10120512676309829011
            }
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
            Id: 9807975150386039547
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
        Id: 4702340298115403870
        Name: "Back Black"
        Transform {
          Location {
            X: -1.94444251
            Y: -43.0109558
            Z: 39.9555664
          }
          Rotation {
            Pitch: -79.9249
            Yaw: 89.9996109
            Roll: 89.9996643
          }
          Scale {
            X: 1.01908278
            Y: 1.01908278
            Z: 1.01908278
          }
        }
        ParentId: 8247545903600508225
        ChildIds: 15758942241206876035
        ChildIds: 3422889779723339089
        ChildIds: 17650637438442151551
        ChildIds: 8853028359295535024
        ChildIds: 17841351315800480651
        ChildIds: 10047356977718191376
        ChildIds: 419974183526174227
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
        Id: 15758942241206876035
        Name: "Horn"
        Transform {
          Location {
            X: -15.9761553
            Y: 44.4672966
            Z: -1.28366375
          }
          Rotation {
            Pitch: -88.4837952
            Yaw: -88.3007202
            Roll: 2.43146014
          }
          Scale {
            X: 0.00209002104
            Y: 0.149105906
            Z: 0.765559554
          }
        }
        ParentId: 4702340298115403870
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 10120512676309829011
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
          Value: "mc:ecollisionsetting:forceoff"
        }
        CoreMesh {
          MeshAsset {
            Id: 10227161647766562745
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
        Id: 3422889779723339089
        Name: "Horn"
        Transform {
          Location {
            X: 22.7860107
            Y: 42.6382217
            Z: 0.61143142
          }
          Rotation {
            Pitch: -89.1726685
            Yaw: -65.5620422
            Roll: -19.3286133
          }
          Scale {
            X: 0.00247279019
            Y: 0.176410437
            Z: 1.05071115
          }
        }
        ParentId: 4702340298115403870
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 10120512676309829011
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
          Value: "mc:ecollisionsetting:forceoff"
        }
        CoreMesh {
          MeshAsset {
            Id: 10227161647766562745
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
        Id: 17650637438442151551
        Name: "Horn"
        Transform {
          Location {
            X: 7.87923384
            Y: 43.2449341
            Z: 0.617430925
          }
          Rotation {
            Pitch: 90
            Yaw: 90
            Roll: -30.6544189
          }
          Scale {
            X: 0.00155283266
            Y: 0.110791937
            Z: 0.243232489
          }
        }
        ParentId: 4702340298115403870
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 10120512676309829011
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
          Value: "mc:ecollisionsetting:forceoff"
        }
        CoreMesh {
          MeshAsset {
            Id: 10227161647766562745
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
        Id: 8853028359295535024
        Name: "Horn"
        Transform {
          Location {
            X: -30.7947979
            Y: 35.2758751
            Z: 0.772744536
          }
          Rotation {
            Pitch: 90
            Yaw: 180
            Roll: 59.790947
          }
          Scale {
            X: 0.00177213375
            Y: 0.126441061
            Z: 0.296396405
          }
        }
        ParentId: 4702340298115403870
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 10120512676309829011
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
          Value: "mc:ecollisionsetting:forceoff"
        }
        CoreMesh {
          MeshAsset {
            Id: 10227161647766562745
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
        Id: 17841351315800480651
        Name: "Horn"
        Transform {
          Location {
            X: 32.1037216
            Y: 43.3793526
            Z: 0.559112549
          }
          Rotation {
            Pitch: -90
            Yaw: -45
            Roll: -56.5732117
          }
          Scale {
            X: 0.000788620964
            Y: 0.0562674701
            Z: 0.174160242
          }
        }
        ParentId: 4702340298115403870
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 10120512676309829011
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
          Value: "mc:ecollisionsetting:forceoff"
        }
        CoreMesh {
          MeshAsset {
            Id: 10227161647766562745
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
        Id: 10047356977718191376
        Name: "Text 04: C"
        Transform {
          Location {
            X: -31.624279
            Y: -31.823019
            Z: 0.454962194
          }
          Rotation {
            Pitch: 2.04905664e-05
            Yaw: -137.934464
            Roll: 89.9999
          }
          Scale {
            X: 0.438312322
            Y: 0.000981274643
            Z: 1.32652342
          }
        }
        ParentId: 4702340298115403870
        UnregisteredParameters {
          Overrides {
            Name: "ma:Font.Bevel:id"
            AssetReference {
              Id: 10120512676309829011
            }
          }
          Overrides {
            Name: "ma:Font.Faces:id"
            AssetReference {
              Id: 10120512676309829011
            }
          }
          Overrides {
            Name: "ma:Font.Sides:id"
            AssetReference {
              Id: 10120512676309829011
            }
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
            Id: 7307109347043237742
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
        Id: 419974183526174227
        Name: "Fantasy Castle Stairs Spiral Trim 01 - Large"
        Transform {
          Location {
            X: 8.70626163
            Y: -220.694153
            Z: 0.33448562
          }
          Rotation {
            Pitch: 2.04905664e-05
            Yaw: -156.78772
            Roll: 6.00651729e-05
          }
          Scale {
            X: 0.0985126495
            Y: 0.211157814
            Z: 0.00981274527
          }
        }
        ParentId: 4702340298115403870
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_Detail1:id"
            AssetReference {
              Id: 10120512676309829011
            }
          }
          Overrides {
            Name: "ma:Shared_Detail2:id"
            AssetReference {
              Id: 10120512676309829011
            }
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
            Id: 9807975150386039547
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
        Id: 13724805579694253662
        Name: "Hill 05"
        Transform {
          Location {
            X: -1.34326172
            Y: -79.8751373
            Z: 120.620911
          }
          Rotation {
            Pitch: -49.95578
            Yaw: 89.9997711
            Roll: 89.9997559
          }
          Scale {
            X: 0.181516066
            Y: -0.129646733
            Z: 0.0010189669
          }
        }
        ParentId: 8247545903600508225
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 10120512676309829011
            }
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
            Id: 11198688474246660903
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
        Id: 7752578133719680469
        Name: "Color Wing"
        Transform {
          Location {
            X: -4.06514168
            Y: -46.2187386
            Z: 18.5042725
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 9453431083474078168
        ChildIds: 7245445365611167126
        ChildIds: 7354124520867463387
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
        Id: 7245445365611167126
        Name: "Front Color"
        Transform {
          Location {
            X: -0.0244140625
            Y: 0.416503906
          }
          Rotation {
            Pitch: 79.924881
            Yaw: -89.999649
            Roll: -89.9995117
          }
          Scale {
            X: -0.768999934
            Y: -0.768999934
            Z: -0.768999934
          }
        }
        ParentId: 7752578133719680469
        ChildIds: 15231865198188367260
        ChildIds: 11356144503364093892
        ChildIds: 13616298005558590815
        ChildIds: 9690060016871496288
        ChildIds: 12920427662484720143
        ChildIds: 10880017439539841740
        ChildIds: 18027391227332867529
        ChildIds: 14093754951409761010
        ChildIds: 3938677030740787144
        ChildIds: 16877540601324851045
        ChildIds: 2810932564769563607
        ChildIds: 16509531147040038217
        ChildIds: 13156582309101475447
        ChildIds: 17266551237773529264
        ChildIds: 16199129812565559267
        ChildIds: 18260247900498637928
        ChildIds: 18228232334021136278
        ChildIds: 433855671503808449
        ChildIds: 2996477066200826970
        ChildIds: 1507714008700690963
        ChildIds: 13219626510320337867
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
        Id: 15231865198188367260
        Name: "Hill 05"
        Transform {
          Location {
            X: 66.7354431
            Y: -127.892685
            Z: 1.99208832
          }
          Rotation {
            Pitch: 0.114344187
            Yaw: 108.887749
            Roll: 179.846939
          }
          Scale {
            X: 0.443797529
            Y: 0.218280479
            Z: 0.000981272548
          }
        }
        ParentId: 7245445365611167126
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 3556700782779527591
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.542012
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.344658524
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.650015652
              G: 0.27388
              B: 0.820000052
              A: 1
            }
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
            Id: 11198688474246660903
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
        Id: 11356144503364093892
        Name: "Hill 05"
        Transform {
          Location {
            X: 104.852539
            Y: -31.8110352
            Z: 2.02197266
          }
          Rotation {
            Pitch: 0.114316873
            Yaw: -88.661972
            Roll: 179.846786
          }
          Scale {
            X: 0.148588896
            Y: 0.0556274056
            Z: 0.001
          }
        }
        ParentId: 7245445365611167126
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 3556700782779527591
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.542012
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.344658524
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              G: 0.0092714075
              B: 0.350000024
              A: 1
            }
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
            Id: 11198688474246660903
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
        Id: 13616298005558590815
        Name: "Hill 05"
        Transform {
          Location {
            X: 33.1022949
            Y: -51.7111511
            Z: 3.33569336
          }
          Rotation {
            Pitch: -0.114349365
            Yaw: -12.9328918
            Roll: -0.153045654
          }
          Scale {
            X: 0.230375648
            Y: -0.238114461
            Z: -0.001
          }
        }
        ParentId: 7245445365611167126
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 3556700782779527591
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.542012
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.344658524
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.650015652
              G: 0.27388
              B: 0.820000052
              A: 1
            }
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
            Id: 11198688474246660903
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
        Id: 9690060016871496288
        Name: "Cylinder"
        Transform {
          Location {
            X: -78.4483948
            Y: 5.96289062
            Z: -0.0314588547
          }
          Rotation {
            Yaw: -10.6693726
          }
          Scale {
            X: 0.18775031
            Y: 0.271152109
            Z: 0.00191259268
          }
        }
        ParentId: 7245445365611167126
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 3556700782779527591
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
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.344658524
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.542012
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
            Id: 10602013473409766249
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
        Id: 12920427662484720143
        Name: "Cylinder"
        Transform {
          Location {
            X: -51.9849396
            Y: 15.8084717
            Z: 0.0371742249
          }
          Rotation {
            Yaw: -10.6693726
          }
          Scale {
            X: 0.152832985
            Y: 0.220723957
            Z: 0.00155689358
          }
        }
        ParentId: 7245445365611167126
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 3556700782779527591
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
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.344658524
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.542012
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
            Id: 10602013473409766249
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
        Id: 10880017439539841740
        Name: "Cylinder"
        Transform {
          Location {
            X: -68.2500458
            Y: -31.0449219
            Z: -0.249824524
          }
          Rotation {
            Yaw: -10.6693726
          }
          Scale {
            X: 0.152832985
            Y: 0.220723957
            Z: 0.00155689358
          }
        }
        ParentId: 7245445365611167126
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 3556700782779527591
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
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.344658524
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.542012
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
            Id: 10602013473409766249
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
        Id: 18027391227332867529
        Name: "Cylinder"
        Transform {
          Location {
            X: -48.3595734
            Y: -13.3578186
            Z: 0.174620628
          }
          Rotation {
            Yaw: -10.6693726
          }
          Scale {
            X: 0.112601265
            Y: 0.162620619
            Z: 0.00114705716
          }
        }
        ParentId: 7245445365611167126
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 3556700782779527591
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
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.344658524
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.542012
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
            Id: 10602013473409766249
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
        Id: 14093754951409761010
        Name: "Cylinder"
        Transform {
          Location {
            X: -71.1697693
            Y: -56.0418854
            Z: -0.286605835
          }
          Rotation {
            Yaw: -10.6693726
          }
          Scale {
            X: 0.112601265
            Y: 0.162620619
            Z: 0.00114705716
          }
        }
        ParentId: 7245445365611167126
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 3556700782779527591
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
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.344658524
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.542012
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
            Id: 10602013473409766249
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
        Id: 3938677030740787144
        Name: "Cylinder"
        Transform {
          Location {
            X: -79.0127563
            Y: 35.7866211
            Z: 4.62304688
          }
          Rotation {
            Yaw: -28.0610485
            Roll: 1.37359421e-11
          }
          Scale {
            X: 0.0903711542
            Y: 0.130515531
            Z: 0.000920601422
          }
        }
        ParentId: 7245445365611167126
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 3556700782779527591
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
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.344658524
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.542012
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
            Id: 10602013473409766249
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
        Id: 16877540601324851045
        Name: "Cylinder"
        Transform {
          Location {
            X: -60.095459
            Y: 49.6054688
            Z: 4.62304688
          }
          Rotation {
            Yaw: -68.5710297
            Roll: 1.45103981e-12
          }
          Scale {
            X: 0.0903711542
            Y: 0.130515531
            Z: 0.000920601422
          }
        }
        ParentId: 7245445365611167126
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 3556700782779527591
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
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.344658524
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.542012
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
            Id: 10602013473409766249
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
        Id: 2810932564769563607
        Name: "Cylinder"
        Transform {
          Location {
            X: -32.5397339
            Y: 52.3061523
            Z: 4.62304688
          }
          Rotation {
            Yaw: -96.1118393
            Roll: 9.63991907e-12
          }
          Scale {
            X: 0.0903711542
            Y: 0.130515531
            Z: 0.000920601422
          }
        }
        ParentId: 7245445365611167126
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 3556700782779527591
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
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.344658524
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.542012
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
            Id: 10602013473409766249
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
        Id: 16509531147040038217
        Name: "Cylinder"
        Transform {
          Location {
            X: -6.82897949
            Y: 47.1323242
            Z: 4.62255859
          }
          Rotation {
            Yaw: -108.306007
            Roll: 8.18736745e-12
          }
          Scale {
            X: 0.0725298
            Y: 0.104748733
            Z: 0.000738853414
          }
        }
        ParentId: 7245445365611167126
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 3556700782779527591
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
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.344658524
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.542012
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
            Id: 10602013473409766249
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
        Id: 13156582309101475447
        Name: "Cylinder"
        Transform {
          Location {
            X: -25.7111053
            Y: 18.8280029
            Z: 0.192739487
          }
          Rotation {
            Yaw: -10.6693726
          }
          Scale {
            X: 0.0871488303
            Y: 0.125861794
            Z: 0.000887776
          }
        }
        ParentId: 7245445365611167126
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 3556700782779527591
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
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.344658524
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.542012
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
            Id: 10602013473409766249
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
        Id: 17266551237773529264
        Name: "Cylinder"
        Transform {
          Location {
            X: 116.385742
            Y: 41.269043
            Z: 4.62255859
          }
          Rotation {
            Yaw: -115.75296
            Roll: 1.95676331e-12
          }
          Scale {
            X: 0.0668244362
            Y: 0.09650895
            Z: 0.000680733589
          }
        }
        ParentId: 7245445365611167126
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 3556700782779527591
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
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.344658524
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.542012
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
            Id: 10602013473409766249
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
        Id: 16199129812565559267
        Name: "Cylinder"
        Transform {
          Location {
            X: 93.9575195
            Y: 51.1962891
            Z: 4.62255859
          }
          Rotation {
            Yaw: -98.7214127
            Roll: 2.16652026e-11
          }
          Scale {
            X: 0.0847739
            Y: 0.122431844
            Z: 0.000863582827
          }
        }
        ParentId: 7245445365611167126
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 3556700782779527591
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
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.344658524
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.542012
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
            Id: 10602013473409766249
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
        Id: 18260247900498637928
        Name: "Cylinder"
        Transform {
          Location {
            X: 70.5039062
            Y: 44.4418945
            Z: 4.62255859
          }
          Rotation {
            Yaw: -68.7728348
            Roll: 3.59895729e-12
          }
          Scale {
            X: 0.0725298
            Y: 0.104748733
            Z: 0.000738853414
          }
        }
        ParentId: 7245445365611167126
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 3556700782779527591
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
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.344658524
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.542012
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
            Id: 10602013473409766249
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
        Id: 18228232334021136278
        Name: "Cylinder"
        Transform {
          Location {
            X: 42.8515625
            Y: 38.8920898
            Z: 4.62255859
          }
          Rotation {
            Yaw: -94.6666183
            Roll: 3.39701947e-11
          }
          Scale {
            X: 0.0725298
            Y: 0.104748733
            Z: 0.000738853414
          }
        }
        ParentId: 7245445365611167126
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 3556700782779527591
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
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.344658524
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.542012
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
            Id: 10602013473409766249
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
        Id: 433855671503808449
        Name: "Cylinder"
        Transform {
          Location {
            X: 15.2891846
            Y: 39.4726562
            Z: 4.62255859
          }
          Rotation {
            Yaw: -108.306007
            Roll: 8.18736745e-12
          }
          Scale {
            X: 0.0725298
            Y: 0.104748733
            Z: 0.000738853414
          }
        }
        ParentId: 7245445365611167126
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 3556700782779527591
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
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.344658524
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.542012
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
            Id: 10602013473409766249
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
        Id: 2996477066200826970
        Name: "Cylinder"
        Transform {
          Location {
            X: -19.2676697
            Y: 38.0849
            Z: 4.6235218
          }
          Rotation {
            Pitch: 6.83018879e-06
            Yaw: -108.306
            Roll: 5.60293802e-06
          }
          Scale {
            X: 0.0725298
            Y: 0.104748733
            Z: 0.000738853414
          }
        }
        ParentId: 7245445365611167126
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 3556700782779527591
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
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.344658524
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.542012
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
            Id: 10602013473409766249
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
        Id: 1507714008700690963
        Name: "Cylinder"
        Transform {
          Location {
            X: -52.0994873
            Y: -71.3690491
            Z: -0.23486042
          }
          Rotation {
            Pitch: -6.83018879e-05
            Yaw: -160.859039
            Roll: 0.000217220266
          }
          Scale {
            X: -0.132569551
            Y: -0.280101061
            Z: -0.00103164895
          }
        }
        ParentId: 7245445365611167126
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 3556700782779527591
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
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.344658524
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.542012
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
            Id: 10602013473409766249
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
        Id: 13219626510320337867
        Name: "Cylinder"
        Transform {
          Location {
            X: -112.815186
            Y: 29.4010925
            Z: -0.670898438
          }
          Rotation {
            Yaw: -10.6694336
          }
          Scale {
            X: 0.323818535
            Y: 0.467664927
            Z: 0.0297635477
          }
        }
        ParentId: 7245445365611167126
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 3556700782779527591
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
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.344658524
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.542012
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
            Id: 10602013473409766249
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
        Id: 7354124520867463387
        Name: "Back Color"
        Transform {
          Location {
            X: 0.0242846143
            Y: -0.416979313
            Z: 0.51280719
          }
          Rotation {
            Pitch: -79.9246826
            Yaw: 89.9995117
            Roll: 89.9993896
          }
          Scale {
            X: 0.76852864
            Y: 0.76852864
            Z: 0.76852864
          }
        }
        ParentId: 7752578133719680469
        ChildIds: 9999830293512426397
        ChildIds: 2449628639229063217
        ChildIds: 6091943749236283832
        ChildIds: 11877776247677927176
        ChildIds: 12291813482483129272
        ChildIds: 10898472758861613574
        ChildIds: 10996732082169490003
        ChildIds: 8350807403464479711
        ChildIds: 3852469064283269465
        ChildIds: 10373543595897129578
        ChildIds: 3356183404097417727
        ChildIds: 14204397787347365774
        ChildIds: 6927540883246297126
        ChildIds: 2767696337924650824
        ChildIds: 14826439970961446725
        ChildIds: 1377207548887456178
        ChildIds: 13358319667147070329
        ChildIds: 8530027191076730259
        ChildIds: 8216143073447422847
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
        Id: 9999830293512426397
        Name: "Hill 05"
        Transform {
          Location {
            X: 69.3004227
            Y: -126.67086
            Z: 1.44974303
          }
          Rotation {
            Pitch: 0.114344187
            Yaw: 108.887665
            Roll: 179.846939
          }
          Scale {
            X: 0.443797529
            Y: 0.218280479
            Z: 0.000981272548
          }
        }
        ParentId: 7354124520867463387
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 3556700782779527591
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.542012
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.344658524
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.650015652
              G: 0.27388
              B: 0.820000052
              A: 1
            }
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
            Id: 11198688474246660903
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
        Id: 2449628639229063217
        Name: "Hill 05"
        Transform {
          Location {
            X: 104.643562
            Y: -31.6448784
            Z: 0.000143153
          }
          Rotation {
            Pitch: 0.114316873
            Yaw: -88.6619644
            Roll: 179.846786
          }
          Scale {
            X: 0.148588896
            Y: 0.0556274019
            Z: 0.001
          }
        }
        ParentId: 7354124520867463387
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 3556700782779527591
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.542012
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.344658524
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.650015652
              G: 0.27388
              B: 0.820000052
              A: 1
            }
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
            Id: 11198688474246660903
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
        Id: 6091943749236283832
        Name: "Hill 05"
        Transform {
          Location {
            X: 33.0025482
            Y: -50.7792969
            Z: 0.512695312
          }
          Rotation {
            Pitch: -0.114351019
            Yaw: -12.9329109
            Roll: -0.153045624
          }
          Scale {
            X: 0.230375648
            Y: -0.238114446
            Z: -0.001
          }
        }
        ParentId: 7354124520867463387
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 3556700782779527591
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.542012
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.344658524
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.650015652
              G: 0.27388
              B: 0.820000052
              A: 1
            }
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
            Id: 11198688474246660903
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
        Id: 11877776247677927176
        Name: "Cylinder"
        Transform {
          Location {
            X: -78.6574631
            Y: 6.12987661
            Z: 2.6014874
          }
          Rotation {
            Yaw: -10.6693249
            Roll: 1.29711216e-11
          }
          Scale {
            X: 0.18775031
            Y: 0.271152109
            Z: 0.00191259256
          }
        }
        ParentId: 7354124520867463387
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 3556700782779527591
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
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.344658524
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.542012
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
            Id: 10602013473409766249
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
        Id: 12291813482483129272
        Name: "Cylinder"
        Transform {
          Location {
            X: -52.1935501
            Y: 15.974885
            Z: 2.60145521
          }
          Rotation {
            Yaw: -10.6693249
            Roll: 1.29711216e-11
          }
          Scale {
            X: 0.152832985
            Y: 0.220723957
            Z: 0.00155689358
          }
        }
        ParentId: 7354124520867463387
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 3556700782779527591
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
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.344658524
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.542012
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
            Id: 10602013473409766249
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
        Id: 10898472758861613574
        Name: "Cylinder"
        Transform {
          Location {
            X: -68.4590683
            Y: -30.8778133
            Z: 2.60127234
          }
          Rotation {
            Yaw: -10.6693249
            Roll: 1.29711216e-11
          }
          Scale {
            X: 0.152832985
            Y: 0.220723957
            Z: 0.00155689358
          }
        }
        ParentId: 7354124520867463387
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 3556700782779527591
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
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.344658524
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.542012
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
            Id: 10602013473409766249
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
        Id: 10996732082169490003
        Name: "Cylinder"
        Transform {
          Location {
            X: -48.566391
            Y: -13.1910887
            Z: 2.60120869
          }
          Rotation {
            Yaw: -10.6693249
            Roll: 1.29711216e-11
          }
          Scale {
            X: 0.112601265
            Y: 0.162620619
            Z: 0.00114705716
          }
        }
        ParentId: 7354124520867463387
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 3556700782779527591
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
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.344658524
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.542012
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
            Id: 10602013473409766249
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
        Id: 8350807403464479711
        Name: "Cylinder"
        Transform {
          Location {
            X: -61.7866325
            Y: -60.5596237
            Z: 2.6013875
          }
          Rotation {
            Yaw: -10.6693249
            Roll: 1.29711216e-11
          }
          Scale {
            X: 0.112601265
            Y: 0.162620619
            Z: 0.00114705716
          }
        }
        ParentId: 7354124520867463387
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 3556700782779527591
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
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.344658524
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.542012
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
            Id: 10602013473409766249
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
        Id: 3852469064283269465
        Name: "Cylinder"
        Transform {
          Location {
            X: -79.2215271
            Y: 35.9524078
            Z: 2.60137296
          }
          Rotation {
            Yaw: -28.0610409
            Roll: 1.57919229e-12
          }
          Scale {
            X: 0.0903711542
            Y: 0.130515531
            Z: 0.000920601422
          }
        }
        ParentId: 7354124520867463387
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 3556700782779527591
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
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.344658524
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.542012
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
            Id: 10602013473409766249
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
        Id: 10373543595897129578
        Name: "Cylinder"
        Transform {
          Location {
            X: -60.3042908
            Y: 49.77174
            Z: 2.60132384
          }
          Rotation {
            Yaw: -68.571
          }
          Scale {
            X: 0.0903711542
            Y: 0.130515531
            Z: 0.000920601422
          }
        }
        ParentId: 7354124520867463387
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 3556700782779527591
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
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.344658524
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.542012
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
            Id: 10602013473409766249
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
        Id: 3356183404097417727
        Name: "Cylinder"
        Transform {
          Location {
            X: -32.7484932
            Y: 52.4722061
            Z: 2.60131931
          }
          Rotation {
            Yaw: -96.111824
            Roll: -9.08424323e-13
          }
          Scale {
            X: 0.0903711542
            Y: 0.130515531
            Z: 0.000920601422
          }
        }
        ParentId: 7354124520867463387
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 3556700782779527591
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
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.344658524
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.542012
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
            Id: 10602013473409766249
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
        Id: 14204397787347365774
        Name: "Cylinder"
        Transform {
          Location {
            X: -7.03778267
            Y: 47.2980576
            Z: 2.60134435
          }
          Rotation {
            Yaw: -108.305992
            Roll: -7.91994e-12
          }
          Scale {
            X: 0.0725298
            Y: 0.104748733
            Z: 0.000738853414
          }
        }
        ParentId: 7354124520867463387
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 3556700782779527591
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
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.344658524
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.542012
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
            Id: 10602013473409766249
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
        Id: 6927540883246297126
        Name: "Cylinder"
        Transform {
          Location {
            X: -25.9193039
            Y: 18.9939785
            Z: 2.60144901
          }
          Rotation {
            Yaw: -10.6693249
            Roll: 1.29711216e-11
          }
          Scale {
            X: 0.0871488303
            Y: 0.125861794
            Z: 0.000887775968
          }
        }
        ParentId: 7354124520867463387
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 3556700782779527591
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
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.344658524
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.542012
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
            Id: 10602013473409766249
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
        Id: 2767696337924650824
        Name: "Cylinder"
        Transform {
          Location {
            X: 116.176842
            Y: 41.4348869
            Z: 2.60139251
          }
          Rotation {
            Yaw: -115.752945
            Roll: -1.37913509e-12
          }
          Scale {
            X: 0.0668244362
            Y: 0.0965089425
            Z: 0.00068073353
          }
        }
        ParentId: 7354124520867463387
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 3556700782779527591
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
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.344658524
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.542012
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
            Id: 10602013473409766249
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
        Id: 14826439970961446725
        Name: "Cylinder"
        Transform {
          Location {
            X: 93.7487411
            Y: 51.3626595
            Z: 2.60134983
          }
          Rotation {
            Yaw: -98.7213898
            Roll: 1.85355507e-12
          }
          Scale {
            X: 0.0847739
            Y: 0.122431844
            Z: 0.000863582827
          }
        }
        ParentId: 7354124520867463387
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 3556700782779527591
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
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.344658524
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.542012
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
            Id: 10602013473409766249
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
        Id: 1377207548887456178
        Name: "Cylinder"
        Transform {
          Location {
            X: 70.2950058
            Y: 44.6083145
            Z: 2.60137081
          }
          Rotation {
            Yaw: -68.7728271
            Roll: -7.07215796e-12
          }
          Scale {
            X: 0.0725298
            Y: 0.104748733
            Z: 0.000738853414
          }
        }
        ParentId: 7354124520867463387
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 3556700782779527591
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
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.344658524
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.542012
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
            Id: 10602013473409766249
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
        Id: 13358319667147070329
        Name: "Cylinder"
        Transform {
          Location {
            X: 42.6427536
            Y: 39.0576935
            Z: 2.60138631
          }
          Rotation {
            Yaw: -94.6666
            Roll: 4.26576873e-12
          }
          Scale {
            X: 0.0725298
            Y: 0.104748733
            Z: 0.000738853414
          }
        }
        ParentId: 7354124520867463387
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 3556700782779527591
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
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.344658524
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.542012
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
            Id: 10602013473409766249
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
        Id: 8530027191076730259
        Name: "Cylinder"
        Transform {
          Location {
            X: 15.080389
            Y: 39.6383858
            Z: 2.60137844
          }
          Rotation {
            Yaw: -108.305992
            Roll: -7.91994e-12
          }
          Scale {
            X: 0.0725298
            Y: 0.104748733
            Z: 0.000738853414
          }
        }
        ParentId: 7354124520867463387
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 3556700782779527591
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
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.344658524
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.542012
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
            Id: 10602013473409766249
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
        Id: 8216143073447422847
        Name: "Cylinder"
        Transform {
          Location {
            X: -58.6404
            Y: -95.0713425
            Z: 2.04781127
          }
          Rotation {
            Pitch: -6.10351562e-05
            Yaw: 19.1405582
          }
          Scale {
            X: 0.132650867
            Y: 0.280272812
            Z: 0.00103228155
          }
        }
        ParentId: 7354124520867463387
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 3556700782779527591
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
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.344658524
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.542012
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
            Id: 10602013473409766249
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
        Id: 17219487424644704178
        Name: "Lower Wing "
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
        ParentId: 8787708131630442069
        ChildIds: 5190944055559015791
        ChildIds: 5416576352591893676
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
        Id: 5190944055559015791
        Name: "Black Wing"
        Transform {
          Location {
            X: 6.15581083
            Y: 139.45578
            Z: -165.865463
          }
          Rotation {
            Pitch: 6.83018879e-06
            Yaw: -179.999954
            Roll: -0.000213623047
          }
          Scale {
            X: 0.92576921
            Y: 0.92576921
            Z: 0.92576921
          }
        }
        ParentId: 17219487424644704178
        ChildIds: 18243520050268165368
        ChildIds: 2120781898571443652
        ChildIds: 4479187367112544217
        ChildIds: 15524364540078072168
        ChildIds: 2162847601316722875
        ChildIds: 2698839496455357431
        ChildIds: 6393573670133800230
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
        Id: 18243520050268165368
        Name: "Hill 05"
        Transform {
          Location {
            X: 2.34328032
            Y: -27.1709061
            Z: 72.7365723
          }
          Rotation {
            Pitch: -33.8405914
            Yaw: 89.9996796
            Roll: -89.9987411
          }
          Scale {
            X: 0.229581058
            Y: 0.208353251
            Z: 0.000999999931
          }
        }
        ParentId: 5190944055559015791
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 10120512676309829011
            }
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
            Id: 11198688474246660903
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
        Id: 2120781898571443652
        Name: "Hill 05"
        Transform {
          Location {
            X: 2.34388113
            Y: 23.7106457
            Z: 75.4873428
          }
          Rotation {
            Pitch: -18.8466797
            Yaw: -90.0004883
            Roll: 89.9997482
          }
          Scale {
            X: 0.322738349
            Y: 0.223182723
            Z: 0.000999999931
          }
        }
        ParentId: 5190944055559015791
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 10120512676309829011
            }
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
            Id: 11198688474246660903
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
        Id: 4479187367112544217
        Name: "Hill 05"
        Transform {
          Location {
            X: 2.34423828
            Y: 65.7861328
            Z: 114.385925
          }
          Rotation {
            Pitch: -9.65756607
            Yaw: -90.0004578
            Roll: -90.0001068
          }
          Scale {
            X: 0.178117037
            Y: -0.127219
            Z: 0.000999886077
          }
        }
        ParentId: 5190944055559015791
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 10120512676309829011
            }
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
            Id: 11198688474246660903
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
        Id: 15524364540078072168
        Name: "Hill 05"
        Transform {
          Location {
            X: 2.34472656
            Y: 93.2993164
            Z: 132.216
          }
          Rotation {
            Pitch: -37.5230408
            Yaw: -90.0004
            Roll: 89.9996414
          }
          Scale {
            X: 0.178117588
            Y: -0.152318716
            Z: 0.000999872
          }
        }
        ParentId: 5190944055559015791
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 10120512676309829011
            }
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
            Id: 11198688474246660903
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
        Id: 2162847601316722875
        Name: "Front Black"
        Transform {
          Location {
            X: 6.16598654
            Y: -9.15493584
            Z: -3.84256564e-05
          }
          Rotation {
          }
          Scale {
            X: 0.99999994
            Y: 0.99999994
            Z: 0.99999994
          }
        }
        ParentId: 5190944055559015791
        ChildIds: 9131754199859128167
        ChildIds: 16751900632285632169
        ChildIds: 1321993811463947353
        ChildIds: 13075415695707525191
        ChildIds: 3985124970986811212
        ChildIds: 18297950339603664686
        ChildIds: 2375002513532640475
        ChildIds: 5917438381710722076
        ChildIds: 11354726510530491254
        ChildIds: 8097421793542223476
        ChildIds: 18403366644461643093
        ChildIds: 3785802865729356039
        ChildIds: 17944080922289546729
        ChildIds: 11753104081523765486
        ChildIds: 8841529258562116290
        ChildIds: 4740742558189509146
        ChildIds: 1452287527433305554
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
        Id: 9131754199859128167
        Name: "Horn"
        Transform {
          Location {
            X: 0.0126953125
            Y: 31.2109375
            Z: 104.161621
          }
          Rotation {
            Pitch: -0.75604248
            Yaw: 1.46600294
            Roll: -94.3215942
          }
          Scale {
            X: 0.00272820564
            Y: -0.124826252
            Z: 0.612904847
          }
        }
        ParentId: 2162847601316722875
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 10120512676309829011
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
          Value: "mc:ecollisionsetting:forceoff"
        }
        CoreMesh {
          MeshAsset {
            Id: 10227161647766562745
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
        Id: 16751900632285632169
        Name: "Horn"
        Transform {
          Location {
            X: -3.23775148
            Y: 23.4203644
            Z: 84.6446304
          }
          Rotation {
            Pitch: 0.358632714
            Yaw: -179.017929
            Roll: 106.23378
          }
          Scale {
            X: 0.00273087691
            Y: -0.124826536
            Z: 0.535499394
          }
        }
        ParentId: 2162847601316722875
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 10120512676309829011
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
          Value: "mc:ecollisionsetting:forceoff"
        }
        CoreMesh {
          MeshAsset {
            Id: 10227161647766562745
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
        Id: 1321993811463947353
        Name: "Horn"
        Transform {
          Location {
            X: 2.08887076
            Y: -36.7380219
            Z: 25.2847748
          }
          Rotation {
            Pitch: 0.0920777768
            Yaw: 179.82048
            Roll: -44.7731323
          }
          Scale {
            X: 0.00272870203
            Y: -0.124835305
            Z: 0.470220685
          }
        }
        ParentId: 2162847601316722875
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 10120512676309829011
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
          Value: "mc:ecollisionsetting:forceoff"
        }
        CoreMesh {
          MeshAsset {
            Id: 10227161647766562745
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
        Id: 13075415695707525191
        Name: "Horn"
        Transform {
          Location {
            X: -0.0297851562
            Y: -8.28369141
            Z: 3.59469604
          }
          Rotation {
            Pitch: -0.943481326
            Yaw: -1.01212215
            Roll: 34.1351166
          }
          Scale {
            X: 0.00273136026
            Y: -0.124835186
            Z: 0.481717706
          }
        }
        ParentId: 2162847601316722875
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 10120512676309829011
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
          Value: "mc:ecollisionsetting:forceoff"
        }
        CoreMesh {
          MeshAsset {
            Id: 10227161647766562745
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
        Id: 3985124970986811212
        Name: "Horn"
        Transform {
          Location {
            X: -3.61636281
            Y: 39.6002121
            Z: 8.27220154
          }
          Rotation {
            Pitch: -0.941497803
            Yaw: -1.02279663
            Roll: 5.63409948
          }
          Scale {
            X: 0.00222074799
            Y: -0.101254568
            Z: 0.407522082
          }
        }
        ParentId: 2162847601316722875
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 10120512676309829011
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
          Value: "mc:ecollisionsetting:forceoff"
        }
        CoreMesh {
          MeshAsset {
            Id: 10227161647766562745
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
        Id: 18297950339603664686
        Name: "Horn"
        Transform {
          Location {
            X: 2.71563649
            Y: 137.710342
            Z: 149.892868
          }
          Rotation {
            Pitch: -0.594116211
            Yaw: -0.583862305
            Roll: -130.268799
          }
          Scale {
            X: 0.00272300187
            Y: 0.194193587
            Z: 0.818518
          }
        }
        ParentId: 2162847601316722875
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 10120512676309829011
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
          Value: "mc:ecollisionsetting:forceoff"
        }
        CoreMesh {
          MeshAsset {
            Id: 10227161647766562745
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
        Id: 2375002513532640475
        Name: "Horn"
        Transform {
          Location {
            X: 2.7156086
            Y: 58.9019279
            Z: 157.787582
          }
          Rotation {
            Pitch: 0.876374722
            Yaw: 179.151733
            Roll: 148.306564
          }
          Scale {
            X: 0.00273567648
            Y: 0.194185778
            Z: 0.543515563
          }
        }
        ParentId: 2162847601316722875
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 10120512676309829011
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
          Value: "mc:ecollisionsetting:forceoff"
        }
        CoreMesh {
          MeshAsset {
            Id: 10227161647766562745
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
        Id: 5917438381710722076
        Name: "Horn"
        Transform {
          Location {
            X: 0.0078125
            Y: 106.367676
            Z: 123.298706
          }
          Rotation {
            Pitch: -0.95749
            Yaw: -1.02121246
            Roll: -147.8293
          }
          Scale {
            X: 0.00272820704
            Y: -0.124826878
            Z: 0.612904847
          }
        }
        ParentId: 2162847601316722875
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 10120512676309829011
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
          Value: "mc:ecollisionsetting:forceoff"
        }
        CoreMesh {
          MeshAsset {
            Id: 10227161647766562745
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
        Id: 11354726510530491254
        Name: "Horn"
        Transform {
          Location {
            X: -3.83012772
            Y: -62.2747612
            Z: 51.7750931
          }
          Rotation {
            Pitch: -1.07324219
            Yaw: -1.03005981
            Roll: 16.6183987
          }
          Scale {
            X: 0.00055019313
            Y: 0.196380824
            Z: 0.126375854
          }
        }
        ParentId: 2162847601316722875
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 10120512676309829011
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
          Value: "mc:ecollisionsetting:forceoff"
        }
        CoreMesh {
          MeshAsset {
            Id: 10227161647766562745
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
        Id: 8097421793542223476
        Name: "Horn"
        Transform {
          Location {
            X: -2.01411
            Y: -70.2863312
            Z: 76.8659668
          }
          Rotation {
            Pitch: 0.782575727
            Yaw: 177.981735
            Roll: -144.678482
          }
          Scale {
            X: 0.0005583046
            Y: 0.214060724
            Z: 0.12637499
          }
        }
        ParentId: 2162847601316722875
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 10120512676309829011
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
          Value: "mc:ecollisionsetting:forceoff"
        }
        CoreMesh {
          MeshAsset {
            Id: 10227161647766562745
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
        Id: 18403366644461643093
        Name: "Horn"
        Transform {
          Location {
            X: -0.466983527
            Y: -67.8218155
            Z: 78.320343
          }
          Rotation {
            Pitch: -1.02584839
            Yaw: -1.12442017
            Roll: 20.4042969
          }
          Scale {
            X: 0.000550184748
            Y: 0.145599589
            Z: 0.126376063
          }
        }
        ParentId: 2162847601316722875
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 10120512676309829011
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
          Value: "mc:ecollisionsetting:forceoff"
        }
        CoreMesh {
          MeshAsset {
            Id: 10227161647766562745
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
        Id: 3785802865729356039
        Name: "Horn"
        Transform {
          Location {
            X: -3.69071221
            Y: -66.1537247
            Z: 97.6930313
          }
          Rotation {
            Pitch: 1.11229622
            Yaw: 178.134842
            Roll: -125.863495
          }
          Scale {
            X: 0.000393695605
            Y: 0.104186535
            Z: 0.0904320255
          }
        }
        ParentId: 2162847601316722875
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 10120512676309829011
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
          Value: "mc:ecollisionsetting:forceoff"
        }
        CoreMesh {
          MeshAsset {
            Id: 10227161647766562745
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
        Id: 17944080922289546729
        Name: "Horn"
        Transform {
          Location {
            X: -3.84213281
            Y: -48.2783127
            Z: 34.8440933
          }
          Rotation {
            Pitch: 1.31728387
            Yaw: 178.398819
            Roll: -101.185272
          }
          Scale {
            X: 0.000550193479
            Y: 0.145599678
            Z: 0.144612208
          }
        }
        ParentId: 2162847601316722875
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 10120512676309829011
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
          Value: "mc:ecollisionsetting:forceoff"
        }
        CoreMesh {
          MeshAsset {
            Id: 10227161647766562745
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
        Id: 11753104081523765486
        Name: "Horn"
        Transform {
          Location {
            X: -3.7547853
            Y: -30.8927898
            Z: 14.0772963
          }
          Rotation {
            Pitch: -1.38299561
            Yaw: -1.03372192
            Roll: -15.7410583
          }
          Scale {
            X: 0.000553626684
            Y: 0.217666641
            Z: 0.143235937
          }
        }
        ParentId: 2162847601316722875
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 10120512676309829011
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
          Value: "mc:ecollisionsetting:forceoff"
        }
        CoreMesh {
          MeshAsset {
            Id: 10227161647766562745
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
        Id: 8841529258562116290
        Name: "Horn"
        Transform {
          Location {
            X: 0.218808517
            Y: 8.85783482
            Z: 5.87045574
          }
          Rotation {
            Pitch: -1.41244507
            Yaw: -1.51589966
            Roll: -20.3972473
          }
          Scale {
            X: 0.000550185388
            Y: 0.145599589
            Z: 0.126377791
          }
        }
        ParentId: 2162847601316722875
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 10120512676309829011
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
          Value: "mc:ecollisionsetting:forceoff"
        }
        CoreMesh {
          MeshAsset {
            Id: 10227161647766562745
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
        Id: 4740742558189509146
        Name: "Horn"
        Transform {
          Location {
            X: 0.18054004
            Y: -19.2038078
            Z: 10.4201956
          }
          Rotation {
            Pitch: 1.22251499
            Yaw: 178.517563
            Roll: -86.0916138
          }
          Scale {
            X: 0.000550185388
            Y: 0.145599589
            Z: 0.126377463
          }
        }
        ParentId: 2162847601316722875
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 10120512676309829011
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
          Value: "mc:ecollisionsetting:forceoff"
        }
        CoreMesh {
          MeshAsset {
            Id: 10227161647766562745
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
        Id: 1452287527433305554
        Name: "Horn"
        Transform {
          Location {
            X: -3.84612679
            Y: 26.510416
            Z: 8.85022354
          }
          Rotation {
            Pitch: 1.72587264
            Yaw: 178.593475
            Roll: -39.5257568
          }
          Scale {
            X: 0.022811668
            Y: 0.14558737
            Z: 0.214949444
          }
        }
        ParentId: 2162847601316722875
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 10120512676309829011
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
          Value: "mc:ecollisionsetting:forceoff"
        }
        CoreMesh {
          MeshAsset {
            Id: 10227161647766562745
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
        Id: 2698839496455357431
        Name: "Back Black"
        Transform {
          Location {
            X: -0.551657617
            Y: -9.15476894
            Z: -3.70429152e-05
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 5190944055559015791
        ChildIds: 13501308583194639754
        ChildIds: 11796613167341299084
        ChildIds: 9185873772049036012
        ChildIds: 16336028546574140699
        ChildIds: 1150934831250752061
        ChildIds: 11031901341703307681
        ChildIds: 16396124458344015631
        ChildIds: 6950053860488998808
        ChildIds: 91621221130801863
        ChildIds: 5875564470252485901
        ChildIds: 350146803386638035
        ChildIds: 8289416314994499044
        ChildIds: 8408843355119584714
        ChildIds: 2866774595882297311
        ChildIds: 14150807285330741955
        ChildIds: 3530071953445646495
        ChildIds: 1037557065937418147
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
        Id: 13501308583194639754
        Name: "Horn"
        Transform {
          Location {
            X: 0.0126953125
            Y: 31.2109375
            Z: 104.161621
          }
          Rotation {
            Pitch: -0.75604248
            Yaw: 1.46600294
            Roll: -94.3215942
          }
          Scale {
            X: 0.00272820564
            Y: -0.124826252
            Z: 0.612904847
          }
        }
        ParentId: 2698839496455357431
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 10120512676309829011
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
          Value: "mc:ecollisionsetting:forceoff"
        }
        CoreMesh {
          MeshAsset {
            Id: 10227161647766562745
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
        Id: 11796613167341299084
        Name: "Horn"
        Transform {
          Location {
            X: 1.453125
            Y: 24.3959961
            Z: 85.2589111
          }
          Rotation {
            Pitch: 0.358646393
            Yaw: -179.017944
            Roll: 106.23378
          }
          Scale {
            X: 0.0027308648
            Y: -0.124826372
            Z: 0.62789166
          }
        }
        ParentId: 2698839496455357431
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 10120512676309829011
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
          Value: "mc:ecollisionsetting:forceoff"
        }
        CoreMesh {
          MeshAsset {
            Id: 10227161647766562745
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
        Id: 9185873772049036012
        Name: "Horn"
        Transform {
          Location {
            X: 2.08886719
            Y: -38.6308594
            Z: 25.8387146
          }
          Rotation {
            Pitch: 0.0920777768
            Yaw: 179.82048
            Roll: -44.7731628
          }
          Scale {
            X: 0.00272870203
            Y: -0.124835305
            Z: 0.470220685
          }
        }
        ParentId: 2698839496455357431
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 10120512676309829011
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
          Value: "mc:ecollisionsetting:forceoff"
        }
        CoreMesh {
          MeshAsset {
            Id: 10227161647766562745
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
        Id: 16336028546574140699
        Name: "Horn"
        Transform {
          Location {
            X: -0.0297851562
            Y: -8.28369141
            Z: 3.59469604
          }
          Rotation {
            Pitch: -0.943481326
            Yaw: -1.01212215
            Roll: 34.1351166
          }
          Scale {
            X: 0.00273136026
            Y: -0.124835186
            Z: 0.481717706
          }
        }
        ParentId: 2698839496455357431
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 10120512676309829011
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
          Value: "mc:ecollisionsetting:forceoff"
        }
        CoreMesh {
          MeshAsset {
            Id: 10227161647766562745
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
        Id: 1150934831250752061
        Name: "Horn"
        Transform {
          Location {
            X: 1.47137928
            Y: 39.535614
            Z: 8.21463
          }
          Rotation {
            Pitch: -0.941497803
            Yaw: -1.02279663
            Roll: 5.63409948
          }
          Scale {
            X: 0.00222074799
            Y: -0.101254568
            Z: 0.407522082
          }
        }
        ParentId: 2698839496455357431
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 10120512676309829011
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
          Value: "mc:ecollisionsetting:forceoff"
        }
        CoreMesh {
          MeshAsset {
            Id: 10227161647766562745
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
        Id: 11031901341703307681
        Name: "Horn"
        Transform {
          Location {
            X: 2.71563649
            Y: 137.710342
            Z: 149.892868
          }
          Rotation {
            Pitch: -0.594116211
            Yaw: -0.583862305
            Roll: -130.268799
          }
          Scale {
            X: 0.00272300187
            Y: 0.194193587
            Z: 0.818518
          }
        }
        ParentId: 2698839496455357431
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 10120512676309829011
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
          Value: "mc:ecollisionsetting:forceoff"
        }
        CoreMesh {
          MeshAsset {
            Id: 10227161647766562745
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
        Id: 16396124458344015631
        Name: "Horn"
        Transform {
          Location {
            X: 2.7156086
            Y: 58.9019279
            Z: 157.787582
          }
          Rotation {
            Pitch: 0.876374722
            Yaw: 179.151733
            Roll: 148.306564
          }
          Scale {
            X: 0.00273567648
            Y: 0.194185778
            Z: 0.543515563
          }
        }
        ParentId: 2698839496455357431
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 10120512676309829011
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
          Value: "mc:ecollisionsetting:forceoff"
        }
        CoreMesh {
          MeshAsset {
            Id: 10227161647766562745
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
        Id: 6950053860488998808
        Name: "Horn"
        Transform {
          Location {
            X: 0.0078125
            Y: 106.367676
            Z: 123.298706
          }
          Rotation {
            Pitch: -0.95749
            Yaw: -1.02121246
            Roll: -147.8293
          }
          Scale {
            X: 0.00272820704
            Y: -0.124826878
            Z: 0.612904847
          }
        }
        ParentId: 2698839496455357431
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 10120512676309829011
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
          Value: "mc:ecollisionsetting:forceoff"
        }
        CoreMesh {
          MeshAsset {
            Id: 10227161647766562745
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
        Id: 91621221130801863
        Name: "Horn"
        Transform {
          Location {
            X: 2.1018157
            Y: -64.032692
            Z: 50.8714638
          }
          Rotation {
            Pitch: -1.00204468
            Yaw: -1.09945679
            Roll: 20.4491272
          }
          Scale {
            X: 0.00055018469
            Y: 0.145599589
            Z: 0.126376063
          }
        }
        ParentId: 2698839496455357431
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 10120512676309829011
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
          Value: "mc:ecollisionsetting:forceoff"
        }
        CoreMesh {
          MeshAsset {
            Id: 10227161647766562745
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
        Id: 5875564470252485901
        Name: "Horn"
        Transform {
          Location {
            X: 2.10181808
            Y: -71.2586899
            Z: 70.3234253
          }
          Rotation {
            Pitch: 1.36801851
            Yaw: 178.322495
            Roll: -126.682083
          }
          Scale {
            X: 0.0005583046
            Y: 0.214060724
            Z: 0.12637499
          }
        }
        ParentId: 2698839496455357431
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 10120512676309829011
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
          Value: "mc:ecollisionsetting:forceoff"
        }
        CoreMesh {
          MeshAsset {
            Id: 10227161647766562745
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
        Id: 350146803386638035
        Name: "Horn"
        Transform {
          Location {
            X: 2.08333182
            Y: -69.9843597
            Z: 77.6992493
          }
          Rotation {
            Pitch: -1.02584839
            Yaw: -1.12442017
            Roll: 20.4043198
          }
          Scale {
            X: 0.000550184748
            Y: 0.145599589
            Z: 0.126376063
          }
        }
        ParentId: 2698839496455357431
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 10120512676309829011
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
          Value: "mc:ecollisionsetting:forceoff"
        }
        CoreMesh {
          MeshAsset {
            Id: 10227161647766562745
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
        Id: 8289416314994499044
        Name: "Horn"
        Transform {
          Location {
            X: 1.9417392
            Y: -68.2718353
            Z: 95.4427109
          }
          Rotation {
            Pitch: 1.37488973
            Yaw: 178.319092
            Roll: -117.396088
          }
          Scale {
            X: 0.000393695605
            Y: 0.104186535
            Z: 0.0904320255
          }
        }
        ParentId: 2698839496455357431
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 10120512676309829011
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
          Value: "mc:ecollisionsetting:forceoff"
        }
        CoreMesh {
          MeshAsset {
            Id: 10227161647766562745
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
        Id: 8408843355119584714
        Name: "Horn"
        Transform {
          Location {
            X: -0.000307405251
            Y: -53.3589821
            Z: 32.5976562
          }
          Rotation {
            Pitch: 1.31728387
            Yaw: 178.398819
            Roll: -101.185303
          }
          Scale {
            X: 0.000550185388
            Y: 0.145599589
            Z: 0.126377925
          }
        }
        ParentId: 2698839496455357431
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 10120512676309829011
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
          Value: "mc:ecollisionsetting:forceoff"
        }
        CoreMesh {
          MeshAsset {
            Id: 10227161647766562745
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
        Id: 2866774595882297311
        Name: "Horn"
        Transform {
          Location {
            X: 1.85419619
            Y: -35.5097
            Z: 13.5773258
          }
          Rotation {
            Pitch: -1.17330933
            Yaw: -1.26702881
            Roll: -5.31036377
          }
          Scale {
            X: 0.000553626684
            Y: 0.217666641
            Z: 0.143235937
          }
        }
        ParentId: 2698839496455357431
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 10120512676309829011
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
          Value: "mc:ecollisionsetting:forceoff"
        }
        CoreMesh {
          MeshAsset {
            Id: 10227161647766562745
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
        Id: 14150807285330741955
        Name: "Horn"
        Transform {
          Location {
            X: -0.000296925515
            Y: 6.04764748
            Z: -2.91103447e-07
          }
          Rotation {
            Pitch: -1.41244507
            Yaw: -1.51589966
            Roll: -20.3972473
          }
          Scale {
            X: 0.000550185388
            Y: 0.145599589
            Z: 0.126377791
          }
        }
        ParentId: 2698839496455357431
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 10120512676309829011
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
          Value: "mc:ecollisionsetting:forceoff"
        }
        CoreMesh {
          MeshAsset {
            Id: 10227161647766562745
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
        Id: 3530071953445646495
        Name: "Horn"
        Transform {
          Location {
            X: -0.000303912
            Y: -22.4181461
            Z: 5.88917685
          }
          Rotation {
            Pitch: 1.22251499
            Yaw: 178.517563
            Roll: -86.0916443
          }
          Scale {
            X: 0.000550185388
            Y: 0.145599589
            Z: 0.126377463
          }
        }
        ParentId: 2698839496455357431
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 10120512676309829011
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
          Value: "mc:ecollisionsetting:forceoff"
        }
        CoreMesh {
          MeshAsset {
            Id: 10227161647766562745
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
        Id: 1037557065937418147
        Name: "Horn"
        Transform {
          Location {
            X: 1.86276865
            Y: 28.932003
            Z: 6.22933102
          }
          Rotation {
            Pitch: 1.4471736
            Yaw: 178.307648
            Roll: -43.4760742
          }
          Scale {
            X: 0.000547536707
            Y: 0.145587325
            Z: 0.15399538
          }
        }
        ParentId: 2698839496455357431
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 10120512676309829011
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
          Value: "mc:ecollisionsetting:forceoff"
        }
        CoreMesh {
          MeshAsset {
            Id: 10227161647766562745
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
        Id: 6393573670133800230
        Name: "Hill 05"
        Transform {
          Location {
            X: 2.3430109
            Y: -8.50558662
            Z: 40.515728
          }
          Rotation {
            Pitch: -33.8405457
            Yaw: 89.9996262
            Roll: -89.9986877
          }
          Scale {
            X: 0.229581058
            Y: 0.208353236
            Z: 0.000999999931
          }
        }
        ParentId: 5190944055559015791
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 10120512676309829011
            }
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
            Id: 11198688474246660903
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
        Id: 5416576352591893676
        Name: "Color Wing"
        Transform {
          Location {
            X: 9.33864117
            Y: 124.321541
            Z: -95.3994751
          }
          Rotation {
            Pitch: 6.83018879e-06
            Yaw: -179.999954
            Roll: -0.000213623047
          }
          Scale {
            X: 0.92576921
            Y: 0.92576921
            Z: 0.92576921
          }
        }
        ParentId: 17219487424644704178
        ChildIds: 6418717325799179331
        ChildIds: 17653507827248548343
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
        Id: 6418717325799179331
        Name: "Front Lower Color"
        Transform {
          Location {
            X: 5.55907869
            Y: 6.12992
            Z: -1.45551724e-06
          }
          Rotation {
          }
          Scale {
            X: 0.99999994
            Y: 0.99999994
            Z: 0.99999994
          }
        }
        ParentId: 5416576352591893676
        ChildIds: 2283181387527965191
        ChildIds: 1570218582890819171
        ChildIds: 11315228824992382434
        ChildIds: 4296697780128931260
        ChildIds: 11887538529531560171
        ChildIds: 6205488854641603276
        ChildIds: 3856653192282669749
        ChildIds: 17217165161635182441
        ChildIds: 15681202196765640765
        ChildIds: 16189647592480151617
        ChildIds: 14254859452035960412
        ChildIds: 492137854057022196
        ChildIds: 4199291420236751000
        ChildIds: 683707741008221798
        ChildIds: 6250589407666424329
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
        Id: 2283181387527965191
        Name: "Cylinder"
        Transform {
          Location {
            X: 0.344489515
            Y: -106.013466
            Z: 30.132864
          }
          Rotation {
            Pitch: 21.3331795
            Yaw: -89.9948807
            Roll: -90.0024643
          }
          Scale {
            X: 0.0428040549
            Y: 0.0618183129
            Z: 0.000436040398
          }
        }
        ParentId: 6418717325799179331
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 3556700782779527591
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
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.344658524
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.542012
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
            Id: 10602013473409766249
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
        Id: 1570218582890819171
        Name: "Cylinder"
        Transform {
          Location {
            X: 0.466222018
            Y: -108.592728
            Z: -14.7677212
          }
          Rotation {
            Pitch: -14.828702
            Yaw: -89.9962845
            Roll: -90.0029602
          }
          Scale {
            X: 0.055474408
            Y: 0.0801170468
            Z: 0.000565111928
          }
        }
        ParentId: 6418717325799179331
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 3556700782779527591
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
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.344658524
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.542012
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
            Id: 10602013473409766249
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
        Id: 11315228824992382434
        Name: "Cylinder"
        Transform {
          Location {
            X: 0.515947163
            Y: -102.134514
            Z: -30.5477772
          }
          Rotation {
            Pitch: -34.5848083
            Yaw: -89.9961395
            Roll: -90.0034256
          }
          Scale {
            X: 0.055474408
            Y: 0.0801170468
            Z: 0.000565111928
          }
        }
        ParentId: 6418717325799179331
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 3556700782779527591
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
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.344658524
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.542012
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
            Id: 10602013473409766249
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
        Id: 4296697780128931260
        Name: "Cylinder"
        Transform {
          Location {
            X: 0.3792077
            Y: -92.1590576
            Z: -46.0195923
          }
          Rotation {
            Pitch: -55.0717697
            Yaw: -89.9926605
            Roll: -90.0078
          }
          Scale {
            X: 0.0718124881
            Y: 0.103712708
            Z: 0.000731546083
          }
        }
        ParentId: 6418717325799179331
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 3556700782779527591
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
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.344658524
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.542012
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
            Id: 10602013473409766249
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
        Id: 11887538529531560171
        Name: "Cylinder"
        Transform {
          Location {
            X: 0.473255068
            Y: -113.241646
            Z: 18.2410831
          }
          Rotation {
            Pitch: 1.8619504
            Yaw: -89.9961624
            Roll: -90.0024567
          }
          Scale {
            X: 0.055474408
            Y: 0.0801170468
            Z: 0.000565111928
          }
        }
        ParentId: 6418717325799179331
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 3556700782779527591
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
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.344658524
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.542012
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
            Id: 10602013473409766249
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
        Id: 6205488854641603276
        Name: "Cylinder"
        Transform {
          Location {
            X: 0.607199907
            Y: -77.7160263
            Z: -58.2785797
          }
          Rotation {
            Pitch: -55.0717697
            Yaw: -89.992569
            Roll: -90.0079422
          }
          Scale {
            X: 0.0704787597
            Y: 0.101786651
            Z: 0.00071796024
          }
        }
        ParentId: 6418717325799179331
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 3556700782779527591
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
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.344658524
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.542012
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
            Id: 10602013473409766249
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
        Id: 3856653192282669749
        Name: "Cylinder"
        Transform {
          Location {
            X: 0.711913347
            Y: -64.2149277
            Z: -69.5007706
          }
          Rotation {
            Pitch: -55.0715523
            Yaw: -89.9924545
            Roll: -90.0080872
          }
          Scale {
            X: 0.055474408
            Y: 0.0801170468
            Z: 0.000565111928
          }
        }
        ParentId: 6418717325799179331
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 3556700782779527591
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
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.344658524
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.542012
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
            Id: 10602013473409766249
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
        Id: 17217165161635182441
        Name: "Cylinder"
        Transform {
          Location {
            X: 0.311000973
            Y: -46.7352791
            Z: -77.4041595
          }
          Rotation {
            Pitch: -67.3970795
            Yaw: -89.9851532
            Roll: -90.0158844
          }
          Scale {
            X: 0.055474408
            Y: 0.0801170468
            Z: 0.000565111928
          }
        }
        ParentId: 6418717325799179331
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 3556700782779527591
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
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.344658524
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.542012
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
            Id: 10602013473409766249
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
        Id: 15681202196765640765
        Name: "Cylinder"
        Transform {
          Location {
            X: 0.315556169
            Y: -29.7956238
            Z: -81.1890411
          }
          Rotation {
            Pitch: -88.7966537
            Yaw: -89.5524063
            Roll: -90.4461212
          }
          Scale {
            X: 0.055474408
            Y: 0.0801170468
            Z: 0.000565111928
          }
        }
        ParentId: 6418717325799179331
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 3556700782779527591
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
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.344658524
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.542012
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
            Id: 10602013473409766249
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
        Id: 16189647592480151617
        Name: "Cylinder"
        Transform {
          Location {
            X: 0.437591404
            Y: -11.532588
            Z: -75.8314133
          }
          Rotation {
            Pitch: -65.3026047
            Yaw: 89.960022
            Roll: 90.0317459
          }
          Scale {
            X: 0.055474408
            Y: 0.0801170468
            Z: 0.000565111928
          }
        }
        ParentId: 6418717325799179331
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 3556700782779527591
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
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.344658524
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.542012
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
            Id: 10602013473409766249
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
        Id: 14254859452035960412
        Name: "Cylinder"
        Transform {
          Location {
            X: 1.07579267
            Y: 5.19974136
            Z: -68.7972336
          }
          Rotation {
            Pitch: -46.4065514
            Yaw: 89.9735794
            Roll: 90.0151749
          }
          Scale {
            X: 0.0449714251
            Y: 0.0649484769
            Z: 0.000458119204
          }
        }
        ParentId: 6418717325799179331
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 3556700782779527591
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
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.344658524
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.542012
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
            Id: 10602013473409766249
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
        Id: 492137854057022196
        Name: "Cylinder"
        Transform {
          Location {
            X: 0.521666765
            Y: -113.486603
            Z: 1.4085263
          }
          Rotation {
            Pitch: -15.8981457
            Yaw: -89.9968109
            Roll: -90.0022278
          }
          Scale {
            X: 0.055474408
            Y: 0.0801170468
            Z: 0.000565111928
          }
        }
        ParentId: 6418717325799179331
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 3556700782779527591
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
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.344658524
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.542012
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
            Id: 10602013473409766249
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
        Id: 4199291420236751000
        Name: "Hill 05"
        Transform {
          Location {
            X: 0.00256824493
            Y: 46.2559204
            Z: 36.9922791
          }
          Rotation {
            Pitch: -37.5231
            Yaw: -89.9995117
            Roll: 89.9997406
          }
          Scale {
            X: 0.187036663
            Y: -0.11788892
            Z: 0.000773802632
          }
        }
        ParentId: 6418717325799179331
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 3556700782779527591
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.542012
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.344658524
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.650015652
              G: 0.27388
              B: 0.820000052
              A: 1
            }
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
            Id: 11198688474246660903
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
        Id: 683707741008221798
        Name: "Hill 05"
        Transform {
          Location {
            X: 0.86315161
            Y: -1.21995211
            Z: 2.43756843
          }
          Rotation {
            Pitch: -18.8467102
            Yaw: -89.9995117
            Roll: 89.9997177
          }
          Scale {
            X: 0.24978736
            Y: 0.172735035
            Z: 0.000773962412
          }
        }
        ParentId: 6418717325799179331
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 3556700782779527591
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.542012
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.344658524
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.650015652
              G: 0.27388
              B: 0.820000052
              A: 1
            }
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
            Id: 11198688474246660903
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
        Id: 6250589407666424329
        Name: "Hill 05"
        Transform {
          Location {
            X: 0.000288774609
            Y: -41.7245331
            Z: -3.49324146e-05
          }
          Rotation {
            Pitch: -33.8405037
            Yaw: 90.0004654
            Roll: -89.9986038
          }
          Scale {
            X: 0.177687109
            Y: 0.16125761
            Z: 0.000773962412
          }
        }
        ParentId: 6418717325799179331
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 3556700782779527591
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.542012
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.344658524
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.650015652
              G: 0.27388
              B: 0.820000052
              A: 1
            }
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
            Id: 11198688474246660903
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
        Id: 17653507827248548343
        Name: "Back Lower Color"
        Transform {
          Location {
            X: -5.55907869
            Y: -6.12992382
            Z: 16.6331921
          }
          Rotation {
            Pitch: -87.7218628
            Yaw: 90.0008545
            Roll: 89.9988785
          }
          Scale {
            X: 0.773962438
            Y: 0.773962438
            Z: 0.773962438
          }
        }
        ParentId: 5416576352591893676
        ChildIds: 2716604214927528765
        ChildIds: 18135316621974680995
        ChildIds: 877087698601364765
        ChildIds: 9837399623969027073
        ChildIds: 16602279940080619858
        ChildIds: 9681609000830171927
        ChildIds: 9588903397984565223
        ChildIds: 16304292038037957170
        ChildIds: 13061845066392110387
        ChildIds: 7614442209919612494
        ChildIds: 5847956122473594690
        ChildIds: 11206034343325643612
        ChildIds: 12866632031593599621
        ChildIds: 351832976164118172
        ChildIds: 10327317875424965896
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
        Id: 2716604214927528765
        Name: "Hill 05"
        Transform {
          Location {
            X: 13.5460052
            Y: 35.6200562
            Z: -14.86
          }
          Rotation {
            Pitch: 0.00011611321
            Yaw: -53.8815308
            Roll: -179.998581
          }
          Scale {
            X: 0.229581088
            Y: 0.208353281
            Z: -0.001
          }
        }
        ParentId: 17653507827248548343
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 3556700782779527591
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.542012
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.344658524
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.650015652
              G: 0.27388
              B: 0.820000052
              A: 1
            }
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
            Id: 11198688474246660903
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
        Id: 18135316621974680995
        Name: "Hill 05"
        Transform {
          Location {
            X: 12.284668
            Y: -15.3501282
            Z: -14.8684444
          }
          Rotation {
            Yaw: 73.4311447
            Roll: 179.999756
          }
          Scale {
            X: 0.322738379
            Y: 0.223182738
            Z: -0.001
          }
        }
        ParentId: 17653507827248548343
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 3556700782779527591
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.542012
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.344658524
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.650015652
              G: 0.27388
              B: 0.820000052
              A: 1
            }
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
            Id: 11198688474246660903
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
        Id: 877087698601364765
        Name: "Hill 05"
        Transform {
          Location {
            X: -29.8063202
            Y: -77.0432739
            Z: -14.86
          }
          Rotation {
            Pitch: -3.05175781e-05
            Yaw: 54.7548218
            Roll: 179.999756
          }
          Scale {
            X: 0.241661161
            Y: -0.152318671
            Z: -0.001
          }
        }
        ParentId: 17653507827248548343
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 3556700782779527591
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.542012
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.344658524
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.650015652
              G: 0.27388
              B: 0.820000052
              A: 1
            }
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
            Id: 11198688474246660903
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
        Id: 9837399623969027073
        Name: "Cylinder"
        Transform {
          Location {
            X: 111.178123
            Y: -18.1535568
            Z: -12.494544
          }
          Rotation {
            Pitch: -0.0179907177
            Yaw: -41.3153
            Roll: -0.00360349123
          }
          Scale {
            X: 0.0581054315
            Y: 0.0839168206
            Z: 0.000591914
          }
        }
        ParentId: 17653507827248548343
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 3556700782779527591
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
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.344658524
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.542012
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
            Id: 10602013473409766249
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
        Id: 16602279940080619858
        Name: "Cylinder"
        Transform {
          Location {
            X: 119.396675
            Y: 3.80946088
            Z: -14.2168961
          }
          Rotation {
            Pitch: -0.0166861508
            Yaw: -22.4192867
            Roll: -0.00450128317
          }
          Scale {
            X: 0.071675837
            Y: 0.103515409
            Z: 0.000730154221
          }
        }
        ParentId: 17653507827248548343
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 3556700782779527591
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
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.344658524
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.542012
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
            Id: 10602013473409766249
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
        Id: 9681609000830171927
        Name: "Cylinder"
        Transform {
          Location {
            X: 119.61628
            Y: 49.3341446
            Z: -14.4529829
          }
          Rotation {
            Pitch: -0.00590128312
            Yaw: 24.881134
            Roll: -0.00180544064
          }
          Scale {
            X: 0.071675837
            Y: 0.103515409
            Z: 0.000730154221
          }
        }
        ParentId: 17653507827248548343
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 3556700782779527591
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
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.344658524
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.542012
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
            Id: 10602013473409766249
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
        Id: 9588903397984565223
        Name: "Cylinder"
        Transform {
          Location {
            X: 108.518127
            Y: 71.4952545
            Z: -14.5252829
          }
          Rotation {
            Pitch: -0.00448743394
            Yaw: 37.2065353
            Roll: -0.00176730182
          }
          Scale {
            X: 0.071675837
            Y: 0.103515409
            Z: 0.000730154221
          }
        }
        ParentId: 17653507827248548343
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 3556700782779527591
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
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.344658524
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.542012
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
            Id: 10602013473409766249
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
        Id: 16304292038037957170
        Name: "Cylinder"
        Transform {
          Location {
            X: 125.375504
            Y: 27.6505013
            Z: -14.6214943
          }
          Rotation {
            Pitch: -0.0142750945
            Yaw: 3.65107536
            Roll: 0.33713907
          }
          Scale {
            X: 0.071675837
            Y: 0.103515409
            Z: 0.000730154221
          }
        }
        ParentId: 17653507827248548343
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 3556700782779527591
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
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.344658524
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.542012
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
            Id: 10602013473409766249
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
        Id: 13061845066392110387
        Name: "Cylinder"
        Transform {
          Location {
            X: 93.3365326
            Y: 88.3484039
            Z: -12.92
          }
          Rotation {
            Pitch: -0.00443279231
            Yaw: 37.2062798
            Roll: -0.00174410758
          }
          Scale {
            X: 0.0910622478
            Y: 0.13151367
            Z: 0.000927642279
          }
        }
        ParentId: 17653507827248548343
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 3556700782779527591
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
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.344658524
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.542012
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
            Id: 10602013473409766249
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
        Id: 7614442209919612494
        Name: "Cylinder"
        Transform {
          Location {
            X: 76.7706909
            Y: 106.365898
            Z: -12.6601849
          }
          Rotation {
            Pitch: -0.00436449051
            Yaw: 37.2062798
            Roll: -0.00168958632
          }
          Scale {
            X: 0.0927854851
            Y: 0.134002239
            Z: 0.000945195789
          }
        }
        ParentId: 17653507827248548343
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 3556700782779527591
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
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.344658524
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.542012
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
            Id: 10602013473409766249
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
        Id: 5847956122473594690
        Name: "Cylinder"
        Transform {
          Location {
            X: 56.28162
            Y: 118.447411
            Z: -14.2455645
          }
          Rotation {
            Pitch: -0.00338094356
            Yaw: 57.6932373
            Roll: -0.00126133149
          }
          Scale {
            X: 0.071675837
            Y: 0.103515409
            Z: 0.000730154221
          }
        }
        ParentId: 17653507827248548343
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 3556700782779527591
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
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.344658524
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.542012
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
            Id: 10602013473409766249
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
        Id: 11206034343325643612
        Name: "Cylinder"
        Transform {
          Location {
            X: 35.5837326
            Y: 125.978073
            Z: -12.2880974
          }
          Rotation {
            Pitch: -0.00383856613
            Yaw: 77.4493942
            Roll: -0.00201294804
          }
          Scale {
            X: 0.071675837
            Y: 0.103515409
            Z: 0.000730154221
          }
        }
        ParentId: 17653507827248548343
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 3556700782779527591
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
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.344658524
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.542012
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
            Id: 10602013473409766249
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
        Id: 12866632031593599621
        Name: "Cylinder"
        Transform {
          Location {
            X: 14.4410572
            Y: 131.461716
            Z: -14.6022444
          }
          Rotation {
            Pitch: -0.00331947184
            Yaw: 76.3799133
            Roll: -0.00132844318
          }
          Scale {
            X: 0.071675837
            Y: 0.103515409
            Z: 0.000730154221
          }
        }
        ParentId: 17653507827248548343
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 3556700782779527591
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
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.344658524
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.542012
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
            Id: 10602013473409766249
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
        Id: 351832976164118172
        Name: "Cylinder"
        Transform {
          Location {
            X: -7.27339602
            Y: 130.28215
            Z: -14.6250887
          }
          Rotation {
            Pitch: -0.00410494348
            Yaw: 94.1400604
            Roll: -0.00267747347
          }
          Scale {
            X: 0.071675837
            Y: 0.103515409
            Z: 0.000730154221
          }
        }
        ParentId: 17653507827248548343
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 3556700782779527591
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
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.344658524
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.542012
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
            Id: 10602013473409766249
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
        Id: 10327317875424965896
        Name: "Cylinder"
        Transform {
          Location {
            X: -22.2538166
            Y: 120.340553
            Z: -14.5674829
          }
          Rotation {
            Pitch: -0.00502018863
            Yaw: 113.611214
            Roll: -0.00449888967
          }
          Scale {
            X: 0.0553050786
            Y: 0.0798725
            Z: 0.000563387
          }
        }
        ParentId: 17653507827248548343
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 3556700782779527591
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
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.344658524
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.542012
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
            Id: 10602013473409766249
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
        Id: 17250510785691196415
        Name: "Fairy Dot Volume VFX"
        Transform {
          Location {
            X: -6.54438066
            Y: 152.3694
            Z: -32.8690414
          }
          Rotation {
            Pitch: 79.5284958
            Yaw: -92.4824371
            Roll: -89.6698227
          }
          Scale {
            X: 1.5046128
            Y: 1.0376792
            Z: 2.07535839
          }
        }
        ParentId: 8787708131630442069
        UnregisteredParameters {
          Overrides {
            Name: "bp:Volume Type"
            Enum {
              Value: "mc:evfxvolumetype:3"
            }
          }
          Overrides {
            Name: "bp:Life"
            Float: 1.34117818
          }
          Overrides {
            Name: "bp:Density"
            Float: 0.827092886
          }
          Overrides {
            Name: "bp:Particle Scale Multiplier"
            Float: 0.73416
          }
          Overrides {
            Name: "bp:color"
            Color {
              G: 0.920529604
              B: 1
              A: 1
            }
          }
          Overrides {
            Name: "bp:Secondary Color"
            Color {
              R: 0.820000052
              B: 0.814569354
              A: 1
            }
          }
          Overrides {
            Name: "bp:Emissive Boost"
            Float: 5.54961729
          }
          Overrides {
            Name: "bp:Local Space"
            Bool: true
          }
          Overrides {
            Name: "bp:Enable Particle Trail"
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
            Id: 7240897054821455019
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
        Id: 15647096563199351254
        Name: "Wing L"
        Transform {
          Location {
            X: -4.53462648
            Z: -0.559582114
          }
          Rotation {
            Pitch: -1.63775635
            Yaw: -39.7603149
            Roll: -4.52642822
          }
          Scale {
            X: 0.999999583
            Y: 0.999999583
            Z: 0.999999583
          }
        }
        ParentId: 10203857881934804376
        ChildIds: 13768076923647869466
        ChildIds: 3325703827007354024
        ChildIds: 7494046674463817795
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
        Id: 13768076923647869466
        Name: "Fairy Dot Volume VFX"
        Transform {
          Location {
            X: 1.43999898
            Y: -148.112381
            Z: -32.4769974
          }
          Rotation {
            Pitch: 87.1143112
            Yaw: 18.0330734
            Roll: 12.683342
          }
          Scale {
            X: 1.97690248
            Y: 1.36340094
            Z: 2.72680187
          }
        }
        ParentId: 15647096563199351254
        UnregisteredParameters {
          Overrides {
            Name: "bp:Volume Type"
            Enum {
              Value: "mc:evfxvolumetype:3"
            }
          }
          Overrides {
            Name: "bp:Life"
            Float: 1.34117818
          }
          Overrides {
            Name: "bp:Density"
            Float: 0.827092886
          }
          Overrides {
            Name: "bp:Particle Scale Multiplier"
            Float: 0.73416
          }
          Overrides {
            Name: "bp:color"
            Color {
              G: 0.920529604
              B: 1
              A: 1
            }
          }
          Overrides {
            Name: "bp:Secondary Color"
            Color {
              R: 0.820000052
              B: 0.814569354
              A: 1
            }
          }
          Overrides {
            Name: "bp:Emissive Boost"
            Float: 5.54961729
          }
          Overrides {
            Name: "bp:Local Space"
            Bool: true
          }
          Overrides {
            Name: "bp:Enable Particle Trail"
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
            Id: 7240897054821455019
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
        Id: 3325703827007354024
        Name: "Upper Wing"
        Transform {
          Location {
            X: 8.04550934
            Y: -193.391449
            Z: 47.8669434
          }
          Rotation {
            Pitch: 1.36603776e-05
            Roll: 2.56132e-05
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 15647096563199351254
        ChildIds: 17950264572740843095
        ChildIds: 10130774441728381792
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
        Id: 17950264572740843095
        Name: "Black Wing"
        Transform {
          Location {
            X: -4.14177608
            Y: 19.0710945
            Z: -41.6745605
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 3325703827007354024
        ChildIds: 15478600540980984060
        ChildIds: 5439752954401714077
        ChildIds: 14633823835126200155
        ChildIds: 8861988508658092787
        ChildIds: 4883357822565444832
        ChildIds: 15632628157733424204
        ChildIds: 9179031858955345376
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
        Id: 15478600540980984060
        Name: "Hill 05"
        Transform {
          Location {
            X: 0.0789295807
            Y: 21.451931
            Z: 28.4191608
          }
          Rotation {
            Pitch: 9.73480129
            Yaw: -90.1161346
            Roll: 89.8272858
          }
          Scale {
            X: 0.473114043
            Y: 0.266105682
            Z: 0.00100000016
          }
        }
        ParentId: 17950264572740843095
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 10120512676309829011
            }
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
            Id: 11198688474246660903
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
        Id: 5439752954401714077
        Name: "Hill 05"
        Transform {
          Location {
            X: 0.080078125
            Y: -74.7524414
            Z: 80.9437256
          }
          Rotation {
            Pitch: -49.9557915
            Yaw: 89.9997711
            Roll: 89.9997711
          }
          Scale {
            X: 0.181516051
            Y: -0.129646719
            Z: 0.00101896678
          }
        }
        ParentId: 17950264572740843095
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 10120512676309829011
            }
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
            Id: 11198688474246660903
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
        Id: 14633823835126200155
        Name: "Hill 05"
        Transform {
          Location {
            X: 0.080078125
            Y: -53.5029297
            Z: 35.3664551
          }
          Rotation {
            Pitch: -4.95096493
            Yaw: -90.0001526
            Roll: -90.0001678
          }
          Scale {
            X: 0.181516051
            Y: -0.129646719
            Z: 0.00101896678
          }
        }
        ParentId: 17950264572740843095
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 10120512676309829011
            }
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
            Id: 11198688474246660903
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
        Id: 8861988508658092787
        Name: "Hill 05"
        Transform {
          Location {
            X: -0.235839605
            Y: 109.950668
            Z: 0.000123500824
          }
          Rotation {
            Pitch: 27.3746796
            Yaw: -90.0001221
            Roll: -90.000061
          }
          Scale {
            X: 0.181516051
            Y: -0.129646719
            Z: 0.00101896678
          }
        }
        ParentId: 17950264572740843095
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 10120512676309829011
            }
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
            Id: 11198688474246660903
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
        Id: 4883357822565444832
        Name: "Front Black"
        Transform {
          Location {
            X: -1.94444251
            Y: -43.0109558
            Z: 39.9555664
          }
          Rotation {
            Pitch: -79.9249039
            Yaw: 89.9996109
            Roll: 89.9996643
          }
          Scale {
            X: 1.01908278
            Y: 1.01908278
            Z: 1.01908278
          }
        }
        ParentId: 17950264572740843095
        ChildIds: 14370528965119760295
        ChildIds: 17078049473332413275
        ChildIds: 1180693409697220058
        ChildIds: 6336206255229103668
        ChildIds: 16956636380307957837
        ChildIds: 12300088870490680723
        ChildIds: 16299123766559877151
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
        Id: 14370528965119760295
        Name: "Horn"
        Transform {
          Location {
            X: -15.9969263
            Y: 44.4797363
            Z: 0.743416607
          }
          Rotation {
            Pitch: -88.9758911
            Yaw: -84.0907
            Roll: -1.84228516
          }
          Scale {
            X: 0.00209002104
            Y: 0.149105906
            Z: 0.765559554
          }
        }
        ParentId: 4883357822565444832
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 10120512676309829011
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
          Value: "mc:ecollisionsetting:forceoff"
        }
        CoreMesh {
          MeshAsset {
            Id: 10227161647766562745
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
        Id: 17078049473332413275
        Name: "Horn"
        Transform {
          Location {
            X: 22.7824802
            Y: 42.6457939
            Z: -1.17362177
          }
          Rotation {
            Pitch: -89.3382568
            Yaw: -79.8766174
            Roll: -6.51217651
          }
          Scale {
            X: 0.00247279205
            Y: 0.176410466
            Z: 1.05071247
          }
        }
        ParentId: 4883357822565444832
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 10120512676309829011
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
          Value: "mc:ecollisionsetting:forceoff"
        }
        CoreMesh {
          MeshAsset {
            Id: 10227161647766562745
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
        Id: 1180693409697220058
        Name: "Horn"
        Transform {
          Location {
            X: -28.8785
            Y: 36.3914261
            Z: 0.772731721
          }
          Rotation {
            Pitch: 90
            Roll: -120.20903
          }
          Scale {
            X: 0.00177213375
            Y: 0.126441061
            Z: 0.296396405
          }
        }
        ParentId: 4883357822565444832
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 10120512676309829011
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
          Value: "mc:ecollisionsetting:forceoff"
        }
        CoreMesh {
          MeshAsset {
            Id: 10227161647766562745
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
        Id: 6336206255229103668
        Name: "Horn"
        Transform {
          Location {
            X: 11.0115843
            Y: 42.8398
            Z: -1.4563756
          }
          Rotation {
            Pitch: 90
            Roll: -108.506424
          }
          Scale {
            X: 0.00155281497
            Y: 0.1107921
            Z: 0.342926
          }
        }
        ParentId: 4883357822565444832
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 10120512676309829011
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
          Value: "mc:ecollisionsetting:forceoff"
        }
        CoreMesh {
          MeshAsset {
            Id: 10227161647766562745
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
        Id: 16956636380307957837
        Name: "Horn"
        Transform {
          Location {
            X: 32.1037216
            Y: 43.3793526
            Z: 0.559112549
          }
          Rotation {
            Pitch: -90
            Yaw: -45
            Roll: -56.5732117
          }
          Scale {
            X: 0.000788620964
            Y: 0.0562674701
            Z: 0.174160242
          }
        }
        ParentId: 4883357822565444832
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 10120512676309829011
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
          Value: "mc:ecollisionsetting:forceoff"
        }
        CoreMesh {
          MeshAsset {
            Id: 10227161647766562745
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
        Id: 12300088870490680723
        Name: "Text 04: C"
        Transform {
          Location {
            X: -31.624279
            Y: -31.823019
            Z: 0.454962194
          }
          Rotation {
            Pitch: 2.04905664e-05
            Yaw: -137.934464
            Roll: 89.9999
          }
          Scale {
            X: 0.438312322
            Y: 0.000981274643
            Z: 1.32652342
          }
        }
        ParentId: 4883357822565444832
        UnregisteredParameters {
          Overrides {
            Name: "ma:Font.Bevel:id"
            AssetReference {
              Id: 10120512676309829011
            }
          }
          Overrides {
            Name: "ma:Font.Faces:id"
            AssetReference {
              Id: 10120512676309829011
            }
          }
          Overrides {
            Name: "ma:Font.Sides:id"
            AssetReference {
              Id: 10120512676309829011
            }
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
            Id: 7307109347043237742
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
        Id: 16299123766559877151
        Name: "Fantasy Castle Stairs Spiral Trim 01 - Large"
        Transform {
          Location {
            X: 8.70626163
            Y: -220.694153
            Z: 0.33448562
          }
          Rotation {
            Pitch: 2.04905664e-05
            Yaw: -156.78772
            Roll: 6.00651729e-05
          }
          Scale {
            X: 0.0985126495
            Y: 0.211157814
            Z: 0.00981274527
          }
        }
        ParentId: 4883357822565444832
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_Detail1:id"
            AssetReference {
              Id: 10120512676309829011
            }
          }
          Overrides {
            Name: "ma:Shared_Detail2:id"
            AssetReference {
              Id: 10120512676309829011
            }
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
            Id: 9807975150386039547
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
        Id: 15632628157733424204
        Name: "Back Black"
        Transform {
          Location {
            X: 9.2706728
            Y: -43.0112343
            Z: 39.9554977
          }
          Rotation {
            Pitch: -79.9249039
            Yaw: 89.9996109
            Roll: 89.9996643
          }
          Scale {
            X: 1.01908278
            Y: 1.01908278
            Z: 1.01908278
          }
        }
        ParentId: 17950264572740843095
        ChildIds: 3891301900659598780
        ChildIds: 16374905227454595916
        ChildIds: 845505397935903014
        ChildIds: 10884599445225287209
        ChildIds: 13145170832641629523
        ChildIds: 59370816686262782
        ChildIds: 9045868320282519418
        ChildIds: 17112379774706089022
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
        Id: 3891301900659598780
        Name: "Horn"
        Transform {
          Location {
            X: -15.9965706
            Y: 44.4788399
            Z: 2.85055327
          }
          Rotation {
            Pitch: -88.919342
            Yaw: -84.0317383
            Roll: -1.8447876
          }
          Scale {
            X: 0.00209002104
            Y: 0.149105906
            Z: 0.765559554
          }
        }
        ParentId: 15632628157733424204
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 10120512676309829011
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
          Value: "mc:ecollisionsetting:forceoff"
        }
        CoreMesh {
          MeshAsset {
            Id: 10227161647766562745
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
        Id: 16374905227454595916
        Name: "Horn"
        Transform {
          Location {
            X: 22.7837715
            Y: 42.6389084
            Z: 4.78134775
          }
          Rotation {
            Pitch: -90
            Yaw: -36.8698845
            Roll: -49.5386658
          }
          Scale {
            X: 0.00247279019
            Y: 0.176410437
            Z: 1.05071115
          }
        }
        ParentId: 15632628157733424204
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 10120512676309829011
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
          Value: "mc:ecollisionsetting:forceoff"
        }
        CoreMesh {
          MeshAsset {
            Id: 10227161647766562745
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
        Id: 845505397935903014
        Name: "Horn"
        Transform {
          Location {
            X: 7.87924051
            Y: 43.2449684
            Z: 4.78134775
          }
          Rotation {
            Pitch: 90
            Yaw: 8.13011169
            Roll: -112.524506
          }
          Scale {
            X: 0.00155283266
            Y: 0.110791937
            Z: 0.243232489
          }
        }
        ParentId: 15632628157733424204
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 10120512676309829011
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
          Value: "mc:ecollisionsetting:forceoff"
        }
        CoreMesh {
          MeshAsset {
            Id: 10227161647766562745
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
        Id: 10884599445225287209
        Name: "Horn"
        Transform {
          Location {
            X: -30.7948
            Y: 35.2759171
            Z: 4.82573271
          }
          Rotation {
            Pitch: 90
            Yaw: 180
            Roll: 59.790947
          }
          Scale {
            X: 0.00177213375
            Y: 0.126441061
            Z: 0.296396405
          }
        }
        ParentId: 15632628157733424204
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 10120512676309829011
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
          Value: "mc:ecollisionsetting:forceoff"
        }
        CoreMesh {
          MeshAsset {
            Id: 10227161647766562745
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
        Id: 13145170832641629523
        Name: "Horn"
        Transform {
          Location {
            X: 11.0115814
            Y: 42.8400116
            Z: 4.78137779
          }
          Rotation {
            Pitch: 90
            Yaw: -90
            Roll: 161.493561
          }
          Scale {
            X: 0.00155281497
            Y: 0.1107921
            Z: 0.342926
          }
        }
        ParentId: 15632628157733424204
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 10120512676309829011
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
          Value: "mc:ecollisionsetting:forceoff"
        }
        CoreMesh {
          MeshAsset {
            Id: 10227161647766562745
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
        Id: 59370816686262782
        Name: "Horn"
        Transform {
          Location {
            X: 32.1037254
            Y: 43.3793716
            Z: 4.78134775
          }
          Rotation {
            Pitch: -90
            Yaw: -26.565033
            Roll: -75.0069
          }
          Scale {
            X: 0.000788620964
            Y: 0.0562674701
            Z: 0.174160242
          }
        }
        ParentId: 15632628157733424204
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 10120512676309829011
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
          Value: "mc:ecollisionsetting:forceoff"
        }
        CoreMesh {
          MeshAsset {
            Id: 10227161647766562745
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
        Id: 9045868320282519418
        Name: "Text 04: C"
        Transform {
          Location {
            X: -30.8189545
            Y: -34.6416168
            Z: 4.38800621
          }
          Rotation {
            Pitch: 2.73207552e-05
            Yaw: -137.934448
            Roll: 89.9998932
          }
          Scale {
            X: 0.438312322
            Y: 0.000981274643
            Z: 1.32652342
          }
        }
        ParentId: 15632628157733424204
        UnregisteredParameters {
          Overrides {
            Name: "ma:Font.Bevel:id"
            AssetReference {
              Id: 10120512676309829011
            }
          }
          Overrides {
            Name: "ma:Font.Faces:id"
            AssetReference {
              Id: 10120512676309829011
            }
          }
          Overrides {
            Name: "ma:Font.Sides:id"
            AssetReference {
              Id: 10120512676309829011
            }
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
            Id: 7307109347043237742
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
        Id: 17112379774706089022
        Name: "Fantasy Castle Stairs Spiral Trim 01 - Large"
        Transform {
          Location {
            X: 6.67260027
            Y: -220.366867
            Z: 4.85893822
          }
          Rotation {
            Pitch: 2.04905664e-05
            Yaw: -156.78772
            Roll: 6.00651729e-05
          }
          Scale {
            X: 0.0985126495
            Y: 0.211157814
            Z: 0.00981274527
          }
        }
        ParentId: 15632628157733424204
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_Detail1:id"
            AssetReference {
              Id: 10120512676309829011
            }
          }
          Overrides {
            Name: "ma:Shared_Detail2:id"
            AssetReference {
              Id: 10120512676309829011
            }
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
            Id: 9807975150386039547
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
        Id: 9179031858955345376
        Name: "Hill 05"
        Transform {
          Location {
            X: 0.080078125
            Y: -94.3543701
            Z: 112.765137
          }
          Rotation {
            Pitch: -49.95578
            Yaw: 89.9997482
            Roll: 89.9997711
          }
          Scale {
            X: 0.181516066
            Y: -0.129646733
            Z: 0.0010189669
          }
        }
        ParentId: 17950264572740843095
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 10120512676309829011
            }
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
            Id: 11198688474246660903
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
        Id: 10130774441728381792
        Name: "Color Wing"
        Transform {
          Location {
            X: -4.06514168
            Y: -46.2187386
            Z: 18.5042725
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 3325703827007354024
        ChildIds: 12617470351930061290
        ChildIds: 811206347185595884
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
        Id: 12617470351930061290
        Name: "Front Upper Color"
        Transform {
          Location {
            X: 0.0242846143
            Y: -0.416979313
            Z: 0.51280719
          }
          Rotation {
            Pitch: -79.9246826
            Yaw: 89.9995117
            Roll: 89.9993896
          }
          Scale {
            X: 0.76852864
            Y: 0.76852864
            Z: 0.76852864
          }
        }
        ParentId: 10130774441728381792
        ChildIds: 3105438954634524269
        ChildIds: 6045852981031955015
        ChildIds: 4194036331609263540
        ChildIds: 8523736766390742855
        ChildIds: 3134656228009403860
        ChildIds: 17064569454792159788
        ChildIds: 9617922553298514439
        ChildIds: 9462481953497180729
        ChildIds: 16090590618624018719
        ChildIds: 18136912013939494593
        ChildIds: 8942498055122507091
        ChildIds: 12177892190449849914
        ChildIds: 7058621360180841324
        ChildIds: 1792008685316664901
        ChildIds: 2132651249470288482
        ChildIds: 12094494659008095356
        ChildIds: 18181445990776838415
        ChildIds: 6818421348748324292
        ChildIds: 5511475718320108772
        ChildIds: 12966960297998415543
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
        Id: 3105438954634524269
        Name: "Hill 05"
        Transform {
          Location {
            X: 69.3004227
            Y: -126.67086
            Z: 1.44974303
          }
          Rotation {
            Pitch: 0.114344187
            Yaw: 108.887665
            Roll: 179.846939
          }
          Scale {
            X: 0.443797529
            Y: 0.218280479
            Z: 0.000981272548
          }
        }
        ParentId: 12617470351930061290
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 3556700782779527591
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.542012
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.344658524
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.650015652
              G: 0.27388
              B: 0.820000052
              A: 1
            }
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
            Id: 11198688474246660903
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
        Id: 6045852981031955015
        Name: "Hill 05"
        Transform {
          Location {
            X: 104.643562
            Y: -31.6448784
            Z: 0.000143153
          }
          Rotation {
            Pitch: 0.114316873
            Yaw: -88.6619644
            Roll: 179.846786
          }
          Scale {
            X: 0.148588896
            Y: 0.0556274019
            Z: 0.001
          }
        }
        ParentId: 12617470351930061290
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 3556700782779527591
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.542012
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.344658524
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              G: 0.0092714075
              B: 0.350000024
              A: 1
            }
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
            Id: 11198688474246660903
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
        Id: 4194036331609263540
        Name: "Hill 05"
        Transform {
          Location {
            X: 33.0025482
            Y: -50.7792969
            Z: 0.512695312
          }
          Rotation {
            Pitch: -0.114351019
            Yaw: -12.9329109
            Roll: -0.153045624
          }
          Scale {
            X: 0.230375648
            Y: -0.238114446
            Z: -0.001
          }
        }
        ParentId: 12617470351930061290
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 3556700782779527591
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.542012
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.344658524
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.650015652
              G: 0.27388
              B: 0.820000052
              A: 1
            }
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
            Id: 11198688474246660903
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
        Id: 8523736766390742855
        Name: "Cylinder"
        Transform {
          Location {
            X: -78.6574631
            Y: 6.12987661
            Z: 2.6014874
          }
          Rotation {
            Yaw: -10.6693249
            Roll: 1.29711216e-11
          }
          Scale {
            X: 0.18775031
            Y: 0.271152109
            Z: 0.00191259256
          }
        }
        ParentId: 12617470351930061290
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 3556700782779527591
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
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.344658524
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.542012
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
            Id: 10602013473409766249
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
        Id: 3134656228009403860
        Name: "Cylinder"
        Transform {
          Location {
            X: -52.1935501
            Y: 15.974885
            Z: 2.60145521
          }
          Rotation {
            Yaw: -10.6693249
            Roll: 1.29711216e-11
          }
          Scale {
            X: 0.152832985
            Y: 0.220723957
            Z: 0.00155689358
          }
        }
        ParentId: 12617470351930061290
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 3556700782779527591
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
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.344658524
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.542012
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
            Id: 10602013473409766249
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
        Id: 17064569454792159788
        Name: "Cylinder"
        Transform {
          Location {
            X: -68.4590683
            Y: -30.8778133
            Z: 2.60127234
          }
          Rotation {
            Yaw: -10.6693249
            Roll: 1.29711216e-11
          }
          Scale {
            X: 0.152832985
            Y: 0.220723957
            Z: 0.00155689358
          }
        }
        ParentId: 12617470351930061290
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 3556700782779527591
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
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.344658524
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.542012
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
            Id: 10602013473409766249
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
        Id: 9617922553298514439
        Name: "Cylinder"
        Transform {
          Location {
            X: -48.566391
            Y: -13.1910887
            Z: 2.60120869
          }
          Rotation {
            Yaw: -10.6693249
            Roll: 1.29711216e-11
          }
          Scale {
            X: 0.112601265
            Y: 0.162620619
            Z: 0.00114705716
          }
        }
        ParentId: 12617470351930061290
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 3556700782779527591
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
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.344658524
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.542012
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
            Id: 10602013473409766249
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
        Id: 9462481953497180729
        Name: "Cylinder"
        Transform {
          Location {
            X: -61.7866325
            Y: -60.5596237
            Z: 2.6013875
          }
          Rotation {
            Yaw: -10.6693249
            Roll: 1.29711216e-11
          }
          Scale {
            X: 0.112601265
            Y: 0.162620619
            Z: 0.00114705716
          }
        }
        ParentId: 12617470351930061290
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 3556700782779527591
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
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.344658524
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.542012
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
            Id: 10602013473409766249
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
        Id: 16090590618624018719
        Name: "Cylinder"
        Transform {
          Location {
            X: -79.2215271
            Y: 35.9524078
            Z: 2.60137296
          }
          Rotation {
            Yaw: -28.0610409
            Roll: 1.57919229e-12
          }
          Scale {
            X: 0.0903711542
            Y: 0.130515531
            Z: 0.000920601422
          }
        }
        ParentId: 12617470351930061290
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 3556700782779527591
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
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.344658524
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.542012
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
            Id: 10602013473409766249
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
        Id: 18136912013939494593
        Name: "Cylinder"
        Transform {
          Location {
            X: -60.3042908
            Y: 49.77174
            Z: 2.60132384
          }
          Rotation {
            Yaw: -68.571
          }
          Scale {
            X: 0.0903711542
            Y: 0.130515531
            Z: 0.000920601422
          }
        }
        ParentId: 12617470351930061290
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 3556700782779527591
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
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.344658524
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.542012
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
            Id: 10602013473409766249
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
        Id: 8942498055122507091
        Name: "Cylinder"
        Transform {
          Location {
            X: -32.7484932
            Y: 52.4722061
            Z: 2.60131931
          }
          Rotation {
            Yaw: -96.111824
            Roll: -9.08424323e-13
          }
          Scale {
            X: 0.0903711542
            Y: 0.130515531
            Z: 0.000920601422
          }
        }
        ParentId: 12617470351930061290
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 3556700782779527591
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
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.344658524
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.542012
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
            Id: 10602013473409766249
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
        Id: 12177892190449849914
        Name: "Cylinder"
        Transform {
          Location {
            X: -7.03778267
            Y: 47.2980576
            Z: 2.60134435
          }
          Rotation {
            Yaw: -108.305992
            Roll: -7.91994e-12
          }
          Scale {
            X: 0.0725298
            Y: 0.104748733
            Z: 0.000738853414
          }
        }
        ParentId: 12617470351930061290
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 3556700782779527591
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
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.344658524
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.542012
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
            Id: 10602013473409766249
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
        Id: 7058621360180841324
        Name: "Cylinder"
        Transform {
          Location {
            X: -25.9193039
            Y: 18.9939785
            Z: 2.60144901
          }
          Rotation {
            Yaw: -10.6693249
            Roll: 1.29711216e-11
          }
          Scale {
            X: 0.0871488303
            Y: 0.125861794
            Z: 0.000887775968
          }
        }
        ParentId: 12617470351930061290
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 3556700782779527591
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
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.344658524
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.542012
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
            Id: 10602013473409766249
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
        Id: 1792008685316664901
        Name: "Cylinder"
        Transform {
          Location {
            X: 116.174866
            Y: 41.4342041
            Z: 0.115432784
          }
          Rotation {
            Pitch: -3.05175781e-05
            Yaw: -115.752869
          }
          Scale {
            X: 0.0668244362
            Y: 0.0965089425
            Z: 0.00068073353
          }
        }
        ParentId: 12617470351930061290
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 3556700782779527591
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
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.344658524
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.542012
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
            Id: 10602013473409766249
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
        Id: 2132651249470288482
        Name: "Cylinder"
        Transform {
          Location {
            X: 93.7454224
            Y: 51.360836
            Z: 0.180682704
          }
          Rotation {
            Pitch: -3.05175781e-05
            Yaw: -98.721405
          }
          Scale {
            X: 0.0847739
            Y: 0.122431844
            Z: 0.000863582827
          }
        }
        ParentId: 12617470351930061290
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 3556700782779527591
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
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.344658524
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.542012
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
            Id: 10602013473409766249
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
        Id: 12094494659008095356
        Name: "Cylinder"
        Transform {
          Location {
            X: 70.2884293
            Y: 44.6039619
            Z: 0.159759015
          }
          Rotation {
            Yaw: -68.7728
          }
          Scale {
            X: 0.0725298
            Y: 0.104748733
            Z: 0.000738853414
          }
        }
        ParentId: 12617470351930061290
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 3556700782779527591
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
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.344658524
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.542012
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
            Id: 10602013473409766249
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
        Id: 18181445990776838415
        Name: "Cylinder"
        Transform {
          Location {
            X: 42.6427536
            Y: 39.0576935
            Z: 2.60138631
          }
          Rotation {
            Yaw: -94.6666
            Roll: 4.26576873e-12
          }
          Scale {
            X: 0.0725298
            Y: 0.104748733
            Z: 0.000738853414
          }
        }
        ParentId: 12617470351930061290
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 3556700782779527591
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
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.344658524
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.542012
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
            Id: 10602013473409766249
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
        Id: 6818421348748324292
        Name: "Cylinder"
        Transform {
          Location {
            X: 15.080389
            Y: 39.6383858
            Z: 2.60137844
          }
          Rotation {
            Yaw: -108.305992
            Roll: -7.91994e-12
          }
          Scale {
            X: 0.0725298
            Y: 0.104748733
            Z: 0.000738853414
          }
        }
        ParentId: 12617470351930061290
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 3556700782779527591
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
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.344658524
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.542012
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
            Id: 10602013473409766249
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
        Id: 5511475718320108772
        Name: "Cylinder"
        Transform {
          Location {
            X: -58.6398582
            Y: -95.0718079
            Z: 0.430528939
          }
          Rotation {
            Pitch: -6.14717e-05
            Yaw: 19.1405678
            Roll: 2.27982147e-11
          }
          Scale {
            X: 0.132650867
            Y: 0.280272812
            Z: 0.00103228155
          }
        }
        ParentId: 12617470351930061290
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 3556700782779527591
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
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.344658524
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.542012
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
            Id: 10602013473409766249
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
        Id: 12966960297998415543
        Name: "Cylinder"
        Transform {
          Location {
            X: -4.50365543
            Y: 30.5594616
            Z: 2.60186362
          }
          Rotation {
            Pitch: 1.36603776e-05
            Yaw: -108.305878
            Roll: 2.94341246e-10
          }
          Scale {
            X: 0.0725298
            Y: 0.104748733
            Z: 0.000738853414
          }
        }
        ParentId: 12617470351930061290
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 3556700782779527591
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
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.344658524
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.542012
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
            Id: 10602013473409766249
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
        Id: 811206347185595884
        Name: "Back Upper Color"
        Transform {
          Location {
            X: -0.0244140625
            Y: 0.416503906
          }
          Rotation {
            Pitch: 79.924881
            Yaw: -89.999649
            Roll: -89.9995117
          }
          Scale {
            X: -0.768999934
            Y: -0.768999934
            Z: -0.768999934
          }
        }
        ParentId: 10130774441728381792
        ChildIds: 4739629030200599120
        ChildIds: 10013524972694934002
        ChildIds: 3023254236923804720
        ChildIds: 11955158292627043527
        ChildIds: 2414673746070025788
        ChildIds: 6742181453379436113
        ChildIds: 772567540010023880
        ChildIds: 11057841876215011773
        ChildIds: 14129447252595345070
        ChildIds: 10873804320221787442
        ChildIds: 3575567444544631732
        ChildIds: 14049669449528709066
        ChildIds: 14224002705483632844
        ChildIds: 34452544704010062
        ChildIds: 6177887578985554478
        ChildIds: 1175328133527746844
        ChildIds: 7064971401354136676
        ChildIds: 1191236249528934661
        ChildIds: 11963629789317028258
        ChildIds: 12385906246210277879
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
        Id: 4739629030200599120
        Name: "Cylinder"
        Transform {
          Location {
            X: -59.9157104
            Y: -91.4438477
          }
          Rotation {
            Pitch: -3.4150944e-05
            Yaw: -160.859299
            Roll: -0.00036621085
          }
          Scale {
            X: -0.132569566
            Y: -0.280101061
            Z: -0.00103164895
          }
        }
        ParentId: 811206347185595884
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 3556700782779527591
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
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.344658524
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.542012
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
            Id: 10602013473409766249
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
        Id: 10013524972694934002
        Name: "Hill 05"
        Transform {
          Location {
            X: 66.8178101
            Y: -127.314941
            Z: 3.47070312
          }
          Rotation {
            Pitch: 0.114344187
            Yaw: 108.887749
            Roll: 179.846939
          }
          Scale {
            X: 0.443797529
            Y: 0.218280479
            Z: 0.000981272548
          }
        }
        ParentId: 811206347185595884
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 3556700782779527591
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.542012
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.344658524
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.650015652
              G: 0.27388
              B: 0.820000052
              A: 1
            }
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
            Id: 11198688474246660903
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
        Id: 3023254236923804720
        Name: "Hill 05"
        Transform {
          Location {
            X: 104.852539
            Y: -31.8110352
            Z: 2.02197266
          }
          Rotation {
            Pitch: 0.114316873
            Yaw: -88.661972
            Roll: 179.846786
          }
          Scale {
            X: 0.148588896
            Y: 0.0556274056
            Z: 0.001
          }
        }
        ParentId: 811206347185595884
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 3556700782779527591
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.542012
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.344658524
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              G: 0.0092714075
              B: 0.350000024
              A: 1
            }
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
            Id: 11198688474246660903
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
        Id: 11955158292627043527
        Name: "Hill 05"
        Transform {
          Location {
            X: 33.2114868
            Y: -50.9453125
            Z: 5.29541
          }
          Rotation {
            Pitch: -0.114351019
            Yaw: -12.9328823
            Roll: -0.153045669
          }
          Scale {
            X: 0.230375648
            Y: -0.238114461
            Z: -0.001
          }
        }
        ParentId: 811206347185595884
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 3556700782779527591
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.542012
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.344658524
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.650015652
              G: 0.27388
              B: 0.820000052
              A: 1
            }
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
            Id: 11198688474246660903
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
        Id: 2414673746070025788
        Name: "Cylinder"
        Transform {
          Location {
            X: -78.4486084
            Y: 5.96386719
            Z: 4.62255859
          }
          Rotation {
            Yaw: -10.6693239
            Roll: -2.50431779e-14
          }
          Scale {
            X: 0.18775031
            Y: 0.271152109
            Z: 0.00191259268
          }
        }
        ParentId: 811206347185595884
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 3556700782779527591
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
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.344658524
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.542012
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
            Id: 10602013473409766249
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
        Id: 6742181453379436113
        Name: "Cylinder"
        Transform {
          Location {
            X: -51.9847412
            Y: 15.809082
            Z: 4.62255859
          }
          Rotation {
            Yaw: -10.6693249
            Roll: 4.84880625e-12
          }
          Scale {
            X: 0.152832985
            Y: 0.220723957
            Z: 0.00155689358
          }
        }
        ParentId: 811206347185595884
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 3556700782779527591
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
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.344658524
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.542012
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
            Id: 10602013473409766249
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
        Id: 772567540010023880
        Name: "Cylinder"
        Transform {
          Location {
            X: -68.2503052
            Y: -31.0439453
            Z: 4.62255859
          }
          Rotation {
            Yaw: -10.6693249
            Roll: 4.84880625e-12
          }
          Scale {
            X: 0.152832985
            Y: 0.220723957
            Z: 0.00155689358
          }
        }
        ParentId: 811206347185595884
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 3556700782779527591
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
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.344658524
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.542012
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
            Id: 10602013473409766249
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
        Id: 11057841876215011773
        Name: "Cylinder"
        Transform {
          Location {
            X: -48.357666
            Y: -13.3574219
            Z: 4.62255859
          }
          Rotation {
            Yaw: -10.6693249
            Roll: 2.71683613e-11
          }
          Scale {
            X: 0.112601265
            Y: 0.162620619
            Z: 0.00114705716
          }
        }
        ParentId: 811206347185595884
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 3556700782779527591
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
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.344658524
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.542012
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
            Id: 10602013473409766249
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
        Id: 14129447252595345070
        Name: "Cylinder"
        Transform {
          Location {
            X: -61.5777588
            Y: -60.7255859
            Z: 4.62255859
          }
          Rotation {
            Yaw: -10.6693249
            Roll: 2.71683613e-11
          }
          Scale {
            X: 0.112601265
            Y: 0.162620619
            Z: 0.00114705716
          }
        }
        ParentId: 811206347185595884
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 3556700782779527591
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
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.344658524
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.542012
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
            Id: 10602013473409766249
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
        Id: 10873804320221787442
        Name: "Cylinder"
        Transform {
          Location {
            X: -79.0127563
            Y: 35.7866211
            Z: 4.62304688
          }
          Rotation {
            Yaw: -28.0610485
            Roll: 1.37359421e-11
          }
          Scale {
            X: 0.0903711542
            Y: 0.130515531
            Z: 0.000920601422
          }
        }
        ParentId: 811206347185595884
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 3556700782779527591
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
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.344658524
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.542012
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
            Id: 10602013473409766249
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
        Id: 3575567444544631732
        Name: "Cylinder"
        Transform {
          Location {
            X: -60.095459
            Y: 49.6054688
            Z: 4.62304688
          }
          Rotation {
            Yaw: -68.5710297
            Roll: 1.45103981e-12
          }
          Scale {
            X: 0.0903711542
            Y: 0.130515531
            Z: 0.000920601422
          }
        }
        ParentId: 811206347185595884
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 3556700782779527591
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
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.344658524
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.542012
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
            Id: 10602013473409766249
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
        Id: 14049669449528709066
        Name: "Cylinder"
        Transform {
          Location {
            X: -32.5397339
            Y: 52.3061523
            Z: 4.62304688
          }
          Rotation {
            Yaw: -96.1118393
            Roll: 9.63991907e-12
          }
          Scale {
            X: 0.0903711542
            Y: 0.130515531
            Z: 0.000920601422
          }
        }
        ParentId: 811206347185595884
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 3556700782779527591
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
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.344658524
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.542012
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
            Id: 10602013473409766249
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
        Id: 14224002705483632844
        Name: "Cylinder"
        Transform {
          Location {
            X: -6.82897949
            Y: 47.1323242
            Z: 4.62255859
          }
          Rotation {
            Yaw: -108.306007
            Roll: 8.18736745e-12
          }
          Scale {
            X: 0.0725298
            Y: 0.104748733
            Z: 0.000738853414
          }
        }
        ParentId: 811206347185595884
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 3556700782779527591
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
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.344658524
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.542012
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
            Id: 10602013473409766249
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
        Id: 34452544704010062
        Name: "Cylinder"
        Transform {
          Location {
            X: -25.7105713
            Y: 18.828125
            Z: 4.62255859
          }
          Rotation {
            Yaw: -10.6693249
            Roll: 1.55104072e-11
          }
          Scale {
            X: 0.0871488303
            Y: 0.125861794
            Z: 0.000887776
          }
        }
        ParentId: 811206347185595884
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 3556700782779527591
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
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.344658524
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.542012
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
            Id: 10602013473409766249
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
        Id: 6177887578985554478
        Name: "Cylinder"
        Transform {
          Location {
            X: 116.385742
            Y: 41.269043
            Z: 4.62255859
          }
          Rotation {
            Yaw: -115.75296
            Roll: 1.95676331e-12
          }
          Scale {
            X: 0.0668244362
            Y: 0.09650895
            Z: 0.000680733589
          }
        }
        ParentId: 811206347185595884
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 3556700782779527591
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
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.344658524
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.542012
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
            Id: 10602013473409766249
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
        Id: 1175328133527746844
        Name: "Cylinder"
        Transform {
          Location {
            X: 93.9575195
            Y: 51.1962891
            Z: 4.62255859
          }
          Rotation {
            Yaw: -98.7214127
            Roll: 2.16652026e-11
          }
          Scale {
            X: 0.0847739
            Y: 0.122431844
            Z: 0.000863582827
          }
        }
        ParentId: 811206347185595884
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 3556700782779527591
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
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.344658524
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.542012
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
            Id: 10602013473409766249
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
        Id: 7064971401354136676
        Name: "Cylinder"
        Transform {
          Location {
            X: 70.5039062
            Y: 44.4418945
            Z: 4.62255859
          }
          Rotation {
            Yaw: -68.7728348
            Roll: 3.59895729e-12
          }
          Scale {
            X: 0.0725298
            Y: 0.104748733
            Z: 0.000738853414
          }
        }
        ParentId: 811206347185595884
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 3556700782779527591
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
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.344658524
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.542012
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
            Id: 10602013473409766249
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
        Id: 1191236249528934661
        Name: "Cylinder"
        Transform {
          Location {
            X: 42.8515625
            Y: 38.8920898
            Z: 4.62255859
          }
          Rotation {
            Yaw: -94.6666183
            Roll: 3.39701947e-11
          }
          Scale {
            X: 0.0725298
            Y: 0.104748733
            Z: 0.000738853414
          }
        }
        ParentId: 811206347185595884
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 3556700782779527591
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
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.344658524
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.542012
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
            Id: 10602013473409766249
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
        Id: 11963629789317028258
        Name: "Cylinder"
        Transform {
          Location {
            X: 15.2891846
            Y: 39.4726562
            Z: 4.62255859
          }
          Rotation {
            Yaw: -108.306007
            Roll: 8.18736745e-12
          }
          Scale {
            X: 0.0725298
            Y: 0.104748733
            Z: 0.000738853414
          }
        }
        ParentId: 811206347185595884
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 3556700782779527591
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
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.344658524
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.542012
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
            Id: 10602013473409766249
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
        Id: 12385906246210277879
        Name: "Cylinder"
        Transform {
          Location {
            X: -110.103149
            Y: 52.2142944
            Z: 0.526855469
          }
          Rotation {
            Pitch: 1.36603776e-05
            Yaw: -10.6694031
            Roll: 1.76186295e-05
          }
          Scale {
            X: 0.314650536
            Y: 0.454423815
            Z: 0.0179709345
          }
        }
        ParentId: 811206347185595884
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 3556700782779527591
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
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.344658524
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.542012
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
            Id: 10602013473409766249
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
        Id: 7494046674463817795
        Name: "Lower Wing "
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
        ParentId: 15647096563199351254
        ChildIds: 5031793199400462749
        ChildIds: 11919451914508289683
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
        Id: 5031793199400462749
        Name: "Black Wing"
        Transform {
          Location {
            X: 1.81247139
            Y: -138.179031
            Z: -165.862793
          }
          Rotation {
          }
          Scale {
            X: 0.92576921
            Y: 0.92576921
            Z: 0.92576921
          }
        }
        ParentId: 7494046674463817795
        ChildIds: 10619100021664437831
        ChildIds: 878108669265828357
        ChildIds: 13359473437668712737
        ChildIds: 10545170953635305920
        ChildIds: 6581714665475446463
        ChildIds: 14100608475394138306
        ChildIds: 2728303964712188532
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
        Id: 10619100021664437831
        Name: "Hill 05"
        Transform {
          Location {
            X: 2.34328032
            Y: -27.1709061
            Z: 72.7365723
          }
          Rotation {
            Pitch: -33.8405914
            Yaw: 89.9996796
            Roll: -89.9987411
          }
          Scale {
            X: 0.229581058
            Y: 0.208353251
            Z: 0.000999999931
          }
        }
        ParentId: 5031793199400462749
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 10120512676309829011
            }
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
            Id: 11198688474246660903
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
        Id: 878108669265828357
        Name: "Hill 05"
        Transform {
          Location {
            X: 2.34388113
            Y: 23.7106457
            Z: 75.4873428
          }
          Rotation {
            Pitch: -18.8466759
            Yaw: -90.0004807
            Roll: 89.9997482
          }
          Scale {
            X: 0.322738349
            Y: 0.223182723
            Z: 0.000999999931
          }
        }
        ParentId: 5031793199400462749
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 10120512676309829011
            }
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
            Id: 11198688474246660903
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
        Id: 13359473437668712737
        Name: "Hill 05"
        Transform {
          Location {
            X: 2.34423828
            Y: 65.7861328
            Z: 114.385925
          }
          Rotation {
            Pitch: -9.65756607
            Yaw: -90.0004578
            Roll: -90.0001068
          }
          Scale {
            X: 0.178117037
            Y: -0.127219
            Z: 0.000999886077
          }
        }
        ParentId: 5031793199400462749
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 10120512676309829011
            }
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
            Id: 11198688474246660903
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
        Id: 10545170953635305920
        Name: "Hill 05"
        Transform {
          Location {
            X: 2.34472656
            Y: 93.2993164
            Z: 132.216
          }
          Rotation {
            Pitch: -37.5230408
            Yaw: -90.0004
            Roll: 89.9996414
          }
          Scale {
            X: 0.178117588
            Y: -0.152318716
            Z: 0.000999872
          }
        }
        ParentId: 5031793199400462749
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 10120512676309829011
            }
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
            Id: 11198688474246660903
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
        Id: 6581714665475446463
        Name: "Back Black"
        Transform {
          Location {
            X: 6.16598654
            Y: -9.15493584
            Z: -3.84256564e-05
          }
          Rotation {
          }
          Scale {
            X: 0.99999994
            Y: 0.99999994
            Z: 0.99999994
          }
        }
        ParentId: 5031793199400462749
        ChildIds: 14455723457482265750
        ChildIds: 13035538022106492079
        ChildIds: 8957635222376141928
        ChildIds: 869841808678316704
        ChildIds: 3043663164142421429
        ChildIds: 3790772278246528836
        ChildIds: 5055799786251715598
        ChildIds: 9663248275607427395
        ChildIds: 1490518707656104131
        ChildIds: 16138208208749961895
        ChildIds: 16135990039518084587
        ChildIds: 16192041305282670796
        ChildIds: 13874666849951071850
        ChildIds: 14990587803661259757
        ChildIds: 7251048790053796489
        ChildIds: 9556438667412702370
        ChildIds: 15813170318807051389
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
        Id: 14455723457482265750
        Name: "Horn"
        Transform {
          Location {
            X: 0.0126953125
            Y: 31.2109375
            Z: 104.161621
          }
          Rotation {
            Pitch: -0.75604248
            Yaw: 1.46600294
            Roll: -94.3215942
          }
          Scale {
            X: 0.00272820564
            Y: -0.124826252
            Z: 0.612904847
          }
        }
        ParentId: 6581714665475446463
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 10120512676309829011
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
          Value: "mc:ecollisionsetting:forceoff"
        }
        CoreMesh {
          MeshAsset {
            Id: 10227161647766562745
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
        Id: 13035538022106492079
        Name: "Horn"
        Transform {
          Location {
            X: 1.453125
            Y: 24.3959961
            Z: 85.2589111
          }
          Rotation {
            Pitch: 0.358646393
            Yaw: -179.017944
            Roll: 106.23378
          }
          Scale {
            X: 0.0027308648
            Y: -0.124826372
            Z: 0.62789166
          }
        }
        ParentId: 6581714665475446463
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 10120512676309829011
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
          Value: "mc:ecollisionsetting:forceoff"
        }
        CoreMesh {
          MeshAsset {
            Id: 10227161647766562745
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
        Id: 8957635222376141928
        Name: "Horn"
        Transform {
          Location {
            X: 2.08886719
            Y: -38.6308594
            Z: 25.8387146
          }
          Rotation {
            Pitch: 0.0920777768
            Yaw: 179.82048
            Roll: -44.7731628
          }
          Scale {
            X: 0.00272870203
            Y: -0.124835305
            Z: 0.470220685
          }
        }
        ParentId: 6581714665475446463
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 10120512676309829011
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
          Value: "mc:ecollisionsetting:forceoff"
        }
        CoreMesh {
          MeshAsset {
            Id: 10227161647766562745
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
        Id: 869841808678316704
        Name: "Horn"
        Transform {
          Location {
            X: -0.029296875
            Y: -8.28370667
            Z: 2.32791138
          }
          Rotation {
            Pitch: -0.943481445
            Yaw: -1.01211548
            Roll: 34.1351242
          }
          Scale {
            X: 0.00273136026
            Y: -0.124835186
            Z: 0.481717706
          }
        }
        ParentId: 6581714665475446463
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 10120512676309829011
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
          Value: "mc:ecollisionsetting:forceoff"
        }
        CoreMesh {
          MeshAsset {
            Id: 10227161647766562745
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
        Id: 3043663164142421429
        Name: "Horn"
        Transform {
          Location {
            Y: 39.5366211
            Z: 8.21377563
          }
          Rotation {
            Pitch: -0.941486895
            Yaw: -1.02280784
            Roll: 5.63409472
          }
          Scale {
            X: 0.00222074799
            Y: -0.101254568
            Z: 0.407522082
          }
        }
        ParentId: 6581714665475446463
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 10120512676309829011
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
          Value: "mc:ecollisionsetting:forceoff"
        }
        CoreMesh {
          MeshAsset {
            Id: 10227161647766562745
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
        Id: 3790772278246528836
        Name: "Horn"
        Transform {
          Location {
            X: 2.71563649
            Y: 137.710342
            Z: 149.892868
          }
          Rotation {
            Pitch: -0.594116211
            Yaw: -0.583862305
            Roll: -130.268799
          }
          Scale {
            X: 0.00272300187
            Y: 0.194193587
            Z: 0.818518
          }
        }
        ParentId: 6581714665475446463
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 10120512676309829011
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
          Value: "mc:ecollisionsetting:forceoff"
        }
        CoreMesh {
          MeshAsset {
            Id: 10227161647766562745
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
        Id: 5055799786251715598
        Name: "Horn"
        Transform {
          Location {
            X: 2.7156086
            Y: 58.9019279
            Z: 157.787582
          }
          Rotation {
            Pitch: 0.876374722
            Yaw: 179.151733
            Roll: 148.306564
          }
          Scale {
            X: 0.00273567648
            Y: 0.194185778
            Z: 0.543515563
          }
        }
        ParentId: 6581714665475446463
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 10120512676309829011
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
          Value: "mc:ecollisionsetting:forceoff"
        }
        CoreMesh {
          MeshAsset {
            Id: 10227161647766562745
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
        Id: 9663248275607427395
        Name: "Horn"
        Transform {
          Location {
            X: 0.0078125
            Y: 106.367676
            Z: 123.298706
          }
          Rotation {
            Pitch: -0.95749
            Yaw: -1.02121246
            Roll: -147.8293
          }
          Scale {
            X: 0.00272820704
            Y: -0.124826878
            Z: 0.612904847
          }
        }
        ParentId: 6581714665475446463
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 10120512676309829011
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
          Value: "mc:ecollisionsetting:forceoff"
        }
        CoreMesh {
          MeshAsset {
            Id: 10227161647766562745
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
        Id: 1490518707656104131
        Name: "Horn"
        Transform {
          Location {
            X: 2.13218617
            Y: -61.6143
            Z: 49.9697685
          }
          Rotation {
            Pitch: -1.00204468
            Yaw: -1.09945679
            Roll: 20.4491043
          }
          Scale {
            X: 0.00055018469
            Y: 0.145599589
            Z: 0.126376063
          }
        }
        ParentId: 6581714665475446463
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 10120512676309829011
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
          Value: "mc:ecollisionsetting:forceoff"
        }
        CoreMesh {
          MeshAsset {
            Id: 10227161647766562745
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
        Id: 16138208208749961895
        Name: "Horn"
        Transform {
          Location {
            X: 2.19335294
            Y: -70.3386841
            Z: 73.28508
          }
          Rotation {
            Pitch: 1.36836684
            Yaw: 178.321777
            Roll: -136.029327
          }
          Scale {
            X: 0.0005583046
            Y: 0.214060724
            Z: 0.12637499
          }
        }
        ParentId: 6581714665475446463
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 10120512676309829011
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
          Value: "mc:ecollisionsetting:forceoff"
        }
        CoreMesh {
          MeshAsset {
            Id: 10227161647766562745
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
        Id: 16135990039518084587
        Name: "Horn"
        Transform {
          Location {
            X: 2.08333182
            Y: -69.9843597
            Z: 77.6992493
          }
          Rotation {
            Pitch: -1.02584839
            Yaw: -1.12442017
            Roll: 20.4043198
          }
          Scale {
            X: 0.000550184748
            Y: 0.145599589
            Z: 0.126376063
          }
        }
        ParentId: 6581714665475446463
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 10120512676309829011
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
          Value: "mc:ecollisionsetting:forceoff"
        }
        CoreMesh {
          MeshAsset {
            Id: 10227161647766562745
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
        Id: 16192041305282670796
        Name: "Horn"
        Transform {
          Location {
            X: 2.0450089
            Y: -64.845314
            Z: 95.5705261
          }
          Rotation {
            Pitch: 1.37488282
            Yaw: 178.319092
            Roll: -117.396057
          }
          Scale {
            X: 0.000393695605
            Y: 0.104186535
            Z: 0.0904320255
          }
        }
        ParentId: 6581714665475446463
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 10120512676309829011
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
          Value: "mc:ecollisionsetting:forceoff"
        }
        CoreMesh {
          MeshAsset {
            Id: 10227161647766562745
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
        Id: 13874666849951071850
        Name: "Horn"
        Transform {
          Location {
            X: 0.153003991
            Y: -50.4752808
            Z: 35.8100204
          }
          Rotation {
            Pitch: 1.31728387
            Yaw: 178.398819
            Roll: -101.185303
          }
          Scale {
            X: 0.000550185388
            Y: 0.145599589
            Z: 0.126377925
          }
        }
        ParentId: 6581714665475446463
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 10120512676309829011
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
          Value: "mc:ecollisionsetting:forceoff"
        }
        CoreMesh {
          MeshAsset {
            Id: 10227161647766562745
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
        Id: 14990587803661259757
        Name: "Horn"
        Transform {
          Location {
            X: 0.0650208741
            Y: -32.3389626
            Z: 17.8257828
          }
          Rotation {
            Pitch: -1.17330933
            Yaw: -1.26702881
            Roll: -5.31036377
          }
          Scale {
            X: 0.000553626684
            Y: 0.217666641
            Z: 0.143235937
          }
        }
        ParentId: 6581714665475446463
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 10120512676309829011
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
          Value: "mc:ecollisionsetting:forceoff"
        }
        CoreMesh {
          MeshAsset {
            Id: 10227161647766562745
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
        Id: 7251048790053796489
        Name: "Horn"
        Transform {
          Location {
            X: 0.203696743
            Y: 8.48938179
            Z: 5.63688278
          }
          Rotation {
            Pitch: -1.41305542
            Yaw: -1.51660156
            Roll: -22.9500427
          }
          Scale {
            X: 0.00055018533
            Y: 0.145599589
            Z: 0.126377791
          }
        }
        ParentId: 6581714665475446463
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 10120512676309829011
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
          Value: "mc:ecollisionsetting:forceoff"
        }
        CoreMesh {
          MeshAsset {
            Id: 10227161647766562745
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
        Id: 9556438667412702370
        Name: "Horn"
        Transform {
          Location {
            X: 0.154651627
            Y: -19.5092812
            Z: 9.62920856
          }
          Rotation {
            Pitch: 1.22251499
            Yaw: 178.517563
            Roll: -86.0916138
          }
          Scale {
            X: 0.000550185388
            Y: 0.145599589
            Z: 0.126377463
          }
        }
        ParentId: 6581714665475446463
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 10120512676309829011
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
          Value: "mc:ecollisionsetting:forceoff"
        }
        CoreMesh {
          MeshAsset {
            Id: 10227161647766562745
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
        Id: 15813170318807051389
        Name: "Horn"
        Transform {
          Location {
            X: -3.72945
            Y: 31.3141212
            Z: 11.5249119
          }
          Rotation {
            Pitch: 1.4471736
            Yaw: 178.307648
            Roll: -43.4760437
          }
          Scale {
            X: 0.000547536707
            Y: 0.145587325
            Z: 0.15399538
          }
        }
        ParentId: 6581714665475446463
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 10120512676309829011
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
          Value: "mc:ecollisionsetting:forceoff"
        }
        CoreMesh {
          MeshAsset {
            Id: 10227161647766562745
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
        Id: 14100608475394138306
        Name: "Front Black"
        Transform {
          Location {
            X: -0.551657617
            Y: -9.15476894
            Z: -3.70429152e-05
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 5031793199400462749
        ChildIds: 4356674276724624180
        ChildIds: 227437564385295366
        ChildIds: 6717988028069807117
        ChildIds: 12308113836245680398
        ChildIds: 7811202681104328526
        ChildIds: 7973659617510855226
        ChildIds: 13503620947050430383
        ChildIds: 13975025087312666135
        ChildIds: 7527739451245723704
        ChildIds: 16354638271073516788
        ChildIds: 12584948861753157130
        ChildIds: 14415001375154909616
        ChildIds: 11166639993067521738
        ChildIds: 8130042895962613745
        ChildIds: 11820287062850324996
        ChildIds: 5586120887690378892
        ChildIds: 4753254389445842129
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
        Id: 4356674276724624180
        Name: "Horn"
        Transform {
          Location {
            X: 0.0126953125
            Y: 31.2109375
            Z: 104.161621
          }
          Rotation {
            Pitch: -0.75604248
            Yaw: 1.46600294
            Roll: -94.3215942
          }
          Scale {
            X: 0.00272820564
            Y: -0.124826252
            Z: 0.612904847
          }
        }
        ParentId: 14100608475394138306
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 10120512676309829011
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
          Value: "mc:ecollisionsetting:forceoff"
        }
        CoreMesh {
          MeshAsset {
            Id: 10227161647766562745
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
        Id: 227437564385295366
        Name: "Horn"
        Transform {
          Location {
            X: 1.453125
            Y: 24.3959961
            Z: 85.2589111
          }
          Rotation {
            Pitch: 0.358646393
            Yaw: -179.017944
            Roll: 106.23378
          }
          Scale {
            X: 0.0027308648
            Y: -0.124826372
            Z: 0.62789166
          }
        }
        ParentId: 14100608475394138306
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 10120512676309829011
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
          Value: "mc:ecollisionsetting:forceoff"
        }
        CoreMesh {
          MeshAsset {
            Id: 10227161647766562745
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
        Id: 6717988028069807117
        Name: "Horn"
        Transform {
          Location {
            X: 2.08886719
            Y: -38.6308594
            Z: 25.8387146
          }
          Rotation {
            Pitch: 0.0920777768
            Yaw: 179.82048
            Roll: -44.7731628
          }
          Scale {
            X: 0.00272870203
            Y: -0.124835305
            Z: 0.470220685
          }
        }
        ParentId: 14100608475394138306
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 10120512676309829011
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
          Value: "mc:ecollisionsetting:forceoff"
        }
        CoreMesh {
          MeshAsset {
            Id: 10227161647766562745
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
        Id: 12308113836245680398
        Name: "Horn"
        Transform {
          Location {
            X: 2.5487535
            Y: -8.52404785
            Z: 3.26765442
          }
          Rotation {
            Pitch: 0.240217745
            Yaw: -0.206939697
            Roll: 34.130806
          }
          Scale {
            X: 0.00273138355
            Y: -0.124835923
            Z: 0.484702349
          }
        }
        ParentId: 14100608475394138306
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 10120512676309829011
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
          Value: "mc:ecollisionsetting:forceoff"
        }
        CoreMesh {
          MeshAsset {
            Id: 10227161647766562745
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
        Id: 7811202681104328526
        Name: "Horn"
        Transform {
          Location {
            Y: 39.5366211
            Z: 8.21377563
          }
          Rotation {
            Pitch: -0.941486895
            Yaw: -1.02280784
            Roll: 5.63409472
          }
          Scale {
            X: 0.00222074799
            Y: -0.101254568
            Z: 0.407522082
          }
        }
        ParentId: 14100608475394138306
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 10120512676309829011
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
          Value: "mc:ecollisionsetting:forceoff"
        }
        CoreMesh {
          MeshAsset {
            Id: 10227161647766562745
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
        Id: 7973659617510855226
        Name: "Horn"
        Transform {
          Location {
            X: 2.71563649
            Y: 137.710342
            Z: 149.892868
          }
          Rotation {
            Pitch: -0.594116211
            Yaw: -0.583862305
            Roll: -130.268799
          }
          Scale {
            X: 0.00272300187
            Y: 0.194193587
            Z: 0.818518
          }
        }
        ParentId: 14100608475394138306
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 10120512676309829011
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
          Value: "mc:ecollisionsetting:forceoff"
        }
        CoreMesh {
          MeshAsset {
            Id: 10227161647766562745
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
        Id: 13503620947050430383
        Name: "Horn"
        Transform {
          Location {
            X: 2.7156086
            Y: 58.9019279
            Z: 157.787582
          }
          Rotation {
            Pitch: 0.876374722
            Yaw: 179.151733
            Roll: 148.306564
          }
          Scale {
            X: 0.00273567648
            Y: 0.194185778
            Z: 0.543515563
          }
        }
        ParentId: 14100608475394138306
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 10120512676309829011
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
          Value: "mc:ecollisionsetting:forceoff"
        }
        CoreMesh {
          MeshAsset {
            Id: 10227161647766562745
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
        Id: 13975025087312666135
        Name: "Horn"
        Transform {
          Location {
            X: 0.0078125
            Y: 106.367676
            Z: 123.298706
          }
          Rotation {
            Pitch: -0.95749
            Yaw: -1.02121246
            Roll: -147.8293
          }
          Scale {
            X: 0.00272820704
            Y: -0.124826878
            Z: 0.612904847
          }
        }
        ParentId: 14100608475394138306
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 10120512676309829011
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
          Value: "mc:ecollisionsetting:forceoff"
        }
        CoreMesh {
          MeshAsset {
            Id: 10227161647766562745
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
        Id: 7527739451245723704
        Name: "Horn"
        Transform {
          Location {
            X: 2.1018157
            Y: -64.032692
            Z: 50.8714638
          }
          Rotation {
            Pitch: -1.00204468
            Yaw: -1.09945679
            Roll: 20.4491272
          }
          Scale {
            X: 0.00055018469
            Y: 0.145599589
            Z: 0.126376063
          }
        }
        ParentId: 14100608475394138306
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 10120512676309829011
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
          Value: "mc:ecollisionsetting:forceoff"
        }
        CoreMesh {
          MeshAsset {
            Id: 10227161647766562745
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
        Id: 16354638271073516788
        Name: "Horn"
        Transform {
          Location {
            X: 2.10181808
            Y: -71.2586899
            Z: 70.3234253
          }
          Rotation {
            Pitch: 1.36801851
            Yaw: 178.322495
            Roll: -126.682083
          }
          Scale {
            X: 0.0005583046
            Y: 0.214060724
            Z: 0.12637499
          }
        }
        ParentId: 14100608475394138306
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 10120512676309829011
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
          Value: "mc:ecollisionsetting:forceoff"
        }
        CoreMesh {
          MeshAsset {
            Id: 10227161647766562745
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
        Id: 12584948861753157130
        Name: "Horn"
        Transform {
          Location {
            X: 2.08333182
            Y: -69.9843597
            Z: 77.6992493
          }
          Rotation {
            Pitch: -1.02584839
            Yaw: -1.12442017
            Roll: 20.4043198
          }
          Scale {
            X: 0.000550184748
            Y: 0.145599589
            Z: 0.126376063
          }
        }
        ParentId: 14100608475394138306
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 10120512676309829011
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
          Value: "mc:ecollisionsetting:forceoff"
        }
        CoreMesh {
          MeshAsset {
            Id: 10227161647766562745
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
        Id: 14415001375154909616
        Name: "Horn"
        Transform {
          Location {
            X: 1.9417392
            Y: -68.2718353
            Z: 95.4427109
          }
          Rotation {
            Pitch: 1.37488973
            Yaw: 178.319092
            Roll: -117.396088
          }
          Scale {
            X: 0.000393695605
            Y: 0.104186535
            Z: 0.0904320255
          }
        }
        ParentId: 14100608475394138306
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 10120512676309829011
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
          Value: "mc:ecollisionsetting:forceoff"
        }
        CoreMesh {
          MeshAsset {
            Id: 10227161647766562745
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
        Id: 11166639993067521738
        Name: "Horn"
        Transform {
          Location {
            X: 2.04529738
            Y: -54.1352043
            Z: 32.6832657
          }
          Rotation {
            Pitch: 1.31728387
            Yaw: 178.398819
            Roll: -101.185303
          }
          Scale {
            X: 0.000550185388
            Y: 0.145599589
            Z: 0.126377925
          }
        }
        ParentId: 14100608475394138306
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 10120512676309829011
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
          Value: "mc:ecollisionsetting:forceoff"
        }
        CoreMesh {
          MeshAsset {
            Id: 10227161647766562745
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
        Id: 8130042895962613745
        Name: "Horn"
        Transform {
          Location {
            X: -0.000305076421
            Y: -35.5096588
            Z: 13.5772886
          }
          Rotation {
            Pitch: -1.17331719
            Yaw: -1.26703978
            Roll: -5.31034851
          }
          Scale {
            X: 0.000553626684
            Y: 0.217666641
            Z: 0.143235937
          }
        }
        ParentId: 14100608475394138306
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 10120512676309829011
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
          Value: "mc:ecollisionsetting:forceoff"
        }
        CoreMesh {
          MeshAsset {
            Id: 10227161647766562745
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
        Id: 11820287062850324996
        Name: "Horn"
        Transform {
          Location {
            X: -0.000296925515
            Y: 6.04764748
            Z: -2.91103447e-07
          }
          Rotation {
            Pitch: -1.41244507
            Yaw: -1.51589966
            Roll: -20.3972473
          }
          Scale {
            X: 0.000550185388
            Y: 0.145599589
            Z: 0.126377791
          }
        }
        ParentId: 14100608475394138306
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 10120512676309829011
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
          Value: "mc:ecollisionsetting:forceoff"
        }
        CoreMesh {
          MeshAsset {
            Id: 10227161647766562745
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
        Id: 5586120887690378892
        Name: "Horn"
        Transform {
          Location {
            X: -0.000303912
            Y: -22.4181461
            Z: 5.88917685
          }
          Rotation {
            Pitch: 1.22251499
            Yaw: 178.517563
            Roll: -86.0916443
          }
          Scale {
            X: 0.000550185388
            Y: 0.145599589
            Z: 0.126377463
          }
        }
        ParentId: 14100608475394138306
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 10120512676309829011
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
          Value: "mc:ecollisionsetting:forceoff"
        }
        CoreMesh {
          MeshAsset {
            Id: 10227161647766562745
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
        Id: 4753254389445842129
        Name: "Horn"
        Transform {
          Location {
            X: 1.86276865
            Y: 28.932003
            Z: 6.22933102
          }
          Rotation {
            Pitch: 1.4471736
            Yaw: 178.307648
            Roll: -43.4760742
          }
          Scale {
            X: 0.000547536707
            Y: 0.145587325
            Z: 0.15399538
          }
        }
        ParentId: 14100608475394138306
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 10120512676309829011
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
          Value: "mc:ecollisionsetting:forceoff"
        }
        CoreMesh {
          MeshAsset {
            Id: 10227161647766562745
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
        Id: 2728303964712188532
        Name: "Hill 05"
        Transform {
          Location {
            X: 2.34301424
            Y: -10.7270164
            Z: 39.2379
          }
          Rotation {
            Pitch: -33.8406067
            Yaw: 89.9996872
            Roll: -89.9987488
          }
          Scale {
            X: 0.229581058
            Y: 0.208353236
            Z: 0.000999999931
          }
        }
        ParentId: 5031793199400462749
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 10120512676309829011
            }
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
            Id: 11198688474246660903
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
        Id: 11919451914508289683
        Name: "Color Wing"
        Transform {
          Location {
            X: -1.37034726
            Y: -123.044495
            Z: -95.3968811
          }
          Rotation {
          }
          Scale {
            X: 0.92576921
            Y: 0.92576921
            Z: 0.92576921
          }
        }
        ParentId: 7494046674463817795
        ChildIds: 9191926788775006561
        ChildIds: 7684954551758462786
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
        Id: 9191926788775006561
        Name: "Front Lower Color"
        Transform {
          Location {
            X: 5.55907869
            Y: 6.12992
            Z: -1.45551724e-06
          }
          Rotation {
          }
          Scale {
            X: 0.99999994
            Y: 0.99999994
            Z: 0.99999994
          }
        }
        ParentId: 11919451914508289683
        ChildIds: 136081098564627838
        ChildIds: 1104265486198759135
        ChildIds: 8618685456216581429
        ChildIds: 6480912175880870589
        ChildIds: 1139796606288199353
        ChildIds: 14732608139432093518
        ChildIds: 8812803231384204872
        ChildIds: 5019294145447935840
        ChildIds: 15078302870165840673
        ChildIds: 8688554850651559966
        ChildIds: 11151198249719368402
        ChildIds: 8225810570158859716
        ChildIds: 13253662580529000627
        ChildIds: 4153652353519596182
        ChildIds: 8455677658420553008
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
        Id: 136081098564627838
        Name: "Cylinder"
        Transform {
          Location {
            X: -1.9196341
            Y: -110.894363
            Z: 8.57618332
          }
          Rotation {
            Pitch: 4.85159922
            Yaw: 89.9970779
            Roll: 89.9985123
          }
          Scale {
            X: 0.055474408
            Y: 0.0801170468
            Z: 0.000565112
          }
        }
        ParentId: 9191926788775006561
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 3556700782779527591
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
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.344658524
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.542012
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
            Id: 10602013473409766249
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
        Id: 1104265486198759135
        Name: "Hill 05"
        Transform {
          Location {
            X: -0.023068428
            Y: 44.0698
            Z: 38.441864
          }
          Rotation {
            Pitch: -37.5231
            Yaw: -89.9995117
            Roll: 89.9997406
          }
          Scale {
            X: 0.187036663
            Y: -0.11788892
            Z: 0.000773802632
          }
        }
        ParentId: 9191926788775006561
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 3556700782779527591
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.542012
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.344658524
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.650015652
              G: 0.27388
              B: 0.820000052
              A: 1
            }
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
            Id: 11198688474246660903
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
        Id: 8618685456216581429
        Name: "Hill 05"
        Transform {
          Location {
            X: 0.0240123551
            Y: -2.34477615
            Z: 0.619683504
          }
          Rotation {
            Pitch: -18.8467102
            Yaw: -89.9995117
            Roll: 89.9997177
          }
          Scale {
            X: 0.24978736
            Y: 0.172735035
            Z: 0.000773962412
          }
        }
        ParentId: 9191926788775006561
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 3556700782779527591
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.542012
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.344658524
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.650015652
              G: 0.27388
              B: 0.820000052
              A: 1
            }
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
            Id: 11198688474246660903
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
        Id: 6480912175880870589
        Name: "Hill 05"
        Transform {
          Location {
            X: 0.000288774609
            Y: -41.7245331
            Z: -3.49324146e-05
          }
          Rotation {
            Pitch: -33.8405037
            Yaw: 90.0004654
            Roll: -89.9986038
          }
          Scale {
            X: 0.177687109
            Y: 0.16125761
            Z: 0.000773962412
          }
        }
        ParentId: 9191926788775006561
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 3556700782779527591
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.542012
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.344658524
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.650015652
              G: 0.27388
              B: 0.820000052
              A: 1
            }
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
            Id: 11198688474246660903
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
        Id: 1139796606288199353
        Name: "Cylinder"
        Transform {
          Location {
            X: -1.92037
            Y: -108.622055
            Z: -8.1727047
          }
          Rotation {
            Pitch: 3.78244925
            Yaw: 89.9964142
            Roll: 89.9978867
          }
          Scale {
            X: 0.055474408
            Y: 0.0801170468
            Z: 0.000565112
          }
        }
        ParentId: 9191926788775006561
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 3556700782779527591
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
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.344658524
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.542012
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
            Id: 10602013473409766249
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
        Id: 14732608139432093518
        Name: "Cylinder"
        Transform {
          Location {
            X: -1.91977382
            Y: -104.741661
            Z: -24.7748661
          }
          Rotation {
            Pitch: 23.5378761
            Yaw: 89.9966354
            Roll: 89.9973526
          }
          Scale {
            X: 0.055474408
            Y: 0.0801170468
            Z: 0.000565112
          }
        }
        ParentId: 9191926788775006561
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 3556700782779527591
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
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.344658524
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.542012
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
            Id: 10602013473409766249
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
        Id: 8812803231384204872
        Name: "Cylinder"
        Transform {
          Location {
            X: -0.0936561376
            Y: -97.3396759
            Z: -41.630146
          }
          Rotation {
            Pitch: 44.0262413
            Yaw: 89.9943771
            Roll: 89.9942322
          }
          Scale {
            X: 0.0718124807
            Y: 0.103712708
            Z: 0.000731546141
          }
        }
        ParentId: 9191926788775006561
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 3556700782779527591
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
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.344658524
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.542012
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
            Id: 10602013473409766249
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
        Id: 5019294145447935840
        Name: "Cylinder"
        Transform {
          Location {
            X: -1.92390049
            Y: -107.990089
            Z: 25.1570511
          }
          Rotation {
            Pitch: -12.9076843
            Yaw: 89.9960861
            Roll: 89.9983902
          }
          Scale {
            X: 0.055474408
            Y: 0.0801170468
            Z: 0.000565112
          }
        }
        ParentId: 9191926788775006561
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 3556700782779527591
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
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.344658524
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.542012
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
            Id: 10602013473409766249
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
        Id: 15078302870165840673
        Name: "Cylinder"
        Transform {
          Location {
            X: 0.134252265
            Y: -85.0189438
            Z: -56.0190582
          }
          Rotation {
            Pitch: 44.0261726
            Yaw: 89.994278
            Roll: 89.9941559
          }
          Scale {
            X: 0.0704787672
            Y: 0.101786651
            Z: 0.000717960298
          }
        }
        ParentId: 9191926788775006561
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 3556700782779527591
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
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.344658524
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.542012
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
            Id: 10602013473409766249
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
        Id: 8688554850651559966
        Name: "Cylinder"
        Transform {
          Location {
            X: 0.238965675
            Y: -73.4635468
            Z: -69.2364578
          }
          Rotation {
            Pitch: 44.0260773
            Yaw: 89.9941711
            Roll: 89.9940643
          }
          Scale {
            X: 0.055474408
            Y: 0.0801170468
            Z: 0.000565112
          }
        }
        ParentId: 9191926788775006561
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 3556700782779527591
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
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.344658524
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.542012
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
            Id: 10602013473409766249
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
        Id: 11151198249719368402
        Name: "Cylinder"
        Transform {
          Location {
            X: 0.0434279814
            Y: -57.454464
            Z: -79.8058701
          }
          Rotation {
            Pitch: 56.3505859
            Yaw: 89.9899521
            Roll: 89.9892807
          }
          Scale {
            X: 0.055474408
            Y: 0.0801170468
            Z: 0.000565112
          }
        }
        ParentId: 9191926788775006561
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 3556700782779527591
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
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.344658524
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.542012
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
            Id: 10602013473409766249
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
        Id: 8225810570158859716
        Name: "Cylinder"
        Transform {
          Location {
            X: -0.219124064
            Y: -41.3264389
            Z: -86.2224808
          }
          Rotation {
            Pitch: 77.7540588
            Yaw: 89.9563828
            Roll: 89.9543381
          }
          Scale {
            X: 0.055474408
            Y: 0.0801170468
            Z: 0.000565112
          }
        }
        ParentId: 9191926788775006561
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 3556700782779527591
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
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.344658524
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.542012
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
            Id: 10602013473409766249
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
        Id: 13253662580529000627
        Name: "Cylinder"
        Transform {
          Location {
            X: 0.070815
            Y: -22.4472961
            Z: -83.8218155
          }
          Rotation {
            Pitch: 76.3505859
            Yaw: -89.9297485
            Roll: -89.9361
          }
          Scale {
            X: 0.055474408
            Y: 0.0801170468
            Z: 0.000565112
          }
        }
        ParentId: 9191926788775006561
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 3556700782779527591
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
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.344658524
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.542012
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
            Id: 10602013473409766249
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
        Id: 4153652353519596182
        Name: "Cylinder"
        Transform {
          Location {
            X: -0.104913689
            Y: -4.47072506
            Z: -77.3933411
          }
          Rotation {
            Pitch: 57.4529266
            Yaw: -89.9664917
            Roll: -89.9754944
          }
          Scale {
            X: 0.0449714288
            Y: 0.0649484769
            Z: 0.000458119233
          }
        }
        ParentId: 9191926788775006561
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 3556700782779527591
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
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.344658524
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.542012
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
            Id: 10602013473409766249
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
        Id: 8455677658420553008
        Name: "Cylinder"
        Transform {
          Location {
            X: -1.92646229
            Y: -98.9711227
            Z: 35.7567215
          }
          Rotation {
            Pitch: -32.3800354
            Yaw: 89.994339
            Roll: 89.9987411
          }
          Scale {
            X: 0.0428040549
            Y: 0.0618183129
            Z: 0.000436040427
          }
        }
        ParentId: 9191926788775006561
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 3556700782779527591
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
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.344658524
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.542012
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
            Id: 10602013473409766249
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
        Id: 7684954551758462786
        Name: "Back Lower Color"
        Transform {
          Location {
            X: -5.55907869
            Y: -6.12992382
            Z: 16.6331921
          }
          Rotation {
            Pitch: -87.7218628
            Yaw: 90.0008545
            Roll: 89.9988785
          }
          Scale {
            X: 0.773962438
            Y: 0.773962438
            Z: 0.773962438
          }
        }
        ParentId: 11919451914508289683
        ChildIds: 6098148822543903045
        ChildIds: 13889022664956960013
        ChildIds: 15648595244663468284
        ChildIds: 12549281668835195522
        ChildIds: 6263097830846558676
        ChildIds: 6794060177443459323
        ChildIds: 4425713644852064
        ChildIds: 17054153688431946400
        ChildIds: 16031568235218031692
        ChildIds: 12650324883107984216
        ChildIds: 10988649484936120191
        ChildIds: 8185615597459623424
        ChildIds: 6520070342676686885
        ChildIds: 4249111258412388280
        ChildIds: 12342431555907863341
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
        Id: 6098148822543903045
        Name: "Cylinder"
        Transform {
          Location {
            X: 5.33539248
            Y: 127.743202
            Z: -14.7845068
          }
          Rotation {
            Pitch: -0.00268554688
            Yaw: -92.5733643
            Roll: -0.00128173828
          }
          Scale {
            X: 0.071675837
            Y: 0.103515409
            Z: 0.000730154221
          }
        }
        ParentId: 7684954551758462786
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 3556700782779527591
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
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.344658524
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.542012
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
            Id: 10602013473409766249
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
        Id: 13889022664956960013
        Name: "Cylinder"
        Transform {
          Location {
            X: -29.1410408
            Y: 110.958496
            Z: -15.2110634
          }
          Rotation {
            Pitch: -0.0046081543
            Yaw: -55.3417053
            Roll: -0.00415039062
          }
          Scale {
            X: 0.0553050786
            Y: 0.079872489
            Z: 0.000563387
          }
        }
        ParentId: 7684954551758462786
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 3556700782779527591
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
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.344658524
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.542012
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
            Id: 10602013473409766249
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
        Id: 15648595244663468284
        Name: "Cylinder"
        Transform {
          Location {
            X: 48.705986
            Y: 121.516205
            Z: -15.2198124
          }
          Rotation {
            Pitch: -0.00286865234
            Yaw: -111.259613
            Roll: -0.00137329102
          }
          Scale {
            X: 0.071675837
            Y: 0.103515409
            Z: 0.000730154221
          }
        }
        ParentId: 7684954551758462786
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 3556700782779527591
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
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.344658524
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.542012
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
            Id: 10602013473409766249
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
        Id: 12549281668835195522
        Name: "Cylinder"
        Transform {
          Location {
            X: 70.8482742
            Y: 112.830109
            Z: -15.2175484
          }
          Rotation {
            Pitch: -0.00384521484
            Yaw: -131.748093
            Roll: -0.00201416016
          }
          Scale {
            X: 0.0927854776
            Y: 0.134002239
            Z: 0.000945195789
          }
        }
        ParentId: 7684954551758462786
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 3556700782779527591
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
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.344658524
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.542012
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
            Id: 10602013473409766249
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
        Id: 6263097830846558676
        Name: "Cylinder"
        Transform {
          Location {
            X: -15.9200726
            Y: 123.142044
            Z: -15.0603781
          }
          Rotation {
            Pitch: -0.00360107422
            Yaw: -74.8140259
            Roll: -0.00244140625
          }
          Scale {
            X: 0.071675837
            Y: 0.103515409
            Z: 0.000730154221
          }
        }
        ParentId: 7684954551758462786
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 3556700782779527591
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
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.344658524
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.542012
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
            Id: 10602013473409766249
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
        Id: 6794060177443459323
        Name: "Cylinder"
        Transform {
          Location {
            X: 90.0555496
            Y: 97.662384
            Z: -15.2167568
          }
          Rotation {
            Pitch: -0.00390625
            Yaw: -131.747971
            Roll: -0.00201416016
          }
          Scale {
            X: 0.0910622478
            Y: 0.13151367
            Z: 0.000927642162
          }
        }
        ParentId: 7684954551758462786
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 3556700782779527591
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
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.344658524
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.542012
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
            Id: 10602013473409766249
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
        Id: 4425713644852064
        Name: "Cylinder"
        Transform {
          Location {
            X: 107.712341
            Y: 83.4223785
            Z: -15.2166452
          }
          Rotation {
            Pitch: -0.00396728516
            Yaw: -131.747879
            Roll: -0.00204467773
          }
          Scale {
            X: 0.071675837
            Y: 0.103515409
            Z: 0.000730154221
          }
        }
        ParentId: 7684954551758462786
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 3556700782779527591
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
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.344658524
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.542012
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
            Id: 10602013473409766249
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
        Id: 17054153688431946400
        Name: "Cylinder"
        Transform {
          Location {
            X: 122.17878
            Y: 63.2981415
            Z: -15.2175493
          }
          Rotation {
            Pitch: -0.00540161133
            Yaw: -144.072342
            Roll: -0.00256347656
          }
          Scale {
            X: 0.071675837
            Y: 0.103515409
            Z: 0.000730154221
          }
        }
        ParentId: 7684954551758462786
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 3556700782779527591
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
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.344658524
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.542012
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
            Id: 10602013473409766249
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
        Id: 16031568235218031692
        Name: "Cylinder"
        Transform {
          Location {
            X: 131.290466
            Y: 42.8079758
            Z: -15.2206011
          }
          Rotation {
            Pitch: -0.00814819336
            Yaw: -165.480759
            Roll: -0.00317382812
          }
          Scale {
            X: 0.071675837
            Y: 0.103515409
            Z: 0.000730154221
          }
        }
        ParentId: 7684954551758462786
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 3556700782779527591
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
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.344658524
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.542012
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
            Id: 10602013473409766249
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
        Id: 12650324883107984216
        Name: "Cylinder"
        Transform {
          Location {
            X: 129.160706
            Y: 18.3122139
            Z: -15.2250977
          }
          Rotation {
            Pitch: -0.0163574219
            Yaw: 168.629654
            Roll: -0.00457763672
          }
          Scale {
            X: 0.071675837
            Y: 0.103515409
            Z: 0.000730154221
          }
        }
        ParentId: 7684954551758462786
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 3556700782779527591
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
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.344658524
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.542012
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
            Id: 10602013473409766249
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
        Id: 10988649484936120191
        Name: "Cylinder"
        Transform {
          Location {
            X: 121.784485
            Y: -5.22562551
            Z: -15.2289276
          }
          Rotation {
            Pitch: -0.018157959
            Yaw: 149.730942
            Roll: -0.00399780273
          }
          Scale {
            X: 0.0581054315
            Y: 0.0839168206
            Z: 0.000591914
          }
        }
        ParentId: 7684954551758462786
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 3556700782779527591
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
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.344658524
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.542012
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
            Id: 10602013473409766249
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
        Id: 8185615597459623424
        Name: "Cylinder"
        Transform {
          Location {
            X: 20.0034161
            Y: 125.387085
            Z: -18.4489536
          }
          Rotation {
            Pitch: -0.00335693359
            Yaw: -91.5042114
            Roll: -0.00189208984
          }
          Scale {
            X: 0.071675837
            Y: 0.103515409
            Z: 0.000730154221
          }
        }
        ParentId: 7684954551758462786
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 3556700782779527591
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
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.344658524
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.542012
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
            Id: 10602013473409766249
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
        Id: 6520070342676686885
        Name: "Hill 05"
        Transform {
          Location {
            X: 13.5460052
            Y: 35.6200562
            Z: -14.86
          }
          Rotation {
            Pitch: 0.00011611321
            Yaw: -53.8815308
            Roll: -179.998581
          }
          Scale {
            X: 0.229581088
            Y: 0.208353281
            Z: -0.001
          }
        }
        ParentId: 7684954551758462786
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 3556700782779527591
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.542012
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.344658524
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.650015652
              G: 0.27388
              B: 0.820000052
              A: 1
            }
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
            Id: 11198688474246660903
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
        Id: 4249111258412388280
        Name: "Hill 05"
        Transform {
          Location {
            X: 12.6112671
            Y: -15.8694611
            Z: -16.7233505
          }
          Rotation {
            Yaw: 73.4311447
            Roll: 179.999756
          }
          Scale {
            X: 0.322738379
            Y: 0.223182738
            Z: -0.001
          }
        }
        ParentId: 7684954551758462786
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 3556700782779527591
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.542012
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.344658524
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.650015652
              G: 0.27388
              B: 0.820000052
              A: 1
            }
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
            Id: 11198688474246660903
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
        Id: 12342431555907863341
        Name: "Hill 05"
        Transform {
          Location {
            X: -29.8063202
            Y: -77.0432739
            Z: -14.86
          }
          Rotation {
            Pitch: -3.05175781e-05
            Yaw: 54.7548218
            Roll: 179.999756
          }
          Scale {
            X: 0.241661161
            Y: -0.152318671
            Z: -0.001
          }
        }
        ParentId: 7684954551758462786
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 3556700782779527591
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.542012
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.344658524
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.650015652
              G: 0.27388
              B: 0.820000052
              A: 1
            }
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
            Id: 11198688474246660903
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
        Id: 17335897134527859868
        Name: "Bone Human Scapula 01"
        Transform {
          Location {
            X: 10.5976543
            Y: -2.02343845
            Z: -15.7711182
          }
          Rotation {
            Yaw: 170.614349
            Roll: -8.02713
          }
          Scale {
            X: 0.730643272
            Y: 1.39520454
            Z: 0.730638
          }
        }
        ParentId: 14039582513438168686
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 853087330042215159
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
          Value: "mc:ecollisionsetting:forceoff"
        }
        CoreMesh {
          MeshAsset {
            Id: 18124923500266954138
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
        Id: 602602218472838358
        Name: "Bone Human Scapula 01"
        Transform {
          Location {
            X: -11.671875
            Y: -2.02441406
            Z: -15.7757568
          }
          Rotation {
            Yaw: 170.614258
            Roll: 171.972794
          }
          Scale {
            X: -0.731006861
            Y: -1.39589918
            Z: -0.731001377
          }
        }
        ParentId: 14039582513438168686
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 853087330042215159
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
          Value: "mc:ecollisionsetting:forceoff"
        }
        CoreMesh {
          MeshAsset {
            Id: 18124923500266954138
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
    }
    Assets {
      Id: 290331051898579263
      Name: "Fantasy Spell Ingredient 009"
      PlatformAssetType: 9
      PrimaryAsset {
        AssetType: "PlatformBrushAssetRef"
        AssetId: "UI_Fantasy_Ingredient_009"
      }
    }
    Assets {
      Id: 11198688474246660903
      Name: "Hill 05"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_hill_005"
      }
    }
    Assets {
      Id: 10227161647766562745
      Name: "Horn"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_horn_001"
      }
    }
    Assets {
      Id: 7307109347043237742
      Name: "Text 04: C"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "F7_Text_002"
      }
    }
    Assets {
      Id: 9807975150386039547
      Name: "Fantasy Castle Stairs Spiral Trim 01 - Large"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_ts_fan_cas_stairs_spiral_trim_001_lg"
      }
    }
    Assets {
      Id: 10602013473409766249
      Name: "Cylinder"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_cylinder_002"
      }
    }
    Assets {
      Id: 7240897054821455019
      Name: "Fairy Dot Volume VFX"
      PlatformAssetType: 8
      PrimaryAsset {
        AssetType: "VfxBlueprintAssetRef"
        AssetId: "fxbp_Swirling_Magic_Column"
      }
    }
    Assets {
      Id: 18124923500266954138
      Name: "Bone Human Scapula 01"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_bones_human_scap_01_ref"
      }
    }
    Assets {
      Id: 853087330042215159
      Name: "Bone Raw"
      PlatformAssetType: 2
      PrimaryAsset {
        AssetType: "MaterialAssetRef"
        AssetId: "mi_bone_raw_001_uv_ref"
      }
    }
    PrimaryAssetId {
      AssetType: "None"
      AssetId: "None"
    }
  }
  SerializationVersion: 118
}
