Assets {
  Id: 15032907186671135038
  Name: "Dungeon Corner Concave Rounded 110"
  PlatformAssetType: 5
  TemplateAsset {
    ObjectBlock {
      RootId: 13720142574715446070
      Objects {
        Id: 13720142574715446070
        Name: "Dungeon Corner Concave Rounded"
        Transform {
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 8062710068320767161
        ChildIds: 4285454811086120775
        ChildIds: 11214152535841811508
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
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
        Id: 4285454811086120775
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
        ParentId: 13720142574715446070
        ChildIds: 16257217862078978299
        ChildIds: 14100081867049050099
        ChildIds: 12664373262115072173
        ChildIds: 5037974747527901527
        ChildIds: 16596060347988974208
        ChildIds: 433741546583412142
        ChildIds: 16394656591055120826
        ChildIds: 12087866859104511196
        ChildIds: 3233883666666983628
        ChildIds: 7181184551176065215
        ChildIds: 3965895032738379154
        ChildIds: 7498550837682712871
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
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
        Id: 16257217862078978299
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
        ParentId: 4285454811086120775
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
          Value: "mc:edistancerelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 14100081867049050099
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
        ParentId: 4285454811086120775
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
          Value: "mc:edistancerelevance:medium"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 12664373262115072173
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
        ParentId: 4285454811086120775
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
          Value: "mc:edistancerelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 5037974747527901527
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
        ParentId: 4285454811086120775
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
          Value: "mc:edistancerelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 16596060347988974208
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
        ParentId: 4285454811086120775
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
          Value: "mc:edistancerelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 433741546583412142
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
        ParentId: 4285454811086120775
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
          Value: "mc:edistancerelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 16394656591055120826
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
        ParentId: 4285454811086120775
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
          Value: "mc:edistancerelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 12087866859104511196
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
        ParentId: 4285454811086120775
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
          Value: "mc:edistancerelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 3233883666666983628
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
        ParentId: 4285454811086120775
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
          Value: "mc:edistancerelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 7181184551176065215
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
        ParentId: 4285454811086120775
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
          Value: "mc:edistancerelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 3965895032738379154
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
        ParentId: 4285454811086120775
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
          Value: "mc:edistancerelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 7498550837682712871
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
        ParentId: 4285454811086120775
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
          Value: "mc:edistancerelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 11214152535841811508
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
        ParentId: 13720142574715446070
        ChildIds: 1526868499600793431
        ChildIds: 3214041873414221833
        ChildIds: 18112268261399101928
        ChildIds: 10574842103587625293
        ChildIds: 17107001608529460294
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
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
        Id: 1526868499600793431
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
        ParentId: 11214152535841811508
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
          Value: "mc:edistancerelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 3214041873414221833
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
        ParentId: 11214152535841811508
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
          Value: "mc:edistancerelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 18112268261399101928
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
        ParentId: 11214152535841811508
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
          Value: "mc:edistancerelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 10574842103587625293
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
        ParentId: 11214152535841811508
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
          Value: "mc:edistancerelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 17107001608529460294
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
        ParentId: 11214152535841811508
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
          Value: "mc:edistancerelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
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
    PrimaryAssetId {
      AssetType: "None"
      AssetId: "None"
    }
  }
  SerializationVersion: 123
  VirtualFolderPath: "Dungeon Tiles"
  VirtualFolderPath: "Creepy Crypt"
}
