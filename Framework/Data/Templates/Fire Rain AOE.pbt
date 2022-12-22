Assets {
  Id: 16737318897597383360
  Name: "Fire Rain AOE"
  PlatformAssetType: 5
  TemplateAsset {
    ObjectBlock {
      RootId: 15589842693002402144
      Objects {
        Id: 15589842693002402144
        Name: "Fire Rain AOE"
        Transform {
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 4781671109827199097
        ChildIds: 303116432941431958
        ChildIds: 9749747878479882719
        UnregisteredParameters {
          Overrides {
            Name: "cs:SpawnDelay"
            Float: 0.1
          }
          Overrides {
            Name: "cs:Projectile"
            AssetReference {
              Id: 7842588646174322897
            }
          }
          Overrides {
            Name: "cs:ProjectileSpeed"
            Float: 1700
          }
          Overrides {
            Name: "cs:ProjectileLength"
            Float: 13
          }
          Overrides {
            Name: "cs:ProjectileRadius"
            Float: 13
          }
          Overrides {
            Name: "cs:ProjectileLifeSpan"
            Float: 20
          }
          Overrides {
            Name: "cs:Direction"
            Vector {
              Z: -1
            }
          }
          Overrides {
            Name: "cs:IntervalTime"
            Float: 0.3
          }
          Overrides {
            Name: "cs:ProjectileImpactAligned"
            AssetReference {
              Id: 11994924883816164514
            }
          }
          Overrides {
            Name: "cs:BlastImpactTemplate"
            AssetReference {
              Id: 8637728897842857331
            }
          }
          Overrides {
            Name: "cs:BlastDamageRange"
            Vector2 {
              X: 46
              Y: 86
            }
          }
          Overrides {
            Name: "cs:BlastRadius"
            Float: 700
          }
          Overrides {
            Name: "cs:BlastKnockbackSpeed"
            Float: 0
          }
          Overrides {
            Name: "cs:ApplyEffect"
            Bool: true
          }
          Overrides {
            Name: "cs:EffectName"
            String: "Fire"
          }
          Overrides {
            Name: "cs:EffectDuration"
            Float: 2
          }
          Overrides {
            Name: "cs:SpeedModifier"
            Float: 0
          }
          Overrides {
            Name: "cs:FreezeMovement"
            Bool: false
          }
          Overrides {
            Name: "cs:FreezeAbilities"
            Bool: false
          }
          Overrides {
            Name: "cs:PlayerEffectTemplate"
            AssetReference {
              Id: 14975567287265941604
            }
          }
          Overrides {
            Name: "cs:PlayerEffectSocket"
            String: "pelvis"
          }
          Overrides {
            Name: "cs:Tag_1"
            String: "Magic"
          }
          Overrides {
            Name: "cs:Tag_2"
            String: "Fire"
          }
        }
        Lifespan: 5
        WantsNetworking: true
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
          Value: "mc:eproxyrelevance:high"
        }
      }
      Objects {
        Id: 303116432941431958
        Name: "SpawnProjectilesAOE"
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
        ParentId: 15589842693002402144
        UnregisteredParameters {
          Overrides {
            Name: "cs:ComponentRoot"
            ObjectReference {
              SubObjectId: 15589842693002402144
            }
          }
          Overrides {
            Name: "cs:SpawnersParent"
            ObjectReference {
              SubObjectId: 9749747878479882719
            }
          }
          Overrides {
            Name: "cs:API_Effect"
            AssetReference {
              Id: 7538967294435110204
            }
          }
        }
        WantsNetworking: true
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
            Id: 11118187448301686207
          }
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
      }
      Objects {
        Id: 9749747878479882719
        Name: "Spawners Position"
        Transform {
          Location {
            Z: 1700
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 15589842693002402144
        ChildIds: 960708175920793368
        ChildIds: 3944580454232681477
        ChildIds: 6382162916796341808
        ChildIds: 7497941866666798677
        ChildIds: 17502173639847947398
        UnregisteredParameters {
        }
        WantsNetworking: true
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
          IsFilePartition: true
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
      }
      Objects {
        Id: 960708175920793368
        Name: "Position"
        Transform {
          Location {
            Z: -980
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 9749747878479882719
        ChildIds: 11736051630453703808
        ChildIds: 1678199633436945438
        ChildIds: 13864188707633177860
        ChildIds: 1428163991146193287
        UnregisteredParameters {
        }
        WantsNetworking: true
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
      }
      Objects {
        Id: 11736051630453703808
        Name: "Magic Burst Hemicircle VFX"
        Transform {
          Location {
          }
          Rotation {
            Roll: 179.999954
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 960708175920793368
        UnregisteredParameters {
          Overrides {
            Name: "bp:Local Space"
            Bool: true
          }
          Overrides {
            Name: "bp:Enable Sparks"
            Bool: false
          }
          Overrides {
            Name: "bp:color"
            Color {
              R: 15
              G: 4.20416069
              B: 1.21807694
              A: 1
            }
          }
          Overrides {
            Name: "bp:Secondary Color"
            Color {
              R: 5
              G: 1.66666651
              B: 1.66666651
              A: 1
            }
          }
        }
        WantsNetworking: true
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
            Id: 458981036025391815
          }
          TeamSettings {
          }
          Vfx {
          }
        }
        Relevance {
          Value: "mc:edistancerelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
      }
      Objects {
        Id: 1678199633436945438
        Name: "Magic Burst Hemicircle VFX"
        Transform {
          Location {
          }
          Rotation {
            Yaw: 179.999969
            Roll: 179.999954
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 960708175920793368
        UnregisteredParameters {
          Overrides {
            Name: "bp:Local Space"
            Bool: true
          }
          Overrides {
            Name: "bp:Enable Sparks"
            Bool: false
          }
          Overrides {
            Name: "bp:color"
            Color {
              R: 15
              G: 4.20416069
              B: 1.21807694
              A: 1
            }
          }
          Overrides {
            Name: "bp:Secondary Color"
            Color {
              R: 5
              G: 1.66666651
              B: 1.66666651
              A: 1
            }
          }
          Overrides {
            Name: "bp:Enable Flash"
            Bool: false
          }
        }
        WantsNetworking: true
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
            Id: 458981036025391815
          }
          TeamSettings {
          }
          Vfx {
          }
        }
        Relevance {
          Value: "mc:edistancerelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
      }
      Objects {
        Id: 13864188707633177860
        Name: "Projectile Muzzle Sound"
        Transform {
          Location {
            Z: -200
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 960708175920793368
        UnregisteredParameters {
        }
        WantsNetworking: true
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
            Id: 5094660356281731799
          }
          Volume: 1.5
          Falloff: 4500
          Radius: 600
          IsSpatializationEnabled: true
          IsAttenuationEnabled: true
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
      }
      Objects {
        Id: 1428163991146193287
        Name: "Visual Gizmo"
        Transform {
          Location {
          }
          Rotation {
            Roll: 179.999954
          }
          Scale {
            X: 0.4
            Y: 0.4
            Z: 0.4
          }
        }
        ParentId: 960708175920793368
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 4998159696449081601
            }
          }
        }
        Lifespan: 0.0001
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
        CoreMesh {
          MeshAsset {
            Id: 1424442766261525039
          }
          Teams {
          }
          DisableCastShadows: true
          DisableReceiveDecals: true
          InteractWithTriggers: true
          StaticMesh {
            Physics {
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
      }
      Objects {
        Id: 3944580454232681477
        Name: "Position"
        Transform {
          Location {
            X: 395
            Y: -420
            Z: -430
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 9749747878479882719
        ChildIds: 4851987850533676280
        ChildIds: 9009672592422389113
        ChildIds: 16778887163869893450
        ChildIds: 10225947920162921776
        UnregisteredParameters {
        }
        WantsNetworking: true
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
      }
      Objects {
        Id: 4851987850533676280
        Name: "Magic Burst Hemicircle VFX"
        Transform {
          Location {
          }
          Rotation {
            Roll: 179.999954
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 3944580454232681477
        UnregisteredParameters {
          Overrides {
            Name: "bp:Local Space"
            Bool: true
          }
          Overrides {
            Name: "bp:Enable Sparks"
            Bool: false
          }
          Overrides {
            Name: "bp:color"
            Color {
              R: 15
              G: 4.20416069
              B: 1.21807694
              A: 1
            }
          }
          Overrides {
            Name: "bp:Secondary Color"
            Color {
              R: 5
              G: 1.66666651
              B: 1.66666651
              A: 1
            }
          }
        }
        WantsNetworking: true
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
            Id: 458981036025391815
          }
          TeamSettings {
          }
          Vfx {
          }
        }
        Relevance {
          Value: "mc:edistancerelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
      }
      Objects {
        Id: 9009672592422389113
        Name: "Magic Burst Hemicircle VFX"
        Transform {
          Location {
          }
          Rotation {
            Yaw: 179.999969
            Roll: 179.999954
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 3944580454232681477
        UnregisteredParameters {
          Overrides {
            Name: "bp:Local Space"
            Bool: true
          }
          Overrides {
            Name: "bp:Enable Sparks"
            Bool: false
          }
          Overrides {
            Name: "bp:color"
            Color {
              R: 15
              G: 4.20416069
              B: 1.21807694
              A: 1
            }
          }
          Overrides {
            Name: "bp:Secondary Color"
            Color {
              R: 5
              G: 1.66666651
              B: 1.66666651
              A: 1
            }
          }
          Overrides {
            Name: "bp:Enable Flash"
            Bool: false
          }
        }
        WantsNetworking: true
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
            Id: 458981036025391815
          }
          TeamSettings {
          }
          Vfx {
          }
        }
        Relevance {
          Value: "mc:edistancerelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
      }
      Objects {
        Id: 16778887163869893450
        Name: "Projectile Muzzle Sound"
        Transform {
          Location {
            Z: -200
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 3944580454232681477
        UnregisteredParameters {
        }
        WantsNetworking: true
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
            Id: 5094660356281731799
          }
          Volume: 1.5
          Falloff: 4500
          Radius: 600
          IsSpatializationEnabled: true
          IsAttenuationEnabled: true
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
      }
      Objects {
        Id: 10225947920162921776
        Name: "Visual Gizmo"
        Transform {
          Location {
          }
          Rotation {
            Roll: 179.999954
          }
          Scale {
            X: 0.4
            Y: 0.4
            Z: 0.4
          }
        }
        ParentId: 3944580454232681477
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 4998159696449081601
            }
          }
        }
        Lifespan: 0.0001
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
        CoreMesh {
          MeshAsset {
            Id: 1424442766261525039
          }
          Teams {
          }
          DisableCastShadows: true
          DisableReceiveDecals: true
          InteractWithTriggers: true
          StaticMesh {
            Physics {
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
      }
      Objects {
        Id: 6382162916796341808
        Name: "Position"
        Transform {
          Location {
            X: -450
            Y: -510
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 9749747878479882719
        ChildIds: 10933970759014611684
        ChildIds: 10316503049401416816
        ChildIds: 9082704566484555354
        ChildIds: 9286749755196430227
        UnregisteredParameters {
        }
        WantsNetworking: true
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
      }
      Objects {
        Id: 10933970759014611684
        Name: "Magic Burst Hemicircle VFX"
        Transform {
          Location {
          }
          Rotation {
            Roll: 179.999954
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 6382162916796341808
        UnregisteredParameters {
          Overrides {
            Name: "bp:Local Space"
            Bool: true
          }
          Overrides {
            Name: "bp:Enable Sparks"
            Bool: false
          }
          Overrides {
            Name: "bp:color"
            Color {
              R: 15
              G: 4.20416069
              B: 1.21807694
              A: 1
            }
          }
          Overrides {
            Name: "bp:Secondary Color"
            Color {
              R: 5
              G: 1.66666651
              B: 1.66666651
              A: 1
            }
          }
        }
        WantsNetworking: true
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
            Id: 458981036025391815
          }
          TeamSettings {
          }
          Vfx {
          }
        }
        Relevance {
          Value: "mc:edistancerelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
      }
      Objects {
        Id: 10316503049401416816
        Name: "Magic Burst Hemicircle VFX"
        Transform {
          Location {
          }
          Rotation {
            Yaw: 179.999969
            Roll: 179.999954
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 6382162916796341808
        UnregisteredParameters {
          Overrides {
            Name: "bp:Local Space"
            Bool: true
          }
          Overrides {
            Name: "bp:Enable Sparks"
            Bool: false
          }
          Overrides {
            Name: "bp:color"
            Color {
              R: 15
              G: 4.20416069
              B: 1.21807694
              A: 1
            }
          }
          Overrides {
            Name: "bp:Secondary Color"
            Color {
              R: 5
              G: 1.66666651
              B: 1.66666651
              A: 1
            }
          }
          Overrides {
            Name: "bp:Enable Flash"
            Bool: false
          }
        }
        WantsNetworking: true
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
            Id: 458981036025391815
          }
          TeamSettings {
          }
          Vfx {
          }
        }
        Relevance {
          Value: "mc:edistancerelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
      }
      Objects {
        Id: 9082704566484555354
        Name: "Projectile Muzzle Sound"
        Transform {
          Location {
            Z: -200
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 6382162916796341808
        UnregisteredParameters {
        }
        WantsNetworking: true
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
            Id: 5094660356281731799
          }
          Volume: 1.5
          Falloff: 4500
          Radius: 600
          IsSpatializationEnabled: true
          IsAttenuationEnabled: true
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
      }
      Objects {
        Id: 9286749755196430227
        Name: "Visual Gizmo"
        Transform {
          Location {
          }
          Rotation {
            Roll: 179.999954
          }
          Scale {
            X: 0.4
            Y: 0.4
            Z: 0.4
          }
        }
        ParentId: 6382162916796341808
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 4998159696449081601
            }
          }
        }
        Lifespan: 0.0001
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
        CoreMesh {
          MeshAsset {
            Id: 1424442766261525039
          }
          Teams {
          }
          DisableCastShadows: true
          DisableReceiveDecals: true
          InteractWithTriggers: true
          StaticMesh {
            Physics {
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
      }
      Objects {
        Id: 7497941866666798677
        Name: "Position"
        Transform {
          Location {
            X: -535
            Y: 490
            Z: 400
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 9749747878479882719
        ChildIds: 11160032559385153565
        ChildIds: 14218101676250143745
        ChildIds: 14475305967482265555
        ChildIds: 13995615751392651045
        UnregisteredParameters {
        }
        WantsNetworking: true
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
      }
      Objects {
        Id: 11160032559385153565
        Name: "Magic Burst Hemicircle VFX"
        Transform {
          Location {
          }
          Rotation {
            Roll: 179.999954
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 7497941866666798677
        UnregisteredParameters {
          Overrides {
            Name: "bp:Local Space"
            Bool: true
          }
          Overrides {
            Name: "bp:Enable Sparks"
            Bool: false
          }
          Overrides {
            Name: "bp:color"
            Color {
              R: 15
              G: 4.20416069
              B: 1.21807694
              A: 1
            }
          }
          Overrides {
            Name: "bp:Secondary Color"
            Color {
              R: 5
              G: 1.66666651
              B: 1.66666651
              A: 1
            }
          }
        }
        WantsNetworking: true
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
            Id: 458981036025391815
          }
          TeamSettings {
          }
          Vfx {
          }
        }
        Relevance {
          Value: "mc:edistancerelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
      }
      Objects {
        Id: 14218101676250143745
        Name: "Magic Burst Hemicircle VFX"
        Transform {
          Location {
          }
          Rotation {
            Yaw: 179.999969
            Roll: 179.999954
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 7497941866666798677
        UnregisteredParameters {
          Overrides {
            Name: "bp:Local Space"
            Bool: true
          }
          Overrides {
            Name: "bp:Enable Sparks"
            Bool: false
          }
          Overrides {
            Name: "bp:color"
            Color {
              R: 15
              G: 4.20416069
              B: 1.21807694
              A: 1
            }
          }
          Overrides {
            Name: "bp:Secondary Color"
            Color {
              R: 5
              G: 1.66666651
              B: 1.66666651
              A: 1
            }
          }
          Overrides {
            Name: "bp:Enable Flash"
            Bool: false
          }
        }
        WantsNetworking: true
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
            Id: 458981036025391815
          }
          TeamSettings {
          }
          Vfx {
          }
        }
        Relevance {
          Value: "mc:edistancerelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
      }
      Objects {
        Id: 14475305967482265555
        Name: "Projectile Muzzle Sound"
        Transform {
          Location {
            Z: -200
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 7497941866666798677
        UnregisteredParameters {
        }
        WantsNetworking: true
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
            Id: 5094660356281731799
          }
          Volume: 1.5
          Falloff: 4500
          Radius: 600
          IsSpatializationEnabled: true
          IsAttenuationEnabled: true
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
      }
      Objects {
        Id: 13995615751392651045
        Name: "Visual Gizmo"
        Transform {
          Location {
          }
          Rotation {
            Roll: 179.999954
          }
          Scale {
            X: 0.4
            Y: 0.4
            Z: 0.4
          }
        }
        ParentId: 7497941866666798677
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 4998159696449081601
            }
          }
        }
        Lifespan: 0.0001
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
        CoreMesh {
          MeshAsset {
            Id: 1424442766261525039
          }
          Teams {
          }
          DisableCastShadows: true
          DisableReceiveDecals: true
          InteractWithTriggers: true
          StaticMesh {
            Physics {
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
      }
      Objects {
        Id: 17502173639847947398
        Name: "Position"
        Transform {
          Location {
            X: 385
            Y: 510
            Z: 150
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 9749747878479882719
        ChildIds: 11800001301053094935
        ChildIds: 17847499267260316035
        ChildIds: 16048092755260303883
        ChildIds: 11891110785948348487
        UnregisteredParameters {
        }
        WantsNetworking: true
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
      }
      Objects {
        Id: 11800001301053094935
        Name: "Magic Burst Hemicircle VFX"
        Transform {
          Location {
          }
          Rotation {
            Roll: 179.999954
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 17502173639847947398
        UnregisteredParameters {
          Overrides {
            Name: "bp:Local Space"
            Bool: true
          }
          Overrides {
            Name: "bp:Enable Sparks"
            Bool: false
          }
          Overrides {
            Name: "bp:color"
            Color {
              R: 15
              G: 4.20416069
              B: 1.21807694
              A: 1
            }
          }
          Overrides {
            Name: "bp:Secondary Color"
            Color {
              R: 5
              G: 1.66666651
              B: 1.66666651
              A: 1
            }
          }
        }
        WantsNetworking: true
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
            Id: 458981036025391815
          }
          TeamSettings {
          }
          Vfx {
          }
        }
        Relevance {
          Value: "mc:edistancerelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
      }
      Objects {
        Id: 17847499267260316035
        Name: "Magic Burst Hemicircle VFX"
        Transform {
          Location {
          }
          Rotation {
            Yaw: 179.999969
            Roll: 179.999954
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 17502173639847947398
        UnregisteredParameters {
          Overrides {
            Name: "bp:Local Space"
            Bool: true
          }
          Overrides {
            Name: "bp:Enable Sparks"
            Bool: false
          }
          Overrides {
            Name: "bp:color"
            Color {
              R: 15
              G: 4.20416069
              B: 1.21807694
              A: 1
            }
          }
          Overrides {
            Name: "bp:Secondary Color"
            Color {
              R: 5
              G: 1.66666651
              B: 1.66666651
              A: 1
            }
          }
          Overrides {
            Name: "bp:Enable Flash"
            Bool: false
          }
        }
        WantsNetworking: true
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
            Id: 458981036025391815
          }
          TeamSettings {
          }
          Vfx {
          }
        }
        Relevance {
          Value: "mc:edistancerelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
      }
      Objects {
        Id: 16048092755260303883
        Name: "Projectile Muzzle Sound"
        Transform {
          Location {
            Z: -200
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 17502173639847947398
        UnregisteredParameters {
        }
        WantsNetworking: true
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
            Id: 5094660356281731799
          }
          Volume: 1.5
          Falloff: 4500
          Radius: 600
          IsSpatializationEnabled: true
          IsAttenuationEnabled: true
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
      }
      Objects {
        Id: 11891110785948348487
        Name: "Visual Gizmo"
        Transform {
          Location {
          }
          Rotation {
            Roll: 179.999954
          }
          Scale {
            X: 0.4
            Y: 0.4
            Z: 0.4
          }
        }
        ParentId: 17502173639847947398
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 4998159696449081601
            }
          }
        }
        Lifespan: 0.0001
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
        CoreMesh {
          MeshAsset {
            Id: 1424442766261525039
          }
          Teams {
          }
          DisableCastShadows: true
          DisableReceiveDecals: true
          InteractWithTriggers: true
          StaticMesh {
            Physics {
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
      }
    }
    Assets {
      Id: 458981036025391815
      Name: "Magic Burst Hemicircle VFX"
      PlatformAssetType: 8
      PrimaryAsset {
        AssetType: "VfxBlueprintAssetRef"
        AssetId: "fxbp_magic_burst_hemicircle"
      }
    }
    Assets {
      Id: 5094660356281731799
      Name: "Magic Fire Attack Spell 01 SFX"
      PlatformAssetType: 7
      PrimaryAsset {
        AssetType: "AudioAssetRef"
        AssetId: "sfx_magic_fire_attack_spell_01_Cue_ref"
      }
    }
    Assets {
      Id: 1424442766261525039
      Name: "Cone"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_cone_001"
      }
    }
    Assets {
      Id: 4998159696449081601
      Name: "Wireframe"
      PlatformAssetType: 2
      PrimaryAsset {
        AssetType: "MaterialAssetRef"
        AssetId: "wireframe_glow_001"
      }
    }
    PrimaryAssetId {
      AssetType: "None"
      AssetId: "None"
    }
  }
  SerializationVersion: 123
}
