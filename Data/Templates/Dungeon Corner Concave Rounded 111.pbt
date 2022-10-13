Assets {
  Id: 3910002602938311685
  Name: "Dungeon Corner Concave Rounded 111"
  PlatformAssetType: 5
  TemplateAsset {
    ObjectBlock {
      RootId: 9360622602673661000
      Objects {
        Id: 9360622602673661000
        Name: "Dungeon Corner Concave Rounded"
        Transform {
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 8062710068320767161
        ChildIds: 358280404341186617
        ChildIds: 15682913108626426207
        ChildIds: 11826606569588403018
        ChildIds: 9025341542242175011
        ChildIds: 9945456056962946743
        ChildIds: 8726351284556727430
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
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
        Id: 358280404341186617
        Name: "Corner Outside Rounded"
        Transform {
          Location {
          }
          Rotation {
            Yaw: -90
          }
          Scale {
            X: 8
            Y: 8
            Z: 8
          }
        }
        ParentId: 9360622602673661000
        ChildIds: 16004981438460059525
        ChildIds: 18171370920664963213
        ChildIds: 10394523655545122771
        ChildIds: 8820962893042447913
        ChildIds: 15695375275719106046
        ChildIds: 4144672785418242768
        ChildIds: 15854259610172059332
        ChildIds: 10970938627225265058
        ChildIds: 1396450534275422130
        ChildIds: 6640717209031464897
        ChildIds: 615182073038172908
        ChildIds: 6309565141850699353
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
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
        Id: 16004981438460059525
        Name: "Fantasy Castle Wall 02 - Curved"
        Transform {
          Location {
            Y: -52.5
            Z: 6.51370239
          }
          Rotation {
            Yaw: -179.999985
          }
          Scale {
            X: 0.1315
            Y: 0.1315
            Z: 0.157063738
          }
        }
        ParentId: 358280404341186617
        UnregisteredParameters {
          Overrides {
            Name: "ma:Building_WallOuter:id"
            AssetReference {
              Id: 14363741050584859632
            }
          }
          Overrides {
            Name: "ma:Building_WallOuter:smart"
            Bool: true
          }
          Overrides {
            Name: "ma:Building_WallInner:id"
            AssetReference {
              Id: 14363741050584859632
            }
          }
          Overrides {
            Name: "ma:Building_WallInner:smart"
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
            Id: 7548760847779041520
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          StaticMesh {
            Physics {
              Mass: 100
              LinearDamping: 0.01
            }
            BoundsScale: 1
          }
        }
        Relevance {
          Value: "mc:eproxyrelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 18171370920664963213
        Name: "Spiderweb VFX"
        Transform {
          Location {
            X: -29.5397568
            Y: -53.1648026
            Z: 64.875
          }
          Rotation {
            Yaw: -179.999985
          }
          Scale {
            X: 0.0349931195
            Y: 0.0237663053
            Z: 0.0237663053
          }
        }
        ParentId: 358280404341186617
        UnregisteredParameters {
          Overrides {
            Name: "bp:Color"
            Color {
              R: 1
              G: 1
              B: 1
              A: 0.995000064
            }
          }
          Overrides {
            Name: "bp:Max Distance"
            Float: 5.03741217
          }
          Overrides {
            Name: "bp:Camera Depth Fade Stop"
            Float: -33.5744514
          }
          Overrides {
            Name: "bp:Camera Depth Fade Start"
            Float: 16.2361679
          }
          Overrides {
            Name: "bp:Movement Threshold"
            Float: 0.0332286544
          }
          Overrides {
            Name: "bp:Appearance"
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
        EditorIndicatorVisibility {
          Value: "mc:eindicatorvisibility:visiblewhenselected"
        }
        Blueprint {
          BlueprintAsset {
            Id: 3374193802675370255
          }
          TeamSettings {
          }
          Vfx {
            AutoPlay: true
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
        Id: 10394523655545122771
        Name: "Trim Large Brick 8m"
        Transform {
          Location {
            X: -4.54065275
            Y: -48.278511
            Z: 3.40790606
          }
          Rotation {
            Pitch: 90
            Roll: -87.3065186
          }
          Scale {
            X: 0.0621157549
            Y: 0.109377936
            Z: 0.101056419
          }
        }
        ParentId: 358280404341186617
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 11653561262359954568
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: true
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.293136656
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.52966857
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
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
          Value: "mc:eproxyrelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 8820962893042447913
        Name: "Trim Large Brick 8m"
        Transform {
          Location {
            X: -20.6198158
            Y: -42.6905441
            Z: 3.44718504
          }
          Rotation {
            Pitch: 90
            Yaw: 90
            Roll: 24.5570297
          }
          Scale {
            X: 0.0621157959
            Y: 0.25896
            Z: 0.0883007497
          }
        }
        ParentId: 358280404341186617
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 11653561262359954568
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: true
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.293136656
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.52966857
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
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
          Value: "mc:eproxyrelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 15695375275719106046
        Name: "Trim Large Brick 8m"
        Transform {
          Location {
            X: -48.1398849
            Y: -3.14562607
            Z: 3.40790653
          }
          Rotation {
            Pitch: 90
            Yaw: 173.278625
            Roll: 173.278564
          }
          Scale {
            X: 0.0619359277
            Y: 0.0831090063
            Z: 0.0957599878
          }
        }
        ParentId: 358280404341186617
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 11653561262359954568
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: true
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.293136656
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.52966857
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
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
          Value: "mc:eproxyrelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 4144672785418242768
        Name: "Trim Large Brick 8m"
        Transform {
          Location {
            X: -35.5737915
            Y: -31.4994602
            Z: 3.40790749
          }
          Rotation {
            Pitch: 90
            Yaw: 135
            Roll: 91.6990662
          }
          Scale {
            X: 0.0621158592
            Y: 0.24
            Z: 0.0751881301
          }
        }
        ParentId: 358280404341186617
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 11653561262359954568
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: true
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.293136656
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.52966857
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
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
          Value: "mc:eproxyrelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 15854259610172059332
        Name: "Trim Large Brick 8m"
        Transform {
          Location {
            X: -45.9239464
            Y: -15.750288
            Z: 3.43962955
          }
          Rotation {
            Pitch: 90
            Yaw: 90
            Roll: 72.8794632
          }
          Scale {
            X: 0.0621157885
            Y: 0.227588743
            Z: 0.099715
          }
        }
        ParentId: 358280404341186617
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 11653561262359954568
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: true
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.293136656
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.52966857
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
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
          Value: "mc:eproxyrelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 10970938627225265058
        Name: "Trim Large Brick 8m"
        Transform {
          Location {
            X: -48.1398849
            Y: -3.14562607
            Z: 96.8352
          }
          Rotation {
            Pitch: 90
            Yaw: 64.7606201
            Roll: 64.7605743
          }
          Scale {
            X: 0.0619359277
            Y: 0.0831090063
            Z: 0.0957599878
          }
        }
        ParentId: 358280404341186617
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 624906770413420413
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: true
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.293136656
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.52966857
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
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
          Value: "mc:eproxyrelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 1396450534275422130
        Name: "Trim Large Brick 8m"
        Transform {
          Location {
            X: -46.4589806
            Y: -15.9880199
            Z: 96.8352
          }
          Rotation {
            Pitch: 90
            Roll: -13.5442505
          }
          Scale {
            X: 0.0621157885
            Y: 0.227588743
            Z: 0.099715
          }
        }
        ParentId: 358280404341186617
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 624906770413420413
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: true
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.293136656
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.52966857
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
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
          Value: "mc:eproxyrelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 6640717209031464897
        Name: "Trim Large Brick 8m"
        Transform {
          Location {
            X: -36.1445312
            Y: -31.3507938
            Z: 96.8352
          }
          Rotation {
            Pitch: 90
            Yaw: 153.434952
            Roll: 110.613693
          }
          Scale {
            X: 0.0621158592
            Y: 0.244655102
            Z: 0.0751881301
          }
        }
        ParentId: 358280404341186617
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 624906770413420413
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: true
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.293136656
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.52966857
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
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
          Value: "mc:eproxyrelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 615182073038172908
        Name: "Trim Large Brick 8m"
        Transform {
          Location {
            X: -19.712162
            Y: -44.4787674
            Z: 96.8352
          }
          Rotation {
            Pitch: 90
            Roll: -66.6753845
          }
          Scale {
            X: 0.0621157959
            Y: 0.25896
            Z: 0.0883007571
          }
        }
        ParentId: 358280404341186617
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 624906770413420413
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: true
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.293136656
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.52966857
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
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
          Value: "mc:eproxyrelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 6309565141850699353
        Name: "Trim Large Brick 8m"
        Transform {
          Location {
            X: -5.5098877
            Y: -48.6779137
            Z: 96.8352
          }
          Rotation {
            Pitch: 90
            Yaw: 123.690071
            Roll: 33.690033
          }
          Scale {
            X: 0.0621157549
            Y: 0.109377936
            Z: 0.101056419
          }
        }
        ParentId: 358280404341186617
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 624906770413420413
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: true
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.293136656
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.52966857
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
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
          Value: "mc:eproxyrelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 15682913108626426207
        Name: "Wall Half Align Left"
        Transform {
          Location {
            X: -400
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
        ParentId: 9360622602673661000
        ChildIds: 9587453124433435655
        ChildIds: 3329204477218992694
        ChildIds: 2472112053389867879
        ChildIds: 8854547711623882759
        ChildIds: 6832271513824374828
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
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
        Id: 9587453124433435655
        Name: "Plane 1m - Two Sided"
        Transform {
          Location {
            X: 199.999695
            Y: -0.000152587891
            Z: 399.999847
          }
          Rotation {
            Pitch: -1.36603776e-05
            Yaw: 1.13991074e-11
            Roll: 89.9998779
          }
          Scale {
            X: 4
            Y: 8
            Z: 4
          }
        }
        ParentId: 15682913108626426207
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14363741050584859632
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: true
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 1.5
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
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
        EditorIndicatorVisibility {
          Value: "mc:eindicatorvisibility:visiblewhenselected"
        }
        CoreMesh {
          MeshAsset {
            Id: 14465316728247841933
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          StaticMesh {
            Physics {
              Mass: 100
              LinearDamping: 0.01
            }
            BoundsScale: 1
          }
        }
        Relevance {
          Value: "mc:eproxyrelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 3329204477218992694
        Name: "Trim Large Brick 8m"
        Transform {
          Location {
            X: 95.1913452
            Y: 27.6498718
            Z: 27.2632446
          }
          Rotation {
            Pitch: 90
            Yaw: -90
            Roll: 6.10351562e-05
          }
          Scale {
            X: 0.496926367
            Y: 2.07168031
            Z: 0.517349541
          }
        }
        ParentId: 15682913108626426207
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 11653561262359954568
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: true
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.293136656
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.52966857
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
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
          Value: "mc:eproxyrelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 2472112053389867879
        Name: "Trim Large Brick 8m"
        Transform {
          Location {
            X: 296.245483
            Y: 24.6498413
            Z: 777
          }
          Rotation {
            Pitch: 90
            Yaw: -90
            Roll: 6.10351562e-05
          }
          Scale {
            X: 0.495487392
            Y: 2.06567883
            Z: 0.515851319
          }
        }
        ParentId: 15682913108626426207
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 624906770413420413
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: true
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.293136656
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.52966857
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
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
          Value: "mc:eproxyrelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 8854547711623882759
        Name: "Trim Large Brick 8m"
        Transform {
          Location {
            X: 95.2562866
            Y: 24.6498718
            Z: 777
          }
          Rotation {
            Pitch: 90
            Yaw: -90
            Roll: 6.10351562e-05
          }
          Scale {
            X: 0.496926367
            Y: 2.07168031
            Z: 0.517349541
          }
        }
        ParentId: 15682913108626426207
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 624906770413420413
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: true
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.293136656
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.52966857
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
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
          Value: "mc:eproxyrelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 6832271513824374828
        Name: "Trim Large Brick 8m"
        Transform {
          Location {
            X: 296.245728
            Y: 27.6498108
            Z: 27.2632446
          }
          Rotation {
            Pitch: 90
            Yaw: -90
            Roll: 6.10351562e-05
          }
          Scale {
            X: 0.495487392
            Y: 2.06567883
            Z: 0.515851319
          }
        }
        ParentId: 15682913108626426207
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 11653561262359954568
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: true
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.293136656
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.52966857
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
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
          Value: "mc:eproxyrelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 11826606569588403018
        Name: "Wall Half Align Left"
        Transform {
          Location {
            X: 399.999512
            Y: 400
          }
          Rotation {
            Yaw: 180
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 9360622602673661000
        ChildIds: 3076141737325615145
        ChildIds: 1376608749613905783
        ChildIds: 14185094550304654998
        ChildIds: 12484332822407208499
        ChildIds: 15197510195028998968
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
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
        Id: 3076141737325615145
        Name: "Plane 1m - Two Sided"
        Transform {
          Location {
            X: 199.999695
            Y: -0.000152587891
            Z: 399.999847
          }
          Rotation {
            Pitch: -1.36603776e-05
            Yaw: 1.13991074e-11
            Roll: 89.9998779
          }
          Scale {
            X: 4
            Y: 8
            Z: 4
          }
        }
        ParentId: 11826606569588403018
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14363741050584859632
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: true
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 1.5
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
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
        EditorIndicatorVisibility {
          Value: "mc:eindicatorvisibility:visiblewhenselected"
        }
        CoreMesh {
          MeshAsset {
            Id: 14465316728247841933
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          StaticMesh {
            Physics {
              Mass: 100
              LinearDamping: 0.01
            }
            BoundsScale: 1
          }
        }
        Relevance {
          Value: "mc:eproxyrelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 1376608749613905783
        Name: "Trim Large Brick 8m"
        Transform {
          Location {
            X: 95.1913452
            Y: 27.6498718
            Z: 27.2632446
          }
          Rotation {
            Pitch: 90
            Yaw: -90
            Roll: 6.10351562e-05
          }
          Scale {
            X: 0.496926367
            Y: 2.07168031
            Z: 0.517349541
          }
        }
        ParentId: 11826606569588403018
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 11653561262359954568
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: true
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.293136656
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.52966857
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
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
          Value: "mc:eproxyrelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 14185094550304654998
        Name: "Trim Large Brick 8m"
        Transform {
          Location {
            X: 296.245483
            Y: 24.6498413
            Z: 777
          }
          Rotation {
            Pitch: 90
            Yaw: -90
            Roll: 6.10351562e-05
          }
          Scale {
            X: 0.495487392
            Y: 2.06567883
            Z: 0.515851319
          }
        }
        ParentId: 11826606569588403018
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 624906770413420413
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: true
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.293136656
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.52966857
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
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
          Value: "mc:eproxyrelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 12484332822407208499
        Name: "Trim Large Brick 8m"
        Transform {
          Location {
            X: 95.2562866
            Y: 24.6498718
            Z: 777
          }
          Rotation {
            Pitch: 90
            Yaw: -90
            Roll: 6.10351562e-05
          }
          Scale {
            X: 0.496926367
            Y: 2.07168031
            Z: 0.517349541
          }
        }
        ParentId: 11826606569588403018
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 624906770413420413
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: true
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.293136656
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.52966857
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
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
          Value: "mc:eproxyrelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 15197510195028998968
        Name: "Trim Large Brick 8m"
        Transform {
          Location {
            X: 296.245728
            Y: 27.6498108
            Z: 27.2632446
          }
          Rotation {
            Pitch: 90
            Yaw: -90
            Roll: 6.10351562e-05
          }
          Scale {
            X: 0.495487392
            Y: 2.06567883
            Z: 0.515851319
          }
        }
        ParentId: 11826606569588403018
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 11653561262359954568
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: true
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.293136656
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.52966857
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
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
          Value: "mc:eproxyrelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 9025341542242175011
        Name: "ClientContext_Candle"
        Transform {
          Location {
            X: -333.432617
            Y: -208.072266
            Z: 459.373413
          }
          Rotation {
            Yaw: -89.9999924
          }
          Scale {
            X: 1.71698976
            Y: 1.71698976
            Z: 1.71698976
          }
        }
        ParentId: 9360622602673661000
        ChildIds: 13097557064826836394
        ChildIds: 10742313311480665986
        ChildIds: 5456303436963578841
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
        Id: 13097557064826836394
        Name: "Candle Flame VFX"
        Transform {
          Location {
            X: -0.234558105
          }
          Rotation {
          }
          Scale {
            X: 3
            Y: 3
            Z: 3
          }
        }
        ParentId: 9025341542242175011
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
            Id: 9199751096616988864
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          InteractWithTriggers: true
          StaticMesh {
            Physics {
            }
            BoundsScale: 1
          }
        }
        Relevance {
          Value: "mc:eproxyrelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 10742313311480665986
        Name: "Point Light"
        Transform {
          Location {
            X: 0.234615266
            Y: 0.539544046
            Z: 17.2326164
          }
          Rotation {
          }
          Scale {
            X: 0.999999762
            Y: 0.999999762
            Z: 0.999999762
          }
        }
        ParentId: 9025341542242175011
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
          Intensity: 15
          Color {
            R: 1
            G: 0.817271352
            B: 0.477918148
            A: 1
          }
          CastShadows: true
          VolumetricIntensity: 5
          TeamSettings {
          }
          Light {
            UseTemperature: true
            Temperature: 2000
            LocalLight {
              AttenuationRadius: 1500
              PointLight {
                SourceRadius: 9.23469257
                SoftSourceRadius: 100
                FallOffExponent: 8
              }
            }
            MaxDrawDistance: 6800
            MaxDistanceFadeRange: 2000
          }
          ShadowBias: 0.4
          ShadowSlopeBias: 0.6
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
        Id: 5456303436963578841
        Name: "Fantasy Candle Lit - Sconce 01 (Prop)"
        Transform {
          Location {
            X: 2.11067533
            Y: -39.2221222
            Z: -53.7759705
          }
          Rotation {
            Yaw: -1.02452814e-05
          }
          Scale {
            X: 0.99999994
            Y: 0.99999994
            Z: 0.99999994
          }
        }
        ParentId: 9025341542242175011
        ChildIds: 18231560941931795322
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
        Id: 18231560941931795322
        Name: "Sconce 01"
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
        ParentId: 5456303436963578841
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
            Id: 13972110979182650321
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          InteractWithTriggers: true
          StaticMesh {
            Physics {
            }
            BoundsScale: 1
          }
        }
        Relevance {
          Value: "mc:eproxyrelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 9945456056962946743
        Name: "ClientContext_Candle"
        Transform {
          Location {
            X: 237.30542
            Y: 334.410156
            Z: 459.373413
          }
          Rotation {
            Yaw: -179.999969
          }
          Scale {
            X: 1.71698976
            Y: 1.71698976
            Z: 1.71698976
          }
        }
        ParentId: 9360622602673661000
        ChildIds: 18114492727883430811
        ChildIds: 12007758324480247974
        ChildIds: 11601322796444696349
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
        Id: 18114492727883430811
        Name: "Candle Flame VFX"
        Transform {
          Location {
            X: -0.234558105
          }
          Rotation {
          }
          Scale {
            X: 3
            Y: 3
            Z: 3
          }
        }
        ParentId: 9945456056962946743
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
            Id: 9199751096616988864
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          InteractWithTriggers: true
          StaticMesh {
            Physics {
            }
            BoundsScale: 1
          }
        }
        Relevance {
          Value: "mc:eproxyrelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 12007758324480247974
        Name: "Point Light"
        Transform {
          Location {
            X: 0.234615266
            Y: 0.539544046
            Z: 17.2326164
          }
          Rotation {
          }
          Scale {
            X: 0.999999762
            Y: 0.999999762
            Z: 0.999999762
          }
        }
        ParentId: 9945456056962946743
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
          Intensity: 15
          Color {
            R: 1
            G: 0.817271352
            B: 0.477918148
            A: 1
          }
          CastShadows: true
          VolumetricIntensity: 5
          TeamSettings {
          }
          Light {
            UseTemperature: true
            Temperature: 2000
            LocalLight {
              AttenuationRadius: 1500
              PointLight {
                SourceRadius: 9.23469257
                SoftSourceRadius: 100
                FallOffExponent: 8
              }
            }
            MaxDrawDistance: 6800
            MaxDistanceFadeRange: 2000
          }
          ShadowBias: 0.4
          ShadowSlopeBias: 0.6
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
        Id: 11601322796444696349
        Name: "Sconce 01"
        Transform {
          Location {
            X: 2.11081195
            Y: -39.2219658
            Z: -53.7759705
          }
          Rotation {
          }
          Scale {
            X: 0.99999994
            Y: 0.99999994
            Z: 0.99999994
          }
        }
        ParentId: 9945456056962946743
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
            Id: 13972110979182650321
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          InteractWithTriggers: true
          StaticMesh {
            Physics {
            }
            BoundsScale: 1
          }
        }
        Relevance {
          Value: "mc:eproxyrelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 8726351284556727430
        Name: "ClientContext"
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
        ParentId: 9360622602673661000
        ChildIds: 3490889147657072359
        ChildIds: 16288948422459896458
        ChildIds: 8762587429218273379
        ChildIds: 5379934700693464906
        ChildIds: 7457194223038079460
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
        Id: 3490889147657072359
        Name: "DeleteOptionalSiblings"
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
        ParentId: 8726351284556727430
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
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
            Id: 906902403343624700
          }
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 16288948422459896458
        Name: "Spiderweb VFX"
        Transform {
          Location {
            X: 371.195068
            Y: 187.404297
            Z: 696.614929
          }
          Rotation {
            Yaw: -34.3937073
            Roll: -29.2193298
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 8726351284556727430
        UnregisteredParameters {
          Overrides {
            Name: "bp:Color"
            Color {
              R: 1
              G: 1
              B: 1
              A: 1
            }
          }
          Overrides {
            Name: "bp:Max Distance"
            Float: 4.65986061
          }
          Overrides {
            Name: "bp:Movement Threshold"
            Float: 0.0332286544
          }
          Overrides {
            Name: "bp:Camera Depth Fade Start"
            Float: 16.2361679
          }
          Overrides {
            Name: "bp:Camera Depth Fade Stop"
            Float: -12.3837585
          }
          Overrides {
            Name: "bp:Appearance"
            Int: 4
          }
          Overrides {
            Name: "bp:Edge Fade"
            Bool: true
          }
          Overrides {
            Name: "bp:Normal"
            Float: 0
          }
          Overrides {
            Name: "bp:Edge Fade Distance"
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
            Id: 3374193802675370255
          }
          TeamSettings {
          }
          Vfx {
            AutoPlay: true
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
        Id: 8762587429218273379
        Name: "Decal Vines Tile 01"
        Transform {
          Location {
            X: 121.638672
            Y: 431.083984
            Z: 372.792023
          }
          Rotation {
            Yaw: -174.826065
            Roll: 90
          }
          Scale {
            X: 1.52252471
            Y: 1.70087099
            Z: 0.625698388
          }
        }
        ParentId: 8726351284556727430
        UnregisteredParameters {
          Overrides {
            Name: "bp:Color"
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
        Blueprint {
          BlueprintAsset {
            Id: 10054080348041826858
          }
          TeamSettings {
          }
          DecalBP {
          }
        }
        Relevance {
          Value: "mc:eproxyrelevance:medium"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 5379934700693464906
        Name: "Decal Vines Tile 01"
        Transform {
          Location {
            X: -375.643311
            Y: -47.2714844
            Z: 372.792023
          }
          Rotation {
            Yaw: -101.459564
            Roll: 90
          }
          Scale {
            X: 1.23951447
            Y: 1.70087087
            Z: 0.625696659
          }
        }
        ParentId: 8726351284556727430
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
          Value: "mc:eindicatorvisibility:visiblewhenselected"
        }
        Blueprint {
          BlueprintAsset {
            Id: 10054080348041826858
          }
          TeamSettings {
          }
          DecalBP {
          }
        }
        Relevance {
          Value: "mc:eproxyrelevance:medium"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 7457194223038079460
        Name: "Decal Stains Top 01"
        Transform {
          Location {
            X: -103.05542
            Y: 207.46875
            Z: 522.638245
          }
          Rotation {
            Yaw: 31.5315704
            Roll: 90
          }
          Scale {
            X: 1.45868385
            Y: 1.32319736
            Z: 1.43322396
          }
        }
        ParentId: 8726351284556727430
        UnregisteredParameters {
          Overrides {
            Name: "bp:Color"
            Color {
              R: 0.0736548603
              G: 0.089
              B: 0.0324849971
              A: 0.655000031
            }
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
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
            Id: 13092937155567782746
          }
          TeamSettings {
          }
          DecalBP {
          }
        }
        Relevance {
          Value: "mc:eproxyrelevance:medium"
        }
        IsReplicationEnabledByDefault: true
      }
    }
    Assets {
      Id: 7548760847779041520
      Name: "Fantasy Castle Wall 02 - Curved"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_ts_fan_cas_wall_curve_002"
      }
    }
    Assets {
      Id: 3374193802675370255
      Name: "Spiderweb VFX"
      PlatformAssetType: 8
      PrimaryAsset {
        AssetType: "VfxBlueprintAssetRef"
        AssetId: "fxbp_web"
      }
    }
    Assets {
      Id: 13642204757580273705
      Name: "Cube - Chamfered Small Polished"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_cube_hq_003"
      }
    }
    Assets {
      Id: 14465316728247841933
      Name: "Plane 1m - Two Sided"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_plane_1m_002"
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
      Id: 13972110979182650321
      Name: "Sconce 01"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_prop_fantasy_sconce_001"
      }
    }
    Assets {
      Id: 10054080348041826858
      Name: "Decal Vines Tile 01"
      PlatformAssetType: 14
      PrimaryAsset {
        AssetType: "DecalBlueprintAssetRef"
        AssetId: "bp_decal_liane_001"
      }
    }
    Assets {
      Id: 13092937155567782746
      Name: "Decal Stains Top 01"
      PlatformAssetType: 14
      PrimaryAsset {
        AssetType: "DecalBlueprintAssetRef"
        AssetId: "bp_decal_stain_top_001"
      }
    }
    PrimaryAssetId {
      AssetType: "None"
      AssetId: "None"
    }
  }
  SerializationVersion: 119
  VirtualFolderPath: "Dungeon Tiles"
  VirtualFolderPath: "Creepy Crypt"
}
