Assets {
  Id: 5553172224470569178
  Name: "ITEM_Sword_GoblinKingsRazor"
  PlatformAssetType: 5
  TemplateAsset {
    ObjectBlock {
      RootId: 3131835103935698109
      Objects {
        Id: 3131835103935698109
        Name: "ITEM_Sword_GoblinKingsRazor"
        Transform {
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 4781671109827199097
        ChildIds: 9354161089403754234
        UnregisteredParameters {
          Overrides {
            Name: "cs:Icon"
            AssetReference {
              Id: 2871034599884289787
            }
          }
          Overrides {
            Name: "cs:AnimationStance"
            String: "1hand_melee_stance"
          }
          Overrides {
            Name: "cs:SOCKET_right_prop"
            ObjectReference {
              SubObjectId: 9354161089403754234
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
        Id: 9354161089403754234
        Name: "Socket"
        Transform {
          Location {
            X: -4.74902344
            Z: -8.98303223
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 3131835103935698109
        ChildIds: 152541783085373170
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
        Id: 152541783085373170
        Name: "GoblinKingsRazor"
        Transform {
          Location {
            X: -4.12304688
            Y: 1.3828125
            Z: -16.2515869
          }
          Rotation {
            Pitch: -1.18899536
            Yaw: -107.993286
            Roll: 11.3661785
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 9354161089403754234
        ChildIds: 18171045448465150854
        ChildIds: 2846236439087611700
        ChildIds: 12132889016144580822
        ChildIds: 11006394293218490863
        ChildIds: 16660000331455364098
        ChildIds: 1677848608800863666
        ChildIds: 1811859556059728999
        ChildIds: 7321217722742681603
        ChildIds: 9189358043661384628
        ChildIds: 13144688612424008303
        ChildIds: 1600910348690556452
        ChildIds: 7235028186825169347
        ChildIds: 13073647835509635422
        ChildIds: 6715661419289985314
        ChildIds: 9797412944137475100
        ChildIds: 12913776125288362840
        ChildIds: 15297348053681124209
        ChildIds: 13975514889973318517
        ChildIds: 18136016963456980043
        ChildIds: 624764005228296897
        ChildIds: 1214010058693429134
        ChildIds: 4865612022848228397
        ChildIds: 14498603777644356320
        ChildIds: 5017995142147873166
        ChildIds: 13767498816073490528
        ChildIds: 11879260206484824086
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
        Id: 18171045448465150854
        Name: "Cube"
        Transform {
          Location {
            X: 0.8634637
            Y: -0.623673379
            Z: 90.5546417
          }
          Rotation {
            Pitch: 6.83018879e-06
            Yaw: 179.999863
            Roll: -90.0004578
          }
          Scale {
            X: 0.00700078579
            Y: 0.131607145
            Z: 0.0241800025
          }
        }
        ParentId: 152541783085373170
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 2819717477027926411
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
          Value: "mc:ecollisionsetting:forceoff"
        }
        CoreMesh {
          MeshAsset {
            Id: 12590738789068217283
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          InteractWithTriggers: true
          StaticMesh {
            Physics {
            }
            BoundsScale: 1
          }
        }
        Relevance {
          Value: "mc:eproxyrelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 2846236439087611700
        Name: "Cube"
        Transform {
          Location {
            X: 0.863461733
            Y: -2.45741367
            Z: 41.3784027
          }
          Rotation {
            Pitch: -6.10351562e-05
            Yaw: 89.9998093
            Roll: 90.0000916
          }
          Scale {
            X: 0.0745946094
            Y: 0.14
            Z: 0.00700000348
          }
        }
        ParentId: 152541783085373170
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 2819717477027926411
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
          Value: "mc:ecollisionsetting:forceoff"
        }
        CoreMesh {
          MeshAsset {
            Id: 12095835209017042614
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          InteractWithTriggers: true
          StaticMesh {
            Physics {
            }
            BoundsScale: 1
          }
        }
        Relevance {
          Value: "mc:eproxyrelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 12132889016144580822
        Name: "Cube"
        Transform {
          Location {
            X: 0.8634637
            Y: -0.623673379
            Z: 86.8770294
          }
          Rotation {
            Pitch: 6.83018879e-06
            Yaw: 179.999863
            Roll: -90.0004578
          }
          Scale {
            X: 0.00699999975
            Y: 0.28
            Z: 0.00349999988
          }
        }
        ParentId: 152541783085373170
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 2819717477027926411
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
          Value: "mc:ecollisionsetting:forceoff"
        }
        CoreMesh {
          MeshAsset {
            Id: 12590738789068217283
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          InteractWithTriggers: true
          StaticMesh {
            Physics {
            }
            BoundsScale: 1
          }
        }
        Relevance {
          Value: "mc:eproxyrelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 11006394293218490863
        Name: "Cube"
        Transform {
          Location {
            X: 0.86345911
            Y: -4.82362461
            Z: 86.8770447
          }
          Rotation {
            Yaw: -0.000152587891
            Roll: -89.9986572
          }
          Scale {
            X: 0.00699999975
            Y: 0.28
            Z: 0.00349999988
          }
        }
        ParentId: 152541783085373170
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 2819717477027926411
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
          Value: "mc:ecollisionsetting:forceoff"
        }
        CoreMesh {
          MeshAsset {
            Id: 12590738789068217283
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          InteractWithTriggers: true
          StaticMesh {
            Physics {
            }
            BoundsScale: 1
          }
        }
        Relevance {
          Value: "mc:eproxyrelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 16660000331455364098
        Name: "Cube"
        Transform {
          Location {
            X: 0.8634637
            Y: -0.623673379
            Z: 62.3770447
          }
          Rotation {
            Yaw: -0.000152587891
            Roll: 90.000412
          }
          Scale {
            X: 0.00699999975
            Y: 0.28
            Z: 0.019439267
          }
        }
        ParentId: 152541783085373170
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 2819717477027926411
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
          Value: "mc:ecollisionsetting:forceoff"
        }
        CoreMesh {
          MeshAsset {
            Id: 12590738789068217283
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          InteractWithTriggers: true
          StaticMesh {
            Physics {
            }
            BoundsScale: 1
          }
        }
        Relevance {
          Value: "mc:eproxyrelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 1677848608800863666
        Name: "Cube"
        Transform {
          Location {
            X: 0.863460779
            Y: -3.41468906
            Z: 71.1270447
          }
          Rotation {
            Pitch: -6.10351562e-05
            Yaw: 89.9998093
            Roll: 90.0000916
          }
          Scale {
            X: 0.055999998
            Y: 0.454999983
            Z: 0.00699999975
          }
        }
        ParentId: 152541783085373170
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 2819717477027926411
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
          Value: "mc:ecollisionsetting:forceoff"
        }
        CoreMesh {
          MeshAsset {
            Id: 12095835209017042614
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          InteractWithTriggers: true
          StaticMesh {
            Physics {
            }
            BoundsScale: 1
          }
        }
        Relevance {
          Value: "mc:eproxyrelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 1811859556059728999
        Name: "Cube"
        Transform {
          Location {
            X: 0.863461
            Y: -3.03297496
            Z: 97.3403778
          }
          Rotation {
            Pitch: -6.10351562e-05
            Yaw: 89.9998169
            Roll: 89.9998703
          }
          Scale {
            X: 0.0551361181
            Y: 0.0739315
            Z: 0.00700001605
          }
        }
        ParentId: 152541783085373170
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 2819717477027926411
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
          Value: "mc:ecollisionsetting:forceoff"
        }
        CoreMesh {
          MeshAsset {
            Id: 12095835209017042614
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          InteractWithTriggers: true
          StaticMesh {
            Physics {
            }
            BoundsScale: 1
          }
        }
        Relevance {
          Value: "mc:eproxyrelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 7321217722742681603
        Name: "Cube"
        Transform {
          Location {
            X: 0.86407423
            Y: -2.72429085
            Z: 121.843071
          }
          Rotation {
            Yaw: -0.000152587891
            Roll: 90.0005188
          }
          Scale {
            X: 0.00698887138
            Y: 0.147603467
            Z: 0.0279918518
          }
        }
        ParentId: 152541783085373170
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 2819717477027926411
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
          Value: "mc:ecollisionsetting:forceoff"
        }
        CoreMesh {
          MeshAsset {
            Id: 12590738789068217283
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          InteractWithTriggers: true
          StaticMesh {
            Physics {
            }
            BoundsScale: 1
          }
        }
        Relevance {
          Value: "mc:eproxyrelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 9189358043661384628
        Name: "Cube"
        Transform {
          Location {
            X: 0.86407423
            Y: -2.72429085
            Z: 121.843071
          }
          Rotation {
            Pitch: 6.83018879e-06
            Yaw: 179.999863
            Roll: 90.0004654
          }
          Scale {
            X: 0.00698887138
            Y: 0.147603467
            Z: 0.0279918518
          }
        }
        ParentId: 152541783085373170
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 2819717477027926411
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
          Value: "mc:ecollisionsetting:forceoff"
        }
        CoreMesh {
          MeshAsset {
            Id: 12590738789068217283
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          InteractWithTriggers: true
          StaticMesh {
            Physics {
            }
            BoundsScale: 1
          }
        }
        Relevance {
          Value: "mc:eproxyrelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 13144688612424008303
        Name: "Cube"
        Transform {
          Location {
            X: 0.863464117
            Y: -0.273697793
            Z: 97.3911743
          }
          Rotation {
            Pitch: 6.83018879e-06
            Yaw: 179.999863
            Roll: -90.000061
          }
          Scale {
            X: 0.00700004864
            Y: 0.0712014139
            Z: 0.0516830906
          }
        }
        ParentId: 152541783085373170
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 2819717477027926411
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
          Value: "mc:ecollisionsetting:forceoff"
        }
        CoreMesh {
          MeshAsset {
            Id: 12590738789068217283
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          InteractWithTriggers: true
          StaticMesh {
            Physics {
            }
            BoundsScale: 1
          }
        }
        Relevance {
          Value: "mc:eproxyrelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 1600910348690556452
        Name: "Cube"
        Transform {
          Location {
            X: 0.863464415
            Y: 0.0763998628
            Z: 107.877014
          }
          Rotation {
            Yaw: -0.000152587891
            Roll: 90.0004044
          }
          Scale {
            X: 0.00699999975
            Y: 0.140000015
            Z: 0.0496224836
          }
        }
        ParentId: 152541783085373170
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 2819717477027926411
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
          Value: "mc:ecollisionsetting:forceoff"
        }
        CoreMesh {
          MeshAsset {
            Id: 12590738789068217283
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          InteractWithTriggers: true
          StaticMesh {
            Physics {
            }
            BoundsScale: 1
          }
        }
        Relevance {
          Value: "mc:eproxyrelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 7235028186825169347
        Name: "Cube"
        Transform {
          Location {
            X: 0.863461494
            Y: -2.72364902
            Z: 107.877029
          }
          Rotation {
            Pitch: -6.10351562e-05
            Yaw: 89.9998093
            Roll: 90.0000916
          }
          Scale {
            X: 0.055999998
            Y: 0.14
            Z: 0.00699999975
          }
        }
        ParentId: 152541783085373170
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 2819717477027926411
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
          Value: "mc:ecollisionsetting:forceoff"
        }
        CoreMesh {
          MeshAsset {
            Id: 12095835209017042614
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          InteractWithTriggers: true
          StaticMesh {
            Physics {
            }
            BoundsScale: 1
          }
        }
        Relevance {
          Value: "mc:eproxyrelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 13073647835509635422
        Name: "Cube"
        Transform {
          Location {
            X: 0.863458633
            Y: -5.52369785
            Z: 104.378525
          }
          Rotation {
            Pitch: 6.83018879e-06
            Yaw: 179.999863
            Roll: 90.0004654
          }
          Scale {
            X: 0.00700058928
            Y: 0.210329011
            Z: 0.00702477247
          }
        }
        ParentId: 152541783085373170
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 2819717477027926411
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
          Value: "mc:ecollisionsetting:forceoff"
        }
        CoreMesh {
          MeshAsset {
            Id: 12590738789068217283
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          InteractWithTriggers: true
          StaticMesh {
            Physics {
            }
            BoundsScale: 1
          }
        }
        Relevance {
          Value: "mc:eproxyrelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 6715661419289985314
        Name: "Fantasy Pommel 02"
        Transform {
          Location {
            X: 1.94378674
            Y: 1.57754135
            Z: 1.83052731
          }
          Rotation {
            Pitch: 19.1485023
            Yaw: 88.5909119
            Roll: -0.725860596
          }
          Scale {
            X: 0.538665652
            Y: 0.126600072
            Z: 0.230416805
          }
        }
        ParentId: 152541783085373170
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
            Name: "ma:Font.Faces:id"
            AssetReference {
              Id: 11337413471323694429
            }
          }
          Overrides {
            Name: "ma:Font.Bevel:id"
            AssetReference {
              Id: 11337413471323694429
            }
          }
          Overrides {
            Name: "ma:Font.Sides:id"
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
            Id: 17899653877163012473
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          InteractWithTriggers: true
          StaticMesh {
            Physics {
            }
            BoundsScale: 1
          }
        }
        Relevance {
          Value: "mc:eproxyrelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 9797412944137475100
        Name: "Cube"
        Transform {
          Location {
            X: 0.86346674
            Y: 2.25924563
            Z: 97.1942902
          }
          Rotation {
            Pitch: -0.000122070312
            Yaw: -6.10351562e-05
            Roll: -149.794449
          }
          Scale {
            X: 0.00699776877
            Y: 0.0604087226
            Z: 0.0937473625
          }
        }
        ParentId: 152541783085373170
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 2819717477027926411
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
          Value: "mc:ecollisionsetting:forceoff"
        }
        CoreMesh {
          MeshAsset {
            Id: 12590738789068217283
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          InteractWithTriggers: true
          StaticMesh {
            Physics {
            }
            BoundsScale: 1
          }
        }
        Relevance {
          Value: "mc:eproxyrelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 12913776125288362840
        Name: "Cube"
        Transform {
          Location {
            X: 0.863465667
            Y: 1.25465298
            Z: 92.415451
          }
          Rotation {
            Pitch: -0.000122070312
            Yaw: 5.40342126e-06
            Roll: -165.948593
          }
          Scale {
            X: 0.00699776877
            Y: 0.0604087226
            Z: 0.0937473625
          }
        }
        ParentId: 152541783085373170
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 2819717477027926411
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
          Value: "mc:ecollisionsetting:forceoff"
        }
        CoreMesh {
          MeshAsset {
            Id: 12590738789068217283
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          InteractWithTriggers: true
          StaticMesh {
            Physics {
            }
            BoundsScale: 1
          }
        }
        Relevance {
          Value: "mc:eproxyrelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 15297348053681124209
        Name: "Cube"
        Transform {
          Location {
            X: 0.863464475
            Y: 0.127486289
            Z: 87.307663
          }
          Rotation {
            Pitch: -0.000122070312
            Yaw: 7.66258454e-05
            Roll: 172.30574
          }
          Scale {
            X: 0.00699776877
            Y: 0.0604087226
            Z: 0.0937473625
          }
        }
        ParentId: 152541783085373170
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 2819717477027926411
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
          Value: "mc:ecollisionsetting:forceoff"
        }
        CoreMesh {
          MeshAsset {
            Id: 12590738789068217283
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          InteractWithTriggers: true
          StaticMesh {
            Physics {
            }
            BoundsScale: 1
          }
        }
        Relevance {
          Value: "mc:eproxyrelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 13975514889973318517
        Name: "Cube"
        Transform {
          Location {
            X: 0.863464415
            Y: 0.0763998628
            Z: 43.6837158
          }
          Rotation {
            Pitch: 6.83018879e-06
            Yaw: -0.000152587891
            Roll: 90.000412
          }
          Scale {
            X: 0.00699999975
            Y: 0.140000015
            Z: 0.0496224836
          }
        }
        ParentId: 152541783085373170
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 2819717477027926411
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
          Value: "mc:ecollisionsetting:forceoff"
        }
        CoreMesh {
          MeshAsset {
            Id: 12590738789068217283
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          InteractWithTriggers: true
          StaticMesh {
            Physics {
            }
            BoundsScale: 1
          }
        }
        Relevance {
          Value: "mc:eproxyrelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 18136016963456980043
        Name: "Fantasy Pommel 02"
        Transform {
          Location {
            X: 0.913384438
            Y: -6.40234423
            Z: 35.7968
          }
          Rotation {
            Pitch: 51.5068665
            Yaw: 89.9984512
            Roll: -0.00253295898
          }
          Scale {
            X: 0.257319927
            Y: 0.148188502
            Z: 0.337896794
          }
        }
        ParentId: 152541783085373170
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
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:forceoff"
        }
        CoreMesh {
          MeshAsset {
            Id: 15484605620023334162
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          InteractWithTriggers: true
          StaticMesh {
            Physics {
            }
            BoundsScale: 1
          }
        }
        Relevance {
          Value: "mc:eproxyrelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 624764005228296897
        Name: "Fantasy Pommel 02"
        Transform {
          Location {
            X: 0.913413048
            Y: -7.95554447
            Z: 68.3319
          }
          Rotation {
            Pitch: 88.5778198
            Yaw: -89.9880371
            Roll: -179.988785
          }
          Scale {
            X: 0.69227463
            Y: 0.0617509782
            Z: 0.176407024
          }
        }
        ParentId: 152541783085373170
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
            Float: 1.01857817
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.315753102
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:forceoff"
        }
        CoreMesh {
          MeshAsset {
            Id: 15484605620023334162
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          InteractWithTriggers: true
          StaticMesh {
            Physics {
            }
            BoundsScale: 1
          }
        }
        Relevance {
          Value: "mc:eproxyrelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 1214010058693429134
        Name: "Cube"
        Transform {
          Location {
            X: 0.86345911
            Y: -4.82315159
            Z: 50.4235611
          }
          Rotation {
            Pitch: 2.67474294
            Yaw: 89.999939
            Roll: 90.0001373
          }
          Scale {
            X: 0.0467818268
            Y: 0.380580693
            Z: 0.00800028723
          }
        }
        ParentId: 152541783085373170
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
            Float: 0.280855507
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.315753102
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:forceoff"
        }
        CoreMesh {
          MeshAsset {
            Id: 12095835209017042614
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          InteractWithTriggers: true
          StaticMesh {
            Physics {
            }
            BoundsScale: 1
          }
        }
        Relevance {
          Value: "mc:eproxyrelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 4865612022848228397
        Name: "Fantasy Sword Grip 01"
        Transform {
          Location {
            X: 0.000409126282
            Y: 5.24929142
            Z: -3.15731311
          }
          Rotation {
            Roll: -8.68457
          }
          Scale {
            X: 1.0000037
            Y: 1.00001717
            Z: 1.29081905
          }
        }
        ParentId: 152541783085373170
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
            Id: 3682206342183528038
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          InteractWithTriggers: true
          StaticMesh {
            Physics {
            }
            BoundsScale: 1
          }
        }
        Relevance {
          Value: "mc:eproxyrelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 14498603777644356320
        Name: "Cube"
        Transform {
          Location {
            X: 0.863494158
            Y: -0.186135292
            Z: 79.9740448
          }
          Rotation {
            Pitch: -0.000122070312
            Yaw: 8.20109199e-05
            Roll: 172.30574
          }
          Scale {
            X: 0.00699776877
            Y: 0.0604087226
            Z: 0.0937473625
          }
        }
        ParentId: 152541783085373170
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 2819717477027926411
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
          Value: "mc:ecollisionsetting:forceoff"
        }
        CoreMesh {
          MeshAsset {
            Id: 12590738789068217283
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          InteractWithTriggers: true
          StaticMesh {
            Physics {
            }
            BoundsScale: 1
          }
        }
        Relevance {
          Value: "mc:eproxyrelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 5017995142147873166
        Name: "Cube"
        Transform {
          Location {
            X: 0.863647461
            Y: -0.935177803
            Z: 71.9000473
          }
          Rotation {
            Pitch: -0.000122070312
            Yaw: 8.20109199e-05
            Roll: 172.30574
          }
          Scale {
            X: 0.00699776877
            Y: 0.0604087226
            Z: 0.0937473625
          }
        }
        ParentId: 152541783085373170
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 2819717477027926411
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
          Value: "mc:ecollisionsetting:forceoff"
        }
        CoreMesh {
          MeshAsset {
            Id: 12590738789068217283
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          InteractWithTriggers: true
          StaticMesh {
            Physics {
            }
            BoundsScale: 1
          }
        }
        Relevance {
          Value: "mc:eproxyrelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 13767498816073490528
        Name: "Fantasy Pommel 02"
        Transform {
          Location {
            X: -0.103251457
            Y: 4.54727
            Z: 2.11158776
          }
          Rotation {
            Pitch: 2.48706985
            Yaw: -0.589996338
            Roll: -8.52319336
          }
          Scale {
            X: 1.70459151
            Y: 1.70459151
            Z: 1.70459151
          }
        }
        ParentId: 152541783085373170
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
            Id: 17616555706524180168
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          InteractWithTriggers: true
          StaticMesh {
            Physics {
            }
            BoundsScale: 1
          }
        }
        Relevance {
          Value: "mc:eproxyrelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 11879260206484824086
        Name: "Fantasy Pommel 01"
        Transform {
          Location {
            X: 1.04901314
            Y: 6.60579062
            Z: 37.0818405
          }
          Rotation {
            Pitch: 83.1192245
            Yaw: -114.380463
            Roll: 137.960556
          }
          Scale {
            X: 1
            Y: 0.698300779
            Z: 1
          }
        }
        ParentId: 152541783085373170
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
            Id: 1383772742094820961
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          InteractWithTriggers: true
          StaticMesh {
            Physics {
            }
            BoundsScale: 1
          }
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
      Id: 2871034599884289787
      Name: "Fantasy Sword 015"
      PlatformAssetType: 9
      PrimaryAsset {
        AssetType: "PlatformBrushAssetRef"
        AssetId: "UI_Fantasy_Weapon_Sword_015"
      }
    }
    Assets {
      Id: 12590738789068217283
      Name: "Wedge"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_wedge_001"
      }
    }
    Assets {
      Id: 2819717477027926411
      Name: "Metal Basic Steel"
      PlatformAssetType: 2
      PrimaryAsset {
        AssetType: "MaterialAssetRef"
        AssetId: "steel_001"
      }
    }
    Assets {
      Id: 12095835209017042614
      Name: "Cube"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_cube_002"
      }
    }
    Assets {
      Id: 17899653877163012473
      Name: "Text 05: )"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "F6_Text_046"
      }
    }
    Assets {
      Id: 11337413471323694429
      Name: "Metal Gold 01"
      PlatformAssetType: 2
      PrimaryAsset {
        AssetType: "MaterialAssetRef"
        AssetId: "mi_metal_gold_001"
      }
    }
    Assets {
      Id: 15484605620023334162
      Name: "Wedge - Corner Complex"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_corelogo_shape_001"
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
      Id: 17616555706524180168
      Name: "Fantasy Pommel 02"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_weap_fan_pommel_002"
      }
    }
    Assets {
      Id: 1383772742094820961
      Name: "Fantasy Pommel 01"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_weap_fan_pommel_001"
      }
    }
    PrimaryAssetId {
      AssetType: "None"
      AssetId: "None"
    }
  }
  SerializationVersion: 118
}
