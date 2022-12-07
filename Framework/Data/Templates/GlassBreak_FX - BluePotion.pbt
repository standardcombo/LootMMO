Assets {
  Id: 2889968759709432256
  Name: "GlassBreak_FX - BluePotion"
  PlatformAssetType: 5
  TemplateAsset {
    ObjectBlock {
      RootId: 2243189653546631960
      Objects {
        Id: 2243189653546631960
        Name: "GlassBreak_FX - BluePotion"
        Transform {
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 4781671109827199097
        ChildIds: 4341302429990639173
        ChildIds: 12573119110317032682
        ChildIds: 11418595506466437157
        ChildIds: 4402270790103590232
        ChildIds: 963511008486650828
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
        Id: 4341302429990639173
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
        ParentId: 2243189653546631960
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
              R: 0.19
              G: 1
              B: 0.951721966
              A: 1
            }
          }
          Overrides {
            Name: "bp:Density"
            Float: 0.685032606
          }
          Overrides {
            Name: "bp:Particle Scale Multiplier"
            Float: 0.548698127
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
          Value: "mc:edistancerelevance:high"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 12573119110317032682
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
        ParentId: 2243189653546631960
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
            Pitch: 455.817627
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
        Id: 11418595506466437157
        Name: "Glow Shape Decal"
        Transform {
          Location {
          }
          Rotation {
          }
          Scale {
            X: 0.602688551
            Y: 0.602688551
            Z: 0.602688551
          }
        }
        ParentId: 2243189653546631960
        UnregisteredParameters {
          Overrides {
            Name: "bp:Color"
            Color {
              G: 0.467499763
              B: 0.85
              A: 0.068
            }
          }
          Overrides {
            Name: "bp:Emissive Boost"
            Float: 38.9056473
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
            Id: 16766245393833171398
          }
          TeamSettings {
          }
          DecalBP {
          }
        }
        Relevance {
          Value: "mc:edistancerelevance:medium"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 4402270790103590232
        Name: "Electrical Arc Volume"
        Transform {
          Location {
            Z: 10.8515625
          }
          Rotation {
          }
          Scale {
            X: 0.897322178
            Y: 0.897322178
            Z: 0.897322178
          }
        }
        ParentId: 2243189653546631960
        UnregisteredParameters {
          Overrides {
            Name: "bp:Color"
            Color {
              R: 0.151682779
              G: 0.134326771
              B: 0.655000031
              A: 1
            }
          }
          Overrides {
            Name: "bp:Secondary Color"
            Color {
              R: 0.131250575
              G: 0.148208737
              B: 0.640000045
              A: 1
            }
          }
          Overrides {
            Name: "bp:Tertiary Color"
            Color {
              R: 0.0883890614
              G: 0.111229688
              B: 0.431000024
              A: 1
            }
          }
          Overrides {
            Name: "bp:Beams Per Second"
            Float: 3.27028131
          }
          Overrides {
            Name: "bp:Is Moving"
            Bool: false
          }
          Overrides {
            Name: "bp:Start Plane Select"
            Enum {
              Value: "mc:efx_planeselector:newenumerator0"
            }
          }
          Overrides {
            Name: "bp:Start Plane X"
            Bool: true
          }
          Overrides {
            Name: "bp:Start Plane Z"
            Bool: false
          }
          Overrides {
            Name: "bp:Use Origin as Spawn Source"
            Bool: true
          }
          Overrides {
            Name: "bp:End Plane Z"
            Bool: true
          }
          Overrides {
            Name: "bp:End Plane Y"
            Bool: true
          }
          Overrides {
            Name: "bp:Control Tangents"
            Bool: false
          }
          Overrides {
            Name: "bp:Displacement Speed"
            Float: 4.98454
          }
          Overrides {
            Name: "bp:Texture Scale"
            Float: 0.347365767
          }
          Overrides {
            Name: "bp:Beam Appearance"
            Enum {
              Value: "mc:ebeamtexturetype:1"
            }
          }
          Overrides {
            Name: "bp:Beam Width"
            Float: 3.76663136
          }
          Overrides {
            Name: "bp:Beam Maximum Life"
            Float: 0.703537285
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
            Id: 4488260479149208874
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
        Id: 963511008486650828
        Name: "Electrical Zap Explosion SFX"
        Transform {
          Location {
            Z: 22.1445312
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 2243189653546631960
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
        AudioInstance {
          AudioAsset {
            Id: 13430588891282122467
          }
          AutoPlay: true
          Pitch: 1352.17847
          Volume: 0.75
          Falloff: -1
          Radius: -1
          EnableOcclusion: true
          IsSpatializationEnabled: true
          IsAttenuationEnabled: true
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
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
      Id: 16766245393833171398
      Name: "Glow Shape Decal"
      PlatformAssetType: 14
      PrimaryAsset {
        AssetType: "DecalBlueprintAssetRef"
        AssetId: "bp_decal_glow"
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
      Id: 13430588891282122467
      Name: "Electrical Zap Explosion SFX"
      PlatformAssetType: 7
      PrimaryAsset {
        AssetType: "AudioAssetRef"
        AssetId: "sfx_zapsplosion"
      }
    }
    PrimaryAssetId {
      AssetType: "None"
      AssetId: "None"
    }
  }
  SerializationVersion: 121
}
