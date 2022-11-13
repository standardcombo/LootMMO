Assets {
  Id: 13347412244189647636
  Name: "Assassin Orc Deaths Shadow Costume Basic"
  PlatformAssetType: 5
  TemplateAsset {
    ObjectBlock {
      RootId: 1841219610101333631
      Objects {
        Id: 1841219610101333631
        Name: "Assassin Orc Deaths Shadow Costume Basic"
        Transform {
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 4781671109827199097
        ChildIds: 2419663458141707686
        Collidable_v2 {
          Value: "mc:ecollisionsetting:forceoff"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:forceon"
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
        Id: 2419663458141707686
        Name: "root"
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
        ParentId: 1841219610101333631
        ChildIds: 2870593095743123860
        ChildIds: 15373801628967461914
        ChildIds: 11933097170229802744
        UnregisteredParameters {
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
        Id: 2870593095743123860
        Name: "ShadowMovement"
        Transform {
          Location {
            X: 3.09960938
            Y: -0.0625
            Z: 39.8334961
          }
          Rotation {
            Pitch: -0.212275431
            Yaw: 1.0938494e-12
            Roll: 3.08758097e-12
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 2419663458141707686
        UnregisteredParameters {
          Overrides {
            Name: "cs:Body"
            ObjectReference {
              SubObjectId: 11933097170229802744
            }
          }
          Overrides {
            Name: "cs:Arms"
            ObjectReference {
              SubObjectId: 5881396694983518749
            }
          }
          Overrides {
            Name: "cs:Ease3D"
            AssetReference {
              Id: 16050147283496351669
            }
          }
        }
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
            Id: 12059718626481054599
          }
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 15373801628967461914
        Name: "Generic Orc Preview Circle"
        Transform {
          Scale {
            X: 13
            Y: 13
            Z: 13
          }
        }
        ParentId: 2419663458141707686
        ChildIds: 12583111441501747399
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
        Id: 12583111441501747399
        Name: "2D Basic Shapes Decal"
        Transform {
          Location {
          }
          Rotation {
          }
          Scale {
            X: 0.211321607
            Y: 0.211321607
            Z: 1.35462606
          }
        }
        ParentId: 15373801628967461914
        UnregisteredParameters {
          Overrides {
            Name: "bp:Sides"
            Int: 3
          }
          Overrides {
            Name: "bp:Stroke Width"
            Float: 0.0188326165
          }
          Overrides {
            Name: "bp:Emissive Boost"
            Float: 1
          }
          Overrides {
            Name: "bp:Volume Display Color"
            Color {
              R: 1
              G: 1
              B: 1
              A: 1
            }
          }
          Overrides {
            Name: "bp:color"
            Color {
              G: 0.580392182
              B: 0.360784471
              A: 0.5
            }
          }
          Overrides {
            Name: "bp:Stroke Color"
            Color {
              R: 0.14492546
              B: 0.18
              A: 0.5
            }
          }
          Overrides {
            Name: "bp:Indent"
            Float: 0
          }
          Overrides {
            Name: "bp:Corner Rounding"
            Float: 1
          }
          Overrides {
            Name: "bp:Blur"
            Float: 0
          }
          Overrides {
            Name: "bp:Fade Delay"
            Float: 0
          }
          Overrides {
            Name: "bp:Fade Time"
            Float: 0
          }
          Overrides {
            Name: "bp:Color"
            Color {
              R: 0.14492546
              B: 0.18
              A: 0.2
            }
          }
        }
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
            Id: 9377227685447941950
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
        Id: 11933097170229802744
        Name: "Body"
        Transform {
          Location {
            Z: 230
          }
          Rotation {
            Pitch: -20
            Yaw: 1.37878294e-11
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 2419663458141707686
        ChildIds: 5881396694983518749
        ChildIds: 17830966935422711642
        ChildIds: 16286269308293661894
        ChildIds: 9426240819201383969
        ChildIds: 46332430609797869
        ChildIds: 5876235267637428369
        ChildIds: 17869892236429979132
        ChildIds: 467671609211414581
        ChildIds: 5365716444944436048
        ChildIds: 15546847470728644510
        ChildIds: 18398157180203569339
        ChildIds: 12489834464871216850
        ChildIds: 5292443389653859345
        ChildIds: 5174723862359527901
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
        Id: 5881396694983518749
        Name: "Arms"
        Transform {
          Location {
            X: 1.7096889
            Y: 2.49102767e-14
            Z: -5
          }
          Rotation {
            Pitch: 6.83018879e-06
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 11933097170229802744
        ChildIds: 15483102788971864489
        ChildIds: 235268733354247980
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
        Id: 15483102788971864489
        Name: "Left_Arm"
        Transform {
          Location {
          }
          Rotation {
            Pitch: -6.83018879e-06
            Yaw: 8.67809242e-27
            Roll: -1.94125628e-19
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 5881396694983518749
        ChildIds: 2995435315298645520
        ChildIds: 3606159427649004070
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
        Id: 2995435315298645520
        Name: "Teardrop - Truncated"
        Transform {
          Location {
            X: -9.82421875
            Y: -19.8242188
            Z: -25.9194336
          }
          Rotation {
            Pitch: -40.4169617
            Yaw: 46.1586609
            Roll: 13.1773891
          }
          Scale {
            X: 1.23980117
            Y: -1.25749457
            Z: 0.984427452
          }
        }
        ParentId: 15483102788971864489
        UnregisteredParameters {
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
            Id: 4489563712437375651
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
        Id: 3606159427649004070
        Name: "Group"
        Transform {
          Location {
            X: -16.8671913
            Y: -34.1816406
            Z: -39.6463547
          }
          Rotation {
            Pitch: -18.4093628
            Yaw: -91.1720276
            Roll: -38.434967
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 15483102788971864489
        ChildIds: 17021735510843735708
        ChildIds: 17434487815342411250
        ChildIds: 11601294417733079804
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
        Id: 17021735510843735708
        Name: "Teardrop - Truncated"
        Transform {
          Location {
            X: 13.8417969
            Y: -3.74414062
            Z: -1.68359375
          }
          Rotation {
            Pitch: -87.1115341
            Yaw: -24.8101559
            Roll: -159.002289
          }
          Scale {
            X: 1.01535428
            Y: -1.02985811
            Z: 0.868944347
          }
        }
        ParentId: 3606159427649004070
        UnregisteredParameters {
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
            Id: 4489563712437375651
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
        Id: 17434487815342411250
        Name: "Group"
        Transform {
          Location {
            X: 31.3257217
            Y: -1.41225433
            Z: -1.58415508
          }
          Rotation {
            Pitch: 6.55176973
            Yaw: -14.2897339
            Roll: -41.9780273
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 3606159427649004070
        ChildIds: 3646762148904238762
        ChildIds: 13149211803436890457
        ChildIds: 3403035770030197445
        ChildIds: 13749961197185985557
        ChildIds: 6975309410856790927
        ChildIds: 12281058637688868485
        ChildIds: 8409017683379622657
        ChildIds: 10498308415137508576
        ChildIds: 3572450765559231976
        ChildIds: 3331483097162388332
        ChildIds: 3156390114456351912
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
        Id: 3646762148904238762
        Name: "Dodecahedron - Polished"
        Transform {
          Location {
            X: -0.001953125
            Y: -0.0009765625
          }
          Rotation {
            Pitch: 11.5202541
            Yaw: -91.4083176
            Roll: 100.378304
          }
          Scale {
            X: 2.35817719
            Y: -2.35816717
            Z: 0.371335536
          }
        }
        ParentId: 17434487815342411250
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 10373577859092754191
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 6.66459465
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 6.02052975
          }
          Overrides {
            Name: "ma:Shared_Trim:color"
            Color {
              R: 0.48266679
              G: 0.223999977
              B: 1
              A: 1
            }
          }
          Overrides {
            Name: "ma:Shared_Trim:id"
            AssetReference {
              Id: 5475761223416488121
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
            Id: 3682206342183528038
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
        Id: 13149211803436890457
        Name: "Teardrop - Truncated"
        Transform {
          Location {
            X: 17.3984375
            Y: -6.08398438
            Z: 0.93359375
          }
          Rotation {
            Pitch: 48.2301025
            Yaw: -111.277016
            Roll: -106.867882
          }
          Scale {
            X: 0.722572
            Y: -0.522559822
            Z: 0.40038693
          }
        }
        ParentId: 17434487815342411250
        UnregisteredParameters {
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
            Id: 4489563712437375651
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
        Id: 3403035770030197445
        Name: "RightThumbRoot"
        Transform {
          Location {
            X: 14.1816406
            Y: 3.65332031
            Z: -8.09375
          }
          Rotation {
            Pitch: 46.2478065
            Yaw: -95.1335602
            Roll: 125.363564
          }
          Scale {
            X: 1.9168607
            Y: -1.9168607
            Z: 1.9168607
          }
        }
        ParentId: 17434487815342411250
        ChildIds: 13616023930462860541
        ChildIds: 7211533308859791955
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
        Id: 13616023930462860541
        Name: "Teardrop - Truncated"
        Transform {
          Location {
            X: 0.000255779538
            Y: 2.08685287e-05
            Z: 0.669183969
          }
          Rotation {
            Pitch: -7.70452881
            Yaw: -120.667328
            Roll: 180
          }
          Scale {
            X: 0.20865722
            Y: 0.200110033
            Z: 0.187553659
          }
        }
        ParentId: 3403035770030197445
        UnregisteredParameters {
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
            Id: 482873605194865923
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
        Id: 7211533308859791955
        Name: "RightThumbJoint"
        Transform {
          Location {
            X: 8.36593608e-05
            Y: -0.00084689667
            Z: 5.00019693
          }
          Rotation {
            Pitch: -70.961853
            Roll: -20.9142456
          }
          Scale {
            X: 0.700000048
            Y: 0.700000048
            Z: 0.700000048
          }
        }
        ParentId: 3403035770030197445
        ChildIds: 13698726053711481176
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
        Id: 13698726053711481176
        Name: "Teardrop - Truncated"
        Transform {
          Location {
            X: 0.00020368323
            Y: -1.59072065
            Z: 3.08060789
          }
          Rotation {
            Yaw: -3.05175781e-05
            Roll: 1.28066049e-05
          }
          Scale {
            X: 0.260786355
            Y: 0.333848119
            Z: 0.173431993
          }
        }
        ParentId: 7211533308859791955
        UnregisteredParameters {
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
            Id: 482873605194865923
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
        Id: 13749961197185985557
        Name: "RightIndexRoot"
        Transform {
          Location {
            X: 27.0761719
            Y: 4.30273438
            Z: -2.71289062
          }
          Rotation {
            Pitch: 8.34429169
            Yaw: -83.6463
            Roll: -161.6073
          }
          Scale {
            X: 1.36918616
            Y: -1.36918616
            Z: 1.36918616
          }
        }
        ParentId: 17434487815342411250
        ChildIds: 799418534330785184
        ChildIds: 11256605761614400087
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
        Id: 799418534330785184
        Name: "Teardrop - Truncated"
        Transform {
          Location {
            X: 2.63115071e-05
            Y: 3.88238732e-05
            Z: 2.45058656
          }
          Rotation {
            Yaw: -110.175262
            Roll: 180
          }
          Scale {
            X: 0.366616696
            Y: 0.283289403
            Z: 0.222274974
          }
        }
        ParentId: 13749961197185985557
        UnregisteredParameters {
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
            Id: 482873605194865923
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
        Id: 11256605761614400087
        Name: "RightIndexRoot"
        Transform {
          Location {
            X: 4.29981301e-05
            Y: -0.000119267243
            Z: 6.99961376
          }
          Rotation {
            Roll: -107.023529
          }
          Scale {
            X: 0.700000107
            Y: 0.700000107
            Z: 0.700000107
          }
        }
        ParentId: 13749961197185985557
        ChildIds: 3557505223611285793
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
        Id: 3557505223611285793
        Name: "Teardrop - Truncated"
        Transform {
          Location {
            X: 0.000244469906
            Y: -5.20662797e-05
            Z: 5.82832956
          }
          Rotation {
            Pitch: 6.83018879e-06
            Yaw: 1.70754652e-06
          }
          Scale {
            X: 0.343746811
            Y: 0.333849728
            Z: 0.266581
          }
        }
        ParentId: 11256605761614400087
        UnregisteredParameters {
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
            Id: 482873605194865923
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
        Id: 6975309410856790927
        Name: "RightMiddleRoot"
        Transform {
          Location {
            X: 27.484375
            Y: -0.091796875
            Z: -1.54296875
          }
          Rotation {
            Pitch: 13.859293
            Yaw: -92.0570831
            Roll: -164.803101
          }
          Scale {
            X: 1.36918616
            Y: -1.36918616
            Z: 1.36918616
          }
        }
        ParentId: 17434487815342411250
        ChildIds: 6407285193066799066
        ChildIds: 8289231857875663189
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
        Id: 6407285193066799066
        Name: "Teardrop - Truncated"
        Transform {
          Location {
            X: -0.000109451794
            Y: -5.90201307e-05
            Z: 2.09005
          }
          Rotation {
            Yaw: 74.9209
            Roll: 180
          }
          Scale {
            X: 0.366616696
            Y: 0.283289403
            Z: 0.222274974
          }
        }
        ParentId: 6975309410856790927
        UnregisteredParameters {
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
            Id: 482873605194865923
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
        Id: 8289231857875663189
        Name: "RightMiddleJoint"
        Transform {
          Location {
            X: 6.83665276e-05
            Y: -0.000450611115
            Z: 6.99989271
          }
          Rotation {
            Roll: -112.351776
          }
          Scale {
            X: 0.700000107
            Y: 0.700000107
            Z: 0.700000107
          }
        }
        ParentId: 6975309410856790927
        ChildIds: 9932901970929122878
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
        Id: 9932901970929122878
        Name: "Teardrop - Truncated"
        Transform {
          Location {
            X: -7.34096902e-05
            Y: -0.000166458034
            Z: 5.90323067
          }
          Rotation {
            Pitch: 1.36603776e-05
            Yaw: 2.0063675e-05
          }
          Scale {
            X: 0.343746811
            Y: 0.333849728
            Z: 0.266581
          }
        }
        ParentId: 8289231857875663189
        UnregisteredParameters {
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
            Id: 482873605194865923
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
        Id: 12281058637688868485
        Name: "RightRingRoot"
        Transform {
          Location {
            X: 26.4472656
            Y: -4.13867188
            Z: -0.72265625
          }
          Rotation {
            Pitch: 10.9753761
            Yaw: -97.326149
            Roll: -157.613403
          }
          Scale {
            X: 1.36918616
            Y: -1.36918616
            Z: 1.36918616
          }
        }
        ParentId: 17434487815342411250
        ChildIds: 9195508649621825726
        ChildIds: 10689402401174482535
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
        Id: 9195508649621825726
        Name: "Teardrop - Truncated"
        Transform {
          Location {
            X: 5.71206037e-05
            Y: -2.79414235e-05
            Z: 2.21364641
          }
          Rotation {
            Yaw: -94.3834839
            Roll: 180
          }
          Scale {
            X: 0.366616696
            Y: 0.283289403
            Z: 0.222274974
          }
        }
        ParentId: 12281058637688868485
        UnregisteredParameters {
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
            Id: 482873605194865923
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
        Id: 10689402401174482535
        Name: "RightRingJoint"
        Transform {
          Location {
            X: -3.31799201e-05
            Y: -2.11927636e-06
            Z: 6.99971962
          }
          Rotation {
            Roll: -93.604248
          }
          Scale {
            X: 0.700000107
            Y: 0.700000107
            Z: 0.700000107
          }
        }
        ParentId: 12281058637688868485
        ChildIds: 10523200122766076177
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
        Id: 10523200122766076177
        Name: "Teardrop - Truncated"
        Transform {
          Location {
            X: -5.06832112e-06
            Y: 0.000189217331
            Z: 5.12404442
          }
          Rotation {
            Yaw: 2.56132057e-06
            Roll: 1.36603758e-05
          }
          Scale {
            X: 0.343746811
            Y: 0.333849728
            Z: 0.266581
          }
        }
        ParentId: 10689402401174482535
        UnregisteredParameters {
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
            Id: 482873605194865923
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
        Id: 8409017683379622657
        Name: "RightPinkieRoot"
        Transform {
          Location {
            X: 24.453125
            Y: -8.13574219
            Z: -0.0390625
          }
          Rotation {
            Pitch: 16.7603817
            Yaw: -106.594437
            Roll: -153.761169
          }
          Scale {
            X: 1.36918616
            Y: -1.36918616
            Z: 1.36918616
          }
        }
        ParentId: 17434487815342411250
        ChildIds: 3448516041956253452
        ChildIds: 3543793669540807106
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
        Id: 3448516041956253452
        Name: "Teardrop - Truncated"
        Transform {
          Location {
            X: -9.37508157e-05
            Y: 4.0196428e-06
            Z: 2.62610245
          }
          Rotation {
            Yaw: 74.4165726
            Roll: 180
          }
          Scale {
            X: 0.366616696
            Y: 0.283289403
            Z: 0.222274974
          }
        }
        ParentId: 8409017683379622657
        UnregisteredParameters {
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
            Id: 482873605194865923
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
        Id: 3543793669540807106
        Name: "RightPinkieJoint"
        Transform {
          Location {
            X: -0.000137488038
            Y: 0.000283453177
            Z: 6.99973392
          }
          Rotation {
            Roll: -99.4858704
          }
          Scale {
            X: 0.700000346
            Y: 0.700000346
            Z: 0.700000346
          }
        }
        ParentId: 8409017683379622657
        ChildIds: 5847038183586454158
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
        Id: 5847038183586454158
        Name: "Teardrop - Truncated"
        Transform {
          Location {
            X: -9.05119523e-05
            Y: 0.000279484113
            Z: 5.17384911
          }
          Rotation {
            Yaw: -3.05175781e-05
            Roll: -3.05175781e-05
          }
          Scale {
            X: 0.343746811
            Y: 0.333849728
            Z: 0.266581
          }
        }
        ParentId: 3543793669540807106
        UnregisteredParameters {
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
            Id: 482873605194865923
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
        Id: 10498308415137508576
        Name: "Teardrop - Truncated"
        Transform {
          Location {
            X: 18.2949219
            Y: -2.66992188
            Z: 1.2734375
          }
          Rotation {
            Pitch: 66.4611664
            Yaw: -95.9743118
            Roll: -92.1812897
          }
          Scale {
            X: 0.722620428
            Y: -0.618333578
            Z: 0.400393
          }
        }
        ParentId: 17434487815342411250
        UnregisteredParameters {
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
            Id: 4489563712437375651
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
        Id: 3572450765559231976
        Name: "Teardrop - Truncated"
        Transform {
          Location {
            X: 18.6992188
            Y: 1.32421875
            Z: 0.998046875
          }
          Rotation {
            Pitch: 31.8144245
            Yaw: -90.197876
            Roll: -93.0500488
          }
          Scale {
            X: 0.722620428
            Y: -0.618333638
            Z: 0.400393
          }
        }
        ParentId: 17434487815342411250
        UnregisteredParameters {
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
            Id: 4489563712437375651
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
        Id: 3331483097162388332
        Name: "Teardrop - Truncated"
        Transform {
          Location {
            X: 18.0839844
            Y: 4.48632812
            Z: -1.04296875
          }
          Rotation {
            Pitch: 31.0922832
            Yaw: -84.8245316
            Roll: -91.95784
          }
          Scale {
            X: 0.746472716
            Y: -0.63874352
            Z: 0.413609117
          }
        }
        ParentId: 17434487815342411250
        UnregisteredParameters {
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
            Id: 4489563712437375651
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
        Id: 3156390114456351912
        Name: "Geo"
        Transform {
          Location {
            X: 27.0365582
            Y: 17.9687939
            Z: -11.237916
          }
          Rotation {
            Pitch: -20.8692627
            Yaw: -20.1915894
            Roll: -74.0803833
          }
          Scale {
            X: 0.819310308
            Y: 0.819310308
            Z: 0.819310308
          }
        }
        ParentId: 17434487815342411250
        ChildIds: 9191960632659477212
        ChildIds: 9005915080560843425
        ChildIds: 5612219320502319145
        UnregisteredParameters {
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:forceoff"
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
        Id: 9191960632659477212
        Name: "Group"
        Transform {
          Location {
            X: -3.46227145
            Y: -0.38040778
            Z: 13.6502542
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 3156390114456351912
        ChildIds: 6036457459831588234
        ChildIds: 1372817170717388165
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
        Id: 6036457459831588234
        Name: "Fantasy Sword Grip 01"
        Transform {
          Location {
          }
          Rotation {
            Pitch: -4.35958672
            Yaw: 13.600728
            Roll: 8.02735372e-07
          }
          Scale {
            X: 1.58543432
            Y: 1.58542991
            Z: 0.870290577
          }
        }
        ParentId: 9191960632659477212
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_Trim:id"
            AssetReference {
              Id: 2858322153361950350
            }
          }
          Overrides {
            Name: "ma:Shared_Trim:color"
            Color {
              R: 0.48266679
              G: 0.223999977
              B: 1
              A: 1
            }
          }
          Overrides {
            Name: "ma:Shared_Trim:utile"
            Float: 25.1128387
          }
          Overrides {
            Name: "ma:Shared_Trim:vtile"
            Float: 36.1982269
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 10378479423839914021
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.35
              G: 0.35
              B: 0.35
              A: 1
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 32.6075439
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 30.9480743
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:forceoff"
        }
        CoreMesh {
          MeshAsset {
            Id: 3682206342183528038
          }
          Teams {
          }
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
        Id: 1372817170717388165
        Name: "Group"
        Transform {
          Location {
            X: 0.392944336
            Y: 0.0893708318
            Z: 3.00529718
          }
          Rotation {
            Pitch: -30.6239223
            Yaw: -71.7928
            Roll: 79.6096191
          }
          Scale {
            X: 1.20880985
            Y: 1.20880985
            Z: 1.20880985
          }
        }
        ParentId: 9191960632659477212
        ChildIds: 9560912759443702845
        ChildIds: 13125877997992455061
        ChildIds: 5833214682464576375
        ChildIds: 17344912234739828212
        ChildIds: 15363263180227907757
        ChildIds: 11731070975879597679
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
        Id: 9560912759443702845
        Name: "Ring - Beveled Thick"
        Transform {
          Location {
            X: -0.0689331
            Y: -0.00376468967
            Z: -0.246822223
          }
          Rotation {
            Pitch: -7.81835938
            Yaw: 150.944611
            Roll: -104.75293
          }
          Scale {
            X: 0.101175755
            Y: 0.103172407
            Z: 0.279611051
          }
        }
        ParentId: 1372817170717388165
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
            Float: 0.181869715
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.381807089
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
          Value: "mc:ecollisionsetting:forceoff"
        }
        CoreMesh {
          MeshAsset {
            Id: 16372496464315477095
          }
          Teams {
          }
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
        Id: 13125877997992455061
        Name: "Pyramid - Polished"
        Transform {
          Location {
            X: 3.19404054
            Y: -1.0222218
            Z: 1.24676406
          }
          Rotation {
            Pitch: -23.3843384
            Yaw: 165.273804
            Roll: -107.508972
          }
          Scale {
            X: 0.0263048988
            Y: 0.0304131936
            Z: 0.0673720166
          }
        }
        ParentId: 1372817170717388165
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
              R: 0.35
              G: 0.35
              B: 0.35
              A: 1
            }
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:forceoff"
        }
        CoreMesh {
          MeshAsset {
            Id: 6641170506571814994
          }
          Teams {
          }
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
        Id: 5833214682464576375
        Name: "Pyramid - Polished"
        Transform {
          Location {
            X: 0.951355457
            Y: -1.64475238
            Z: -3.82367849
          }
          Rotation {
            Pitch: 65.0363846
            Yaw: 146.376404
            Roll: -96.9057922
          }
          Scale {
            X: 0.0285847802
            Y: 0.0330491513
            Z: 0.0732112527
          }
        }
        ParentId: 1372817170717388165
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
              R: 0.35
              G: 0.35
              B: 0.35
              A: 1
            }
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:forceoff"
        }
        CoreMesh {
          MeshAsset {
            Id: 6641170506571814994
          }
          Teams {
          }
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
        Id: 17344912234739828212
        Name: "Pyramid - Polished"
        Transform {
          Location {
            X: -0.836837947
            Y: 1.9527514
            Z: 2.82081056
          }
          Rotation {
            Pitch: -54.2972412
            Yaw: -61.9453125
            Roll: 123.000168
          }
          Scale {
            X: 0.0263048988
            Y: 0.0304131936
            Z: 0.0673720166
          }
        }
        ParentId: 1372817170717388165
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
              R: 0.35
              G: 0.35
              B: 0.35
              A: 1
            }
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:forceoff"
        }
        CoreMesh {
          MeshAsset {
            Id: 6641170506571814994
          }
          Teams {
          }
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
        Id: 15363263180227907757
        Name: "Pyramid - Polished"
        Transform {
          Location {
            X: -3.24624276
            Y: 1.65210187
            Z: -2.06675243
          }
          Rotation {
            Pitch: -28.5176086
            Yaw: 137.161316
            Roll: -94.9914551
          }
          Scale {
            X: 0.0263048988
            Y: 0.0304132048
            Z: 0.0673720166
          }
        }
        ParentId: 1372817170717388165
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
              R: 0.35
              G: 0.35
              B: 0.35
              A: 1
            }
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:forceoff"
        }
        CoreMesh {
          MeshAsset {
            Id: 6641170506571814994
          }
          Teams {
          }
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
        Id: 11731070975879597679
        Name: "Horn"
        Transform {
          Location {
            X: -0.260234594
            Y: -0.44436422
            Z: 0.0854469314
          }
          Rotation {
            Pitch: -7.81835938
            Yaw: 150.944611
            Roll: -108.56427
          }
          Scale {
            X: 0.0892110839
            Y: 0.0958388
            Z: 0.0752613544
          }
        }
        ParentId: 1372817170717388165
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 93328804870534166
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.263513058
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.648490429
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.363
              G: 0.351382464
              B: 0.310002
              A: 1
            }
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
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
          }
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
        Id: 9005915080560843425
        Name: "Grass Tall"
        Transform {
          Location {
            X: -0.211181641
            Y: 0.361633301
            Z: 35.0027466
          }
          Rotation {
            Pitch: 5.79309273
            Yaw: 102.131599
            Roll: -50.5668335
          }
          Scale {
            X: 0.0803909078
            Y: -0.0518251359
            Z: 0.134552613
          }
        }
        ParentId: 3156390114456351912
        UnregisteredParameters {
          Overrides {
            Name: "ma:Nature_Grass:id"
            AssetReference {
              Id: 6073374154520949901
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 16936111728464854852
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.399000019
              G: 0.178931743
              B: 0.0454859883
              A: 1
            }
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:forceoff"
        }
        CoreMesh {
          MeshAsset {
            Id: 2970711086579668885
          }
          Teams {
          }
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
        Id: 5612219320502319145
        Name: "Blade"
        Transform {
          Location {
            X: -1.30461073
            Y: -0.213258639
            Z: 36.2164536
          }
          Rotation {
            Pitch: -0.706234694
            Yaw: 104.561485
            Roll: -0.378173828
          }
          Scale {
            X: 0.92239511
            Y: 0.92239511
            Z: 0.92239511
          }
        }
        ParentId: 3156390114456351912
        ChildIds: 13222529111761286398
        ChildIds: 9268754055883867412
        ChildIds: 8629220241295449463
        ChildIds: 10338361598014880274
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
        Id: 13222529111761286398
        Name: "Horn"
        Transform {
          Location {
          }
          Rotation {
          }
          Scale {
            X: 0.0802897438
            Y: 0.0862541422
            Z: 0.336022437
          }
        }
        ParentId: 5612219320502319145
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 93328804870534166
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.263513058
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.648490429
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.452000022
              G: 0.432906181
              B: 0.364896
              A: 1
            }
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
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
          }
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
        Id: 9268754055883867412
        Name: "Fantasy Sword Grip 01"
        Transform {
          Location {
            X: -0.230232731
            Y: 5.42317438
            Z: 55.2766113
          }
          Rotation {
            Pitch: 0.633431733
            Yaw: -172.388046
            Roll: 165.487091
          }
          Scale {
            X: 0.703520596
            Y: 0.703519642
            Z: 0.50610429
          }
        }
        ParentId: 5612219320502319145
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_Trim:id"
            AssetReference {
              Id: 15904841793697771346
            }
          }
          Overrides {
            Name: "ma:Shared_Trim:color"
            Color {
              R: 0.48266679
              G: 0.223999977
              B: 1
              A: 1
            }
          }
          Overrides {
            Name: "ma:Shared_Trim:utile"
            Float: 25.1128387
          }
          Overrides {
            Name: "ma:Shared_Trim:vtile"
            Float: 36.1982269
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 2754963224534021958
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 32.6075439
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 30.9480743
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:forceoff"
        }
        CoreMesh {
          MeshAsset {
            Id: 3682206342183528038
          }
          Teams {
          }
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
        Id: 8629220241295449463
        Name: "Horn"
        Transform {
          Location {
            X: 0.404070377
            Y: 2.5992465
            Z: 12.5141191
          }
          Rotation {
            Pitch: -3.15872335
            Yaw: 88.6124802
            Roll: -179.231674
          }
          Scale {
            X: 0.664012671
            Y: 0.206953451
            Z: 1.56471527
          }
        }
        ParentId: 5612219320502319145
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
            Float: 13.9095831
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 13.9095831
          }
          Overrides {
            Name: "ma:Shared_Trim:id"
            AssetReference {
              Id: 1009636138000564291
            }
          }
          Overrides {
            Name: "ma:Shared_Trim:utile"
            Float: 39.8115921
          }
          Overrides {
            Name: "ma:Shared_Trim:vtile"
            Float: 22.0352745
          }
          Overrides {
            Name: "ma:Shared_Detail1:id"
            AssetReference {
              Id: 2754963224534021958
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
          Overrides {
            Name: "ma:Shared_Trim:color"
            Color {
              R: 0.805141
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
            Id: 18423898048047861963
          }
          Teams {
          }
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
        Id: 10338361598014880274
        Name: "Fantasy Sword Grip 01"
        Transform {
          Location {
            X: 0.310505152
            Y: 0.0390051901
            Z: 3.70136499
          }
          Rotation {
            Pitch: 0.647221863
            Yaw: 7.94345
            Roll: 0.472115844
          }
          Scale {
            X: 1.370965
            Y: 1.37096095
            Z: 0.63319248
          }
        }
        ParentId: 5612219320502319145
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_Trim:id"
            AssetReference {
              Id: 15904841793697771346
            }
          }
          Overrides {
            Name: "ma:Shared_Trim:color"
            Color {
              R: 0.48266679
              G: 0.223999977
              B: 1
              A: 1
            }
          }
          Overrides {
            Name: "ma:Shared_Trim:utile"
            Float: 25.1128387
          }
          Overrides {
            Name: "ma:Shared_Trim:vtile"
            Float: 36.1982269
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 2754963224534021958
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 32.6075439
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 30.9480743
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:forceoff"
        }
        CoreMesh {
          MeshAsset {
            Id: 3682206342183528038
          }
          Teams {
          }
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
        Id: 11601294417733079804
        Name: "Teardrop - Truncated"
        Transform {
          Location {
            X: 16.59375
            Y: 3.33789062
            Z: -0.3828125
          }
          Rotation {
            Pitch: 31.8144398
            Yaw: -90.1979752
            Roll: -93.0501328
          }
          Scale {
            X: 0.931727946
            Y: -0.945017874
            Z: 0.782442808
          }
        }
        ParentId: 3606159427649004070
        UnregisteredParameters {
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
            Id: 4489563712437375651
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
        Id: 235268733354247980
        Name: "Right_Arm"
        Transform {
          Location {
          }
          Rotation {
            Pitch: -6.83018879e-06
            Yaw: 8.67809242e-27
            Roll: -1.94125628e-19
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 5881396694983518749
        ChildIds: 7431169058204171943
        ChildIds: 9984919407570191413
        ChildIds: 2481714535432417325
        ChildIds: 1481660628055149089
        ChildIds: 10419627000891984937
        ChildIds: 2616914634646081243
        ChildIds: 730614779923765806
        ChildIds: 17799796161147976573
        ChildIds: 8666149494422976759
        ChildIds: 18033743517104336697
        ChildIds: 15513063039852917885
        ChildIds: 5734597400845139735
        ChildIds: 16847318518606477631
        ChildIds: 5455850388368283112
        ChildIds: 12268067110590714283
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
        Id: 7431169058204171943
        Name: "Teardrop - Truncated"
        Transform {
          Location {
            X: 13.9420586
            Y: 33.8105469
            Z: -11.324255
          }
          Rotation {
            Pitch: -62.052063
            Yaw: -29.0598755
            Roll: -88.1386414
          }
          Scale {
            X: 1.23980105
            Y: 1.25749445
            Z: 0.984427333
          }
        }
        ParentId: 235268733354247980
        UnregisteredParameters {
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
            Id: 4489563712437375651
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
        Id: 9984919407570191413
        Name: "Dodecahedron - Polished"
        Transform {
          Location {
            X: 53.0479088
            Y: 53.2128906
            Z: 3.57241273
          }
          Rotation {
            Pitch: 6.60500431
            Yaw: 96.5356064
            Roll: -74.4628
          }
          Scale {
            X: 2.35817719
            Y: 2.35816693
            Z: 0.371335506
          }
        }
        ParentId: 235268733354247980
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 10373577859092754191
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 6.66459465
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 6.02052975
          }
          Overrides {
            Name: "ma:Shared_Trim:color"
            Color {
              R: 0.48266679
              G: 0.223999977
              B: 1
              A: 1
            }
          }
          Overrides {
            Name: "ma:Shared_Trim:id"
            AssetReference {
              Id: 5475761223416488121
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
            Id: 3682206342183528038
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
        Id: 2481714535432417325
        Name: "Teardrop - Truncated"
        Transform {
          Location {
            X: 68.2661209
            Y: 59.8203125
            Z: 11.6572762
          }
          Rotation {
            Pitch: 32.0468788
            Yaw: 130.077072
            Roll: 133.954727
          }
          Scale {
            X: 0.722571969
            Y: 0.522559762
            Z: 0.4003869
          }
        }
        ParentId: 235268733354247980
        UnregisteredParameters {
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
            Id: 4489563712437375651
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
        Id: 1481660628055149089
        Name: "RightThumbRoot"
        Transform {
          Location {
            X: 69.3521957
            Y: 49.578125
            Z: 2.68460107
          }
          Rotation {
            Pitch: 35.7402496
            Yaw: 117.43187
            Roll: -93.4608765
          }
          Scale {
            X: 1.9168607
            Y: 1.9168607
            Z: 1.9168607
          }
        }
        ParentId: 235268733354247980
        ChildIds: 17108782004287552029
        ChildIds: 16194659552161282132
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
        Id: 17108782004287552029
        Name: "Teardrop - Truncated"
        Transform {
          Location {
            X: 0.000255779538
            Y: 2.08685287e-05
            Z: 0.669183969
          }
          Rotation {
            Pitch: -7.70452881
            Yaw: -120.667328
            Roll: 180
          }
          Scale {
            X: 0.20865722
            Y: 0.200110033
            Z: 0.187553659
          }
        }
        ParentId: 1481660628055149089
        UnregisteredParameters {
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
            Id: 482873605194865923
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
        Id: 16194659552161282132
        Name: "RightThumbJoint"
        Transform {
          Location {
            X: 8.36593608e-05
            Y: -0.00084689667
            Z: 5.00019693
          }
          Rotation {
            Pitch: -70.961853
            Roll: -20.9142456
          }
          Scale {
            X: 0.700000048
            Y: 0.700000048
            Z: 0.700000048
          }
        }
        ParentId: 1481660628055149089
        ChildIds: 12571365617328198255
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
        Id: 12571365617328198255
        Name: "Teardrop - Truncated"
        Transform {
          Location {
            X: 0.00020368323
            Y: -1.59072065
            Z: 3.08060789
          }
          Rotation {
            Yaw: -3.05175781e-05
            Roll: 1.28066049e-05
          }
          Scale {
            X: 0.260786355
            Y: 0.333848119
            Z: 0.173431993
          }
        }
        ParentId: 16194659552161282132
        UnregisteredParameters {
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
            Id: 482873605194865923
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
        Id: 10419627000891984937
        Name: "RightIndexRoot"
        Transform {
          Location {
            X: 78.6147156
            Y: 49.5449219
            Z: 13.1652203
          }
          Rotation {
            Pitch: 7.12043762
            Yaw: 88.2137909
            Roll: -172.131958
          }
          Scale {
            X: 1.36918604
            Y: 1.36918604
            Z: 1.36918604
          }
        }
        ParentId: 235268733354247980
        ChildIds: 820563311805597405
        ChildIds: 7583833479667679417
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
        Id: 820563311805597405
        Name: "Teardrop - Truncated"
        Transform {
          Location {
            X: 2.63115071e-05
            Y: 3.88238732e-05
            Z: 2.45058656
          }
          Rotation {
            Yaw: -110.175262
            Roll: 180
          }
          Scale {
            X: 0.366616696
            Y: 0.283289403
            Z: 0.222274974
          }
        }
        ParentId: 10419627000891984937
        UnregisteredParameters {
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
            Id: 482873605194865923
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
        Id: 7583833479667679417
        Name: "RightIndexRoot"
        Transform {
          Location {
            X: 4.29981301e-05
            Y: -0.000119267243
            Z: 6.99961376
          }
          Rotation {
            Roll: -107.023529
          }
          Scale {
            X: 0.700000107
            Y: 0.700000107
            Z: 0.700000107
          }
        }
        ParentId: 10419627000891984937
        ChildIds: 11481342048262927992
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
        Id: 11481342048262927992
        Name: "Teardrop - Truncated"
        Transform {
          Location {
            X: 0.000244469906
            Y: -5.20662797e-05
            Z: 5.82832956
          }
          Rotation {
            Pitch: 6.83018879e-06
            Yaw: 1.70754652e-06
          }
          Scale {
            X: 0.343746811
            Y: 0.333849728
            Z: 0.266581
          }
        }
        ParentId: 7583833479667679417
        UnregisteredParameters {
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
            Id: 482873605194865923
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
        Id: 2616914634646081243
        Name: "RightMiddleRoot"
        Transform {
          Location {
            X: 78.4467316
            Y: 54.0019531
            Z: 14.157156
          }
          Rotation {
            Pitch: 8.43134212
            Yaw: 98.1420212
            Roll: -169.21373
          }
          Scale {
            X: 1.36918604
            Y: 1.36918604
            Z: 1.36918604
          }
        }
        ParentId: 235268733354247980
        ChildIds: 15211843219766032987
        ChildIds: 17364575609013288699
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
        Id: 15211843219766032987
        Name: "Teardrop - Truncated"
        Transform {
          Location {
            X: -0.000109451794
            Y: -5.90201307e-05
            Z: 2.09005
          }
          Rotation {
            Yaw: 74.9209
            Roll: 180
          }
          Scale {
            X: 0.366616696
            Y: 0.283289403
            Z: 0.222274974
          }
        }
        ParentId: 2616914634646081243
        UnregisteredParameters {
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
            Id: 482873605194865923
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
        Id: 17364575609013288699
        Name: "RightMiddleJoint"
        Transform {
          Location {
            X: 6.83665276e-05
            Y: -0.000450611115
            Z: 6.99989271
          }
          Rotation {
            Roll: -112.351776
          }
          Scale {
            X: 0.700000107
            Y: 0.700000107
            Z: 0.700000107
          }
        }
        ParentId: 2616914634646081243
        ChildIds: 7013597347243066715
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
        Id: 7013597347243066715
        Name: "Teardrop - Truncated"
        Transform {
          Location {
            X: -7.34096902e-05
            Y: -0.000166458034
            Z: 5.90323067
          }
          Rotation {
            Pitch: 1.36603776e-05
            Yaw: 2.0063675e-05
          }
          Scale {
            X: 0.343746811
            Y: 0.333849728
            Z: 0.266581
          }
        }
        ParentId: 17364575609013288699
        UnregisteredParameters {
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
            Id: 482873605194865923
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
        Id: 730614779923765806
        Name: "RightRingRoot"
        Transform {
          Location {
            X: 77.1261673
            Y: 58.0546875
            Z: 14.2160158
          }
          Rotation {
            Pitch: 3.6077261
            Yaw: 101.556282
            Roll: -177.179047
          }
          Scale {
            X: 1.36918604
            Y: 1.36918604
            Z: 1.36918604
          }
        }
        ParentId: 235268733354247980
        ChildIds: 17705721238707042775
        ChildIds: 5302104760823651887
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
        Id: 17705721238707042775
        Name: "Teardrop - Truncated"
        Transform {
          Location {
            X: 5.71206037e-05
            Y: -2.79414235e-05
            Z: 2.21364641
          }
          Rotation {
            Yaw: -94.3834839
            Roll: 180
          }
          Scale {
            X: 0.366616696
            Y: 0.283289403
            Z: 0.222274974
          }
        }
        ParentId: 730614779923765806
        UnregisteredParameters {
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
            Id: 482873605194865923
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
        Id: 5302104760823651887
        Name: "RightRingJoint"
        Transform {
          Location {
            X: -3.31799201e-05
            Y: -2.11927636e-06
            Z: 6.99971962
          }
          Rotation {
            Roll: -93.604248
          }
          Scale {
            X: 0.700000107
            Y: 0.700000107
            Z: 0.700000107
          }
        }
        ParentId: 730614779923765806
        ChildIds: 4586823057348690256
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
        Id: 4586823057348690256
        Name: "Teardrop - Truncated"
        Transform {
          Location {
            X: -5.06832112e-06
            Y: 0.000189217331
            Z: 5.12404442
          }
          Rotation {
            Yaw: 2.56132057e-06
            Roll: 1.36603758e-05
          }
          Scale {
            X: 0.343746811
            Y: 0.333849728
            Z: 0.266581
          }
        }
        ParentId: 5302104760823651887
        UnregisteredParameters {
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
            Id: 482873605194865923
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
        Id: 17799796161147976573
        Name: "RightPinkieRoot"
        Transform {
          Location {
            X: 75.0218506
            Y: 62.015625
            Z: 13.7417364
          }
          Rotation {
            Pitch: 5.13199902
            Yaw: 112.171265
            Roll: 177.55069
          }
          Scale {
            X: 1.36918616
            Y: 1.36918616
            Z: 1.36918616
          }
        }
        ParentId: 235268733354247980
        ChildIds: 5777775586827543164
        ChildIds: 7166008245707343523
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
        Id: 5777775586827543164
        Name: "Teardrop - Truncated"
        Transform {
          Location {
            X: -9.37508157e-05
            Y: 4.0196428e-06
            Z: 2.62610245
          }
          Rotation {
            Yaw: 74.4165726
            Roll: 180
          }
          Scale {
            X: 0.366616696
            Y: 0.283289403
            Z: 0.222274974
          }
        }
        ParentId: 17799796161147976573
        UnregisteredParameters {
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
            Id: 482873605194865923
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
        Id: 7166008245707343523
        Name: "RightPinkieJoint"
        Transform {
          Location {
            X: -0.000137488038
            Y: 0.000283453177
            Z: 6.99973392
          }
          Rotation {
            Roll: -99.4858704
          }
          Scale {
            X: 0.700000346
            Y: 0.700000346
            Z: 0.700000346
          }
        }
        ParentId: 17799796161147976573
        ChildIds: 14331751053208153451
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
        Id: 14331751053208153451
        Name: "Teardrop - Truncated"
        Transform {
          Location {
            X: -9.05119523e-05
            Y: 0.000279484113
            Z: 5.17384911
          }
          Rotation {
            Yaw: -3.05175781e-05
            Roll: -3.05175781e-05
          }
          Scale {
            X: 0.343746811
            Y: 0.333849728
            Z: 0.266581
          }
        }
        ParentId: 7166008245707343523
        UnregisteredParameters {
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
            Id: 482873605194865923
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
        Id: 8666149494422976759
        Name: "Teardrop - Truncated"
        Transform {
          Location {
            X: 68.934433
            Y: 56.4570312
            Z: 12.5401468
          }
          Rotation {
            Pitch: 51.6016808
            Yaw: 135.011169
            Roll: 135.678116
          }
          Scale {
            X: 0.722620428
            Y: 0.618333519
            Z: 0.400392979
          }
        }
        ParentId: 235268733354247980
        UnregisteredParameters {
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
            Id: 4489563712437375651
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
        Id: 18033743517104336697
        Name: "Teardrop - Truncated"
        Transform {
          Location {
            X: 69.4383774
            Y: 52.4628906
            Z: 12.6913624
          }
          Rotation {
            Pitch: 25.1874142
            Yaw: 105.144791
            Roll: 121.812973
          }
          Scale {
            X: 0.722620428
            Y: 0.618333578
            Z: 0.400392979
          }
        }
        ParentId: 235268733354247980
        UnregisteredParameters {
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
            Id: 4489563712437375651
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
        Id: 15513063039852917885
        Name: "Teardrop - Truncated"
        Transform {
          Location {
            X: 69.7872238
            Y: 49.1835938
            Z: 10.7583046
          }
          Rotation {
            Pitch: 26.7871666
            Yaw: 100.297974
            Roll: 121.401344
          }
          Scale {
            X: 0.746472657
            Y: 0.63874352
            Z: 0.413609087
          }
        }
        ParentId: 235268733354247980
        UnregisteredParameters {
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
            Id: 4489563712437375651
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
        Id: 5734597400845139735
        Name: "Dodecahedron - Polished"
        Transform {
          Location {
            X: 70.0080872
            Y: 66.8164062
            Z: 10.3463478
          }
          Rotation {
            Pitch: -9
            Yaw: 15.9500341
            Roll: -94.4777222
          }
          Scale {
            X: 1.00388336
            Y: 1.00388336
            Z: 0.811939538
          }
        }
        ParentId: 235268733354247980
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
            Float: 6.66459465
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 6.02052975
          }
          Overrides {
            Name: "ma:Shared_Trim:color"
            Color {
              R: 0.156716809
              G: 0.148896009
              B: 0.188000008
              A: 1
            }
          }
          Overrides {
            Name: "ma:Shared_Trim:id"
            AssetReference {
              Id: 5475761223416488121
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.35
              G: 0.35
              B: 0.35
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
            Id: 3682206342183528038
          }
          Teams {
          }
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
        Id: 16847318518606477631
        Name: "Group"
        Transform {
          Location {
            X: 70.0100784
            Y: 66.8164062
            Z: 10.34655
          }
          Rotation {
            Pitch: 6.60501099
            Yaw: 96.5357285
            Roll: -57.967041
          }
          Scale {
            X: 1.36918604
            Y: 1.36918604
            Z: 1.36918604
          }
        }
        ParentId: 235268733354247980
        ChildIds: 15923580271448528756
        ChildIds: 16372480361102686173
        ChildIds: 3097410830203255728
        ChildIds: 11890528616097918258
        ChildIds: 3123023163487158763
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
        Id: 15923580271448528756
        Name: "Fantasy Clay Pot 02"
        Transform {
          Location {
            X: -10.7860088
            Y: -38.9880066
            Z: -8.25073242
          }
          Rotation {
            Pitch: 8.81485748
            Yaw: 178.494125
            Roll: -76.1889801
          }
          Scale {
            X: 0.312174767
            Y: 0.312174767
            Z: 0.312174767
          }
        }
        ParentId: 16847318518606477631
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_Detail1:id"
            AssetReference {
              Id: 1009636138000564291
            }
          }
          Overrides {
            Name: "ma:Shared_Detail1:color"
            Color {
              R: 0.805141
              B: 1
              A: 1
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 10378479423839914021
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 7.01202202
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 6.33438158
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.35
              G: 0.35
              B: 0.35
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
            Id: 13627045589884702754
          }
          Teams {
          }
          DisableCastShadows: true
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
        Id: 16372480361102686173
        Name: "Chain Tile 01"
        Transform {
          Location {
          }
          Rotation {
            Pitch: 73.6619
            Yaw: -59.5673141
            Roll: -155.104324
          }
          Scale {
            X: 0.100003943
            Y: 0.100008167
            Z: 0.0876497626
          }
        }
        ParentId: 16847318518606477631
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
            Id: 10771108408610196052
          }
          Teams {
          }
          DisableCastShadows: true
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
        Id: 3097410830203255728
        Name: "Chain Tile 01"
        Transform {
          Location {
            X: -17.8186417
            Y: 0.468149394
            Z: 2.76454163
          }
          Rotation {
            Pitch: 73.6619186
            Yaw: -59.5673332
            Roll: -141.119446
          }
          Scale {
            X: 0.100003943
            Y: 0.100008167
            Z: 0.0876497701
          }
        }
        ParentId: 16847318518606477631
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
            Id: 10771108408610196052
          }
          Teams {
          }
          DisableCastShadows: true
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
        Id: 11890528616097918258
        Name: "Fantasy Clay Pot 02"
        Transform {
          Location {
            X: -9.94205189
            Y: -25.7799778
            Z: -5.03845692
          }
          Rotation {
            Pitch: 8.81486416
            Yaw: 178.494141
            Roll: -76.1890488
          }
          Scale {
            X: 0.296774298
            Y: 0.296774298
            Z: 0.296774298
          }
        }
        ParentId: 16847318518606477631
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_Detail1:id"
            AssetReference {
              Id: 1009636138000564291
            }
          }
          Overrides {
            Name: "ma:Shared_Detail1:color"
            Color {
              R: 0.805141
              B: 1
              A: 1
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 1056608531509739891
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 7.01202202
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 6.33438158
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.805141
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
            Id: 7363477334452929865
          }
          Teams {
          }
          DisableCastShadows: true
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
        Id: 3123023163487158763
        Name: "Candle Flame VFX"
        Transform {
          Location {
            X: -9.14608383
            Y: -23.6173172
            Z: -3.84848738
          }
          Rotation {
            Pitch: -2.40008545
            Yaw: 7.81909752
            Roll: 53.502594
          }
          Scale {
            X: 2.82283
            Y: 2.82283
            Z: 2.82283
          }
        }
        ParentId: 16847318518606477631
        UnregisteredParameters {
          Overrides {
            Name: "ma:Flame_A:id"
            AssetReference {
              Id: 16126475708397980161
            }
          }
          Overrides {
            Name: "ma:Flame_B:id"
            AssetReference {
              Id: 16126475708397980161
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
            Id: 9199751096616988864
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          StaticMesh {
            Physics {
              Mass: 100
              LinearDamping: 0.01
            }
            BoundsScale: 1
          }
        }
        Relevance {
          Value: "mc:eproxyrelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 5455850388368283112
        Name: "Teardrop - Truncated"
        Transform {
          Location {
            X: 39.2923775
            Y: 48.1210938
            Z: -1.50472784
          }
          Rotation {
            Pitch: 25.1874485
            Yaw: 105.144722
            Roll: 121.812714
          }
          Scale {
            X: 0.931727886
            Y: 0.945017815
            Z: 0.782442749
          }
        }
        ParentId: 235268733354247980
        UnregisteredParameters {
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
            Id: 4489563712437375651
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
        Id: 12268067110590714283
        Name: "Teardrop - Truncated"
        Transform {
          Location {
            X: 37.3493156
            Y: 55.0507812
            Z: -4.26184845
          }
          Rotation {
            Pitch: -61.4666443
            Yaw: -3.02319336
            Roll: -171.835846
          }
          Scale {
            X: 1.01535428
            Y: 1.02985799
            Z: 0.868944287
          }
        }
        ParentId: 235268733354247980
        UnregisteredParameters {
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
            Id: 4489563712437375651
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
        Id: 17830966935422711642
        Name: "Heart - Polished"
        Transform {
          Location {
            X: 11.1360788
            Y: 4.9180353e-06
            Z: 7.02947617
          }
          Rotation {
            Pitch: -82.8277
            Yaw: 0.000751948101
            Roll: -0.000579834
          }
          Scale {
            X: 0.282116145
            Y: 0.414519668
            Z: 0.201021969
          }
        }
        ParentId: 11933097170229802744
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 13.4845228
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 33.9840164
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 6419995403362959337
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
            Id: 15339827692159902109
          }
          Teams {
          }
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
        Id: 16286269308293661894
        Name: "Heart - Polished"
        Transform {
          Location {
            X: 12.4860973
            Y: 1.67608482e-06
            Z: 8.26375484
          }
          Rotation {
            Pitch: 0.000293698104
            Yaw: 89.9997177
            Roll: -91.6841431
          }
          Scale {
            X: 0.141304553
            Y: 0.224844247
            Z: 0.109038614
          }
        }
        ParentId: 11933097170229802744
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 13.4845228
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 33.9840164
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 1009636138000564291
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.385061711
              G: 0.0124799879
              B: 0.624
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
            Id: 15339827692159902109
          }
          Teams {
          }
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
        Id: 9426240819201383969
        Name: "Bone Human Pelvis Half 01"
        Transform {
          Location {
            X: -4.52084732
            Y: 10.5749493
            Z: 7.15973377
          }
          Rotation {
            Pitch: -28.3516846
            Yaw: 76.1330109
            Roll: -155.12175
          }
          Scale {
            X: 1.06816733
            Y: 0.886376917
            Z: 0.501267731
          }
        }
        ParentId: 11933097170229802744
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 5.2
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 4.56
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 5475761223416488121
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.48266679
              G: 0.223999977
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
            Id: 4080200756085571976
          }
          Teams {
          }
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
        Id: 46332430609797869
        Name: "Bone Human Pelvis Half 01"
        Transform {
          Location {
            X: -6.62194824
            Y: -9.24389648
            Z: 7.66714478
          }
          Rotation {
            Pitch: -18.3577576
            Yaw: 98.7183075
            Roll: 54.116909
          }
          Scale {
            X: -0.903511047
            Y: -1.14471602
            Z: -0.570650756
          }
        }
        ParentId: 11933097170229802744
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 5.5425005
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 4.55067
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 5475761223416488121
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.48266679
              G: 0.223999977
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
            Id: 4080200756085571976
          }
          Teams {
          }
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
        Id: 5876235267637428369
        Name: "Bone Human Jaw 01"
        Transform {
          Location {
            X: 9.45273399
            Y: 6.35918332e-06
            Z: -2.75340509
          }
          Rotation {
            Pitch: 6.83018879e-05
            Yaw: 90.000267
            Roll: -136.881348
          }
          Scale {
            X: 1.86396575
            Y: 2.3515985
            Z: 1.4816736
          }
        }
        ParentId: 11933097170229802744
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 17.5
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 9.3
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 5475761223416488121
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.48266679
              G: 0.223999977
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
            Id: 11312867989431867200
          }
          Teams {
          }
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
        Id: 17869892236429979132
        Name: "Bone Human Pelvis Half 01"
        Transform {
          Location {
            X: -9.16784668
            Y: 1.86376953
            Z: -2.14498901
          }
          Rotation {
            Pitch: 24.7690983
            Yaw: -36.9772339
            Roll: 165.777435
          }
          Scale {
            X: -1.25271118
            Y: -1.0231626
            Z: -0.556975543
          }
        }
        ParentId: 11933097170229802744
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 5.5425005
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 4.55067
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 5475761223416488121
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.48266679
              G: 0.223999977
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
            Id: 4080200756085571976
          }
          Teams {
          }
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
        Id: 467671609211414581
        Name: "Bone Human Pelvis Half 01"
        Transform {
          Location {
            X: -10.6731253
            Y: 4.09740257
            Z: 0.313497305
          }
          Rotation {
            Pitch: -10.5188293
            Yaw: 124.645226
            Roll: -164.379303
          }
          Scale {
            X: 1.56017721
            Y: 1.07374513
            Z: 0.579078734
          }
        }
        ParentId: 11933097170229802744
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 5.5425005
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 4.55067
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 5475761223416488121
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.48266679
              G: 0.223999977
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
            Id: 4080200756085571976
          }
          Teams {
          }
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
        Id: 5365716444944436048
        Name: "Group"
        Transform {
          Location {
            X: -17.0729198
            Y: -0.98828125
            Z: -17.3761158
          }
          Rotation {
          }
          Scale {
            X: 1.67198527
            Y: 1.67198527
            Z: 1.67198527
          }
        }
        ParentId: 11933097170229802744
        ChildIds: 4546581179489747139
        ChildIds: 4406876834170456583
        ChildIds: 9027963095412354191
        ChildIds: 10539303438309675565
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
        Id: 4546581179489747139
        Name: "Bone Human Pelvis Half 01"
        Transform {
          Location {
          }
          Rotation {
            Pitch: -31.6644745
            Yaw: -153.4505
            Roll: 154.091705
          }
          Scale {
            X: 1.31296217
            Y: 0.903606832
            Z: 0.487321883
          }
        }
        ParentId: 5365716444944436048
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 5.5425005
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 4.55067
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 5475761223416488121
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.48266679
              G: 0.223999977
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
            Id: 4080200756085571976
          }
          Teams {
          }
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
        Id: 4406876834170456583
        Name: "Bone Human Pelvis Half 01"
        Transform {
          Location {
            X: -1.38411343
            Y: -0.875
            Z: -8.10692787
          }
          Rotation {
            Pitch: 1.75121939
            Yaw: 145.526779
            Roll: -108.247772
          }
          Scale {
            X: 0.789332151
            Y: 0.903654397
            Z: 0.436074167
          }
        }
        ParentId: 5365716444944436048
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 5.5425005
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 4.55067
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 5475761223416488121
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.48266679
              G: 0.223999977
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
            Id: 4080200756085571976
          }
          Teams {
          }
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
        Id: 9027963095412354191
        Name: "Bone Human Pelvis Half 01"
        Transform {
          Location {
            X: -1.47477412
            Y: 5.1171875
            Z: -7.58378
          }
          Rotation {
            Pitch: 36.5004959
            Yaw: -160.122253
            Roll: 49.447155
          }
          Scale {
            X: 0.789332151
            Y: 0.903654397
            Z: 0.436074167
          }
        }
        ParentId: 5365716444944436048
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 5.5425005
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 4.55067
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 5475761223416488121
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.48266679
              G: 0.223999977
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
            Id: 4080200756085571976
          }
          Teams {
          }
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
        Id: 10539303438309675565
        Name: "Bone Human Pelvis Half 01"
        Transform {
          Location {
            X: 0.087890625
            Y: -8.70898438
            Z: -16.5200195
          }
          Rotation {
            Pitch: -7.71362591
            Yaw: -33.3867378
            Roll: 79.1734238
          }
          Scale {
            X: -0.386430591
            Y: 0.87650007
            Z: 0.303247452
          }
        }
        ParentId: 5365716444944436048
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 5.5425005
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 4.55067
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 5475761223416488121
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.48266679
              G: 0.223999977
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
            Id: 4080200756085571976
          }
          Teams {
          }
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
        Id: 15546847470728644510
        Name: "Bone Human Pelvis Half 01"
        Transform {
          Location {
            X: 1.51688933
            Y: 16.9120979
            Z: -6.92812061
          }
          Rotation {
            Pitch: 16.0755596
            Yaw: 71.1067734
            Roll: 177.562256
          }
          Scale {
            X: 1.38146853
            Y: 1.14970636
            Z: 0.515532136
          }
        }
        ParentId: 11933097170229802744
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 5.5425005
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 4.55067
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 5475761223416488121
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.48266679
              G: 0.223999977
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
            Id: 4080200756085571976
          }
          Teams {
          }
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
        Id: 18398157180203569339
        Name: "Bone Human Skull 01"
        Transform {
          Location {
            X: 15.2061119
            Y: -0.000109735454
            Z: 14.8563147
          }
          Rotation {
            Pitch: -0.000710339635
            Yaw: 90.0002213
            Roll: 75.1088
          }
          Scale {
            X: 1.06112194
            Y: 1.40961993
            Z: 1.65710258
          }
        }
        ParentId: 11933097170229802744
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 6.75050259
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 5.5425005
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 5475761223416488121
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.48266679
              G: 0.223999977
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
            Id: 11594524757616528940
          }
          Teams {
          }
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
        Id: 12489834464871216850
        Name: "Layered Thrusters VFX"
        Transform {
          Location {
            X: -2.75407171
            Y: 1.43492781e-12
            Z: -9.95886803
          }
          Rotation {
            Pitch: -22.5
            Yaw: 180
            Roll: 180
          }
          Scale {
            X: 1.55387688
            Y: 1.73712254
            Z: 3.35733628
          }
        }
        ParentId: 11933097170229802744
        UnregisteredParameters {
          Overrides {
            Name: "bp:Color A"
            Color {
              R: 0.14492546
              B: 0.18
              A: 1
            }
          }
          Overrides {
            Name: "bp:Color B"
            Color {
              R: 0.0797090083
              B: 0.0990000069
              A: 1
            }
          }
          Overrides {
            Name: "bp:Color C"
            Color {
              R: 0.0338159427
              B: 0.0420000032
              A: 1
            }
          }
          Overrides {
            Name: "bp:Bend Thrust Cone"
            Float: 5
          }
          Overrides {
            Name: "bp:Displacement Amount"
            Float: 0
          }
          Overrides {
            Name: "bp:Core Fade Length"
            Float: 0
          }
          Overrides {
            Name: "bp:Enable Inner Core Layer"
            Bool: false
          }
          Overrides {
            Name: "bp:Type"
            Enum {
              Value: "mc:ethrustermeshvar:0"
            }
          }
          Overrides {
            Name: "bp:Emissive Boost"
            Float: 0
          }
          Overrides {
            Name: "bp:Mid Layer End Pinch"
            Float: 0.502982795
          }
          Overrides {
            Name: "bp:Top Layer End Pinch"
            Float: 0
          }
          Overrides {
            Name: "bp:Mid Layer Texture Style Morph"
            Float: 0
          }
          Overrides {
            Name: "bp:Top Layer Texture Style Morph"
            Float: 0
          }
          Overrides {
            Name: "bp:Top Layer Hot Spot Length"
            Float: 1
          }
          Overrides {
            Name: "bp:Enable Top Layer"
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
            Id: 2426790310185116976
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
        Id: 5292443389653859345
        Name: "Bone Human Pelvis Half 01"
        Transform {
          Location {
            X: 14.9746094
            Y: 1.55078125
            Z: -6.22607422
          }
          Rotation {
            Pitch: 79.7913284
            Yaw: 118.846321
            Roll: -61.4005432
          }
          Scale {
            X: 1.28772366
            Y: -1.21305799
            Z: -0.64509964
          }
        }
        ParentId: 11933097170229802744
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 5.5425005
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 4.55067
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 5475761223416488121
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.48266679
              G: 0.223999977
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
            Id: 4080200756085571976
          }
          Teams {
          }
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
        Id: 5174723862359527901
        Name: "Bone Human Jaw 01"
        Transform {
          Location {
            X: 1.46610057
            Z: -5.6269393
          }
          Rotation {
            Yaw: 90
            Roll: 144.270844
          }
          Scale {
            X: 1.45067596
            Y: 1.8301878
            Z: 1.15314794
          }
        }
        ParentId: 11933097170229802744
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 17.5
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 9.3
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 5475761223416488121
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.48266679
              G: 0.223999977
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
            Id: 11312867989431867200
          }
          Teams {
          }
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
    }
    Assets {
      Id: 9377227685447941950
      Name: "2D Basic Shapes Decal"
      PlatformAssetType: 14
      PrimaryAsset {
        AssetType: "DecalBlueprintAssetRef"
        AssetId: "dcl_basicShapes"
      }
    }
    Assets {
      Id: 4489563712437375651
      Name: "Bone Human Ulna 01"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_bones_human_ulna_01_ref"
      }
    }
    Assets {
      Id: 3682206342183528038
      Name: "Fantasy Sword Grip 01"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_weap_fan_grip_sword_001"
      }
    }
    Assets {
      Id: 10373577859092754191
      Name: "Bone Raw"
      PlatformAssetType: 2
      PrimaryAsset {
        AssetType: "MaterialAssetRef"
        AssetId: "mi_bone_raw_001_uv_ref"
      }
    }
    Assets {
      Id: 5475761223416488121
      Name: "Fabric Burlap New 01"
      PlatformAssetType: 2
      PrimaryAsset {
        AssetType: "MaterialAssetRef"
        AssetId: "mi_fan_fabric_burlap_002_uv"
      }
    }
    Assets {
      Id: 482873605194865923
      Name: "Bone Human Humerus 01"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_bones_human_humerus_01_ref"
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
      Id: 16372496464315477095
      Name: "Ring - Beveled Thick"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_ring_faceted_003"
      }
    }
    Assets {
      Id: 6641170506571814994
      Name: "Pyramid - Polished"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_pyramid_hq_001"
      }
    }
    Assets {
      Id: 114278397929005302
      Name: "Horn"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_horn_001"
      }
    }
    Assets {
      Id: 2970711086579668885
      Name: "Pyramid - 3-Sided"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_pyramid_threesided_001"
      }
    }
    Assets {
      Id: 15904841793697771346
      Name: "Fabric Burlap Old 01"
      PlatformAssetType: 2
      PrimaryAsset {
        AssetType: "MaterialAssetRef"
        AssetId: "mi_fan_fabric_burlap_001_uv"
      }
    }
    Assets {
      Id: 2754963224534021958
      Name: "Invisible"
      PlatformAssetType: 2
      PrimaryAsset {
        AssetType: "MaterialAssetRef"
        AssetId: "mi_invisible_001"
      }
    }
    Assets {
      Id: 18423898048047861963
      Name: "Fantasy Axe Blade 01"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_weap_fan_blade_axe_001"
      }
    }
    Assets {
      Id: 13627045589884702754
      Name: "Fantasy Clay Pot 01 Damaged 02"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_prop_fantasy_clay_pot_broken_004_ref"
      }
    }
    Assets {
      Id: 10771108408610196052
      Name: "Chain Tile 01"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_chain_001"
      }
    }
    Assets {
      Id: 7363477334452929865
      Name: "Sphere"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_sphere_002"
      }
    }
    Assets {
      Id: 9199751096616988864
      Name: "Candle Flame VFX"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "fxsm_candleflame"
      }
    }
    Assets {
      Id: 15339827692159902109
      Name: "Heart - Polished"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_heart_polished_001"
      }
    }
    Assets {
      Id: 4080200756085571976
      Name: "Bone Human Pelvis Half 01"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_bones_human_pelvis_01_ref"
      }
    }
    Assets {
      Id: 11312867989431867200
      Name: "Bone Human Jaw 01"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_bones_human_jaw_01_ref"
      }
    }
    Assets {
      Id: 11594524757616528940
      Name: "Bone Human Skull 01"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_bones_human_skull_01_ref"
      }
    }
    Assets {
      Id: 2426790310185116976
      Name: "Layered Thrusters VFX"
      PlatformAssetType: 8
      PrimaryAsset {
        AssetType: "VfxBlueprintAssetRef"
        AssetId: "fxbp_thruster_var"
      }
    }
    PrimaryAssetId {
      AssetType: "None"
      AssetId: "None"
    }
  }
  SerializationVersion: 120
}
