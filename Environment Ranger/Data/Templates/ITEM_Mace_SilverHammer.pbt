Assets {
  Id: 9398179654413895320
  Name: "ITEM_Mace_SilverHammer"
  PlatformAssetType: 5
  TemplateAsset {
    ObjectBlock {
      RootId: 17999959362812663313
      Objects {
        Id: 17999959362812663313
        Name: "ITEM_Mace_SilverHammer"
        Transform {
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 4781671109827199097
        ChildIds: 6680930883720932140
        UnregisteredParameters {
          Overrides {
            Name: "cs:Icon"
            AssetReference {
              Id: 12805935249704895206
            }
          }
          Overrides {
            Name: "cs:AnimationStance"
            String: "1hand_melee_stance"
          }
          Overrides {
            Name: "cs:SOCKET_right_prop"
            ObjectReference {
              SubObjectId: 6680930883720932140
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
        Id: 6680930883720932140
        Name: "Fantasy Weapon - Mace 01 (Prop)"
        Transform {
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 17999959362812663313
        ChildIds: 1747834703190054531
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
        Id: 1747834703190054531
        Name: "Fantasy Crossbow Bolt 01"
        Transform {
          Location {
            Z: 18.8001099
          }
          Rotation {
            Pitch: -0.000122070312
            Yaw: -179.999954
            Roll: 179.999954
          }
          Scale {
            X: 1.10693645
            Y: 1.10693645
            Z: 1.10693645
          }
        }
        ParentId: 6680930883720932140
        ChildIds: 675622591702908001
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_Trim:color"
            Color {
              R: 0.0570000038
              G: 0.0135894045
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
            Id: 3682206342183528038
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          DisableReceiveDecals: true
          InteractWithTriggers: true
          StaticMesh {
            Physics {
            }
            BoundsScale: 1
          }
        }
        Relevance {
          Value: "mc:eproxyrelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 675622591702908001
        Name: "Fantasy Crossbow Bolt 01"
        Transform {
          Location {
            X: -0.000189210492
            Y: 1.84407945e-05
            Z: 25.7823334
          }
          Rotation {
            Pitch: 0.000122943398
            Yaw: -179.999954
            Roll: 179.999954
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 1747834703190054531
        ChildIds: 9827481952618808864
        ChildIds: 13502758979338826475
        ChildIds: 15157331217362616326
        ChildIds: 13114360152241696292
        ChildIds: 2849554057592502633
        ChildIds: 6864461391354438373
        ChildIds: 3764253230638893660
        ChildIds: 11185953839469820517
        ChildIds: 178936575899166147
        ChildIds: 13462582247410971599
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
        Id: 9827481952618808864
        Name: "Fantasy Crossbow Bolt 01"
        Transform {
          Location {
            X: 0.000121951103
            Z: 34.4523926
          }
          Rotation {
            Pitch: -0.000122070312
            Yaw: -179.999954
            Roll: 179.999954
          }
          Scale {
            X: 0.042066779
            Y: 0.0420667641
            Z: 0.425802082
          }
        }
        ParentId: 675622591702908001
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 18434079688766523124
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.255000025
              G: 0.255000025
              B: 0.255000025
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
            Id: 10602013473409766249
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          DisableReceiveDecals: true
          InteractWithTriggers: true
          StaticMesh {
            Physics {
            }
            BoundsScale: 1
          }
        }
        Relevance {
          Value: "mc:eproxyrelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 13502758979338826475
        Name: "Fantasy Crossbow Bolt 01"
        Transform {
          Location {
            X: -1.1920929e-07
            Z: 55.2830811
          }
          Rotation {
            Yaw: 90
          }
          Scale {
            X: 0.154319018
            Y: 0.284608603
            Z: 0.150036022
          }
        }
        ParentId: 675622591702908001
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 18434079688766523124
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.241746828
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.241746828
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
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
          DisableReceiveDecals: true
          InteractWithTriggers: true
          StaticMesh {
            Physics {
            }
            BoundsScale: 1
          }
        }
        Relevance {
          Value: "mc:eproxyrelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 15157331217362616326
        Name: "Fantasy Crossbow Bolt 01"
        Transform {
          Location {
            X: -0.000122189522
            Z: 43.3270264
          }
          Rotation {
            Pitch: -0.000122943398
            Yaw: -179.999954
            Roll: 179.999954
          }
          Scale {
            X: 1.35277176
            Y: 1.35277188
            Z: 0.913471162
          }
        }
        ParentId: 675622591702908001
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 3786559222004126605
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.255000025
              G: 0.255000025
              B: 0.255000025
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
            Id: 17616555706524180168
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          DisableReceiveDecals: true
          InteractWithTriggers: true
          StaticMesh {
            Physics {
            }
            BoundsScale: 1
          }
        }
        Relevance {
          Value: "mc:eproxyrelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 13114360152241696292
        Name: "Fantasy Crossbow Bolt 01"
        Transform {
          Location {
            X: 0.000244021416
            Z: 58.5284424
          }
          Rotation {
            Pitch: -0.000122943398
            Yaw: -179.999954
            Roll: 179.999954
          }
          Scale {
            X: 1.20228684
            Y: 1.20228696
            Z: 0.81185478
          }
        }
        ParentId: 675622591702908001
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 3786559222004126605
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.26000002
              G: 0.26000002
              B: 0.26000002
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
            Id: 17616555706524180168
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          DisableReceiveDecals: true
          InteractWithTriggers: true
          StaticMesh {
            Physics {
            }
            BoundsScale: 1
          }
        }
        Relevance {
          Value: "mc:eproxyrelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 2849554057592502633
        Name: "Fantasy Crossbow Bolt 01"
        Transform {
          Location {
            X: -1.1920929e-07
            Z: 55.2830811
          }
          Rotation {
            Pitch: -0.000122070312
            Yaw: 90
          }
          Scale {
            X: 0.136708081
            Y: 0.252129078
            Z: 0.132913902
          }
        }
        ParentId: 675622591702908001
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 17495673580880174569
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.241746828
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.241746828
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
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
          DisableReceiveDecals: true
          InteractWithTriggers: true
          StaticMesh {
            Physics {
            }
            BoundsScale: 1
          }
        }
        Relevance {
          Value: "mc:eproxyrelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 6864461391354438373
        Name: "Fantasy Crossbow Bolt 01"
        Transform {
          Location {
            X: 9.86047723e-08
            Y: -9.19602675e-12
            Z: -6.47113037
          }
          Rotation {
            Pitch: 89.6357574
            Yaw: 90
            Roll: -0.00109863281
          }
          Scale {
            X: 0.0792825818
            Y: 0.0792826
            Z: 0.139981478
          }
        }
        ParentId: 675622591702908001
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_Trim:color"
            Color {
              R: 0.0570000038
              G: 0.0135894045
              A: 1
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 3786559222004126605
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.181000009
              G: 0.181000009
              B: 0.181000009
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
            Id: 8936463881719161671
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          DisableReceiveDecals: true
          InteractWithTriggers: true
          StaticMesh {
            Physics {
            }
            BoundsScale: 1
          }
        }
        Relevance {
          Value: "mc:eproxyrelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 3764253230638893660
        Name: "Plasma Ball Projectile VFX"
        Transform {
          Location {
            X: 0.00497352937
            Y: 0.00659179688
            Z: 54.8624344
          }
          Rotation {
            Yaw: 8.30505525e-11
            Roll: 8.14221746e-11
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 675622591702908001
        UnregisteredParameters {
          Overrides {
            Name: "bp:Enable Arc Ball"
            Bool: false
          }
          Overrides {
            Name: "bp:Enable Plasma"
            Bool: false
          }
          Overrides {
            Name: "bp:Enable Flare"
            Bool: false
          }
          Overrides {
            Name: "bp:Enable Arcs "
            Bool: true
          }
          Overrides {
            Name: "bp:Particle Scale Multiplier"
            Float: 0.1
          }
          Overrides {
            Name: "bp:color"
            Color {
              R: 0.0117881438
              B: 0.89
              A: 1
            }
          }
          Overrides {
            Name: "bp:Emissive Boost"
            Float: 28.1623611
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
        Id: 11185953839469820517
        Name: "Plasma Ball Projectile VFX"
        Transform {
          Location {
            X: 0.00497352937
            Y: 0.00659179688
            Z: 54.8624344
          }
          Rotation {
            Yaw: 8.30505525e-11
            Roll: 8.14221746e-11
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 675622591702908001
        UnregisteredParameters {
          Overrides {
            Name: "bp:Enable Arc Ball"
            Bool: false
          }
          Overrides {
            Name: "bp:Enable Plasma"
            Bool: false
          }
          Overrides {
            Name: "bp:Enable Flare"
            Bool: false
          }
          Overrides {
            Name: "bp:Enable Arcs "
            Bool: true
          }
          Overrides {
            Name: "bp:Particle Scale Multiplier"
            Float: 0.1
          }
          Overrides {
            Name: "bp:color"
            Color {
              R: 0.0117881438
              B: 0.89
              A: 1
            }
          }
          Overrides {
            Name: "bp:Emissive Boost"
            Float: 28.1623611
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
        Id: 178936575899166147
        Name: "Plasma Ball Projectile VFX"
        Transform {
          Location {
            X: 0.840010762
            Y: 0.00659179688
            Z: 54.8624344
          }
          Rotation {
            Yaw: 8.30505525e-11
            Roll: 8.14221746e-11
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 675622591702908001
        UnregisteredParameters {
          Overrides {
            Name: "bp:Enable Arc Ball"
            Bool: false
          }
          Overrides {
            Name: "bp:Enable Plasma"
            Bool: false
          }
          Overrides {
            Name: "bp:Enable Flare"
            Bool: false
          }
          Overrides {
            Name: "bp:Enable Arcs "
            Bool: true
          }
          Overrides {
            Name: "bp:Particle Scale Multiplier"
            Float: 0.1
          }
          Overrides {
            Name: "bp:color"
            Color {
              R: 0.0117881438
              B: 0.89
              A: 1
            }
          }
          Overrides {
            Name: "bp:Emissive Boost"
            Float: 28.1623611
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
        Id: 13462582247410971599
        Name: "Plasma Ball Projectile VFX"
        Transform {
          Location {
            X: 0.00497352937
            Y: 0.00659179688
            Z: 54.8624344
          }
          Rotation {
            Yaw: 8.30505525e-11
            Roll: 8.14221746e-11
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 675622591702908001
        UnregisteredParameters {
          Overrides {
            Name: "bp:Enable Arc Ball"
            Bool: false
          }
          Overrides {
            Name: "bp:Enable Plasma"
            Bool: false
          }
          Overrides {
            Name: "bp:Enable Flare"
            Bool: false
          }
          Overrides {
            Name: "bp:Enable Arcs "
            Bool: true
          }
          Overrides {
            Name: "bp:Particle Scale Multiplier"
            Float: 0.1
          }
          Overrides {
            Name: "bp:color"
            Color {
              R: 0.0117881438
              B: 0.89
              A: 1
            }
          }
          Overrides {
            Name: "bp:Emissive Boost"
            Float: 28.1623611
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
    }
    Assets {
      Id: 12805935249704895206
      Name: "Fantasy Club 005"
      PlatformAssetType: 9
      PrimaryAsset {
        AssetType: "PlatformBrushAssetRef"
        AssetId: "UI_Fantasy_Weapon_Club_005"
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
      Id: 10602013473409766249
      Name: "Cylinder"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_cylinder_002"
      }
    }
    Assets {
      Id: 18434079688766523124
      Name: "Metal Basic 01"
      PlatformAssetType: 2
      PrimaryAsset {
        AssetType: "MaterialAssetRef"
        AssetId: "mi_metal_basic_001"
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
      Id: 17616555706524180168
      Name: "Fantasy Pommel 02"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_weap_fan_pommel_002"
      }
    }
    Assets {
      Id: 3786559222004126605
      Name: "Advanced Material"
      PlatformAssetType: 2
      PrimaryAsset {
        AssetType: "MaterialAssetRef"
        AssetId: "universal_material_001"
      }
    }
    Assets {
      Id: 8936463881719161671
      Name: "Ring - Thick"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_torus_005"
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
    PrimaryAssetId {
      AssetType: "None"
      AssetId: "None"
    }
  }
  SerializationVersion: 118
}
