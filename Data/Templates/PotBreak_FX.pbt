Assets {
  Id: 4451296920487577647
  Name: "PotBreak_FX"
  PlatformAssetType: 5
  TemplateAsset {
    ObjectBlock {
      RootId: 14870135743817637229
      Objects {
        Id: 14870135743817637229
        Name: "PotBreak_FX"
        Transform {
          Scale {
            X: 0.449996293
            Y: 0.449996293
            Z: 0.449996293
          }
        }
        ParentId: 4781671109827199097
        ChildIds: 17096608913908664368
        ChildIds: 9151470030598380191
        ChildIds: 12875281013846844344
        ChildIds: 11786709096721504835
        Lifespan: 15
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
        Id: 17096608913908664368
        Name: "Glass Explosion Volume VFX"
        Transform {
          Location {
          }
          Rotation {
          }
          Scale {
            X: 0.4501746
            Y: 0.4501746
            Z: 0.4501746
          }
        }
        ParentId: 14870135743817637229
        UnregisteredParameters {
          Overrides {
            Name: "bp:Initial Velocity Max"
            Vector {
              X: 200
              Y: 200
              Z: 800
            }
          }
          Overrides {
            Name: "bp:Color"
            Color {
              R: 0.409999967
              G: 0.122185431
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
            Id: 17341143348028774692
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
        Id: 9151470030598380191
        Name: "Glass Shatter Break Impact Set 01 SFX"
        Transform {
          Location {
            Z: 53.9847641
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 14870135743817637229
        UnregisteredParameters {
          Overrides {
            Name: "bp:Type"
            Enum {
              Value: "mc:esfx_glass_shatter_impact:52"
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
            Id: 3159383438160374068
          }
          TeamSettings {
          }
          AudioBP {
            AutoPlay: true
            Transient: true
            Pitch: -362.598633
            Volume: 1
            Falloff: 3600
            Radius: 400
            EnableOcclusion: true
            IsSpatializationEnabled: true
            IsAttenuationEnabled: true
          }
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 12875281013846844344
        Name: "Decal Rubble Concrete 02"
        Transform {
          Location {
            Z: -38.7695312
          }
          Rotation {
          }
          Scale {
            X: 0.656432569
            Y: 0.656432569
            Z: 0.656432569
          }
        }
        ParentId: 14870135743817637229
        UnregisteredParameters {
          Overrides {
            Name: "bp:Color"
            Color {
              R: 0.441
              G: 0.226732805
              B: 0.0392489694
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
            Id: 4358765911904981813
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
        Id: 11786709096721504835
        Name: "Decal Dirt Patch"
        Transform {
          Location {
            Z: -106.360474
          }
          Rotation {
          }
          Scale {
            X: 1.00000036
            Y: 1.00000036
            Z: 1.00000036
          }
        }
        ParentId: 14870135743817637229
        UnregisteredParameters {
          Overrides {
            Name: "bp:Color"
            Color {
              R: 0.60800004
              G: 0.432673097
              B: 0.351423979
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
            Id: 11380357722301189422
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
      Id: 17341143348028774692
      Name: "Glass Explosion Volume VFX"
      PlatformAssetType: 8
      PrimaryAsset {
        AssetType: "VfxBlueprintAssetRef"
        AssetId: "fxps_glass_explosion"
      }
    }
    Assets {
      Id: 3159383438160374068
      Name: "Glass Shatter Break Impact Set 01 SFX"
      PlatformAssetType: 10
      PrimaryAsset {
        AssetType: "AudioBlueprintAssetRef"
        AssetId: "sfxabp_glass_shatter_impact_hits_set_ref"
      }
    }
    Assets {
      Id: 4358765911904981813
      Name: "Decal Rubble Concrete 02"
      PlatformAssetType: 14
      PrimaryAsset {
        AssetType: "DecalBlueprintAssetRef"
        AssetId: "bp_decal_mil_rubble_concrete_002_ref"
      }
    }
    Assets {
      Id: 11380357722301189422
      Name: "Decal Dirt Patch"
      PlatformAssetType: 14
      PrimaryAsset {
        AssetType: "DecalBlueprintAssetRef"
        AssetId: "bp_decal_dirt_patch_001"
      }
    }
    PrimaryAssetId {
      AssetType: "None"
      AssetId: "None"
    }
  }
  SerializationVersion: 118
}
