Assets {
  Id: 7827469757850190083
  Name: "Mage Orc Tornado Placement Basic"
  PlatformAssetType: 5
  TemplateAsset {
    ObjectBlock {
      RootId: 1605107493656465103
      Objects {
        Id: 1605107493656465103
        Name: "Mage Orc Tornado Placement Basic"
        Transform {
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 4781671109827199097
        ChildIds: 12597983505510063666
        ChildIds: 13992041790287050057
        UnregisteredParameters {
          Overrides {
            Name: "cs:lifespan"
            Float: 0
          }
          Overrides {
            Name: "cs:decaleScale"
            Float: 0
          }
          Overrides {
            Name: "cs:damage"
            Float: 0
          }
          Overrides {
            Name: "cs:range"
            Float: 0
          }
          Overrides {
            Name: "cs:ability"
            ObjectReference {
            }
          }
          Overrides {
            Name: "cs:lifespan:isrep"
            Bool: true
          }
          Overrides {
            Name: "cs:lifespan:ml"
            Bool: false
          }
          Overrides {
            Name: "cs:decaleScale:isrep"
            Bool: true
          }
          Overrides {
            Name: "cs:decaleScale:ml"
            Bool: false
          }
          Overrides {
            Name: "cs:damage:isrep"
            Bool: true
          }
          Overrides {
            Name: "cs:damage:ml"
            Bool: false
          }
          Overrides {
            Name: "cs:range:isrep"
            Bool: true
          }
          Overrides {
            Name: "cs:range:ml"
            Bool: false
          }
          Overrides {
            Name: "cs:ability:isrep"
            Bool: true
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
        EditorIndicatorVisibility {
          Value: "mc:eindicatorvisibility:visiblewhenselected"
        }
        NetworkContext {
          Type: RuntimeStatic
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 12597983505510063666
        Name: "Mage Orc Tornado Placement Basic"
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
        ParentId: 1605107493656465103
        ChildIds: 9322174965092246613
        ChildIds: 865622591006778875
        ChildIds: 7109949033584959669
        ChildIds: 9049248418557605272
        ChildIds: 2329305905851159841
        UnregisteredParameters {
          Overrides {
            Name: "cs:lifespan"
            Float: 0
          }
          Overrides {
            Name: "cs:decaleScale"
            Float: 0
          }
          Overrides {
            Name: "cs:damage"
            Float: 0
          }
          Overrides {
            Name: "cs:range"
            Float: 0
          }
          Overrides {
            Name: "cs:lifespan:isrep"
            Bool: true
          }
          Overrides {
            Name: "cs:decaleScale:isrep"
            Bool: true
          }
          Overrides {
            Name: "cs:damage:isrep"
            Bool: true
          }
          Overrides {
            Name: "cs:range:isrep"
            Bool: true
          }
        }
        Lifespan: 15
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
        Id: 9322174965092246613
        Name: "2D Basic Shapes Decal"
        Transform {
          Location {
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 3
          }
        }
        ParentId: 12597983505510063666
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
              R: 0.721568644
              G: 0.0705882609
              A: 0.5
            }
          }
          Overrides {
            Name: "bp:Stroke Color"
            Color {
              R: 0.941000044
              G: 0.0920543894
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
        Id: 865622591006778875
        Name: "TornadoFadeOut"
        Transform {
          Location {
            X: 17363.5547
            Y: 17436.3633
            Z: -3087.84668
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 12597983505510063666
        UnregisteredParameters {
          Overrides {
            Name: "cs:Visual"
            ObjectReference {
              SubObjectId: 7109949033584959669
            }
          }
          Overrides {
            Name: "cs:Audio"
            ObjectReference {
              SubObjectId: 9049248418557605272
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
            Id: 2855777477313207764
          }
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 7109949033584959669
        Name: "VFX"
        Transform {
          Location {
          }
          Rotation {
          }
          Scale {
            X: 0.457371473
            Y: 0.457371473
            Z: 0.457371473
          }
        }
        ParentId: 12597983505510063666
        ChildIds: 12695977401961365304
        ChildIds: 7191395873679670709
        ChildIds: 6675610130454227911
        ChildIds: 5072506246919987225
        ChildIds: 13430932362639473822
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
        Id: 12695977401961365304
        Name: "Smoke Puff Radial VFX"
        Transform {
          Location {
          }
          Rotation {
          }
          Scale {
            X: 1.40151441
            Y: 1.40151441
            Z: 0.700757205
          }
        }
        ParentId: 7109949033584959669
        UnregisteredParameters {
          Overrides {
            Name: "bp:Burst"
            Bool: false
          }
          Overrides {
            Name: "bp:Radius"
            Float: 8.14006424
          }
          Overrides {
            Name: "bp:Density"
            Float: 0.535658479
          }
          Overrides {
            Name: "bp:Color"
            Color {
              R: 0.721568644
              G: 0.0705882609
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
            Id: 11736239447341257999
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
        Id: 7191395873679670709
        Name: "Tornado VFX_test"
        Transform {
          Location {
            Z: 853.129
          }
          Rotation {
            Yaw: -1.3660373e-05
            Roll: -179.999954
          }
          Scale {
            X: 1.29999983
            Y: 1.29999983
            Z: 1.10040045
          }
        }
        ParentId: 7109949033584959669
        UnregisteredParameters {
          Overrides {
            Name: "bp:Color A"
            Color {
              R: 0.721568644
              G: 0.325151622
              B: 0.119838767
              A: 0.383000016
            }
          }
          Overrides {
            Name: "bp:Color C"
            Color {
              R: 1
              G: 0.4
              B: 0.189019084
              A: 0.770000041
            }
          }
          Overrides {
            Name: "bp:Color B"
            Color {
              R: 4
              G: 2.00000072
              B: 0.415625095
              A: 0.749
            }
          }
          Overrides {
            Name: "bp:Surface Speed"
            Float: 2
          }
          Overrides {
            Name: "bp:Wiggle Offset Amount"
            Float: 0.732905686
          }
          Overrides {
            Name: "bp:Wiggle Speed"
            Float: 0.21
          }
          Overrides {
            Name: "bp:Wiggle Waves Frequency"
            Float: 0.881139219
          }
          Overrides {
            Name: "bp:Body Fade"
            Float: 0.147646487
          }
          Overrides {
            Name: "bp:Top Fade"
            Float: 0
          }
          Overrides {
            Name: "bp:Bottom Fade"
            Float: 0
          }
          Overrides {
            Name: "bp:Edge Shredding"
            Bool: true
          }
          Overrides {
            Name: "bp:Cross Section Width"
            Float: 0.23
          }
          Overrides {
            Name: "bp:Collapse Funnel Amount"
            Float: 0.194955975
          }
          Overrides {
            Name: "bp:Fade Length Bottom"
            Float: 0.0944233239
          }
          Overrides {
            Name: "bp:Fade Length Top"
            Float: 0.058941219
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
            Id: 15599228502728747198
          }
          TeamSettings {
          }
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 6675610130454227911
        Name: "Swirling Dust VFX"
        Transform {
          Location {
            Z: -172.939453
          }
          Rotation {
          }
          Scale {
            X: 1.74059868
            Y: 1.74059868
            Z: 1.74059868
          }
        }
        ParentId: 7109949033584959669
        UnregisteredParameters {
          Overrides {
            Name: "bp:Color"
            Color {
              R: 1
              G: 0.72556293
              B: 0.63
              A: 1
            }
          }
          Overrides {
            Name: "bp:Debris Color"
            Color {
              R: 0.114583336
              G: 0.0775055438
              B: 0.0797866732
              A: 1
            }
          }
          Overrides {
            Name: "bp:Burst"
            Bool: false
          }
          Overrides {
            Name: "bp:Dust Scale Multiplier"
            Float: 1
          }
          Overrides {
            Name: "bp:Debris Scale Multiplier"
            Float: 2
          }
          Overrides {
            Name: "bp:Dust Density"
            Float: 0.25244984
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
            Id: 8598699987776668464
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
        Id: 5072506246919987225
        Name: "Swirling Dust VFX"
        Transform {
          Location {
            Z: 287.953613
          }
          Rotation {
          }
          Scale {
            X: 1.13145816
            Y: 1.13145816
            Z: 1.13145816
          }
        }
        ParentId: 7109949033584959669
        UnregisteredParameters {
          Overrides {
            Name: "bp:Color"
            Color {
              R: 1
              G: 0.72556293
              B: 0.63
              A: 1
            }
          }
          Overrides {
            Name: "bp:Debris Color"
            Color {
              R: 0.114583336
              G: 0.0775055438
              B: 0.0797866732
              A: 1
            }
          }
          Overrides {
            Name: "bp:Burst"
            Bool: false
          }
          Overrides {
            Name: "bp:Dust Scale Multiplier"
            Float: 1
          }
          Overrides {
            Name: "bp:Debris Scale Multiplier"
            Float: 2
          }
          Overrides {
            Name: "bp:Dust Density"
            Float: 0.25244984
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
            Id: 8598699987776668464
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
        Id: 13430932362639473822
        Name: "Electrical Arc Volume"
        Transform {
          Location {
            Z: 426.170898
          }
          Rotation {
          }
          Scale {
            X: 3.49268532
            Y: 3.49268532
            Z: 6.49944067
          }
        }
        ParentId: 7109949033584959669
        UnregisteredParameters {
          Overrides {
            Name: "bp:Start Plane Z"
            Bool: true
          }
          Overrides {
            Name: "bp:Start Plane X"
            Bool: false
          }
          Overrides {
            Name: "bp:End Plane X"
            Bool: false
          }
          Overrides {
            Name: "bp:End Plane Z"
            Bool: true
          }
          Overrides {
            Name: "bp:Color"
            Color {
              R: 0.99
              A: 1
            }
          }
          Overrides {
            Name: "bp:Secondary Color"
            Color {
              R: 0.702913821
              G: 0.87
              A: 1
            }
          }
          Overrides {
            Name: "bp:Tertiary Color"
            Color {
              R: 0.809999943
              G: 0.434503287
              A: 1
            }
          }
          Overrides {
            Name: "bp:Beam Appearance"
            Enum {
              Value: "mc:ebeamtexturetype:2"
            }
          }
          Overrides {
            Name: "bp:Use Origin as Spawn Source"
            Bool: false
          }
          Overrides {
            Name: "bp:Start Plane Select"
            Enum {
              Value: "mc:efx_planeselector:newenumerator0"
            }
          }
          Overrides {
            Name: "bp:End Plane Y"
            Bool: false
          }
          Overrides {
            Name: "bp:Control Tangents"
            Bool: true
          }
          Overrides {
            Name: "bp:Source Tangent"
            Vector {
              X: 5
            }
          }
          Overrides {
            Name: "bp:Target Tangent"
            Vector {
            }
          }
          Overrides {
            Name: "bp:Beam Maximum Life"
            Float: 0.660797894
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
            Id: 4488260479149208874
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
        Id: 9049248418557605272
        Name: "Nature Wind Steady 01 SFX"
        Transform {
          Location {
            Z: 540.092285
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 12597983505510063666
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
            Id: 1720777226465397474
          }
          AutoPlay: true
          Volume: 1
          Falloff: -1
          Radius: 400
          FadeInTime: 1
          IsSpatializationEnabled: true
          IsAttenuationEnabled: true
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 2329305905851159841
        Name: "Magic Wind Blast Long 01 SFX"
        Transform {
          Location {
            Z: 540.092285
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 12597983505510063666
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
            Id: 12201794874341329756
          }
          AutoPlay: true
          Volume: 1
          Falloff: -1
          Radius: 400
          IsSpatializationEnabled: true
          IsAttenuationEnabled: true
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 13992041790287050057
        Name: "ServerContext"
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
        ParentId: 1605107493656465103
        ChildIds: 14862032781209032285
        ChildIds: 1004523897273166864
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
        NetworkContext {
          Type: Server
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 14862032781209032285
        Name: "Trigger"
        Transform {
          Location {
          }
          Rotation {
          }
          Scale {
            X: 2.5
            Y: 2.5
            Z: 2.5
          }
        }
        ParentId: 13992041790287050057
        Collidable_v2 {
          Value: "mc:ecollisionsetting:forceon"
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
        Trigger {
          TeamSettings {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          TriggerShape_v2 {
            Value: "mc:etriggershape:sphere"
          }
          InteractionTemplate {
          }
          BreadcrumbTemplate {
          }
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 1004523897273166864
        Name: "Tornado_Damage_Server"
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
        ParentId: 13992041790287050057
        UnregisteredParameters {
          Overrides {
            Name: "cs:Trigger"
            ObjectReference {
              SubObjectId: 14862032781209032285
            }
          }
          Overrides {
            Name: "cs:Root"
            ObjectReference {
              SubObjectId: 1605107493656465103
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
        Script {
          ScriptAsset {
            Id: 10048469377128185275
          }
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
      Id: 11736239447341257999
      Name: "Smoke Puff Radial VFX"
      PlatformAssetType: 8
      PrimaryAsset {
        AssetType: "VfxBlueprintAssetRef"
        AssetId: "fxbp_smoke_puff_radial"
      }
    }
    Assets {
      Id: 15599228502728747198
      Name: "Tornado VFX"
      PlatformAssetType: 6
      PrimaryAsset {
        AssetType: "BlueprintAssetRef"
        AssetId: "fxbp_tornado"
      }
    }
    Assets {
      Id: 8598699987776668464
      Name: "Swirling Dust VFX"
      PlatformAssetType: 8
      PrimaryAsset {
        AssetType: "VfxBlueprintAssetRef"
        AssetId: "fxbp_swirling_dust"
      }
    }
    Assets {
      Id: 4488260479149208874
      Name: "Electrical Arc Volume"
      PlatformAssetType: 8
      PrimaryAsset {
        AssetType: "VfxBlueprintAssetRef"
        AssetId: "fxbp_Electrical_Arc_Volume"
      }
    }
    Assets {
      Id: 1720777226465397474
      Name: "Nature Wind Steady 01 SFX"
      PlatformAssetType: 7
      PrimaryAsset {
        AssetType: "AudioAssetRef"
        AssetId: "sfx_nature_wind_steady_01_Cue_ref"
      }
    }
    Assets {
      Id: 12201794874341329756
      Name: "Magic Wind Blast Long 01 SFX"
      PlatformAssetType: 7
      PrimaryAsset {
        AssetType: "AudioAssetRef"
        AssetId: "sfx_magic_wind_blast_long_01_Cue_ref"
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
