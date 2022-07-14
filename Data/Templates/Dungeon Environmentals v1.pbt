Assets {
  Id: 90967338185252434
  Name: "Dungeon Environmentals v1"
  PlatformAssetType: 5
  TemplateAsset {
    ObjectBlock {
      RootId: 14923580974279936522
      Objects {
        Id: 14923580974279936522
        Name: "Environmental"
        Transform {
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 811073393120329763
        ChildIds: 8434685649711827560
        ChildIds: 6062354529811064869
        ChildIds: 4320790115042319025
        ChildIds: 1467669975471724124
        ChildIds: 7546830474050795297
        ChildIds: 4150405809853357534
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
        Id: 8434685649711827560
        Name: "Skylight"
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
        ParentId: 14923580974279936522
        UnregisteredParameters {
          Overrides {
            Name: "bp:Index"
            Int: 3
          }
          Overrides {
            Name: "bp:Occlusion Contrast"
            Float: 0
          }
          Overrides {
            Name: "bp:Intensity"
            Float: 2.40198278
          }
          Overrides {
            Name: "bp:Lower Hemisphere Color"
            Color {
              A: 1
            }
          }
          Overrides {
            Name: "bp:Occlusion Tint"
            Color {
              R: 0.0274509825
              G: 0.0274509825
              B: 0.0392156877
              A: 1
            }
          }
          Overrides {
            Name: "bp:Occlusion Exponent"
            Float: 0.4
          }
          Overrides {
            Name: "bp:Cast Shadows"
            Bool: true
          }
          Overrides {
            Name: "bp:Cast Volumetric Shadows"
            Bool: true
          }
          Overrides {
            Name: "bp:Tint Color"
            Color {
              R: 0.51
              G: 0.669006467
              B: 1
              A: 1
            }
          }
          Overrides {
            Name: "bp:Ambient Image"
            Enum {
              Value: "mc:eambientcubemapssmall:10"
            }
          }
          Overrides {
            Name: "bp:Blend Target Image"
            Enum {
              Value: "mc:eambientcubemapssmall:28"
            }
          }
          Overrides {
            Name: "bp:Blend Amount"
            Float: 0.237793937
          }
          Overrides {
            Name: "bp:Use Captured Sky"
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
            Id: 11515840070784317904
          }
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 6062354529811064869
        Name: "Bloom Post Process"
        Transform {
          Location {
            X: -6053.29297
            Y: -293.136963
            Z: -700
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 14923580974279936522
        UnregisteredParameters {
          Overrides {
            Name: "bp:Intensity"
            Float: 5.84281445
          }
          Overrides {
            Name: "bp:Threshold"
            Float: -0.182053864
          }
          Overrides {
            Name: "bp:Size Scale"
            Float: 6.40624905
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
            Id: 8807644094999718874
          }
          TeamSettings {
          }
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 4320790115042319025
        Name: "Environment Fog Default VFX"
        Transform {
          Location {
            X: -6235.55664
            Y: -541.44342
            Z: -699.999939
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 14923580974279936522
        UnregisteredParameters {
          Overrides {
            Name: "bp:Fog Density"
            Float: 7.43572187
          }
          Overrides {
            Name: "bp:Falloff"
            Float: 2.03837776
          }
          Overrides {
            Name: "bp:Start"
            Float: 0
          }
          Overrides {
            Name: "bp:Opacity"
            Float: 0.851052
          }
          Overrides {
            Name: "bp:Directional Inscattering Color"
            Color {
              R: 0.187904
              G: 0.256
              B: 0.254647136
              A: 1
            }
          }
          Overrides {
            Name: "bp:Layered Fog Density"
            Float: 4.08488
          }
          Overrides {
            Name: "bp:Layered Fog Falloff"
            Float: 0.527654111
          }
          Overrides {
            Name: "bp:Color"
            Color {
              G: 0.279999971
              B: 0.241059572
              A: 1
            }
          }
          Overrides {
            Name: "bp:Volumetric Fog"
            Bool: true
          }
          Overrides {
            Name: "bp:Layered Fog Offset Height"
            Float: 19.1226349
          }
          Overrides {
            Name: "bp:Albedo"
            Color {
              R: 0.61
              G: 1
              B: 0.775298119
              A: 1
            }
          }
          Overrides {
            Name: "bp:Beam View Direction"
            Float: 0.383498549
          }
          Overrides {
            Name: "bp:Light Absorption Amount"
            Float: 1.57779241
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
            Id: 2224571462023946700
          }
          TeamSettings {
          }
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 1467669975471724124
        Name: "Ambient Occlusion Post Process"
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
        ParentId: 14923580974279936522
        UnregisteredParameters {
          Overrides {
            Name: "bp:Fade Out Distance"
            Float: 5112.32
          }
          Overrides {
            Name: "bp:Fade Out Radius"
            Float: 4486.89648
          }
          Overrides {
            Name: "bp:Power"
            Float: 1.5725975
          }
          Overrides {
            Name: "bp:Bias"
            Float: 4
          }
          Overrides {
            Name: "bp:Quality"
            Float: 100
          }
          Overrides {
            Name: "bp:Mip Blend"
            Float: 0.684558809
          }
          Overrides {
            Name: "bp:Mip Scale"
            Float: 1.75069261
          }
          Overrides {
            Name: "bp:Radius"
            Float: 50
          }
          Overrides {
            Name: "bp:Intensity"
            Float: 0.693549633
          }
          Overrides {
            Name: "bp:Unbounded"
            Bool: true
          }
          Overrides {
            Name: "bp:Volume Color"
            Color {
              R: 0.24000001
              G: 1
              B: 0.260132551
              A: 1
            }
          }
          Overrides {
            Name: "bp:Visible In Preview"
            Bool: true
          }
          Overrides {
            Name: "bp:Blend Weight"
            Float: 0.75797385
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
            Id: 11221279654899718078
          }
          TeamSettings {
          }
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 7546830474050795297
        Name: "Sun Light"
        Transform {
          Location {
            X: -635.02417
            Y: 0.000183105469
            Z: -628.912659
          }
          Rotation {
            Pitch: -129.70282
            Yaw: 33.2125397
            Roll: 113.120789
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 14923580974279936522
        UnregisteredParameters {
          Overrides {
            Name: "bp:Light Color"
            Color {
              R: 0.420000017
              G: 0.312913924
              B: 0.2583
              A: 1
            }
          }
          Overrides {
            Name: "bp:Intensity"
            Float: 5
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
            Id: 16910278292812118833
          }
          TeamSettings {
          }
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 4150405809853357534
        Name: "Sky Dome"
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
        ParentId: 14923580974279936522
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
            Id: 7887238662729938253
          }
          TeamSettings {
          }
        }
        IsReplicationEnabledByDefault: true
      }
    }
    Assets {
      Id: 11515840070784317904
      Name: "Skylight"
      PlatformAssetType: 6
      PrimaryAsset {
        AssetType: "BlueprintAssetRef"
        AssetId: "CORESKY_Skylight"
      }
    }
    Assets {
      Id: 8807644094999718874
      Name: "Bloom Post Process"
      PlatformAssetType: 20
      PrimaryAsset {
        AssetType: "BlueprintAssetRef"
        AssetId: "fxbp_post_process_bloom"
      }
    }
    Assets {
      Id: 2224571462023946700
      Name: "Environment Fog Default VFX"
      PlatformAssetType: 6
      PrimaryAsset {
        AssetType: "BlueprintAssetRef"
        AssetId: "fxbp_env_fog_default"
      }
    }
    Assets {
      Id: 11221279654899718078
      Name: "Ambient Occlusion Post Process"
      PlatformAssetType: 20
      PrimaryAsset {
        AssetType: "BlueprintAssetRef"
        AssetId: "fxbp_post_process_ao"
      }
    }
    Assets {
      Id: 16910278292812118833
      Name: "Sun Light"
      PlatformAssetType: 6
      PrimaryAsset {
        AssetType: "BlueprintAssetRef"
        AssetId: "CORESKY_SunLight"
      }
    }
    Assets {
      Id: 7887238662729938253
      Name: "Sky Dome"
      PlatformAssetType: 6
      PrimaryAsset {
        AssetType: "BlueprintAssetRef"
        AssetId: "CORESKY_Sky"
      }
    }
    PrimaryAssetId {
      AssetType: "None"
      AssetId: "None"
    }
  }
  SerializationVersion: 118
}
