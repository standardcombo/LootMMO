Assets {
  Id: 1187993825745345522
  Name: "ITEM_Mace_TheFurnace"
  PlatformAssetType: 5
  TemplateAsset {
    ObjectBlock {
      RootId: 4648602075031111400
      Objects {
        Id: 4648602075031111400
        Name: "ITEM_Mace_TheFurnace"
        Transform {
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 4781671109827199097
        ChildIds: 7715279023276895500
        UnregisteredParameters {
          Overrides {
            Name: "cs:Icon"
            AssetReference {
              Id: 17750052997554874061
            }
          }
          Overrides {
            Name: "cs:AnimationStance"
            String: "1hand_melee_stance"
          }
          Overrides {
            Name: "cs:SOCKET_right_prop"
            ObjectReference {
              SubObjectId: 7715279023276895500
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
        Id: 7715279023276895500
        Name: "Mace"
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
        ParentId: 4648602075031111400
        ChildIds: 11398329347117345647
        ChildIds: 9972126805271970847
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
        Id: 11398329347117345647
        Name: "BAN HAMMER"
        Transform {
          Location {
            X: 1.64160156
            Y: 1.53613281
            Z: -18.0984497
          }
          Rotation {
            Pitch: -90
            Roll: -10.2690372
          }
          Scale {
            X: 1.45919752
            Y: 1.45919752
            Z: 1.45919752
          }
        }
        ParentId: 7715279023276895500
        ChildIds: 8525234242789555014
        ChildIds: 9018748381652154103
        ChildIds: 13507188235833399440
        ChildIds: 10594699614613097647
        ChildIds: 8074186463556459185
        ChildIds: 7943457197154904347
        ChildIds: 16864944017311155316
        ChildIds: 1175995939743548989
        ChildIds: 16843627330386738848
        ChildIds: 320815848840448840
        ChildIds: 17867036242447973947
        ChildIds: 18317106218252896854
        ChildIds: 481917813745450921
        ChildIds: 10447341916351690083
        ChildIds: 16308735933851657748
        ChildIds: 2572779158055275787
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
        Id: 8525234242789555014
        Name: "Hammer Head"
        Transform {
          Location {
            X: -52.1126556
            Y: -0.740855634
            Z: -14.6799154
          }
          Rotation {
            Yaw: 4.85314976e-20
          }
          Scale {
            X: 1.21953642
            Y: 1.21953642
            Z: 1.21953642
          }
        }
        ParentId: 11398329347117345647
        ChildIds: 8998828492085907746
        ChildIds: 12619114394030802266
        ChildIds: 10703511858950860018
        ChildIds: 4407276988016523907
        ChildIds: 523199135215787988
        ChildIds: 5755750235773826923
        ChildIds: 5863486755356319473
        ChildIds: 16627091713990498596
        ChildIds: 7541589456176644084
        ChildIds: 11290320368233098788
        ChildIds: 13741332474670335804
        ChildIds: 15399960446059989737
        ChildIds: 13661967877117384805
        ChildIds: 5831330645634998637
        ChildIds: 2918208053190507979
        ChildIds: 14501705646406295505
        ChildIds: 1815984798632788721
        ChildIds: 14848518726571038047
        ChildIds: 4903541231308526675
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
        Id: 8998828492085907746
        Name: "Chamfered Cube"
        Transform {
          Location {
            X: 0.0729566813
            Y: 0.0935025141
            Z: 10.6062231
          }
          Rotation {
          }
          Scale {
            X: 0.160574198
            Y: 0.116104104
            Z: 0.188086122
          }
        }
        ParentId: 8525234242789555014
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 111007366262184032
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
              G: 1
              B: 1
              A: 1
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.229154542
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.310218
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
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
        Id: 12619114394030802266
        Name: "Group"
        Transform {
          Location {
            X: -1.35098743
            Y: 0.0975391343
            Z: 0.612632811
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 8525234242789555014
        ChildIds: 6016906925398899379
        ChildIds: 16726459743811073040
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
        Id: 6016906925398899379
        Name: "Pyramid - 4-Sided Truncated"
        Transform {
          Location {
            X: 1.08331275
            Y: -0.0162079055
            Z: 0.835997939
          }
          Rotation {
            Roll: 0.999999642
          }
          Scale {
            X: 0.200739101
            Y: 0.150636524
            Z: 0.140057802
          }
        }
        ParentId: 12619114394030802266
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 111007366262184032
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
              G: 1
              B: 1
              A: 1
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 1.41045749
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 1.10695267
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:forceoff"
        }
        CoreMesh {
          MeshAsset {
            Id: 2292708994184880609
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          InteractWithTriggers: true
          StaticMesh {
            Physics {
            }
            BoundsScale: 1
          }
        }
        Relevance {
          Value: "mc:eproxyrelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 16726459743811073040
        Name: "Chamfered Cube"
        Transform {
          Location {
            X: 1.21876383
            Y: 0.0500389822
            Z: -0.0384012759
          }
          Rotation {
          }
          Scale {
            X: 0.201512516
            Y: 0.152827084
            Z: 0.019892592
          }
        }
        ParentId: 12619114394030802266
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 10291375382347379579
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
              G: 1
              B: 1
              A: 1
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 3.49925542
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.329590559
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
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
        Id: 10703511858950860018
        Name: "Grills"
        Transform {
          Location {
            X: 5.10327482
            Y: -2.48878646
            Z: 4.9789319
          }
          Rotation {
          }
          Scale {
            X: 1.0486697
            Y: 1.0486697
            Z: 1.0486697
          }
        }
        ParentId: 8525234242789555014
        ChildIds: 5423647225685455195
        ChildIds: 12257247851359359670
        ChildIds: 10507402390486964102
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
        Id: 5423647225685455195
        Name: "Text 01: U"
        Transform {
          Location {
            X: 3.03851509
            Y: -5.25829458
            Z: 13.1252232
          }
          Rotation {
            Pitch: 6.83018879e-06
            Yaw: 89.9999313
            Roll: 89.9999313
          }
          Scale {
            X: 0.25
            Y: 1.17152643
            Z: 0.0515932813
          }
        }
        ParentId: 10703511858950860018
        UnregisteredParameters {
          Overrides {
            Name: "ma:Font.Bevel:id"
            AssetReference {
              Id: 10291375382347379579
            }
          }
          Overrides {
            Name: "ma:Font.Faces:id"
            AssetReference {
              Id: 10291375382347379579
            }
          }
          Overrides {
            Name: "ma:Font.Sides:id"
            AssetReference {
              Id: 10291375382347379579
            }
          }
          Overrides {
            Name: "ma:Font.Bevel:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Font.Bevel:utile"
            Float: 13.2661657
          }
          Overrides {
            Name: "ma:Font.Bevel:vtile"
            Float: 0.568518
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:forceoff"
        }
        CoreMesh {
          MeshAsset {
            Id: 15113224168533323083
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          InteractWithTriggers: true
          StaticMesh {
            Physics {
            }
            BoundsScale: 1
          }
        }
        Relevance {
          Value: "mc:eproxyrelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 12257247851359359670
        Name: "gRILL"
        Transform {
          Location {
            X: -1.47929108
            Y: 7.43037653
            Z: 5.09651181e-06
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 10703511858950860018
        ChildIds: 13858624370052895769
        ChildIds: 201820182433725870
        ChildIds: 9051982401926636372
        ChildIds: 14986347810824974967
        ChildIds: 13882103719874890685
        ChildIds: 10479122846297873049
        ChildIds: 14754558045662151913
        ChildIds: 2803877736727711389
        ChildIds: 17114090281676612722
        ChildIds: 10787738273965887908
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
        Id: 13858624370052895769
        Name: "Text 01: T"
        Transform {
          Location {
            X: 3.00585866
            Y: 0.217753962
            Z: 6.55266047
          }
          Rotation {
            Pitch: 90
            Yaw: -1.68759155
            Roll: -1.68759155
          }
          Scale {
            X: 0.106856383
            Y: 0.147902027
            Z: 0.184313059
          }
        }
        ParentId: 12257247851359359670
        UnregisteredParameters {
          Overrides {
            Name: "ma:Font.Bevel:id"
            AssetReference {
              Id: 10291375382347379579
            }
          }
          Overrides {
            Name: "ma:Font.Faces:id"
            AssetReference {
              Id: 10291375382347379579
            }
          }
          Overrides {
            Name: "ma:Font.Sides:id"
            AssetReference {
              Id: 10291375382347379579
            }
          }
          Overrides {
            Name: "ma:Font.Bevel:smart"
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
            Id: 14657405227848467630
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          InteractWithTriggers: true
          StaticMesh {
            Physics {
            }
            BoundsScale: 1
          }
        }
        Relevance {
          Value: "mc:eproxyrelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 201820182433725870
        Name: "Text 01: T"
        Transform {
          Location {
            X: 3.52655029
            Y: 0.116092682
          }
          Rotation {
            Pitch: 90
          }
          Scale {
            X: 0.123085015
            Y: 0.147902012
            Z: 0.196708083
          }
        }
        ParentId: 12257247851359359670
        UnregisteredParameters {
          Overrides {
            Name: "ma:Font.Bevel:id"
            AssetReference {
              Id: 10291375382347379579
            }
          }
          Overrides {
            Name: "ma:Font.Faces:id"
            AssetReference {
              Id: 10291375382347379579
            }
          }
          Overrides {
            Name: "ma:Font.Sides:id"
            AssetReference {
              Id: 10291375382347379579
            }
          }
          Overrides {
            Name: "ma:Font.Bevel:smart"
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
            Id: 14657405227848467630
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          InteractWithTriggers: true
          StaticMesh {
            Physics {
            }
            BoundsScale: 1
          }
        }
        Relevance {
          Value: "mc:eproxyrelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 9051982401926636372
        Name: "Text 01: T"
        Transform {
          Location {
            X: 3.25048828
            Y: 1.97895432
            Z: 11.4726181
          }
          Rotation {
            Pitch: -90
            Yaw: -9.1069187e-06
            Roll: -179.999954
          }
          Scale {
            X: 0.123085015
            Y: 0.147902012
            Z: 0.188299879
          }
        }
        ParentId: 12257247851359359670
        UnregisteredParameters {
          Overrides {
            Name: "ma:Font.Bevel:id"
            AssetReference {
              Id: 10291375382347379579
            }
          }
          Overrides {
            Name: "ma:Font.Faces:id"
            AssetReference {
              Id: 10291375382347379579
            }
          }
          Overrides {
            Name: "ma:Font.Sides:id"
            AssetReference {
              Id: 10291375382347379579
            }
          }
          Overrides {
            Name: "ma:Font.Bevel:smart"
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
            Id: 14657405227848467630
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          InteractWithTriggers: true
          StaticMesh {
            Physics {
            }
            BoundsScale: 1
          }
        }
        Relevance {
          Value: "mc:eproxyrelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 14986347810824974967
        Name: "Text 01: T"
        Transform {
          Location {
            X: 3.00585771
            Y: 0.23266995
            Z: 2.96678853
          }
          Rotation {
            Pitch: 90
            Yaw: -1.68759155
            Roll: -1.68759155
          }
          Scale {
            X: 0.106856383
            Y: 0.147902027
            Z: 0.184313059
          }
        }
        ParentId: 12257247851359359670
        UnregisteredParameters {
          Overrides {
            Name: "ma:Font.Bevel:id"
            AssetReference {
              Id: 10291375382347379579
            }
          }
          Overrides {
            Name: "ma:Font.Faces:id"
            AssetReference {
              Id: 10291375382347379579
            }
          }
          Overrides {
            Name: "ma:Font.Sides:id"
            AssetReference {
              Id: 10291375382347379579
            }
          }
          Overrides {
            Name: "ma:Font.Bevel:smart"
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
            Id: 14657405227848467630
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          InteractWithTriggers: true
          StaticMesh {
            Physics {
            }
            BoundsScale: 1
          }
        }
        Relevance {
          Value: "mc:eproxyrelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 13882103719874890685
        Name: "Text 01: T"
        Transform {
          Location {
            X: -9.57281494
            Y: 0.123146057
          }
          Rotation {
            Pitch: 6.83018879e-06
            Yaw: 3.20353938e-05
          }
          Scale {
            X: 0.104870267
            Y: 0.147902
            Z: 0.172636256
          }
        }
        ParentId: 12257247851359359670
        UnregisteredParameters {
          Overrides {
            Name: "ma:Font.Bevel:id"
            AssetReference {
              Id: 10291375382347379579
            }
          }
          Overrides {
            Name: "ma:Font.Faces:id"
            AssetReference {
              Id: 10291375382347379579
            }
          }
          Overrides {
            Name: "ma:Font.Sides:id"
            AssetReference {
              Id: 10291375382347379579
            }
          }
          Overrides {
            Name: "ma:Font.Bevel:smart"
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
            Id: 14657405227848467630
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          InteractWithTriggers: true
          StaticMesh {
            Physics {
            }
            BoundsScale: 1
          }
        }
        Relevance {
          Value: "mc:eproxyrelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 10479122846297873049
        Name: "Chamfered Cube"
        Transform {
          Location {
            X: -3.21521
            Y: -2.27055359
            Z: 5.77037811
          }
          Rotation {
          }
          Scale {
            X: 0.128724873
            Y: 0.0769973546
            Z: 0.103332259
          }
        }
        ParentId: 12257247851359359670
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 8125365358772089372
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
            Id: 666374143927038811
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          InteractWithTriggers: true
          StaticMesh {
            Physics {
            }
            BoundsScale: 1
          }
        }
        Relevance {
          Value: "mc:eproxyrelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 14754558045662151913
        Name: "Text 01: T"
        Transform {
          Location {
            X: -8.9777832
            Y: 0.123146057
            Z: 1.14852905
          }
          Rotation {
            Pitch: 6.83018879e-06
            Yaw: 3.20353938e-05
          }
          Scale {
            X: 0.10487026
            Y: 0.147902
            Z: 0.0329330415
          }
        }
        ParentId: 12257247851359359670
        UnregisteredParameters {
          Overrides {
            Name: "ma:Font.Bevel:id"
            AssetReference {
              Id: 10291375382347379579
            }
          }
          Overrides {
            Name: "ma:Font.Faces:id"
            AssetReference {
              Id: 10291375382347379579
            }
          }
          Overrides {
            Name: "ma:Font.Sides:id"
            AssetReference {
              Id: 10291375382347379579
            }
          }
          Overrides {
            Name: "ma:Font.Bevel:smart"
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
            Id: 14657405227848467630
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          InteractWithTriggers: true
          StaticMesh {
            Physics {
            }
            BoundsScale: 1
          }
        }
        Relevance {
          Value: "mc:eproxyrelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 2803877736727711389
        Name: "Text 01: T"
        Transform {
          Location {
            X: 0.459533691
            Y: 0.123146057
            Z: 1.36868286
          }
          Rotation {
            Pitch: 6.83018879e-06
            Yaw: 3.20353938e-05
          }
          Scale {
            X: 0.10487026
            Y: 0.147902
            Z: 0.0329330415
          }
        }
        ParentId: 12257247851359359670
        UnregisteredParameters {
          Overrides {
            Name: "ma:Font.Bevel:id"
            AssetReference {
              Id: 10291375382347379579
            }
          }
          Overrides {
            Name: "ma:Font.Faces:id"
            AssetReference {
              Id: 10291375382347379579
            }
          }
          Overrides {
            Name: "ma:Font.Sides:id"
            AssetReference {
              Id: 10291375382347379579
            }
          }
          Overrides {
            Name: "ma:Font.Bevel:smart"
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
            Id: 14657405227848467630
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          InteractWithTriggers: true
          StaticMesh {
            Physics {
            }
            BoundsScale: 1
          }
        }
        Relevance {
          Value: "mc:eproxyrelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 17114090281676612722
        Name: "Text 01: T"
        Transform {
          Location {
            X: -8.9777832
            Y: 0.123146057
            Z: 7.42498779
          }
          Rotation {
            Pitch: 6.83018879e-06
            Yaw: 3.20353938e-05
          }
          Scale {
            X: 0.10487026
            Y: 0.147902
            Z: 0.0329330415
          }
        }
        ParentId: 12257247851359359670
        UnregisteredParameters {
          Overrides {
            Name: "ma:Font.Bevel:id"
            AssetReference {
              Id: 10291375382347379579
            }
          }
          Overrides {
            Name: "ma:Font.Faces:id"
            AssetReference {
              Id: 10291375382347379579
            }
          }
          Overrides {
            Name: "ma:Font.Sides:id"
            AssetReference {
              Id: 10291375382347379579
            }
          }
          Overrides {
            Name: "ma:Font.Bevel:smart"
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
            Id: 14657405227848467630
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          InteractWithTriggers: true
          StaticMesh {
            Physics {
            }
            BoundsScale: 1
          }
        }
        Relevance {
          Value: "mc:eproxyrelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 10787738273965887908
        Name: "Text 01: T"
        Transform {
          Location {
            X: 0.459533691
            Y: 0.123146057
            Z: 7.6451416
          }
          Rotation {
            Pitch: 6.83018879e-06
            Yaw: 3.20353938e-05
          }
          Scale {
            X: 0.10487026
            Y: 0.147902
            Z: 0.0329330415
          }
        }
        ParentId: 12257247851359359670
        UnregisteredParameters {
          Overrides {
            Name: "ma:Font.Bevel:id"
            AssetReference {
              Id: 10291375382347379579
            }
          }
          Overrides {
            Name: "ma:Font.Faces:id"
            AssetReference {
              Id: 10291375382347379579
            }
          }
          Overrides {
            Name: "ma:Font.Sides:id"
            AssetReference {
              Id: 10291375382347379579
            }
          }
          Overrides {
            Name: "ma:Font.Bevel:smart"
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
            Id: 14657405227848467630
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          InteractWithTriggers: true
          StaticMesh {
            Physics {
            }
            BoundsScale: 1
          }
        }
        Relevance {
          Value: "mc:eproxyrelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 10507402390486964102
        Name: "gRILL"
        Transform {
          Location {
            X: -1.55924451
            Y: -2.1720674
            Z: 11.5732412
          }
          Rotation {
            Yaw: -2.07414505e-19
            Roll: 179.999954
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 10703511858950860018
        ChildIds: 1668539800400960684
        ChildIds: 3809568774197474
        ChildIds: 15215313777794935857
        ChildIds: 10370769801670045903
        ChildIds: 10532589062653556786
        ChildIds: 4703323202730241826
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
        Id: 1668539800400960684
        Name: "Text 01: T"
        Transform {
          Location {
            X: 3.00574636
            Y: 0.224442974
            Z: 6.55266905
          }
          Rotation {
            Pitch: 89.7593307
            Yaw: 0.119962037
            Roll: 0.119962662
          }
          Scale {
            X: 0.106856383
            Y: 0.147902027
            Z: 0.184313059
          }
        }
        ParentId: 10507402390486964102
        UnregisteredParameters {
          Overrides {
            Name: "ma:Font.Bevel:id"
            AssetReference {
              Id: 10291375382347379579
            }
          }
          Overrides {
            Name: "ma:Font.Faces:id"
            AssetReference {
              Id: 10291375382347379579
            }
          }
          Overrides {
            Name: "ma:Font.Sides:id"
            AssetReference {
              Id: 10291375382347379579
            }
          }
          Overrides {
            Name: "ma:Font.Bevel:smart"
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
            Id: 14657405227848467630
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          InteractWithTriggers: true
          StaticMesh {
            Physics {
            }
            BoundsScale: 1
          }
        }
        Relevance {
          Value: "mc:eproxyrelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 3809568774197474
        Name: "Text 01: T"
        Transform {
          Location {
            X: 3.52655029
            Y: 0.116092682
          }
          Rotation {
            Pitch: 90
          }
          Scale {
            X: 0.123085015
            Y: 0.147902012
            Z: 0.196708083
          }
        }
        ParentId: 10507402390486964102
        UnregisteredParameters {
          Overrides {
            Name: "ma:Font.Bevel:id"
            AssetReference {
              Id: 10291375382347379579
            }
          }
          Overrides {
            Name: "ma:Font.Faces:id"
            AssetReference {
              Id: 10291375382347379579
            }
          }
          Overrides {
            Name: "ma:Font.Sides:id"
            AssetReference {
              Id: 10291375382347379579
            }
          }
          Overrides {
            Name: "ma:Font.Bevel:smart"
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
            Id: 14657405227848467630
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          InteractWithTriggers: true
          StaticMesh {
            Physics {
            }
            BoundsScale: 1
          }
        }
        Relevance {
          Value: "mc:eproxyrelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 15215313777794935857
        Name: "Text 01: T"
        Transform {
          Location {
            X: 3.25048828
            Y: 1.97895432
            Z: 11.4726181
          }
          Rotation {
            Pitch: -90
            Roll: -179.999954
          }
          Scale {
            X: 0.123085015
            Y: 0.147902012
            Z: 0.188299879
          }
        }
        ParentId: 10507402390486964102
        UnregisteredParameters {
          Overrides {
            Name: "ma:Font.Bevel:id"
            AssetReference {
              Id: 10291375382347379579
            }
          }
          Overrides {
            Name: "ma:Font.Faces:id"
            AssetReference {
              Id: 10291375382347379579
            }
          }
          Overrides {
            Name: "ma:Font.Sides:id"
            AssetReference {
              Id: 10291375382347379579
            }
          }
          Overrides {
            Name: "ma:Font.Bevel:smart"
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
            Id: 14657405227848467630
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          InteractWithTriggers: true
          StaticMesh {
            Physics {
            }
            BoundsScale: 1
          }
        }
        Relevance {
          Value: "mc:eproxyrelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 10370769801670045903
        Name: "Text 01: T"
        Transform {
          Location {
            X: 3.00574756
            Y: 0.224453211
            Z: 2.96679068
          }
          Rotation {
            Pitch: 89.7593307
            Yaw: 0.119962037
            Roll: 0.119962662
          }
          Scale {
            X: 0.106856383
            Y: 0.147902027
            Z: 0.184313059
          }
        }
        ParentId: 10507402390486964102
        UnregisteredParameters {
          Overrides {
            Name: "ma:Font.Bevel:id"
            AssetReference {
              Id: 10291375382347379579
            }
          }
          Overrides {
            Name: "ma:Font.Faces:id"
            AssetReference {
              Id: 10291375382347379579
            }
          }
          Overrides {
            Name: "ma:Font.Sides:id"
            AssetReference {
              Id: 10291375382347379579
            }
          }
          Overrides {
            Name: "ma:Font.Bevel:smart"
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
            Id: 14657405227848467630
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          InteractWithTriggers: true
          StaticMesh {
            Physics {
            }
            BoundsScale: 1
          }
        }
        Relevance {
          Value: "mc:eproxyrelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 10532589062653556786
        Name: "Text 01: T"
        Transform {
          Location {
            X: -9.57281494
            Y: 0.123146057
          }
          Rotation {
            Pitch: 6.83018879e-06
            Yaw: 3.20353938e-05
          }
          Scale {
            X: 0.104870267
            Y: 0.147902
            Z: 0.172636256
          }
        }
        ParentId: 10507402390486964102
        UnregisteredParameters {
          Overrides {
            Name: "ma:Font.Bevel:id"
            AssetReference {
              Id: 10291375382347379579
            }
          }
          Overrides {
            Name: "ma:Font.Faces:id"
            AssetReference {
              Id: 10291375382347379579
            }
          }
          Overrides {
            Name: "ma:Font.Sides:id"
            AssetReference {
              Id: 10291375382347379579
            }
          }
          Overrides {
            Name: "ma:Font.Bevel:smart"
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
            Id: 14657405227848467630
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          InteractWithTriggers: true
          StaticMesh {
            Physics {
            }
            BoundsScale: 1
          }
        }
        Relevance {
          Value: "mc:eproxyrelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 4703323202730241826
        Name: "Chamfered Cube"
        Transform {
          Location {
            X: -3.21521
            Y: -2.27055359
            Z: 5.77037811
          }
          Rotation {
          }
          Scale {
            X: 0.128724873
            Y: 0.0769973546
            Z: 0.103332259
          }
        }
        ParentId: 10507402390486964102
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 8125365358772089372
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
            Id: 666374143927038811
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          InteractWithTriggers: true
          StaticMesh {
            Physics {
            }
            BoundsScale: 1
          }
        }
        Relevance {
          Value: "mc:eproxyrelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 4407276988016523907
        Name: "Group"
        Transform {
          Location {
            X: -1.3509897
            Y: 0.0975382
            Z: 21.4703121
          }
          Rotation {
            Yaw: -1.62844803e-12
            Roll: -179.999954
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 8525234242789555014
        ChildIds: 3918963286321484546
        ChildIds: 13959701912206992779
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
        Id: 3918963286321484546
        Name: "Pyramid - 4-Sided Truncated"
        Transform {
          Location {
            X: 1.08331215
            Y: -0.0162084941
            Z: 0.835997641
          }
          Rotation {
            Roll: 0.999999642
          }
          Scale {
            X: 0.200739101
            Y: 0.150636524
            Z: 0.140057802
          }
        }
        ParentId: 4407276988016523907
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 111007366262184032
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
              G: 1
              B: 1
              A: 1
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 1.24952376
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.868756771
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:forceoff"
        }
        CoreMesh {
          MeshAsset {
            Id: 2292708994184880609
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          InteractWithTriggers: true
          StaticMesh {
            Physics {
            }
            BoundsScale: 1
          }
        }
        Relevance {
          Value: "mc:eproxyrelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 13959701912206992779
        Name: "Chamfered Cube"
        Transform {
          Location {
            X: 1.03295803
            Y: 0.0162091609
            Z: -3.39767467e-07
          }
          Rotation {
          }
          Scale {
            X: 0.201512516
            Y: 0.152827084
            Z: 0.019892592
          }
        }
        ParentId: 4407276988016523907
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 10291375382347379579
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
              G: 1
              B: 1
              A: 1
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 3.49925542
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.395273685
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
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
        Id: 523199135215787988
        Name: "Sphere"
        Transform {
          Location {
            X: -6.07767153
            Y: 6.44093704
            Z: 3.10109067
          }
          Rotation {
          }
          Scale {
            X: 0.0139622642
            Y: 0.0139665473
            Z: 0.0139622642
          }
        }
        ParentId: 8525234242789555014
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 111007366262184032
            }
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:forceoff"
        }
        CoreMesh {
          MeshAsset {
            Id: 15614259856505195515
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          InteractWithTriggers: true
          StaticMesh {
            Physics {
            }
            BoundsScale: 1
          }
        }
        Relevance {
          Value: "mc:eproxyrelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 5755750235773826923
        Name: "Sphere"
        Transform {
          Location {
            X: -0.31864503
            Y: 6.44093752
            Z: 3.10108972
          }
          Rotation {
          }
          Scale {
            X: 0.0139622642
            Y: 0.0139665473
            Z: 0.0139622642
          }
        }
        ParentId: 8525234242789555014
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 111007366262184032
            }
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:forceoff"
        }
        CoreMesh {
          MeshAsset {
            Id: 15614259856505195515
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          InteractWithTriggers: true
          StaticMesh {
            Physics {
            }
            BoundsScale: 1
          }
        }
        Relevance {
          Value: "mc:eproxyrelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 5863486755356319473
        Name: "Sphere"
        Transform {
          Location {
            X: 6.00171709
            Y: 6.44093704
            Z: 3.10111737
          }
          Rotation {
          }
          Scale {
            X: 0.0139622642
            Y: 0.0139665473
            Z: 0.0139622642
          }
        }
        ParentId: 8525234242789555014
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 111007366262184032
            }
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:forceoff"
        }
        CoreMesh {
          MeshAsset {
            Id: 15614259856505195515
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          InteractWithTriggers: true
          StaticMesh {
            Physics {
            }
            BoundsScale: 1
          }
        }
        Relevance {
          Value: "mc:eproxyrelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 16627091713990498596
        Name: "Sphere"
        Transform {
          Location {
            X: -6.07767725
            Y: 6.80488682
            Z: 18.9968872
          }
          Rotation {
          }
          Scale {
            X: 0.0139622642
            Y: 0.0139665473
            Z: 0.0139622642
          }
        }
        ParentId: 8525234242789555014
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 111007366262184032
            }
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:forceoff"
        }
        CoreMesh {
          MeshAsset {
            Id: 15614259856505195515
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          InteractWithTriggers: true
          StaticMesh {
            Physics {
            }
            BoundsScale: 1
          }
        }
        Relevance {
          Value: "mc:eproxyrelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 7541589456176644084
        Name: "Sphere"
        Transform {
          Location {
            X: -0.318919331
            Y: 6.80488682
            Z: 18.9968853
          }
          Rotation {
          }
          Scale {
            X: 0.0139622642
            Y: 0.0139665473
            Z: 0.0139622642
          }
        }
        ParentId: 8525234242789555014
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 111007366262184032
            }
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:forceoff"
        }
        CoreMesh {
          MeshAsset {
            Id: 15614259856505195515
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          InteractWithTriggers: true
          StaticMesh {
            Physics {
            }
            BoundsScale: 1
          }
        }
        Relevance {
          Value: "mc:eproxyrelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 11290320368233098788
        Name: "Sphere"
        Transform {
          Location {
            X: 6.00157261
            Y: 6.80488682
            Z: 18.9968834
          }
          Rotation {
          }
          Scale {
            X: 0.0139622642
            Y: 0.0139665473
            Z: 0.0139622642
          }
        }
        ParentId: 8525234242789555014
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 111007366262184032
            }
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:forceoff"
        }
        CoreMesh {
          MeshAsset {
            Id: 15614259856505195515
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          InteractWithTriggers: true
          StaticMesh {
            Physics {
            }
            BoundsScale: 1
          }
        }
        Relevance {
          Value: "mc:eproxyrelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 13741332474670335804
        Name: "Sphere"
        Transform {
          Location {
            X: -6.07766438
            Y: -6.36883926
            Z: 3.10111117
          }
          Rotation {
          }
          Scale {
            X: 0.0139622642
            Y: 0.0139665473
            Z: 0.0139622642
          }
        }
        ParentId: 8525234242789555014
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 111007366262184032
            }
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:forceoff"
        }
        CoreMesh {
          MeshAsset {
            Id: 15614259856505195515
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          InteractWithTriggers: true
          StaticMesh {
            Physics {
            }
            BoundsScale: 1
          }
        }
        Relevance {
          Value: "mc:eproxyrelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 15399960446059989737
        Name: "Sphere"
        Transform {
          Location {
            X: -0.318645269
            Y: -6.36883879
            Z: 3.10111022
          }
          Rotation {
          }
          Scale {
            X: 0.0139622642
            Y: 0.0139665473
            Z: 0.0139622642
          }
        }
        ParentId: 8525234242789555014
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 111007366262184032
            }
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:forceoff"
        }
        CoreMesh {
          MeshAsset {
            Id: 15614259856505195515
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          InteractWithTriggers: true
          StaticMesh {
            Physics {
            }
            BoundsScale: 1
          }
        }
        Relevance {
          Value: "mc:eproxyrelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 13661967877117384805
        Name: "Sphere"
        Transform {
          Location {
            X: 6.00203562
            Y: -6.36883926
            Z: 3.10110903
          }
          Rotation {
          }
          Scale {
            X: 0.0139622642
            Y: 0.0139665473
            Z: 0.0139622642
          }
        }
        ParentId: 8525234242789555014
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 111007366262184032
            }
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:forceoff"
        }
        CoreMesh {
          MeshAsset {
            Id: 15614259856505195515
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          InteractWithTriggers: true
          StaticMesh {
            Physics {
            }
            BoundsScale: 1
          }
        }
        Relevance {
          Value: "mc:eproxyrelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 5831330645634998637
        Name: "Sphere"
        Transform {
          Location {
            X: -6.07713079
            Y: -6.33773375
            Z: 18.9969044
          }
          Rotation {
          }
          Scale {
            X: 0.0139622642
            Y: 0.0139665473
            Z: 0.0139622642
          }
        }
        ParentId: 8525234242789555014
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 111007366262184032
            }
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:forceoff"
        }
        CoreMesh {
          MeshAsset {
            Id: 15614259856505195515
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          InteractWithTriggers: true
          StaticMesh {
            Physics {
            }
            BoundsScale: 1
          }
        }
        Relevance {
          Value: "mc:eproxyrelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 2918208053190507979
        Name: "Sphere"
        Transform {
          Location {
            X: -0.318640262
            Y: -6.33773375
            Z: 18.9969025
          }
          Rotation {
          }
          Scale {
            X: 0.0139622642
            Y: 0.0139665473
            Z: 0.0139622642
          }
        }
        ParentId: 8525234242789555014
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 111007366262184032
            }
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:forceoff"
        }
        CoreMesh {
          MeshAsset {
            Id: 15614259856505195515
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          InteractWithTriggers: true
          StaticMesh {
            Physics {
            }
            BoundsScale: 1
          }
        }
        Relevance {
          Value: "mc:eproxyrelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 14501705646406295505
        Name: "Sphere"
        Transform {
          Location {
            X: 6.00203323
            Y: -6.33773375
            Z: 18.9969
          }
          Rotation {
          }
          Scale {
            X: 0.0139622642
            Y: 0.0139665473
            Z: 0.0139622642
          }
        }
        ParentId: 8525234242789555014
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 111007366262184032
            }
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:forceoff"
        }
        CoreMesh {
          MeshAsset {
            Id: 15614259856505195515
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          InteractWithTriggers: true
          StaticMesh {
            Physics {
            }
            BoundsScale: 1
          }
        }
        Relevance {
          Value: "mc:eproxyrelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 1815984798632788721
        Name: "spikes"
        Transform {
          Location {
            X: -0.448344469
            Y: 0.291230381
            Z: 22.4649353
          }
          Rotation {
          }
          Scale {
            X: 0.940451
            Y: 0.940451
            Z: 0.940451
          }
        }
        ParentId: 8525234242789555014
        ChildIds: 14899051181533388167
        ChildIds: 13329197257056119071
        ChildIds: 12165394895630190768
        ChildIds: 10299161663500861474
        ChildIds: 5869620463937101070
        ChildIds: 14157678239478162354
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
        Id: 14899051181533388167
        Name: "Pyramid - 5-Sided"
        Transform {
          Location {
            X: 6.61749268
            Y: 4.04386902
          }
          Rotation {
          }
          Scale {
            X: 0.0561710931
            Y: 0.0561710931
            Z: 0.0770423412
          }
        }
        ParentId: 1815984798632788721
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 111007366262184032
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
            Id: 6334456952835549318
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          InteractWithTriggers: true
          StaticMesh {
            Physics {
            }
            BoundsScale: 1
          }
        }
        Relevance {
          Value: "mc:eproxyrelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 13329197257056119071
        Name: "Pyramid - 5-Sided"
        Transform {
          Location {
            X: -6.07922363
            Y: 4.04386902
          }
          Rotation {
          }
          Scale {
            X: 0.0561710931
            Y: 0.0561710931
            Z: 0.0770423412
          }
        }
        ParentId: 1815984798632788721
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 111007366262184032
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
            Id: 6334456952835549318
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          InteractWithTriggers: true
          StaticMesh {
            Physics {
            }
            BoundsScale: 1
          }
        }
        Relevance {
          Value: "mc:eproxyrelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 12165394895630190768
        Name: "Pyramid - 5-Sided"
        Transform {
          Location {
            X: -6.07922363
            Y: -4.04387283
          }
          Rotation {
          }
          Scale {
            X: 0.0561710931
            Y: 0.0561710931
            Z: 0.0770423412
          }
        }
        ParentId: 1815984798632788721
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 111007366262184032
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
            Id: 6334456952835549318
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          InteractWithTriggers: true
          StaticMesh {
            Physics {
            }
            BoundsScale: 1
          }
        }
        Relevance {
          Value: "mc:eproxyrelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 10299161663500861474
        Name: "Pyramid - 5-Sided"
        Transform {
          Location {
            X: -0.234022334
            Y: -4.04387331
            Z: 9.19880677e-06
          }
          Rotation {
          }
          Scale {
            X: 0.0561710931
            Y: 0.0561710931
            Z: 0.0770423412
          }
        }
        ParentId: 1815984798632788721
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 111007366262184032
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
            Id: 6334456952835549318
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          InteractWithTriggers: true
          StaticMesh {
            Physics {
            }
            BoundsScale: 1
          }
        }
        Relevance {
          Value: "mc:eproxyrelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 5869620463937101070
        Name: "Pyramid - 5-Sided"
        Transform {
          Location {
            X: 6.32000923
            Y: -4.04387283
            Z: 8.46407784e-06
          }
          Rotation {
            Yaw: 1.70754674e-06
            Roll: -3.05175781e-05
          }
          Scale {
            X: 0.0561710894
            Y: 0.0561710894
            Z: 0.0770423412
          }
        }
        ParentId: 1815984798632788721
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 111007366262184032
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
            Id: 6334456952835549318
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          InteractWithTriggers: true
          StaticMesh {
            Physics {
            }
            BoundsScale: 1
          }
        }
        Relevance {
          Value: "mc:eproxyrelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 14157678239478162354
        Name: "Pyramid - 5-Sided"
        Transform {
          Location {
            X: -0.00331021845
            Y: 4.04387331
            Z: -9.11063853e-06
          }
          Rotation {
            Yaw: 1.70754674e-06
            Roll: -3.05175781e-05
          }
          Scale {
            X: 0.0561710894
            Y: 0.0561710894
            Z: 0.0770423412
          }
        }
        ParentId: 1815984798632788721
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 111007366262184032
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
            Id: 6334456952835549318
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          InteractWithTriggers: true
          StaticMesh {
            Physics {
            }
            BoundsScale: 1
          }
        }
        Relevance {
          Value: "mc:eproxyrelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 14848518726571038047
        Name: "spikes"
        Transform {
          Location {
            X: -0.448340744
            Y: 0.291230559
            Z: 2.54825608e-07
          }
          Rotation {
            Pitch: 1.36603776e-05
            Yaw: -179.999954
            Roll: -179.999939
          }
          Scale {
            X: 0.940451
            Y: 0.940451
            Z: 0.940451
          }
        }
        ParentId: 8525234242789555014
        ChildIds: 4362471863575879940
        ChildIds: 1620251748938138485
        ChildIds: 14460777731733745135
        ChildIds: 4400609680806817495
        ChildIds: 7471196719606403236
        ChildIds: 2585198343869219995
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
        Id: 4362471863575879940
        Name: "Pyramid - 5-Sided"
        Transform {
          Location {
            X: 6.61749268
            Y: 4.04386902
          }
          Rotation {
          }
          Scale {
            X: 0.0561710931
            Y: 0.0561710931
            Z: 0.0770423412
          }
        }
        ParentId: 14848518726571038047
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 111007366262184032
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
            Id: 6334456952835549318
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          InteractWithTriggers: true
          StaticMesh {
            Physics {
            }
            BoundsScale: 1
          }
        }
        Relevance {
          Value: "mc:eproxyrelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 1620251748938138485
        Name: "Pyramid - 5-Sided"
        Transform {
          Location {
            X: -0.0630177781
            Y: 4.04387093
          }
          Rotation {
          }
          Scale {
            X: 0.0561710894
            Y: 0.0561710671
            Z: 0.0793094784
          }
        }
        ParentId: 14848518726571038047
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 111007366262184032
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
            Id: 13874513566853048774
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          InteractWithTriggers: true
          StaticMesh {
            Physics {
            }
            BoundsScale: 1
          }
        }
        Relevance {
          Value: "mc:eproxyrelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 14460777731733745135
        Name: "Pyramid - 5-Sided"
        Transform {
          Location {
            X: -6.07922363
            Y: 4.04386902
          }
          Rotation {
          }
          Scale {
            X: 0.0561710931
            Y: 0.0561710931
            Z: 0.0770423412
          }
        }
        ParentId: 14848518726571038047
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 111007366262184032
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
            Id: 6334456952835549318
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          InteractWithTriggers: true
          StaticMesh {
            Physics {
            }
            BoundsScale: 1
          }
        }
        Relevance {
          Value: "mc:eproxyrelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 4400609680806817495
        Name: "Pyramid - 5-Sided"
        Transform {
          Location {
            X: -6.07922363
            Y: -4.04387283
          }
          Rotation {
          }
          Scale {
            X: 0.0561710931
            Y: 0.0561710931
            Z: 0.0770423412
          }
        }
        ParentId: 14848518726571038047
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 111007366262184032
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
            Id: 6334456952835549318
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          InteractWithTriggers: true
          StaticMesh {
            Physics {
            }
            BoundsScale: 1
          }
        }
        Relevance {
          Value: "mc:eproxyrelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 7471196719606403236
        Name: "Pyramid - 5-Sided"
        Transform {
          Location {
            X: -0.628112793
            Y: -4.04387283
          }
          Rotation {
          }
          Scale {
            X: 0.0561710931
            Y: 0.0561710931
            Z: 0.0770423412
          }
        }
        ParentId: 14848518726571038047
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 111007366262184032
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
            Id: 6334456952835549318
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          InteractWithTriggers: true
          StaticMesh {
            Physics {
            }
            BoundsScale: 1
          }
        }
        Relevance {
          Value: "mc:eproxyrelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 2585198343869219995
        Name: "Pyramid - 5-Sided"
        Transform {
          Location {
            X: 6.23236084
            Y: -4.04387283
          }
          Rotation {
          }
          Scale {
            X: 0.0561710931
            Y: 0.0561710931
            Z: 0.0770423412
          }
        }
        ParentId: 14848518726571038047
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 111007366262184032
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
            Id: 13561541001544786316
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          InteractWithTriggers: true
          StaticMesh {
            Physics {
            }
            BoundsScale: 1
          }
        }
        Relevance {
          Value: "mc:eproxyrelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 4903541231308526675
        Name: "Plasma Ball Projectile VFX"
        Transform {
          Location {
            X: 2.14363695e-06
            Y: -0.40925473
            Z: 10.1250963
          }
          Rotation {
            Roll: 4.26886714e-07
          }
          Scale {
            X: 0.561941564
            Y: 0.561941564
            Z: 0.561941564
          }
        }
        ParentId: 8525234242789555014
        UnregisteredParameters {
          Overrides {
            Name: "bp:Enable Arc Ball"
            Bool: false
          }
          Overrides {
            Name: "bp:Enable Flare"
            Bool: false
          }
          Overrides {
            Name: "bp:Enable Arcs "
            Bool: false
          }
          Overrides {
            Name: "bp:Particle Scale Multiplier"
            Float: 0.292779475
          }
          Overrides {
            Name: "bp:color"
            Color {
              R: 0.75
              G: 0.208609253
              A: 1
            }
          }
          Overrides {
            Name: "bp:Emissive Boost"
            Float: 50
          }
        }
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
            Id: 7009243008104945347
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
        Id: 9018748381652154103
        Name: "Bone Human Ulna 01"
        Transform {
          Location {
            X: -23.2691059
            Y: -1.01725435
            Z: -1.3284539
          }
          Rotation {
            Pitch: 90
            Yaw: 5.46415104e-05
            Roll: 8.51590885e-05
          }
          Scale {
            X: 0.858320177
            Y: 0.777711749
            Z: 1.35474682
          }
        }
        ParentId: 11398329347117345647
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 111007366262184032
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.177083328
              G: 0.177083328
              B: 0.177083328
              A: 1
            }
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:forceoff"
        }
        CoreMesh {
          MeshAsset {
            Id: 10827303039521708506
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          InteractWithTriggers: true
          StaticMesh {
            Physics {
            }
            BoundsScale: 1
          }
        }
        Relevance {
          Value: "mc:eproxyrelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 13507188235833399440
        Name: "Cone - Truncated Hollow Wide Thick"
        Transform {
          Location {
            X: -45.0047607
            Y: -1.0065465
            Z: -1.38333213
          }
          Rotation {
            Pitch: -90
            Yaw: 4.55345908e-05
            Roll: -9.15527344e-05
          }
          Scale {
            X: 0.0972239077
            Y: 0.0972239077
            Z: 0.0972239077
          }
        }
        ParentId: 11398329347117345647
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 10291375382347379579
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
            Id: 588881991680217981
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          InteractWithTriggers: true
          StaticMesh {
            Physics {
            }
            BoundsScale: 1
          }
        }
        Relevance {
          Value: "mc:eproxyrelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 10594699614613097647
        Name: "Cone - Truncated Hollow Wide Thick"
        Transform {
          Location {
            X: -41.1550865
            Y: -1.0065465
            Z: -1.38332951
          }
          Rotation {
            Pitch: -90
            Yaw: 3.64276748e-05
            Roll: 7.77983078e-05
          }
          Scale {
            X: 0.0744323283
            Y: 0.0744323283
            Z: 0.0744323283
          }
        }
        ParentId: 11398329347117345647
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 10291375382347379579
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
            Id: 588881991680217981
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          InteractWithTriggers: true
          StaticMesh {
            Physics {
            }
            BoundsScale: 1
          }
        }
        Relevance {
          Value: "mc:eproxyrelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 8074186463556459185
        Name: "Group"
        Transform {
          Location {
            X: -40.539547
            Y: -0.94229877
            Z: -4.44647264
          }
          Rotation {
          }
          Scale {
            X: 1.1748842
            Y: 1.1748842
            Z: 1.1748842
          }
        }
        ParentId: 11398329347117345647
        ChildIds: 17682082510758698018
        ChildIds: 15407875892895131865
        ChildIds: 7026525922604479528
        ChildIds: 825542802560141780
        ChildIds: 15423899677185203068
        ChildIds: 5820602430918195387
        ChildIds: 3295560289682809424
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
        Id: 17682082510758698018
        Name: "Sphere"
        Transform {
          Location {
            X: -0.0655517578
            Y: -2.34209442
            Z: 4.59117126
          }
          Rotation {
          }
          Scale {
            X: 0.0149667468
            Y: 0.0149713354
            Z: 0.0149667468
          }
        }
        ParentId: 8074186463556459185
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 10291375382347379579
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
            Id: 15614259856505195515
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          InteractWithTriggers: true
          StaticMesh {
            Physics {
            }
            BoundsScale: 1
          }
        }
        Relevance {
          Value: "mc:eproxyrelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 15407875892895131865
        Name: "Sphere"
        Transform {
          Location {
            X: -0.0655517578
            Y: -0.247871399
            Z: 5.58362579
          }
          Rotation {
          }
          Scale {
            X: 0.0149667468
            Y: 0.0149713354
            Z: 0.0149667468
          }
        }
        ParentId: 8074186463556459185
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 10291375382347379579
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
            Id: 15614259856505195515
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          InteractWithTriggers: true
          StaticMesh {
            Physics {
            }
            BoundsScale: 1
          }
        }
        Relevance {
          Value: "mc:eproxyrelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 7026525922604479528
        Name: "Sphere"
        Transform {
          Location {
            X: -0.0655517578
            Y: 2.10305786
            Z: 4.563797
          }
          Rotation {
          }
          Scale {
            X: 0.0149667468
            Y: 0.0149713354
            Z: 0.0149667468
          }
        }
        ParentId: 8074186463556459185
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 10291375382347379579
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
            Id: 15614259856505195515
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          InteractWithTriggers: true
          StaticMesh {
            Physics {
            }
            BoundsScale: 1
          }
        }
        Relevance {
          Value: "mc:eproxyrelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 825542802560141780
        Name: "Sphere"
        Transform {
          Location {
            X: -0.0655517578
            Y: -2.90450287
            Z: 1.85751343
          }
          Rotation {
          }
          Scale {
            X: 0.0149667468
            Y: 0.0149713354
            Z: 0.0149667468
          }
        }
        ParentId: 8074186463556459185
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 10291375382347379579
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
            Id: 15614259856505195515
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          InteractWithTriggers: true
          StaticMesh {
            Physics {
            }
            BoundsScale: 1
          }
        }
        Relevance {
          Value: "mc:eproxyrelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 15423899677185203068
        Name: "Sphere"
        Transform {
          Location {
            X: 0.0876464844
            Y: -1.21451187
          }
          Rotation {
          }
          Scale {
            X: 0.0149667468
            Y: 0.0149713354
            Z: 0.0149667468
          }
        }
        ParentId: 8074186463556459185
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 10291375382347379579
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
            Id: 15614259856505195515
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          InteractWithTriggers: true
          StaticMesh {
            Physics {
            }
            BoundsScale: 1
          }
        }
        Relevance {
          Value: "mc:eproxyrelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 5820602430918195387
        Name: "Sphere"
        Transform {
          Location {
            X: 0.0876464844
            Y: 1.69291306
            Z: 0.318382263
          }
          Rotation {
          }
          Scale {
            X: 0.0149667468
            Y: 0.0149713354
            Z: 0.0149667468
          }
        }
        ParentId: 8074186463556459185
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 10291375382347379579
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
            Id: 15614259856505195515
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          InteractWithTriggers: true
          StaticMesh {
            Physics {
            }
            BoundsScale: 1
          }
        }
        Relevance {
          Value: "mc:eproxyrelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 3295560289682809424
        Name: "Sphere"
        Transform {
          Location {
            X: 0.0876464844
            Y: 2.91306686
            Z: 2.7665329
          }
          Rotation {
          }
          Scale {
            X: 0.0149667468
            Y: 0.0149713354
            Z: 0.0149667468
          }
        }
        ParentId: 8074186463556459185
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 10291375382347379579
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
            Id: 15614259856505195515
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          InteractWithTriggers: true
          StaticMesh {
            Physics {
            }
            BoundsScale: 1
          }
        }
        Relevance {
          Value: "mc:eproxyrelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 7943457197154904347
        Name: "Cone - Truncated Hollow Wide Thick"
        Transform {
          Location {
            X: -41.2600327
            Y: -1.0065465
            Z: -1.38332951
          }
          Rotation {
            Pitch: -90
            Yaw: 3.64276748e-05
            Roll: 8.72007076e-05
          }
          Scale {
            X: 0.0887708515
            Y: 0.0887708515
            Z: 0.0399033651
          }
        }
        ParentId: 11398329347117345647
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 10291375382347379579
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
            Id: 588881991680217981
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          InteractWithTriggers: true
          StaticMesh {
            Physics {
            }
            BoundsScale: 1
          }
        }
        Relevance {
          Value: "mc:eproxyrelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 16864944017311155316
        Name: "Ring Beveled (thick)"
        Transform {
          Location {
            X: -29.7343597
            Y: -0.841911852
            Z: -1.0948869
          }
          Rotation {
            Pitch: -90
            Yaw: 3.64276748e-05
            Roll: 7.77983078e-05
          }
          Scale {
            X: 0.0679926276
            Y: 0.0679926276
            Z: 0.0679926276
          }
        }
        ParentId: 11398329347117345647
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 10291375382347379579
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
            Id: 16372496464315477095
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          InteractWithTriggers: true
          StaticMesh {
            Physics {
            }
            BoundsScale: 1
          }
        }
        Relevance {
          Value: "mc:eproxyrelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 1175995939743548989
        Name: "Urban Pipe Coupling 05"
        Transform {
          Location {
            X: -34.1552773
            Y: -0.732155442
            Z: -1.15980387
          }
          Rotation {
            Pitch: -90
            Yaw: -6.10351562e-05
            Roll: -179.999649
          }
          Scale {
            X: 0.17913264
            Y: 0.179132551
            Z: 0.179132566
          }
        }
        ParentId: 11398329347117345647
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.0399999619
              G: 0.00794701278
              A: 1
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 3776617849256736908
            }
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:forceoff"
        }
        CoreMesh {
          MeshAsset {
            Id: 12610149741243116648
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          InteractWithTriggers: true
          StaticMesh {
            Physics {
            }
            BoundsScale: 1
          }
        }
        Relevance {
          Value: "mc:eproxyrelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 16843627330386738848
        Name: "Urban Pipe Coupling 05"
        Transform {
          Location {
            X: -30.3916855
            Y: -0.732155442
            Z: -1.15980387
          }
          Rotation {
            Pitch: -90
            Yaw: -3.05175781e-05
            Roll: -179.999725
          }
          Scale {
            X: 0.174467459
            Y: 0.1744674
            Z: 0.177234873
          }
        }
        ParentId: 11398329347117345647
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.0399999619
              G: 0.00794701278
              A: 1
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 3776617849256736908
            }
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:forceoff"
        }
        CoreMesh {
          MeshAsset {
            Id: 12610149741243116648
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          InteractWithTriggers: true
          StaticMesh {
            Physics {
            }
            BoundsScale: 1
          }
        }
        Relevance {
          Value: "mc:eproxyrelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 320815848840448840
        Name: "Urban Pipe Coupling 05"
        Transform {
          Location {
            X: -29.4986172
            Y: -0.732155442
            Z: -1.15980387
          }
          Rotation {
            Pitch: -90
            Yaw: 7.28553496e-05
            Roll: 0.000216631801
          }
          Scale {
            X: 0.174467459
            Y: 0.1744674
            Z: 0.177234873
          }
        }
        ParentId: 11398329347117345647
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.0399999619
              G: 0.00794701278
              A: 1
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 3776617849256736908
            }
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:forceoff"
        }
        CoreMesh {
          MeshAsset {
            Id: 12610149741243116648
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          InteractWithTriggers: true
          StaticMesh {
            Physics {
            }
            BoundsScale: 1
          }
        }
        Relevance {
          Value: "mc:eproxyrelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 17867036242447973947
        Name: "Urban Pipe Coupling 05"
        Transform {
          Location {
            X: -25.6184959
            Y: -0.732155442
            Z: -1.15980124
          }
          Rotation {
            Pitch: -89.4232178
            Yaw: 1.06345379
            Roll: 0.964296937
          }
          Scale {
            X: 0.155830249
            Y: 0.155830204
            Z: 0.158301935
          }
        }
        ParentId: 11398329347117345647
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.0399999619
              G: 0.00794701278
              A: 1
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 3776617849256736908
            }
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:forceoff"
        }
        CoreMesh {
          MeshAsset {
            Id: 12610149741243116648
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          InteractWithTriggers: true
          StaticMesh {
            Physics {
            }
            BoundsScale: 1
          }
        }
        Relevance {
          Value: "mc:eproxyrelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 18317106218252896854
        Name: "Urban Pipe Coupling 05"
        Transform {
          Location {
            X: -22.8299541
            Y: -0.732155442
            Z: -0.999851346
          }
          Rotation {
            Pitch: -90
            Roll: 0.000346653716
          }
          Scale {
            X: 0.153043956
            Y: 0.153044835
            Z: 0.356698692
          }
        }
        ParentId: 11398329347117345647
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.0399999619
              G: 0.00794701278
              A: 1
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 3776617849256736908
            }
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:forceoff"
        }
        CoreMesh {
          MeshAsset {
            Id: 12610149741243116648
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          InteractWithTriggers: true
          StaticMesh {
            Physics {
            }
            BoundsScale: 1
          }
        }
        Relevance {
          Value: "mc:eproxyrelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 481917813745450921
        Name: "Urban Pipe Coupling 05"
        Transform {
          Location {
            X: -15.6273165
            Y: -0.732155442
            Z: -0.935605049
          }
          Rotation {
            Pitch: -90
            Yaw: 7.28553496e-05
            Roll: 0.000216631801
          }
          Scale {
            X: 0.148043633
            Y: 0.148044601
            Z: 0.345044672
          }
        }
        ParentId: 11398329347117345647
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.0399999619
              G: 0.00794701278
              A: 1
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 3776617849256736908
            }
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:forceoff"
        }
        CoreMesh {
          MeshAsset {
            Id: 12610149741243116648
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          InteractWithTriggers: true
          StaticMesh {
            Physics {
            }
            BoundsScale: 1
          }
        }
        Relevance {
          Value: "mc:eproxyrelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 10447341916351690083
        Name: "Ember Volume VFX"
        Transform {
          Location {
            X: -62.3875542
            Y: 0.839234889
            Z: -0.897459269
          }
          Rotation {
          }
          Scale {
            X: 0.0412768871
            Y: 0.0681138
            Z: 0.0687072948
          }
        }
        ParentId: 11398329347117345647
        UnregisteredParameters {
          Overrides {
            Name: "bp:Life"
            Float: 1.44593132
          }
          Overrides {
            Name: "bp:Density"
            Float: 0.588340223
          }
          Overrides {
            Name: "bp:Particle Scale Multiplier"
            Float: 0.581174195
          }
          Overrides {
            Name: "bp:Wind Speed"
            Vector {
              X: 30
            }
          }
        }
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
            Id: 3226864937840488192
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
        Id: 16308735933851657748
        Name: "Ember Volume VFX"
        Transform {
          Location {
            X: -64.3541794
            Y: -6.14836597
            Z: -0.897459269
          }
          Rotation {
          }
          Scale {
            X: 0.052782014
            Y: 0.0681138
            Z: 0.071295023
          }
        }
        ParentId: 11398329347117345647
        UnregisteredParameters {
          Overrides {
            Name: "bp:Curl Speed"
            Vector {
              Z: -0.5
            }
          }
          Overrides {
            Name: "bp:Life"
            Float: 1.44593132
          }
          Overrides {
            Name: "bp:Density"
            Float: 0.588340223
          }
          Overrides {
            Name: "bp:Particle Scale Multiplier"
            Float: 0.581174195
          }
          Overrides {
            Name: "bp:Wind Speed"
            Vector {
              X: 30
            }
          }
        }
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
            Id: 3226864937840488192
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
        Id: 2572779158055275787
        Name: "Hilt piece"
        Transform {
          Location {
            X: 1.10375428
            Y: -0.758925319
            Z: -0.855966091
          }
          Rotation {
            Yaw: 2.41483463e-06
            Roll: 1.20741936e-06
          }
          Scale {
            X: 0.888369799
            Y: 0.888369799
            Z: 0.888369799
          }
        }
        ParentId: 11398329347117345647
        ChildIds: 15614218581781978640
        ChildIds: 4462451595244786187
        ChildIds: 4183539406744475023
        ChildIds: 1609174180216094917
        ChildIds: 8796302316061377697
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
        Id: 15614218581781978640
        Name: "Cone - Truncated Hollow Wide Thick"
        Transform {
          Location {
            X: -1.07812715
            Y: -0.0213609952
            Z: 6.74136942e-08
          }
          Rotation {
            Pitch: 90
            Yaw: -7.28553496e-05
            Roll: 9.84298313e-05
          }
          Scale {
            X: 0.0744323283
            Y: 0.0744323283
            Z: 0.0744323283
          }
        }
        ParentId: 2572779158055275787
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 10291375382347379579
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
            Id: 588881991680217981
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          InteractWithTriggers: true
          StaticMesh {
            Physics {
            }
            BoundsScale: 1
          }
        }
        Relevance {
          Value: "mc:eproxyrelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 4462451595244786187
        Name: "Cone - Truncated Hollow Wide Thick"
        Transform {
          Location {
            X: 2.77161908
            Y: -0.0213587582
            Z: -2.69654777e-07
          }
          Rotation {
            Pitch: 90
            Yaw: -3.64276748e-05
            Roll: 0.000148611784
          }
          Scale {
            X: 0.0972238854
            Y: 0.0972238854
            Z: 0.0972238854
          }
        }
        ParentId: 2572779158055275787
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 10291375382347379579
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
            Id: 588881991680217981
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          InteractWithTriggers: true
          StaticMesh {
            Physics {
            }
            BoundsScale: 1
          }
        }
        Relevance {
          Value: "mc:eproxyrelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 4183539406744475023
        Name: "Group"
        Transform {
          Location {
            X: -1.69350076
            Y: 0.0427189246
            Z: 3.06389952
          }
          Rotation {
            Yaw: 179.999939
            Roll: -179.999893
          }
          Scale {
            X: 1.17488408
            Y: 1.17488408
            Z: 1.17488408
          }
        }
        ParentId: 2572779158055275787
        ChildIds: 5306657615223031917
        ChildIds: 7591444625320973325
        ChildIds: 13326320096817294676
        ChildIds: 1071236383312025700
        ChildIds: 9442100324815129061
        ChildIds: 7725404747093887429
        ChildIds: 6966239857319770159
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
        Id: 5306657615223031917
        Name: "Sphere"
        Transform {
          Location {
            X: -0.0655517578
            Y: -2.34209442
            Z: 4.59117126
          }
          Rotation {
          }
          Scale {
            X: 0.0149667468
            Y: 0.0149713354
            Z: 0.0149667468
          }
        }
        ParentId: 4183539406744475023
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 10291375382347379579
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
            Id: 15614259856505195515
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          InteractWithTriggers: true
          StaticMesh {
            Physics {
            }
            BoundsScale: 1
          }
        }
        Relevance {
          Value: "mc:eproxyrelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 7591444625320973325
        Name: "Sphere"
        Transform {
          Location {
            X: -0.0655517578
            Y: -0.247871399
            Z: 5.58362579
          }
          Rotation {
          }
          Scale {
            X: 0.0149667468
            Y: 0.0149713354
            Z: 0.0149667468
          }
        }
        ParentId: 4183539406744475023
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 10291375382347379579
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
            Id: 15614259856505195515
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          InteractWithTriggers: true
          StaticMesh {
            Physics {
            }
            BoundsScale: 1
          }
        }
        Relevance {
          Value: "mc:eproxyrelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 13326320096817294676
        Name: "Sphere"
        Transform {
          Location {
            X: -0.0655517578
            Y: 2.10305786
            Z: 4.563797
          }
          Rotation {
          }
          Scale {
            X: 0.0149667468
            Y: 0.0149713354
            Z: 0.0149667468
          }
        }
        ParentId: 4183539406744475023
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 10291375382347379579
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
            Id: 15614259856505195515
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          InteractWithTriggers: true
          StaticMesh {
            Physics {
            }
            BoundsScale: 1
          }
        }
        Relevance {
          Value: "mc:eproxyrelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 1071236383312025700
        Name: "Sphere"
        Transform {
          Location {
            X: -0.0655517578
            Y: -2.90450287
            Z: 1.85751343
          }
          Rotation {
          }
          Scale {
            X: 0.0149667468
            Y: 0.0149713354
            Z: 0.0149667468
          }
        }
        ParentId: 4183539406744475023
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 10291375382347379579
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
            Id: 15614259856505195515
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          InteractWithTriggers: true
          StaticMesh {
            Physics {
            }
            BoundsScale: 1
          }
        }
        Relevance {
          Value: "mc:eproxyrelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 9442100324815129061
        Name: "Sphere"
        Transform {
          Location {
            X: 0.0876464844
            Y: -1.21451187
          }
          Rotation {
          }
          Scale {
            X: 0.0149667468
            Y: 0.0149713354
            Z: 0.0149667468
          }
        }
        ParentId: 4183539406744475023
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 10291375382347379579
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
            Id: 15614259856505195515
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          InteractWithTriggers: true
          StaticMesh {
            Physics {
            }
            BoundsScale: 1
          }
        }
        Relevance {
          Value: "mc:eproxyrelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 7725404747093887429
        Name: "Sphere"
        Transform {
          Location {
            X: 0.0876464844
            Y: 1.69291306
            Z: 0.318382263
          }
          Rotation {
          }
          Scale {
            X: 0.0149667468
            Y: 0.0149713354
            Z: 0.0149667468
          }
        }
        ParentId: 4183539406744475023
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 10291375382347379579
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
            Id: 15614259856505195515
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          InteractWithTriggers: true
          StaticMesh {
            Physics {
            }
            BoundsScale: 1
          }
        }
        Relevance {
          Value: "mc:eproxyrelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 6966239857319770159
        Name: "Sphere"
        Transform {
          Location {
            X: 0.0876464844
            Y: 2.91306686
            Z: 2.7665329
          }
          Rotation {
          }
          Scale {
            X: 0.0149667468
            Y: 0.0149713354
            Z: 0.0149667468
          }
        }
        ParentId: 4183539406744475023
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 10291375382347379579
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
            Id: 15614259856505195515
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          InteractWithTriggers: true
          StaticMesh {
            Physics {
            }
            BoundsScale: 1
          }
        }
        Relevance {
          Value: "mc:eproxyrelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 1609174180216094917
        Name: "Cone - Truncated Hollow Wide Thick"
        Transform {
          Location {
            X: 2.01800871
            Y: -0.0213618949
            Z: -1.51769441e-07
          }
          Rotation {
            Pitch: 90
            Roll: -179.999786
          }
          Scale {
            X: 0.052829463
            Y: 0.0528294
            Z: 0.0438722186
          }
        }
        ParentId: 2572779158055275787
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 10291375382347379579
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
            Id: 588881991680217981
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          InteractWithTriggers: true
          StaticMesh {
            Physics {
            }
            BoundsScale: 1
          }
        }
        Relevance {
          Value: "mc:eproxyrelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 8796302316061377697
        Name: "Ball spike"
        Transform {
          Location {
            X: 7.95161104
            Y: -0.064979285
            Z: 0.0545884334
          }
          Rotation {
            Pitch: 6.83018879e-05
            Yaw: -89.9999084
            Roll: -89.999939
          }
          Scale {
            X: 1.00590324
            Y: 1.00590324
            Z: 1.00590324
          }
        }
        ParentId: 2572779158055275787
        ChildIds: 504240102280552654
        ChildIds: 17530450595414890446
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
        Id: 504240102280552654
        Name: "Pyramid - 5-Sided"
        Transform {
          Location {
            X: -0.0184326172
            Z: 0.181884766
          }
          Rotation {
            Pitch: 6.83018879e-06
            Yaw: -179.999954
            Roll: -179.999939
          }
          Scale {
            X: 0.0919218361
            Y: 0.0919218436
            Z: 0.105794325
          }
        }
        ParentId: 8796302316061377697
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 111007366262184032
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
            Id: 6334456952835549318
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          InteractWithTriggers: true
          StaticMesh {
            Physics {
            }
            BoundsScale: 1
          }
        }
        Relevance {
          Value: "mc:eproxyrelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 17530450595414890446
        Name: "Pyramid - 5-Sided"
        Transform {
          Location {
            X: 0.0184936523
          }
          Rotation {
            Yaw: -36.3776169
          }
          Scale {
            X: 0.0919218361
            Y: 0.0919218436
            Z: 0.0833512396
          }
        }
        ParentId: 8796302316061377697
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 111007366262184032
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
            Id: 13874513566853048774
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          InteractWithTriggers: true
          StaticMesh {
            Physics {
            }
            BoundsScale: 1
          }
        }
        Relevance {
          Value: "mc:eproxyrelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 9972126805271970847
        Name: "Weapon Guide 1hand_melee"
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
        ParentId: 7715279023276895500
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
            Id: 3363128691342291768
          }
          TeamSettings {
          }
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
    }
    Assets {
      Id: 17750052997554874061
      Name: "Fantasy Club 011"
      PlatformAssetType: 9
      PrimaryAsset {
        AssetType: "PlatformBrushAssetRef"
        AssetId: "UI_Fantasy_Weapon_Club_011"
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
      Id: 2292708994184880609
      Name: "Pyramid - 4-Sided Truncated"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_pyramid_truncated_001"
      }
    }
    Assets {
      Id: 10291375382347379579
      Name: "Metal Iron 01"
      PlatformAssetType: 2
      PrimaryAsset {
        AssetType: "MaterialAssetRef"
        AssetId: "mi_metal_iron_001"
      }
    }
    Assets {
      Id: 15113224168533323083
      Name: "Text 01: U"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "F1_Text_020"
      }
    }
    Assets {
      Id: 14657405227848467630
      Name: "Text 01: I"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "F1_Text_008"
      }
    }
    Assets {
      Id: 666374143927038811
      Name: "Cube - Chamfered Large"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_cube_chamfer"
      }
    }
    Assets {
      Id: 15614259856505195515
      Name: "Sphere"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_sphere_002"
      }
    }
    Assets {
      Id: 6334456952835549318
      Name: "Pyramid - 5-Sided"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_pyramid_fivesided_001"
      }
    }
    Assets {
      Id: 13874513566853048774
      Name: "Pyramid - 5-Sided Truncated"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_pyramid_fivesided_truncated_001"
      }
    }
    Assets {
      Id: 13561541001544786316
      Name: "Pyramid - 6-Sided"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_pyramid_sixsided_001"
      }
    }
    Assets {
      Id: 7009243008104945347
      Name: "Plasma Ball Projectile VFX"
      PlatformAssetType: 8
      PrimaryAsset {
        AssetType: "VfxBlueprintAssetRef"
        AssetId: "fxbp_plasmaball_projectile"
      }
    }
    Assets {
      Id: 10827303039521708506
      Name: "Bone Human Ulna 01"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_bones_human_ulna_01_ref"
      }
    }
    Assets {
      Id: 588881991680217981
      Name: "Cone - Truncated Hollow Wide Thick"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_cone_truncated_hollow_005"
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
      Id: 12610149741243116648
      Name: "Urban Pipe Wrap 01"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_prop_urb_pipes_acc_coupling_005_ref"
      }
    }
    Assets {
      Id: 3226864937840488192
      Name: "Ember Volume VFX"
      PlatformAssetType: 8
      PrimaryAsset {
        AssetType: "VfxBlueprintAssetRef"
        AssetId: "fxbp_ember_volume_vfx"
      }
    }
    Assets {
      Id: 3363128691342291768
      Name: "Weapon Guide 1hand_melee"
      PlatformAssetType: 6
      PrimaryAsset {
        AssetType: "BlueprintAssetRef"
        AssetId: "weapon_guide_melee_BP_ref"
      }
    }
    PrimaryAssetId {
      AssetType: "None"
      AssetId: "None"
    }
  }
  SerializationVersion: 118
}
