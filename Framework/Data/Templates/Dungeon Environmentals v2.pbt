Assets {
  Id: 12438803575706966398
  Name: "Dungeon Environmentals v2"
  PlatformAssetType: 5
  TemplateAsset {
    ObjectBlock {
      RootId: 4117456179752281557
      Objects {
        Id: 4117456179752281557
        Name: "Dungeon Environmentals v2"
        Transform {
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 811073393120329763
        ChildIds: 3904399569566402538
        ChildIds: 1532048514001011645
        ChildIds: 3238107202644882520
        ChildIds: 8222313794727259927
        ChildIds: 140619704307305013
        ChildIds: 4198575006130768415
        ChildIds: 4331194183385109323
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
        Id: 3904399569566402538
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
        ParentId: 4117456179752281557
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
            Float: 1.4984951
          }
          Overrides {
            Name: "bp:Lower Hemisphere Color"
            Color {
              R: 0.01896
              G: 0.0236974619
              B: 0.04
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
            Bool: false
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
              Value: "mc:eambientcubemapssmall:23"
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
            Float: 0.4889777
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
        Id: 1532048514001011645
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
        ParentId: 4117456179752281557
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
        Id: 3238107202644882520
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
        ParentId: 4117456179752281557
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
            Float: 0.851
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
              R: 0.244999945
              G: 0.496666551
              B: 1
              A: 1
            }
          }
          Overrides {
            Name: "bp:Beam View Direction"
            Float: 0.383498549
          }
          Overrides {
            Name: "bp:Light Absorption Amount"
            Float: 3.54521608
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
        Id: 8222313794727259927
        Name: "Ambient Occlusion Post Process"
        Transform {
          Location {
            X: -3429.57422
            Y: -241.452698
            Z: -700
          }
          Rotation {
          }
          Scale {
            X: 23.9398785
            Y: 12.252
            Z: 16.6574574
          }
        }
        ParentId: 4117456179752281557
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
            Float: 3.63161922
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
            Float: 0.694553316
          }
          Overrides {
            Name: "bp:Mip Scale"
            Float: 1.68538368
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
            Float: 1
          }
          Overrides {
            Name: "bp:Radius In World Space"
            Bool: false
          }
          Overrides {
            Name: "bp:Intensity"
            Float: 1
          }
          Overrides {
            Name: "bp:Radius"
            Float: 244.806656
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
        Id: 140619704307305013
        Name: "Sun Light"
        Transform {
          Location {
            X: -635.02417
            Y: 0.000183105469
            Z: -628.912659
          }
          Rotation {
            Pitch: -90
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 4117456179752281557
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
        Id: 4198575006130768415
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
        ParentId: 4117456179752281557
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
      Objects {
        Id: 4331194183385109323
        Name: "Advanced Color Grading Post Process"
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
        ParentId: 4117456179752281557
        UnregisteredParameters {
          Overrides {
            Name: "bp:Color Contrast"
            Color {
              R: 1
              G: 1
              B: 1
              A: 1.1
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
            Id: 16285172041817233770
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
    Assets {
      Id: 16285172041817233770
      Name: "Advanced Color Grading Post Process"
      PlatformAssetType: 6
      PrimaryAsset {
        AssetType: "BlueprintAssetRef"
        AssetId: "fxbp_post_process_advanced_color_grading"
      }
    }
    PrimaryAssetId {
      AssetType: "None"
      AssetId: "None"
    }
  }
  SerializationVersion: 121
}
