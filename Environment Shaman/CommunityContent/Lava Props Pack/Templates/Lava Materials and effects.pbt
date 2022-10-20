Assets {
  Id: 5177258803323244630
  Name: "Lava Materials and effects"
  PlatformAssetType: 5
  TemplateAsset {
    ObjectBlock {
      RootId: 13119473259303104568
      Objects {
        Id: 13119473259303104568
        Name: "Lava Materials and effects"
        Transform {
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 4781671109827199097
        ChildIds: 7588188018403227562
        ChildIds: 4625241306504904076
        ChildIds: 1982864664917810980
        ChildIds: 631384991111053690
        ChildIds: 145117349006733230
        ChildIds: 8978339968136782560
        ChildIds: 12364076878270524997
        ChildIds: 3770180790481555127
        ChildIds: 952947345213004029
        ChildIds: 11576895776933762794
        ChildIds: 14950566846811618729
        ChildIds: 17191214436709591858
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
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
        Id: 7588188018403227562
        Name: "Waterfall Straight"
        Transform {
          Location {
            X: -1170
            Y: -510
            Z: 890
          }
          Rotation {
            Yaw: -89.9999924
          }
          Scale {
            X: 1
            Y: 1
            Z: 2
          }
        }
        ParentId: 13119473259303104568
        UnregisteredParameters {
          Overrides {
            Name: "ma:waterfall:id"
            AssetReference {
              Id: 12384541154938266241
            }
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        EditorIndicatorVisibility {
          Value: "mc:eindicatorvisibility:visiblewhenselected"
        }
        CoreMesh {
          MeshAsset {
            Id: 549260736599319411
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          StaticMesh {
            Physics {
              Mass: 100
              LinearDamping: 0.01
            }
            BoundsScale: 1
          }
        }
        Relevance {
          Value: "mc:eproxyrelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 4625241306504904076
        Name: "lava Jet VFX"
        Transform {
          Location {
            X: -840
            Y: -640
            Z: 200
          }
          Rotation {
            Yaw: 88.6516953
          }
          Scale {
            X: 1.91520178
            Y: 1.91520178
            Z: 3.42461276
          }
        }
        ParentId: 13119473259303104568
        UnregisteredParameters {
          Overrides {
            Name: "bp:Emissive Boost"
            Float: 50
          }
          Overrides {
            Name: "bp:Color"
            Color {
              R: 0.99
              G: 0.0196688641
              A: 1
            }
          }
          Overrides {
            Name: "bp:Density"
            Float: 1.80695248
          }
          Overrides {
            Name: "bp:Life"
            Float: 1.37415814
          }
          Overrides {
            Name: "bp:Angle Min"
            Float: 56.5895424
          }
          Overrides {
            Name: "bp:Particle Scale Multiplier"
            Float: 2.80884552
          }
          Overrides {
            Name: "bp:Angle Max"
            Float: 32.1302032
          }
          Overrides {
            Name: "bp:Velocity Min"
            Float: 0
          }
          Overrides {
            Name: "bp:Velocity Max"
            Float: 2.73620796
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
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
            Id: 10533701883535606431
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
        Id: 1982864664917810980
        Name: "Boiling lava effect (Waterfall Top Volume VFX)"
        Transform {
          Location {
            X: 990
            Y: -744.537109
            Z: 178.573029
          }
          Rotation {
            Pitch: -0.75366354
          }
          Scale {
            X: 6
            Y: 5
            Z: 1
          }
        }
        ParentId: 13119473259303104568
        UnregisteredParameters {
          Overrides {
            Name: "bp:Volume Type"
            Enum {
              Value: "mc:evfxvolumetype:3"
            }
          }
          Overrides {
            Name: "bp:Volume Color"
            Color {
              R: 0.786
              A: 1
            }
          }
          Overrides {
            Name: "bp:color"
            Color {
              R: 0.826000094
              G: 0.0792960227
              A: 1
            }
          }
          Overrides {
            Name: "bp:Gravity"
            Float: 5.79969215
          }
          Overrides {
            Name: "bp:Waterfall Density"
            Float: 2.30011439
          }
          Overrides {
            Name: "bp:Density"
            Float: 1.14041352
          }
          Overrides {
            Name: "bp:Enable Waterfall"
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
            Id: 17643129043706004454
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
        Id: 631384991111053690
        Name: "Ember Volume VFX"
        Transform {
          Location {
            X: -130
            Y: -740
            Z: 219.225983
          }
          Rotation {
          }
          Scale {
            X: 9.09999752
            Y: 6.8
            Z: 4.4
          }
        }
        ParentId: 13119473259303104568
        UnregisteredParameters {
          Overrides {
            Name: "bp:Emissive Boost"
            Float: 50
          }
          Overrides {
            Name: "bp:Color"
            Color {
              R: 0.9
              G: 0.107284762
              A: 1
            }
          }
          Overrides {
            Name: "bp:Density"
            Float: 2.44637394
          }
          Overrides {
            Name: "bp:Gravity"
            Float: 1.65004349
          }
          Overrides {
            Name: "bp:Local Space"
            Bool: false
          }
          Overrides {
            Name: "bp:Wind Speed"
            Vector {
              X: 50
            }
          }
          Overrides {
            Name: "bp:Particle Scale Multiplier"
            Float: 2.44637394
          }
          Overrides {
            Name: "bp:Life"
            Float: 0.96757412
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
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
            Id: 13546563608963681059
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
        Id: 145117349006733230
        Name: "Sphere"
        Transform {
          Location {
            X: 560
            Y: 650
            Z: 240
          }
          Rotation {
          }
          Scale {
            X: 4.4
            Y: 4.4
            Z: 4.4
          }
        }
        ParentId: 13119473259303104568
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 4330524654291945174
            }
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        EditorIndicatorVisibility {
          Value: "mc:eindicatorvisibility:visiblewhenselected"
        }
        CoreMesh {
          MeshAsset {
            Id: 17228562421233615007
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          StaticMesh {
            Physics {
              Mass: 100
              LinearDamping: 0.01
            }
            BoundsScale: 1
          }
        }
        Relevance {
          Value: "mc:eproxyrelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 8978339968136782560
        Name: "Sphere"
        Transform {
          Location {
            X: -30
            Y: 650
            Z: 240
          }
          Rotation {
          }
          Scale {
            X: 4.4
            Y: 4.4
            Z: 4.4
          }
        }
        ParentId: 13119473259303104568
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 3487606950376386360
            }
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        EditorIndicatorVisibility {
          Value: "mc:eindicatorvisibility:visiblewhenselected"
        }
        CoreMesh {
          MeshAsset {
            Id: 17228562421233615007
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          StaticMesh {
            Physics {
              Mass: 100
              LinearDamping: 0.01
            }
            BoundsScale: 1
          }
        }
        Relevance {
          Value: "mc:eproxyrelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 12364076878270524997
        Name: "Sphere"
        Transform {
          Location {
            X: -600
            Y: 650
            Z: 240
          }
          Rotation {
          }
          Scale {
            X: 4.4
            Y: 4.4
            Z: 4.4
          }
        }
        ParentId: 13119473259303104568
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 4490332463228561257
            }
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        EditorIndicatorVisibility {
          Value: "mc:eindicatorvisibility:visiblewhenselected"
        }
        CoreMesh {
          MeshAsset {
            Id: 17228562421233615007
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          StaticMesh {
            Physics {
              Mass: 100
              LinearDamping: 0.01
            }
            BoundsScale: 1
          }
        }
        Relevance {
          Value: "mc:eproxyrelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 3770180790481555127
        Name: "Sphere"
        Transform {
          Location {
            X: -760
            Y: 30
            Z: 240
          }
          Rotation {
          }
          Scale {
            X: 2.3
            Y: 2.3
            Z: 2.3
          }
        }
        ParentId: 13119473259303104568
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 10583572360846431005
            }
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        EditorIndicatorVisibility {
          Value: "mc:eindicatorvisibility:visiblewhenselected"
        }
        CoreMesh {
          MeshAsset {
            Id: 17228562421233615007
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          StaticMesh {
            Physics {
              Mass: 100
              LinearDamping: 0.01
            }
            BoundsScale: 1
          }
        }
        Relevance {
          Value: "mc:eproxyrelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 952947345213004029
        Name: "Sphere"
        Transform {
          Location {
            X: -340
            Y: 30
            Z: 240
          }
          Rotation {
          }
          Scale {
            X: 2.3
            Y: 2.3
            Z: 2.3
          }
        }
        ParentId: 13119473259303104568
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 3407732538382760226
            }
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        EditorIndicatorVisibility {
          Value: "mc:eindicatorvisibility:visiblewhenselected"
        }
        CoreMesh {
          MeshAsset {
            Id: 17228562421233615007
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          StaticMesh {
            Physics {
              Mass: 100
              LinearDamping: 0.01
            }
            BoundsScale: 1
          }
        }
        Relevance {
          Value: "mc:eproxyrelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 11576895776933762794
        Name: "Sphere"
        Transform {
          Location {
            X: 30
            Y: 30
            Z: 240
          }
          Rotation {
          }
          Scale {
            X: 2.3
            Y: 2.3
            Z: 2.3
          }
        }
        ParentId: 13119473259303104568
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 15595903766842634849
            }
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        EditorIndicatorVisibility {
          Value: "mc:eindicatorvisibility:visiblewhenselected"
        }
        CoreMesh {
          MeshAsset {
            Id: 17228562421233615007
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          StaticMesh {
            Physics {
              Mass: 100
              LinearDamping: 0.01
            }
            BoundsScale: 1
          }
        }
        Relevance {
          Value: "mc:eproxyrelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 14950566846811618729
        Name: "Sphere"
        Transform {
          Location {
            X: 380
            Y: 30
            Z: 240
          }
          Rotation {
          }
          Scale {
            X: 2.3
            Y: 2.3
            Z: 2.3
          }
        }
        ParentId: 13119473259303104568
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 9606901990090828554
            }
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        EditorIndicatorVisibility {
          Value: "mc:eindicatorvisibility:visiblewhenselected"
        }
        CoreMesh {
          MeshAsset {
            Id: 17228562421233615007
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          StaticMesh {
            Physics {
              Mass: 100
              LinearDamping: 0.01
            }
            BoundsScale: 1
          }
        }
        Relevance {
          Value: "mc:eproxyrelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 17191214436709591858
        Name: "Sphere"
        Transform {
          Location {
            X: 740
            Y: 30
            Z: 240
          }
          Rotation {
          }
          Scale {
            X: 2.3
            Y: 2.3
            Z: 2.3
          }
        }
        ParentId: 13119473259303104568
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 15530047782545807918
            }
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        EditorIndicatorVisibility {
          Value: "mc:eindicatorvisibility:visiblewhenselected"
        }
        CoreMesh {
          MeshAsset {
            Id: 17228562421233615007
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          StaticMesh {
            Physics {
              Mass: 100
              LinearDamping: 0.01
            }
            BoundsScale: 1
          }
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
      Id: 549260736599319411
      Name: "Waterfall Straight"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "fxsm_waterfall_straight"
      }
    }
    Assets {
      Id: 10533701883535606431
      Name: "Water Jet VFX"
      PlatformAssetType: 8
      PrimaryAsset {
        AssetType: "VfxBlueprintAssetRef"
        AssetId: "fxbp_water_jet"
      }
    }
    Assets {
      Id: 17643129043706004454
      Name: "Waterfall Top Volume VFX"
      PlatformAssetType: 8
      PrimaryAsset {
        AssetType: "VfxBlueprintAssetRef"
        AssetId: "fxbp_waterfall_top"
      }
    }
    Assets {
      Id: 13546563608963681059
      Name: "Ember Volume VFX"
      PlatformAssetType: 8
      PrimaryAsset {
        AssetType: "VfxBlueprintAssetRef"
        AssetId: "fxbp_ember_volume_vfx"
      }
    }
    Assets {
      Id: 17228562421233615007
      Name: "Sphere"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_sphere_002"
      }
    }
    PrimaryAssetId {
      AssetType: "None"
      AssetId: "None"
    }
  }
  Marketplace {
    Description: "This asset pack contains 21 lava based props to build a volcanic environment, including:\r\n\t- 2 large volcanoes\r\n\t- 2 floating lava rocks\r\n\t- 4 lava falls\r\n\t- 5 lava fountains\r\n\t- 5 lava pools including 2 boiling ones\r\n\t- 1 lava lake, 1 straight river and 1 delta\r\n \r\n Apart from the 2 volcanoes, the rest are regrouped in serperate group templates. Simply drag and drop the group \r\n template you want in your project, find it in you hierarchy and pull out or copy the asset you want to use. \r\n \r\n There is no damage zone or SFX included in this pack\r\n\r\n Thanks to Johnhenderson1963 and Basilisk whose CCs \"Volcano Crater\" and \"Lava Ball\" were used to create this pack"
  }
  SerializationVersion: 118
  DirectlyPublished: true
  VirtualFolderPath: "New Folder"
}
