Assets {
  Id: 5144995313265887069
  Name: "AbilityHelper_Effect_IlluminateTargetArea"
  PlatformAssetType: 5
  TemplateAsset {
    ObjectBlock {
      RootId: 10015121391869304985
      Objects {
        Id: 10015121391869304985
        Name: "AbilityHelper_Effect_IlluminateTargetArea"
        Transform {
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 4781671109827199097
        ChildIds: 6230803875365975620
        ChildIds: 14943976742520941913
        ChildIds: 14659356711236896611
        ChildIds: 8196450796736485684
        Lifespan: 10
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
        Id: 6230803875365975620
        Name: "Magic Frost Wind Whoosh 02 SFX"
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
        ParentId: 10015121391869304985
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
            Id: 8264557223244339436
          }
          AutoPlay: true
          Volume: 0.3
          Falloff: 3300
          Radius: -1
          IsAttenuationEnabled: true
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 14943976742520941913
        Name: "Magic Burst Hemicircle VFX"
        Transform {
          Location {
            Z: 25
          }
          Rotation {
            Yaw: 179.999802
          }
          Scale {
            X: 1.8
            Y: 1.8
            Z: 1.8
          }
        }
        ParentId: 10015121391869304985
        ChildIds: 8332653029166116864
        UnregisteredParameters {
          Overrides {
            Name: "bp:Local Space"
            Bool: true
          }
          Overrides {
            Name: "bp:color"
            Color {
              R: 15
              G: 9
              A: 1
            }
          }
          Overrides {
            Name: "bp:Enable Sparks"
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
            Id: 4657025066300167718
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
        Id: 8332653029166116864
        Name: "VFX_Repeater"
        Transform {
          Location {
            X: -2967.45654
            Y: -5346.60498
            Z: 350.297913
          }
          Rotation {
            Yaw: -179.999802
          }
          Scale {
            X: 0.416666657
            Y: 0.416666657
            Z: 0.416666657
          }
        }
        ParentId: 14943976742520941913
        UnregisteredParameters {
          Overrides {
            Name: "cs:VFX"
            ObjectReference {
              SubObjectId: 14943976742520941913
            }
          }
          Overrides {
            Name: "cs:AutoStart"
            Bool: true
          }
          Overrides {
            Name: "cs:StartDelay"
            Float: 0
          }
          Overrides {
            Name: "cs:RepeatCount"
            Int: 4
          }
          Overrides {
            Name: "cs:RepeatIntervalRange"
            Vector2 {
              X: 1
              Y: 1
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
            Id: 10594085518880585884
          }
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 14659356711236896611
        Name: "Magic Burst Hemicircle VFX"
        Transform {
          Location {
            Z: 25
          }
          Rotation {
          }
          Scale {
            X: 1.8
            Y: 1.8
            Z: 1.8
          }
        }
        ParentId: 10015121391869304985
        ChildIds: 13826520748318636487
        UnregisteredParameters {
          Overrides {
            Name: "bp:Local Space"
            Bool: true
          }
          Overrides {
            Name: "bp:color"
            Color {
              R: 15
              G: 9
              A: 1
            }
          }
          Overrides {
            Name: "bp:Enable Sparks"
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
            Id: 4657025066300167718
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
        Id: 13826520748318636487
        Name: "VFX_Repeater"
        Transform {
          Location {
            X: 2967.48315
            Y: 5346.61182
            Z: 350.297913
          }
          Rotation {
          }
          Scale {
            X: 0.416666657
            Y: 0.416666657
            Z: 0.416666657
          }
        }
        ParentId: 14659356711236896611
        UnregisteredParameters {
          Overrides {
            Name: "cs:VFX"
            ObjectReference {
              SubObjectId: 14659356711236896611
            }
          }
          Overrides {
            Name: "cs:AutoStart"
            Bool: true
          }
          Overrides {
            Name: "cs:StartDelay"
            Float: 0
          }
          Overrides {
            Name: "cs:RepeatCount"
            Int: 4
          }
          Overrides {
            Name: "cs:RepeatIntervalRange"
            Vector2 {
              X: 1
              Y: 1
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
            Id: 10594085518880585884
          }
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 8196450796736485684
        Name: "Group"
        Transform {
          Location {
          }
          Rotation {
          }
          Scale {
            X: 2
            Y: 2
            Z: 2
          }
        }
        ParentId: 10015121391869304985
        ChildIds: 11434077963057568384
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
        Id: 11434077963057568384
        Name: "Cast Burst Ring VFX"
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
        ParentId: 8196450796736485684
        ChildIds: 1050339189936944847
        ChildIds: 15413473590305978480
        ChildIds: 8027723390216280191
        ChildIds: 15354893251137458610
        ChildIds: 1740541084810920170
        ChildIds: 13790169379845764031
        ChildIds: 17955994048426264015
        UnregisteredParameters {
          Overrides {
            Name: "bp:color"
            Color {
              R: 0.714437068
              G: 0.929999948
              A: 1
            }
          }
          Overrides {
            Name: "bp:Edge Color"
            Color {
              R: 0.332582742
              G: 0.809999943
              A: 1
            }
          }
          Overrides {
            Name: "bp:Life Max"
            Float: 1.4
          }
          Overrides {
            Name: "bp:Count"
            Int: 4
          }
          Overrides {
            Name: "bp:Appearance"
            Enum {
              Value: "mc:ecastringappearance:7"
            }
          }
          Overrides {
            Name: "bp:Emissive Boost"
            Float: 14
          }
          Overrides {
            Name: "bp:Life Min"
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
        Blueprint {
          BlueprintAsset {
            Id: 1092850666123875983
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
        Id: 1050339189936944847
        Name: "Level Up VFX"
        Transform {
          Location {
            Z: 25
          }
          Rotation {
          }
          Scale {
            X: 0.588777
            Y: 0.588779
            Z: 0.6
          }
        }
        ParentId: 11434077963057568384
        UnregisteredParameters {
          Overrides {
            Name: "bp:Ground Burst Lines"
            Bool: false
          }
          Overrides {
            Name: "bp:Enable Rings"
            Bool: true
          }
          Overrides {
            Name: "bp:Enable Outer Particle Swirls"
            Bool: true
          }
          Overrides {
            Name: "bp:Enable Ground Hot Spot"
            Bool: false
          }
          Overrides {
            Name: "bp:Enable Inner Spirals"
            Bool: false
          }
          Overrides {
            Name: "bp:Enable Base Rays"
            Bool: false
          }
          Overrides {
            Name: "bp:Enable Beam"
            Bool: true
          }
          Overrides {
            Name: "bp:Enable Ground Flare"
            Bool: false
          }
          Overrides {
            Name: "bp:Enable Spiral"
            Bool: true
          }
          Overrides {
            Name: "bp:Local Space"
            Bool: true
          }
          Overrides {
            Name: "bp:Emissive Boost"
            Float: 4
          }
          Overrides {
            Name: "bp:Upward Velocity"
            Float: 25
          }
          Overrides {
            Name: "bp:Life"
            Float: 0.5
          }
          Overrides {
            Name: "bp:color"
            Color {
              R: 3
              G: 2
              B: 0.00972104073
              A: 1
            }
          }
          Overrides {
            Name: "bp:Spiral Color"
            Color {
              G: 0.580000043
              B: 0.0384106711
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
            Id: 3096700893524267361
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
        Id: 15413473590305978480
        Name: "Plasma Impact VFX"
        Transform {
          Location {
          }
          Rotation {
          }
          Scale {
            X: 3
            Y: 3
            Z: 3
          }
        }
        ParentId: 11434077963057568384
        UnregisteredParameters {
          Overrides {
            Name: "bp:color"
            Color {
              R: 2
              G: 1.5
              B: 0.1
              A: 1
            }
          }
          Overrides {
            Name: "bp:Emissive Boost"
            Float: 0
          }
          Overrides {
            Name: "bp:Enable Lightning Arc"
            Bool: false
          }
          Overrides {
            Name: "bp:Enable Lightning Ball"
            Bool: false
          }
          Overrides {
            Name: "bp:Enable Plasma Core"
            Bool: false
          }
          Overrides {
            Name: "bp:Enable Impact Ring"
            Bool: false
          }
          Overrides {
            Name: "bp:Enable Flare"
            Bool: true
          }
          Overrides {
            Name: "bp:Enable Plasma Radial"
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
        Blueprint {
          BlueprintAsset {
            Id: 12387224521968571600
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
        Id: 8027723390216280191
        Name: "Cast Burst Ring VFX"
        Transform {
          Location {
            Z: 63.0184326
          }
          Rotation {
          }
          Scale {
            X: 0.773784637
            Y: 0.773784637
            Z: 0.773784637
          }
        }
        ParentId: 11434077963057568384
        UnregisteredParameters {
          Overrides {
            Name: "bp:color"
            Color {
              R: 0.0215231404
              G: 0.65
              A: 1
            }
          }
          Overrides {
            Name: "bp:Edge Color"
            Color {
              R: 0.0860926509
              G: 0.5
              A: 1
            }
          }
          Overrides {
            Name: "bp:Life Max"
            Float: 1.2
          }
          Overrides {
            Name: "bp:Count"
            Int: 3
          }
          Overrides {
            Name: "bp:Appearance"
            Enum {
              Value: "mc:ecastringappearance:7"
            }
          }
          Overrides {
            Name: "bp:Emissive Boost"
            Float: 12
          }
          Overrides {
            Name: "bp:Life Min"
            Float: 0.7
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
            Id: 1092850666123875983
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
        Id: 15354893251137458610
        Name: "Cast Burst Ring VFX"
        Transform {
          Location {
            Z: 63.0184326
          }
          Rotation {
          }
          Scale {
            X: 0.773784637
            Y: 0.773784637
            Z: 0.773784637
          }
        }
        ParentId: 11434077963057568384
        UnregisteredParameters {
          Overrides {
            Name: "bp:color"
            Color {
              R: 0.0215231404
              G: 0.65
              A: 1
            }
          }
          Overrides {
            Name: "bp:Edge Color"
            Color {
              R: 0.0860926509
              G: 0.5
              A: 1
            }
          }
          Overrides {
            Name: "bp:Life Max"
            Float: 1.2
          }
          Overrides {
            Name: "bp:Count"
            Int: 3
          }
          Overrides {
            Name: "bp:Appearance"
            Enum {
              Value: "mc:ecastringappearance:7"
            }
          }
          Overrides {
            Name: "bp:Emissive Boost"
            Float: 12
          }
          Overrides {
            Name: "bp:Life Min"
            Float: 0.7
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
            Id: 1092850666123875983
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
        Id: 1740541084810920170
        Name: "Cast Burst Ring VFX"
        Transform {
          Location {
            Z: 50
          }
          Rotation {
          }
          Scale {
            X: 0.773784637
            Y: 0.773784637
            Z: 0.773784637
          }
        }
        ParentId: 11434077963057568384
        ChildIds: 10744929848089609565
        UnregisteredParameters {
          Overrides {
            Name: "bp:color"
            Color {
              R: 0.756556213
              G: 0.960000038
              A: 1
            }
          }
          Overrides {
            Name: "bp:Edge Color"
            Color {
              R: 1
              G: 2
              A: 1
            }
          }
          Overrides {
            Name: "bp:Life Max"
            Float: 1.4
          }
          Overrides {
            Name: "bp:Count"
            Int: 4
          }
          Overrides {
            Name: "bp:Appearance"
            Enum {
              Value: "mc:ecastringappearance:7"
            }
          }
          Overrides {
            Name: "bp:Emissive Boost"
            Float: 35
          }
          Overrides {
            Name: "bp:Life Min"
            Float: 0.8
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
            Id: 1092850666123875983
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
        Id: 10744929848089609565
        Name: "VFX_Repeater"
        Transform {
          Location {
            X: 9204.0293
            Y: 16583.1953
            Z: 1054.18872
          }
          Rotation {
          }
          Scale {
            X: 1.29234922
            Y: 1.29234922
            Z: 1.29234922
          }
        }
        ParentId: 1740541084810920170
        UnregisteredParameters {
          Overrides {
            Name: "cs:VFX"
            ObjectReference {
              SubObjectId: 1740541084810920170
            }
          }
          Overrides {
            Name: "cs:AutoStart"
            Bool: true
          }
          Overrides {
            Name: "cs:StartDelay"
            Float: 0
          }
          Overrides {
            Name: "cs:RepeatCount"
            Int: 4
          }
          Overrides {
            Name: "cs:RepeatIntervalRange"
            Vector2 {
              X: 1
              Y: 1
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
            Id: 10594085518880585884
          }
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 13790169379845764031
        Name: "Cast Burst Ring VFX"
        Transform {
          Location {
            Z: 63.0184326
          }
          Rotation {
          }
          Scale {
            X: 0.773784637
            Y: 0.773784637
            Z: 0.773784637
          }
        }
        ParentId: 11434077963057568384
        ChildIds: 14882342865547882331
        UnregisteredParameters {
          Overrides {
            Name: "bp:color"
            Color {
              R: 0.0215231404
              G: 0.65
              A: 1
            }
          }
          Overrides {
            Name: "bp:Edge Color"
            Color {
              R: 1
              G: 2
              A: 1
            }
          }
          Overrides {
            Name: "bp:Life Max"
            Float: 1.4
          }
          Overrides {
            Name: "bp:Count"
            Int: 4
          }
          Overrides {
            Name: "bp:Appearance"
            Enum {
              Value: "mc:ecastringappearance:7"
            }
          }
          Overrides {
            Name: "bp:Emissive Boost"
            Float: 35
          }
          Overrides {
            Name: "bp:Life Min"
            Float: 0.8
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
            Id: 1092850666123875983
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
        Id: 14882342865547882331
        Name: "VFX_Repeater"
        Transform {
          Location {
            X: 9204.0293
            Y: 16583.1934
            Z: 1037.36426
          }
          Rotation {
          }
          Scale {
            X: 1.29234922
            Y: 1.29234922
            Z: 1.29234922
          }
        }
        ParentId: 13790169379845764031
        UnregisteredParameters {
          Overrides {
            Name: "cs:VFX"
            ObjectReference {
              SubObjectId: 13790169379845764031
            }
          }
          Overrides {
            Name: "cs:AutoStart"
            Bool: true
          }
          Overrides {
            Name: "cs:StartDelay"
            Float: 0
          }
          Overrides {
            Name: "cs:RepeatCount"
            Int: 4
          }
          Overrides {
            Name: "cs:RepeatIntervalRange"
            Vector2 {
              X: 1
              Y: 1
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
            Id: 10594085518880585884
          }
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 17955994048426264015
        Name: "Treasure Ray Burst"
        Transform {
          Location {
            Z: 25
          }
          Rotation {
          }
          Scale {
            X: 3.3
            Y: 3.3
            Z: 3.3
          }
        }
        ParentId: 11434077963057568384
        UnregisteredParameters {
          Overrides {
            Name: "bp:Emissive Boost"
            Float: 2
          }
          Overrides {
            Name: "bp:Treasure Base Emissive Boost"
            Float: 0.357248694
          }
          Overrides {
            Name: "bp:color"
            Color {
              R: 0.00701977918
              G: 0.53
              A: 1
            }
          }
          Overrides {
            Name: "bp:Particle Scale Multiplier"
            Float: 0.8
          }
          Overrides {
            Name: "bp:Density"
            Float: 3
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
            Id: 6499652814951159903
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
      Id: 8264557223244339436
      Name: "Magic Frost Wind Whoosh 02 SFX"
      PlatformAssetType: 7
      PrimaryAsset {
        AssetType: "AudioAssetRef"
        AssetId: "sfx_magic_frost_wind_whoosh_02_Cue_ref"
      }
    }
    Assets {
      Id: 4657025066300167718
      Name: "Magic Burst Hemicircle VFX"
      PlatformAssetType: 8
      PrimaryAsset {
        AssetType: "VfxBlueprintAssetRef"
        AssetId: "fxbp_magic_burst_hemicircle"
      }
    }
    Assets {
      Id: 1092850666123875983
      Name: "Cast Burst Ring VFX"
      PlatformAssetType: 8
      PrimaryAsset {
        AssetType: "VfxBlueprintAssetRef"
        AssetId: "fxbp_cast_circle_generic"
      }
    }
    Assets {
      Id: 3096700893524267361
      Name: "Level Up VFX"
      PlatformAssetType: 8
      PrimaryAsset {
        AssetType: "VfxBlueprintAssetRef"
        AssetId: "fxbp_Level_Up"
      }
    }
    Assets {
      Id: 12387224521968571600
      Name: "Plasma Impact VFX"
      PlatformAssetType: 8
      PrimaryAsset {
        AssetType: "VfxBlueprintAssetRef"
        AssetId: "fxbp_plasma_impact"
      }
    }
    Assets {
      Id: 6499652814951159903
      Name: "Treasure Ray Burst"
      PlatformAssetType: 8
      PrimaryAsset {
        AssetType: "VfxBlueprintAssetRef"
        AssetId: "fxbp_Treasure_Rays"
      }
    }
    PrimaryAssetId {
      AssetType: "None"
      AssetId: "None"
    }
  }
  SerializationVersion: 118
}
