Assets {
  Id: 2392089005144652572
  Name: "Healer Orc Divine Light Active Basic"
  PlatformAssetType: 5
  TemplateAsset {
    ObjectBlock {
      RootId: 13862957114434612726
      Objects {
        Id: 13862957114434612726
        Name: "Healer Orc Divine Light Active Basic"
        Transform {
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 14162296025304194376
        ChildIds: 13706315007363547998
        ChildIds: 7680143239703990597
        ChildIds: 4792064193873030390
        ChildIds: 11310954526986939157
        ChildIds: 6390517857860374520
        Lifespan: 1.5
        WantsNetworking: true
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
        Id: 13706315007363547998
        Name: "DivineLightMovement"
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
        ParentId: 13862957114434612726
        UnregisteredParameters {
          Overrides {
            Name: "cs:Shield"
            ObjectReference {
              SubObjectId: 4666982474302437061
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
            Id: 7241882951493925416
          }
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 7680143239703990597
        Name: "Cast Burst Ring VFX"
        Transform {
          Location {
          }
          Rotation {
          }
          Scale {
            X: 2.10000014
            Y: 2.10000014
            Z: 2.10000014
          }
        }
        ParentId: 13862957114434612726
        UnregisteredParameters {
          Overrides {
            Name: "bp:Emissive Boost"
            Float: 20
          }
          Overrides {
            Name: "bp:Edge Color"
            Color {
              R: 0.721568644
              G: 0.120261453
              A: 1
            }
          }
          Overrides {
            Name: "bp:Life Max"
            Float: 1.8
          }
          Overrides {
            Name: "bp:Life Min"
            Float: 1.6
          }
          Overrides {
            Name: "bp:Count"
            Int: 4
          }
          Overrides {
            Name: "bp:Appearance"
            Enum {
              Value: "mc:ecastringappearance:8"
            }
          }
          Overrides {
            Name: "bp:Color"
            Color {
              R: 0.721568644
              G: 0.228496775
              A: 1
            }
          }
        }
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
            Id: 12277875585078443716
          }
          TeamSettings {
          }
          Vfx {
            AutoPlay: true
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
        Id: 4792064193873030390
        Name: "Resurrection VFX"
        Transform {
          Location {
            Z: 20.3002014
          }
          Rotation {
          }
          Scale {
            X: 0.606559038
            Y: 0.606559038
            Z: 0.606559038
          }
        }
        ParentId: 13862957114434612726
        UnregisteredParameters {
          Overrides {
            Name: "bp:Enable Beam"
            Bool: false
          }
          Overrides {
            Name: "bp:Enable Spiral"
            Bool: true
          }
          Overrides {
            Name: "bp:Emissive Boost"
            Float: 10
          }
          Overrides {
            Name: "bp:Life"
            Float: 1
          }
          Overrides {
            Name: "bp:Color"
            Color {
              R: 0.721568644
              G: 0.0705882385
              A: 1
            }
          }
          Overrides {
            Name: "bp:Upward Velocity"
            Float: 6
          }
          Overrides {
            Name: "bp:Enable Rings"
            Bool: false
          }
          Overrides {
            Name: "bp:Enable Base Rays"
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
            Id: 16693287233971223649
          }
          TeamSettings {
          }
          Vfx {
            AutoPlay: true
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
        Id: 11310954526986939157
        Name: "Magic Dark Buff Powerup 01 SFX"
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
        ParentId: 13862957114434612726
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
            Id: 10855366811573286256
          }
          AutoPlay: true
          Volume: 1
          Falloff: -1
          Radius: -1
          EnableOcclusion: true
          IsSpatializationEnabled: true
          IsAttenuationEnabled: true
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 6390517857860374520
        Name: "GEO_head"
        Transform {
          Location {
          }
          Rotation {
            Roll: 180
          }
          Scale {
            X: 5.76403284
            Y: 5.76403284
            Z: 5.76403284
          }
        }
        ParentId: 13862957114434612726
        ChildIds: 4666982474302437061
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
        Id: 4666982474302437061
        Name: "Shield"
        Transform {
          Location {
            Y: 9.53673e-06
            Z: -40
          }
          Rotation {
            Roll: 180
          }
          Scale {
            X: 0.4
            Y: 0.4
            Z: 0.4
          }
        }
        ParentId: 6390517857860374520
        ChildIds: 4695379293993783583
        ChildIds: 10283510223356451751
        ChildIds: 17844925901047664815
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
        Id: 4695379293993783583
        Name: "Group"
        Transform {
          Location {
            Y: 20.1811504
            Z: -5.0017271
          }
          Rotation {
            Pitch: -27.8454494
            Yaw: 89.9999924
          }
          Scale {
            X: 0.826322675
            Y: 0.826322675
            Z: 0.826322675
          }
        }
        ParentId: 4666982474302437061
        ChildIds: 10679526133706578176
        ChildIds: 9818641370067659643
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
        Id: 10679526133706578176
        Name: "Fantasy Gauntlet Arm 01"
        Transform {
          Location {
            X: 2.25291538
            Y: 0.00102716754
            Z: 1.18924487
          }
          Rotation {
            Pitch: 1
            Yaw: -90
            Roll: -30
          }
          Scale {
            X: 0.437690824
            Y: 0.437690824
            Z: 0.437690824
          }
        }
        ParentId: 4695379293993783583
        ChildIds: 8700436614056742097
        ChildIds: 10482626386799039548
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 27.8822212
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 22.5581589
          }
          Overrides {
            Name: "ma:Shared_Trim:id"
            AssetReference {
              Id: 1009636138000564291
            }
          }
          Overrides {
            Name: "ma:Shared_Trim:utile"
            Float: 9.37677193
          }
          Overrides {
            Name: "ma:Shared_Trim:vtile"
            Float: 18.2507038
          }
          Overrides {
            Name: "ma:Shared_Trim:color"
            Color {
              R: 0.721568644
              G: 0.0705882385
              A: 1
            }
          }
          Overrides {
            Name: "ma:Shared_Detail1:id"
            AssetReference {
              Id: 1009636138000564291
            }
          }
          Overrides {
            Name: "ma:Shared_Detail1:utile"
            Float: 49.9336395
          }
          Overrides {
            Name: "ma:Shared_Detail1:vtile"
            Float: 40.39888
          }
          Overrides {
            Name: "ma:Shared_Trim2:id"
            AssetReference {
              Id: 10378479423839914021
            }
          }
          Overrides {
            Name: "ma:Shared_Trim2:utile"
            Float: 16.9412174
          }
          Overrides {
            Name: "ma:Shared_Trim2:vtile"
            Float: 16.9412174
          }
          Overrides {
            Name: "ma:Shared_Detail1:color"
            Color {
              R: 0.721568644
              G: 0.0705882385
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
        Id: 8700436614056742097
        Name: "Group"
        Transform {
          Location {
            X: 0.103665262
            Y: 10.7943983
            Z: 0.470861942
          }
          Rotation {
            Pitch: -60.3809052
            Yaw: -92.0112152
            Roll: -178.258224
          }
          Scale {
            X: 6.91230488
            Y: 6.91230488
            Z: 6.91230488
          }
        }
        ParentId: 10679526133706578176
        ChildIds: 1979866457222094233
        ChildIds: 12175390158677609194
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
        Id: 1979866457222094233
        Name: "Group"
        Transform {
          Location {
            X: 0.0155869601
            Y: -1.61155546
            Z: 0.046675764
          }
          Rotation {
            Pitch: 31.4149418
            Yaw: -171.277939
            Roll: 107.636566
          }
          Scale {
            X: 0.225536555
            Y: 0.225536555
            Z: 0.225536555
          }
        }
        ParentId: 8700436614056742097
        ChildIds: 7448120570879533535
        ChildIds: 16210317936788256316
        ChildIds: 13038230470895852447
        ChildIds: 10770429415381265616
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
        Id: 7448120570879533535
        Name: "Horn"
        Transform {
          Location {
          }
          Rotation {
            Yaw: 179.999939
            Roll: -44.999939
          }
          Scale {
            X: 0.0455690622
            Y: 0.0455686897
            Z: 0.0681615099
          }
        }
        ParentId: 1979866457222094233
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 1372735874286316620
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.268919796
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.228444427
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
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
        Id: 16210317936788256316
        Name: "Horn"
        Transform {
          Location {
          }
          Rotation {
            Pitch: -0.000152587891
            Yaw: 3.25688781e-12
            Roll: -134.999603
          }
          Scale {
            X: 0.0455687307
            Y: 0.0455684289
            Z: 0.0826650709
          }
        }
        ParentId: 1979866457222094233
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 1372735874286316620
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.147865891
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.194061041
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
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
        Id: 13038230470895852447
        Name: "Cylinder - Rounded"
        Transform {
          Location {
          }
          Rotation {
            Pitch: 1.36603776e-05
            Yaw: 1.4834066e-05
            Roll: -135
          }
          Scale {
            X: 0.049293194
            Y: 0.04929398
            Z: 0.0728336275
          }
        }
        ParentId: 1979866457222094233
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 1372735874286316620
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 2.24166799
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 2.63884258
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:forceoff"
        }
        CoreMesh {
          MeshAsset {
            Id: 1687528788148422459
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
        Id: 10770429415381265616
        Name: "Fantasy Sword Grip 01"
        Transform {
          Location {
            X: 4.72718202e-05
            Y: 3.15761948
            Z: 3.15763521
          }
          Rotation {
            Pitch: 1.36603776e-05
            Yaw: 1.4834066e-05
            Roll: -135
          }
          Scale {
            X: 0.971599221
            Y: 0.971596062
            Z: 0.293815
          }
        }
        ParentId: 1979866457222094233
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_Trim:id"
            AssetReference {
              Id: 2858322153361950350
            }
          }
          Overrides {
            Name: "ma:Shared_Trim:utile"
            Float: 10.6714725
          }
          Overrides {
            Name: "ma:Shared_Trim:vtile"
            Float: 5.6799922
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
        Id: 12175390158677609194
        Name: "Group"
        Transform {
          Location {
            X: -0.0152481133
            Y: 1.61155546
            Z: 3.84224876e-07
          }
          Rotation {
            Pitch: -31.4149952
            Yaw: -8.72216606
            Roll: 107.636551
          }
          Scale {
            X: 0.225536555
            Y: 0.225536555
            Z: 0.225536555
          }
        }
        ParentId: 8700436614056742097
        ChildIds: 14947023073588543081
        ChildIds: 5861561510981346545
        ChildIds: 17014672243726512300
        ChildIds: 17627668987721986765
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
        Id: 14947023073588543081
        Name: "Horn"
        Transform {
          Location {
          }
          Rotation {
            Yaw: 179.999939
            Roll: -44.999939
          }
          Scale {
            X: 0.0455690622
            Y: 0.0455686897
            Z: 0.0681615099
          }
        }
        ParentId: 12175390158677609194
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 1372735874286316620
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.268919796
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.228444427
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
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
        Id: 5861561510981346545
        Name: "Horn"
        Transform {
          Location {
          }
          Rotation {
            Pitch: -0.000152587891
            Yaw: 3.25688781e-12
            Roll: -134.999603
          }
          Scale {
            X: 0.0455687307
            Y: 0.0455684289
            Z: 0.0826650709
          }
        }
        ParentId: 12175390158677609194
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 1372735874286316620
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.147865891
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.194061041
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
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
        Id: 17014672243726512300
        Name: "Cylinder - Rounded"
        Transform {
          Location {
          }
          Rotation {
            Pitch: 1.36603776e-05
            Yaw: 1.4834066e-05
            Roll: -135
          }
          Scale {
            X: 0.049293194
            Y: 0.04929398
            Z: 0.0728336275
          }
        }
        ParentId: 12175390158677609194
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 1372735874286316620
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 2.24166799
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 2.63884258
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:forceoff"
        }
        CoreMesh {
          MeshAsset {
            Id: 1687528788148422459
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
        Id: 17627668987721986765
        Name: "Fantasy Sword Grip 01"
        Transform {
          Location {
            X: 4.72718202e-05
            Y: 3.15761948
            Z: 3.15763521
          }
          Rotation {
            Pitch: 1.36603776e-05
            Yaw: 1.4834066e-05
            Roll: -135
          }
          Scale {
            X: 0.971599221
            Y: 0.971596062
            Z: 0.293815
          }
        }
        ParentId: 12175390158677609194
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_Trim:id"
            AssetReference {
              Id: 2858322153361950350
            }
          }
          Overrides {
            Name: "ma:Shared_Trim:utile"
            Float: 10.6714725
          }
          Overrides {
            Name: "ma:Shared_Trim:vtile"
            Float: 5.6799922
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
        Id: 10482626386799039548
        Name: "Fantasy Gauntlet Arm 01"
        Transform {
          Location {
            X: 0.00394629734
            Y: 11.1031475
            Z: 6.40321207
          }
          Rotation {
            Pitch: 89.5702057
            Yaw: -0.726043701
            Roll: -0.726043701
          }
          Scale {
            X: 0.137681022
            Y: 0.137709215
            Z: 0.0938153118
          }
        }
        ParentId: 10679526133706578176
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 27.8822212
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 22.5581589
          }
          Overrides {
            Name: "ma:Shared_Trim:id"
            AssetReference {
              Id: 1009636138000564291
            }
          }
          Overrides {
            Name: "ma:Shared_Trim:utile"
            Float: 9.37677193
          }
          Overrides {
            Name: "ma:Shared_Trim:vtile"
            Float: 18.2507038
          }
          Overrides {
            Name: "ma:Shared_Trim:color"
            Color {
              R: 0.721568644
              G: 0.0705882385
              A: 1
            }
          }
          Overrides {
            Name: "ma:Shared_Detail1:id"
            AssetReference {
              Id: 1009636138000564291
            }
          }
          Overrides {
            Name: "ma:Shared_Detail1:utile"
            Float: 49.9336395
          }
          Overrides {
            Name: "ma:Shared_Detail1:vtile"
            Float: 40.39888
          }
          Overrides {
            Name: "ma:Shared_Trim2:id"
            AssetReference {
              Id: 10378479423839914021
            }
          }
          Overrides {
            Name: "ma:Shared_Trim2:utile"
            Float: 16.9412174
          }
          Overrides {
            Name: "ma:Shared_Trim2:vtile"
            Float: 16.9412174
          }
          Overrides {
            Name: "ma:Shared_Detail1:color"
            Color {
              R: 0.721568644
              G: 0.0705882385
              A: 1
            }
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
              R: 0.721568644
              G: 0.0705882385
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
            Id: 15683169359350375517
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
        Id: 9818641370067659643
        Name: "Signal Flare"
        Transform {
          Location {
            X: 4.27137566
            Y: 0.00111179554
            Z: 4.48751068
          }
          Rotation {
            Pitch: -9.15527344e-05
            Yaw: -89.9999695
            Roll: 69.9999619
          }
          Scale {
            X: 0.364917308
            Y: 0.364917308
            Z: 0.364917308
          }
        }
        ParentId: 4695379293993783583
        UnregisteredParameters {
          Overrides {
            Name: "bp:Smoke"
            Bool: false
          }
          Overrides {
            Name: "bp:Sparks"
            Bool: false
          }
          Overrides {
            Name: "bp:Flash"
            Bool: true
          }
          Overrides {
            Name: "bp:Central Hot Spot"
            Bool: false
          }
          Overrides {
            Name: "bp:Coronal Glow"
            Bool: false
          }
          Overrides {
            Name: "bp:Local Space"
            Bool: true
          }
          Overrides {
            Name: "bp:Color"
            Color {
              R: 0.721568644
              G: 0.0705882385
              A: 1
            }
          }
          Overrides {
            Name: "bp:Flare Shape"
            Int: 3
          }
        }
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
            Id: 12764320832246126584
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
        Id: 10283510223356451751
        Name: "Group"
        Transform {
          Location {
            X: 17.4773884
            Y: -10.0905781
            Z: -5.00168133
          }
          Rotation {
            Pitch: -27.8454571
            Yaw: -30.000061
            Roll: 3.37952e-06
          }
          Scale {
            X: 0.826322794
            Y: 0.826322794
            Z: 0.826322794
          }
        }
        ParentId: 4666982474302437061
        ChildIds: 11004854454568130173
        ChildIds: 2773572359294284931
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
        Id: 11004854454568130173
        Name: "Fantasy Gauntlet Arm 01"
        Transform {
          Location {
            X: 2.25291538
            Y: 0.00102716754
            Z: 1.18924487
          }
          Rotation {
            Pitch: 1
            Yaw: -90
            Roll: -30
          }
          Scale {
            X: 0.437690824
            Y: 0.437690824
            Z: 0.437690824
          }
        }
        ParentId: 10283510223356451751
        ChildIds: 9887943553710747545
        ChildIds: 7444267604013417160
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 27.8822212
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 22.5581589
          }
          Overrides {
            Name: "ma:Shared_Trim:id"
            AssetReference {
              Id: 1009636138000564291
            }
          }
          Overrides {
            Name: "ma:Shared_Trim:utile"
            Float: 9.37677193
          }
          Overrides {
            Name: "ma:Shared_Trim:vtile"
            Float: 18.2507038
          }
          Overrides {
            Name: "ma:Shared_Trim:color"
            Color {
              R: 0.721568644
              G: 0.0705882385
              A: 1
            }
          }
          Overrides {
            Name: "ma:Shared_Detail1:id"
            AssetReference {
              Id: 1009636138000564291
            }
          }
          Overrides {
            Name: "ma:Shared_Detail1:utile"
            Float: 49.9336395
          }
          Overrides {
            Name: "ma:Shared_Detail1:vtile"
            Float: 40.39888
          }
          Overrides {
            Name: "ma:Shared_Trim2:id"
            AssetReference {
              Id: 10378479423839914021
            }
          }
          Overrides {
            Name: "ma:Shared_Trim2:utile"
            Float: 16.9412174
          }
          Overrides {
            Name: "ma:Shared_Trim2:vtile"
            Float: 16.9412174
          }
          Overrides {
            Name: "ma:Shared_Detail1:color"
            Color {
              R: 0.721568644
              G: 0.0705882385
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
        Id: 9887943553710747545
        Name: "Group"
        Transform {
          Location {
            X: 0.103343293
            Y: 10.7955894
            Z: 0.470815808
          }
          Rotation {
            Pitch: -60.3808632
            Yaw: -92.0111847
            Roll: -178.258224
          }
          Scale {
            X: 6.9123044
            Y: 6.9123044
            Z: 6.9123044
          }
        }
        ParentId: 11004854454568130173
        ChildIds: 5842697733008610097
        ChildIds: 12899674463464993426
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
        Id: 5842697733008610097
        Name: "Group"
        Transform {
          Location {
            X: 0.0155869601
            Y: -1.61155546
            Z: 0.046675764
          }
          Rotation {
            Pitch: 31.4149418
            Yaw: -171.277939
            Roll: 107.636566
          }
          Scale {
            X: 0.225536555
            Y: 0.225536555
            Z: 0.225536555
          }
        }
        ParentId: 9887943553710747545
        ChildIds: 16722085502224891146
        ChildIds: 16660341885290180689
        ChildIds: 13911183794666678546
        ChildIds: 1763956605145001727
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
        Id: 16722085502224891146
        Name: "Horn"
        Transform {
          Location {
          }
          Rotation {
            Yaw: 179.999939
            Roll: -44.999939
          }
          Scale {
            X: 0.0455690622
            Y: 0.0455686897
            Z: 0.0681615099
          }
        }
        ParentId: 5842697733008610097
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 1372735874286316620
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.268919796
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.228444427
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
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
        Id: 16660341885290180689
        Name: "Horn"
        Transform {
          Location {
          }
          Rotation {
            Pitch: -0.000152587891
            Yaw: 3.25688781e-12
            Roll: -134.999603
          }
          Scale {
            X: 0.0455687307
            Y: 0.0455684289
            Z: 0.0826650709
          }
        }
        ParentId: 5842697733008610097
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 1372735874286316620
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.147865891
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.194061041
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
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
        Id: 13911183794666678546
        Name: "Cylinder - Rounded"
        Transform {
          Location {
          }
          Rotation {
            Pitch: 1.36603776e-05
            Yaw: 1.4834066e-05
            Roll: -135
          }
          Scale {
            X: 0.049293194
            Y: 0.04929398
            Z: 0.0728336275
          }
        }
        ParentId: 5842697733008610097
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 1372735874286316620
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 2.24166799
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 2.63884258
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:forceoff"
        }
        CoreMesh {
          MeshAsset {
            Id: 1687528788148422459
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
        Id: 1763956605145001727
        Name: "Fantasy Sword Grip 01"
        Transform {
          Location {
            X: 4.72718202e-05
            Y: 3.15761948
            Z: 3.15763521
          }
          Rotation {
            Pitch: 1.36603776e-05
            Yaw: 1.4834066e-05
            Roll: -135
          }
          Scale {
            X: 0.971599221
            Y: 0.971596062
            Z: 0.293815
          }
        }
        ParentId: 5842697733008610097
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_Trim:id"
            AssetReference {
              Id: 2858322153361950350
            }
          }
          Overrides {
            Name: "ma:Shared_Trim:utile"
            Float: 10.6714725
          }
          Overrides {
            Name: "ma:Shared_Trim:vtile"
            Float: 5.6799922
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
        Id: 12899674463464993426
        Name: "Group"
        Transform {
          Location {
            X: -0.0152481133
            Y: 1.61155546
            Z: 3.84224876e-07
          }
          Rotation {
            Pitch: -31.4149952
            Yaw: -8.72216606
            Roll: 107.636551
          }
          Scale {
            X: 0.225536555
            Y: 0.225536555
            Z: 0.225536555
          }
        }
        ParentId: 9887943553710747545
        ChildIds: 10689740539593105636
        ChildIds: 7315321982527288854
        ChildIds: 4100370337457134719
        ChildIds: 8587304357544306135
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
        Id: 10689740539593105636
        Name: "Horn"
        Transform {
          Location {
          }
          Rotation {
            Yaw: 179.999939
            Roll: -44.999939
          }
          Scale {
            X: 0.0455690622
            Y: 0.0455686897
            Z: 0.0681615099
          }
        }
        ParentId: 12899674463464993426
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 1372735874286316620
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.268919796
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.228444427
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
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
        Id: 7315321982527288854
        Name: "Horn"
        Transform {
          Location {
          }
          Rotation {
            Pitch: -0.000152587891
            Yaw: 3.25688781e-12
            Roll: -134.999603
          }
          Scale {
            X: 0.0455687307
            Y: 0.0455684289
            Z: 0.0826650709
          }
        }
        ParentId: 12899674463464993426
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 1372735874286316620
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.147865891
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.194061041
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
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
        Id: 4100370337457134719
        Name: "Cylinder - Rounded"
        Transform {
          Location {
          }
          Rotation {
            Pitch: 1.36603776e-05
            Yaw: 1.4834066e-05
            Roll: -135
          }
          Scale {
            X: 0.049293194
            Y: 0.04929398
            Z: 0.0728336275
          }
        }
        ParentId: 12899674463464993426
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 1372735874286316620
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 2.24166799
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 2.63884258
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:forceoff"
        }
        CoreMesh {
          MeshAsset {
            Id: 1687528788148422459
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
        Id: 8587304357544306135
        Name: "Fantasy Sword Grip 01"
        Transform {
          Location {
            X: 4.72718202e-05
            Y: 3.15761948
            Z: 3.15763521
          }
          Rotation {
            Pitch: 1.36603776e-05
            Yaw: 1.4834066e-05
            Roll: -135
          }
          Scale {
            X: 0.971599221
            Y: 0.971596062
            Z: 0.293815
          }
        }
        ParentId: 12899674463464993426
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_Trim:id"
            AssetReference {
              Id: 2858322153361950350
            }
          }
          Overrides {
            Name: "ma:Shared_Trim:utile"
            Float: 10.6714725
          }
          Overrides {
            Name: "ma:Shared_Trim:vtile"
            Float: 5.6799922
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
        Id: 7444267604013417160
        Name: "Fantasy Gauntlet Arm 01"
        Transform {
          Location {
            X: 0.00394629734
            Y: 11.1031475
            Z: 6.40321207
          }
          Rotation {
            Pitch: 89.5702057
            Yaw: -0.726043701
            Roll: -0.726043701
          }
          Scale {
            X: 0.137681
            Y: 0.137709185
            Z: 0.0938153
          }
        }
        ParentId: 11004854454568130173
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 27.8822212
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 22.5581589
          }
          Overrides {
            Name: "ma:Shared_Trim:id"
            AssetReference {
              Id: 1009636138000564291
            }
          }
          Overrides {
            Name: "ma:Shared_Trim:utile"
            Float: 9.37677193
          }
          Overrides {
            Name: "ma:Shared_Trim:vtile"
            Float: 18.2507038
          }
          Overrides {
            Name: "ma:Shared_Trim:color"
            Color {
              R: 0.721568644
              G: 0.0705882385
              A: 1
            }
          }
          Overrides {
            Name: "ma:Shared_Detail1:id"
            AssetReference {
              Id: 1009636138000564291
            }
          }
          Overrides {
            Name: "ma:Shared_Detail1:utile"
            Float: 49.9336395
          }
          Overrides {
            Name: "ma:Shared_Detail1:vtile"
            Float: 40.39888
          }
          Overrides {
            Name: "ma:Shared_Trim2:id"
            AssetReference {
              Id: 10378479423839914021
            }
          }
          Overrides {
            Name: "ma:Shared_Trim2:utile"
            Float: 16.9412174
          }
          Overrides {
            Name: "ma:Shared_Trim2:vtile"
            Float: 16.9412174
          }
          Overrides {
            Name: "ma:Shared_Detail1:color"
            Color {
              R: 0.721568644
              G: 0.0705882385
              A: 1
            }
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
              R: 0.721568644
              G: 0.0705882385
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
            Id: 15683169359350375517
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
        Id: 2773572359294284931
        Name: "Signal Flare"
        Transform {
          Location {
            X: 4.27144384
            Y: 0.000925236673
            Z: 4.48754358
          }
          Rotation {
            Pitch: -9.15527344e-05
            Yaw: -89.9999695
            Roll: 69.9999619
          }
          Scale {
            X: 0.364917159
            Y: 0.364917159
            Z: 0.364917159
          }
        }
        ParentId: 10283510223356451751
        UnregisteredParameters {
          Overrides {
            Name: "bp:Smoke"
            Bool: false
          }
          Overrides {
            Name: "bp:Sparks"
            Bool: false
          }
          Overrides {
            Name: "bp:Flash"
            Bool: true
          }
          Overrides {
            Name: "bp:Central Hot Spot"
            Bool: false
          }
          Overrides {
            Name: "bp:Coronal Glow"
            Bool: false
          }
          Overrides {
            Name: "bp:Local Space"
            Bool: true
          }
          Overrides {
            Name: "bp:Color"
            Color {
              R: 0.721568644
              G: 0.0705882385
              A: 1
            }
          }
          Overrides {
            Name: "bp:Flare Shape"
            Int: 3
          }
        }
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
            Id: 12764320832246126584
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
        Id: 17844925901047664815
        Name: "Group"
        Transform {
          Location {
            X: -17.4773884
            Y: -10.0905781
            Z: -5.0017271
          }
          Rotation {
            Pitch: -27.8454571
            Yaw: -150.000015
            Roll: 4.8278855e-07
          }
          Scale {
            X: 0.826322675
            Y: 0.826322675
            Z: 0.826322675
          }
        }
        ParentId: 4666982474302437061
        ChildIds: 3373813988561898889
        ChildIds: 12112065545836016924
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
        Id: 3373813988561898889
        Name: "Fantasy Gauntlet Arm 01"
        Transform {
          Location {
            X: 2.25291538
            Y: 0.00102716754
            Z: 1.18924487
          }
          Rotation {
            Pitch: 1
            Yaw: -90
            Roll: -30
          }
          Scale {
            X: 0.437690824
            Y: 0.437690824
            Z: 0.437690824
          }
        }
        ParentId: 17844925901047664815
        ChildIds: 6607700462284335825
        ChildIds: 14042166343839029615
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 27.8822212
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 22.5581589
          }
          Overrides {
            Name: "ma:Shared_Trim:id"
            AssetReference {
              Id: 1009636138000564291
            }
          }
          Overrides {
            Name: "ma:Shared_Trim:utile"
            Float: 9.37677193
          }
          Overrides {
            Name: "ma:Shared_Trim:vtile"
            Float: 18.2507038
          }
          Overrides {
            Name: "ma:Shared_Trim:color"
            Color {
              R: 0.721568644
              G: 0.0705882385
              A: 1
            }
          }
          Overrides {
            Name: "ma:Shared_Detail1:id"
            AssetReference {
              Id: 1009636138000564291
            }
          }
          Overrides {
            Name: "ma:Shared_Detail1:utile"
            Float: 49.9336395
          }
          Overrides {
            Name: "ma:Shared_Detail1:vtile"
            Float: 40.39888
          }
          Overrides {
            Name: "ma:Shared_Trim2:id"
            AssetReference {
              Id: 10378479423839914021
            }
          }
          Overrides {
            Name: "ma:Shared_Trim2:utile"
            Float: 16.9412174
          }
          Overrides {
            Name: "ma:Shared_Trim2:vtile"
            Float: 16.9412174
          }
          Overrides {
            Name: "ma:Shared_Detail1:color"
            Color {
              R: 0.721568644
              G: 0.0705882385
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
        Id: 6607700462284335825
        Name: "Group"
        Transform {
          Location {
            X: 0.102521017
            Y: 10.7964544
            Z: 0.470796287
          }
          Rotation {
            Pitch: -60.3808632
            Yaw: -92.0111771
            Roll: -178.258224
          }
          Scale {
            X: 6.91230392
            Y: 6.91230392
            Z: 6.91230392
          }
        }
        ParentId: 3373813988561898889
        ChildIds: 2020902435371299440
        ChildIds: 10814360564578376648
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
        Id: 2020902435371299440
        Name: "Group"
        Transform {
          Location {
            X: 0.0155869601
            Y: -1.61155546
            Z: 0.046675764
          }
          Rotation {
            Pitch: 31.4149418
            Yaw: -171.277939
            Roll: 107.636566
          }
          Scale {
            X: 0.225536555
            Y: 0.225536555
            Z: 0.225536555
          }
        }
        ParentId: 6607700462284335825
        ChildIds: 10986412691046494761
        ChildIds: 9376875144658629169
        ChildIds: 17956271863001665837
        ChildIds: 17774637990107496874
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
        Id: 10986412691046494761
        Name: "Horn"
        Transform {
          Location {
          }
          Rotation {
            Yaw: 179.999939
            Roll: -44.999939
          }
          Scale {
            X: 0.0455690622
            Y: 0.0455686897
            Z: 0.0681615099
          }
        }
        ParentId: 2020902435371299440
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 1372735874286316620
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.268919796
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.228444427
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
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
        Id: 9376875144658629169
        Name: "Horn"
        Transform {
          Location {
          }
          Rotation {
            Pitch: -0.000152587891
            Yaw: 3.25688781e-12
            Roll: -134.999603
          }
          Scale {
            X: 0.0455687307
            Y: 0.0455684289
            Z: 0.0826650709
          }
        }
        ParentId: 2020902435371299440
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 1372735874286316620
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.147865891
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.194061041
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
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
        Id: 17956271863001665837
        Name: "Cylinder - Rounded"
        Transform {
          Location {
          }
          Rotation {
            Pitch: 1.36603776e-05
            Yaw: 1.4834066e-05
            Roll: -135
          }
          Scale {
            X: 0.049293194
            Y: 0.04929398
            Z: 0.0728336275
          }
        }
        ParentId: 2020902435371299440
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 1372735874286316620
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 2.24166799
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 2.63884258
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:forceoff"
        }
        CoreMesh {
          MeshAsset {
            Id: 1687528788148422459
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
        Id: 17774637990107496874
        Name: "Fantasy Sword Grip 01"
        Transform {
          Location {
            X: 4.72718202e-05
            Y: 3.15761948
            Z: 3.15763521
          }
          Rotation {
            Pitch: 1.36603776e-05
            Yaw: 1.4834066e-05
            Roll: -135
          }
          Scale {
            X: 0.971599221
            Y: 0.971596062
            Z: 0.293815
          }
        }
        ParentId: 2020902435371299440
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_Trim:id"
            AssetReference {
              Id: 2858322153361950350
            }
          }
          Overrides {
            Name: "ma:Shared_Trim:utile"
            Float: 10.6714725
          }
          Overrides {
            Name: "ma:Shared_Trim:vtile"
            Float: 5.6799922
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
        Id: 10814360564578376648
        Name: "Group"
        Transform {
          Location {
            X: -0.0152481133
            Y: 1.61155546
            Z: 3.84224876e-07
          }
          Rotation {
            Pitch: -31.4149952
            Yaw: -8.72216606
            Roll: 107.636551
          }
          Scale {
            X: 0.225536555
            Y: 0.225536555
            Z: 0.225536555
          }
        }
        ParentId: 6607700462284335825
        ChildIds: 16346827853984516801
        ChildIds: 7596118561177869184
        ChildIds: 10385201349266645595
        ChildIds: 7324065077043488796
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
        Id: 16346827853984516801
        Name: "Horn"
        Transform {
          Location {
          }
          Rotation {
            Yaw: 179.999939
            Roll: -44.999939
          }
          Scale {
            X: 0.0455690622
            Y: 0.0455686897
            Z: 0.0681615099
          }
        }
        ParentId: 10814360564578376648
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 1372735874286316620
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.268919796
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.228444427
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
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
        Id: 7596118561177869184
        Name: "Horn"
        Transform {
          Location {
          }
          Rotation {
            Pitch: -0.000152587891
            Yaw: 3.25688781e-12
            Roll: -134.999603
          }
          Scale {
            X: 0.0455687307
            Y: 0.0455684289
            Z: 0.0826650709
          }
        }
        ParentId: 10814360564578376648
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 1372735874286316620
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.147865891
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.194061041
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
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
        Id: 10385201349266645595
        Name: "Cylinder - Rounded"
        Transform {
          Location {
          }
          Rotation {
            Pitch: 1.36603776e-05
            Yaw: 1.4834066e-05
            Roll: -135
          }
          Scale {
            X: 0.049293194
            Y: 0.04929398
            Z: 0.0728336275
          }
        }
        ParentId: 10814360564578376648
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 1372735874286316620
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 2.24166799
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 2.63884258
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:forceoff"
        }
        CoreMesh {
          MeshAsset {
            Id: 1687528788148422459
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
        Id: 7324065077043488796
        Name: "Fantasy Sword Grip 01"
        Transform {
          Location {
            X: 4.72718202e-05
            Y: 3.15761948
            Z: 3.15763521
          }
          Rotation {
            Pitch: 1.36603776e-05
            Yaw: 1.4834066e-05
            Roll: -135
          }
          Scale {
            X: 0.971599221
            Y: 0.971596062
            Z: 0.293815
          }
        }
        ParentId: 10814360564578376648
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_Trim:id"
            AssetReference {
              Id: 2858322153361950350
            }
          }
          Overrides {
            Name: "ma:Shared_Trim:utile"
            Float: 10.6714725
          }
          Overrides {
            Name: "ma:Shared_Trim:vtile"
            Float: 5.6799922
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
        Id: 14042166343839029615
        Name: "Fantasy Gauntlet Arm 01"
        Transform {
          Location {
            X: 0.00394629734
            Y: 11.1031475
            Z: 6.40321207
          }
          Rotation {
            Pitch: 89.5702057
            Yaw: -0.726043701
            Roll: -0.726043701
          }
          Scale {
            X: 0.137681022
            Y: 0.1377092
            Z: 0.0938153043
          }
        }
        ParentId: 3373813988561898889
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 27.8822212
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 22.5581589
          }
          Overrides {
            Name: "ma:Shared_Trim:id"
            AssetReference {
              Id: 1009636138000564291
            }
          }
          Overrides {
            Name: "ma:Shared_Trim:utile"
            Float: 9.37677193
          }
          Overrides {
            Name: "ma:Shared_Trim:vtile"
            Float: 18.2507038
          }
          Overrides {
            Name: "ma:Shared_Trim:color"
            Color {
              R: 0.721568644
              G: 0.0705882385
              A: 1
            }
          }
          Overrides {
            Name: "ma:Shared_Detail1:id"
            AssetReference {
              Id: 1009636138000564291
            }
          }
          Overrides {
            Name: "ma:Shared_Detail1:utile"
            Float: 49.9336395
          }
          Overrides {
            Name: "ma:Shared_Detail1:vtile"
            Float: 40.39888
          }
          Overrides {
            Name: "ma:Shared_Trim2:id"
            AssetReference {
              Id: 10378479423839914021
            }
          }
          Overrides {
            Name: "ma:Shared_Trim2:utile"
            Float: 16.9412174
          }
          Overrides {
            Name: "ma:Shared_Trim2:vtile"
            Float: 16.9412174
          }
          Overrides {
            Name: "ma:Shared_Detail1:color"
            Color {
              R: 0.721568644
              G: 0.0705882385
              A: 1
            }
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
              R: 0.721568644
              G: 0.0705882385
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
            Id: 15683169359350375517
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
        Id: 12112065545836016924
        Name: "Signal Flare"
        Transform {
          Location {
            X: 4.27126169
            Y: 0.000951956725
            Z: 4.48745155
          }
          Rotation {
            Pitch: -9.15527344e-05
            Yaw: -89.9999695
            Roll: 69.9999619
          }
          Scale {
            X: 0.364917248
            Y: 0.364917248
            Z: 0.364917248
          }
        }
        ParentId: 17844925901047664815
        UnregisteredParameters {
          Overrides {
            Name: "bp:Smoke"
            Bool: false
          }
          Overrides {
            Name: "bp:Sparks"
            Bool: false
          }
          Overrides {
            Name: "bp:Flash"
            Bool: true
          }
          Overrides {
            Name: "bp:Central Hot Spot"
            Bool: false
          }
          Overrides {
            Name: "bp:Coronal Glow"
            Bool: false
          }
          Overrides {
            Name: "bp:Local Space"
            Bool: true
          }
          Overrides {
            Name: "bp:Color"
            Color {
              R: 0.721568644
              G: 0.0705882385
              A: 1
            }
          }
          Overrides {
            Name: "bp:Flare Shape"
            Int: 3
          }
        }
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
            Id: 12764320832246126584
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
    }
    Assets {
      Id: 12277875585078443716
      Name: "Cast Burst Ring VFX"
      PlatformAssetType: 8
      PrimaryAsset {
        AssetType: "VfxBlueprintAssetRef"
        AssetId: "fxbp_cast_circle_generic"
      }
    }
    Assets {
      Id: 16693287233971223649
      Name: "Resurrection VFX"
      PlatformAssetType: 8
      PrimaryAsset {
        AssetType: "VfxBlueprintAssetRef"
        AssetId: "fxbp_resurrection"
      }
    }
    Assets {
      Id: 10855366811573286256
      Name: "Magic Dark Buff Powerup 01 SFX"
      PlatformAssetType: 7
      PrimaryAsset {
        AssetType: "AudioAssetRef"
        AssetId: "sfx_magic_dark_buff_powerup_01_Cue_ref"
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
      Id: 10378479423839914021
      Name: "Metal Iron 01"
      PlatformAssetType: 2
      PrimaryAsset {
        AssetType: "MaterialAssetRef"
        AssetId: "mi_metal_iron_001"
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
      Id: 1687528788148422459
      Name: "Prism - 8-Sided"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_prism_octagon_001"
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
      Id: 2754963224534021958
      Name: "Invisible"
      PlatformAssetType: 2
      PrimaryAsset {
        AssetType: "MaterialAssetRef"
        AssetId: "mi_invisible_001"
      }
    }
    Assets {
      Id: 15683169359350375517
      Name: "Capsule"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_capsule_001"
      }
    }
    Assets {
      Id: 12764320832246126584
      Name: "Signal Flare"
      PlatformAssetType: 8
      PrimaryAsset {
        AssetType: "VfxBlueprintAssetRef"
        AssetId: "fxbp_Signal_Flare"
      }
    }
    PrimaryAssetId {
      AssetType: "None"
      AssetId: "None"
    }
  }
  SerializationVersion: 119
  VirtualFolderPath: "Loot"
  VirtualFolderPath: "Ability"
  VirtualFolderPath: "Assets"
}
