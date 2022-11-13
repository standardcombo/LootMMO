Assets {
  Id: 12779386922795852917
  Name: "Magic Circle Trap"
  PlatformAssetType: 5
  TemplateAsset {
    ObjectBlock {
      RootId: 11214313205369707867
      Objects {
        Id: 11214313205369707867
        Name: "Magic Circle Trap"
        Transform {
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 4781671109827199097
        ChildIds: 8173120168392281963
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
        Id: 8173120168392281963
        Name: "ClientContext"
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
        ParentId: 11214313205369707867
        ChildIds: 10134172162813862221
        Collidable_v2 {
          Value: "mc:ecollisionsetting:forceoff"
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
        Id: 10134172162813862221
        Name: "MCG: Fantasy - Frame"
        Transform {
          Location {
            Z: 5.60092163
          }
          Rotation {
          }
          Scale {
            X: 3.30000019
            Y: 3.30000019
            Z: 3.30000019
          }
        }
        ParentId: 8173120168392281963
        ChildIds: 8182929505783568404
        ChildIds: 15792554568654938641
        ChildIds: 15394214924908456593
        ChildIds: 7694182592153088613
        ChildIds: 2317397133038030202
        ChildIds: 2967193804652125871
        ChildIds: 3400303722730900749
        UnregisteredParameters {
          Overrides {
            Name: "bp:Element A Set"
            Enum {
              Value: "mc:emagiccircleselementtype:newenumerator2"
            }
          }
          Overrides {
            Name: "bp:Element A Shape"
            Int: 12
          }
          Overrides {
            Name: "bp:Element Type"
            Enum {
              Value: "mc:emcshapes:3"
            }
          }
          Overrides {
            Name: "bp:Border Edge Fade"
            Bool: false
          }
          Overrides {
            Name: "bp:Count"
            Int: 1
          }
          Overrides {
            Name: "bp:Center Element Pivot"
            Bool: true
          }
          Overrides {
            Name: "bp:Distance"
            Float: 0
          }
          Overrides {
            Name: "bp:Circle Thickness"
            Float: 8.30162811
          }
          Overrides {
            Name: "bp:Bottom Color"
            Color {
              R: 0.87
              A: 1
            }
          }
          Overrides {
            Name: "bp:Coloring Method"
            Enum {
              Value: "mc:emccoloringmethod:3"
            }
          }
          Overrides {
            Name: "bp:Element A Repetitions U"
            Float: 4
          }
          Overrides {
            Name: "bp:Emissive"
            Float: 11.0013733
          }
          Overrides {
            Name: "bp:Use Element Local Orientation"
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
        Blueprint {
          BlueprintAsset {
            Id: 4204935042848427516
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
        Id: 8182929505783568404
        Name: "MCG: All - Skulls"
        Transform {
          Location {
          }
          Rotation {
          }
          Scale {
            X: 0.303030223
            Y: 0.303030223
            Z: 0.303030223
          }
        }
        ParentId: 10134172162813862221
        UnregisteredParameters {
          Overrides {
            Name: "bp:Element A Theme"
            Enum {
              Value: "mc:emagiccirclealltypes:3"
            }
          }
          Overrides {
            Name: "bp:Element A Shape"
            Int: 6
          }
          Overrides {
            Name: "bp:Count"
            Int: 4
          }
          Overrides {
            Name: "bp:Distance"
            Float: 235.896744
          }
          Overrides {
            Name: "bp:Scale"
            Float: 0.488154918
          }
          Overrides {
            Name: "bp:Element Rotation"
            Float: 0
          }
          Overrides {
            Name: "bp:Center Element Pivot"
            Bool: true
          }
          Overrides {
            Name: "bp:Emissive"
            Float: 20
          }
          Overrides {
            Name: "bp:Dual Texture"
            Bool: true
          }
          Overrides {
            Name: "bp:Element B Theme"
            Enum {
              Value: "mc:emagiccirclealltypes:newenumerator1"
            }
          }
          Overrides {
            Name: "bp:Element Blend"
            Float: 1
          }
          Overrides {
            Name: "bp:Element B Shape"
            Int: 3
          }
          Overrides {
            Name: "bp:Element B Set"
            Enum {
              Value: "mc:emagiccircleselementtype:newenumerator0"
            }
          }
          Overrides {
            Name: "bp:Alternate Blend"
            Bool: true
          }
          Overrides {
            Name: "bp:Middle Color"
            Color {
              R: 1
              A: 1
            }
          }
          Overrides {
            Name: "bp:Bottom Color"
            Color {
              R: 1
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
            Id: 14388349938129413296
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
        Id: 15792554568654938641
        Name: "Fire Volume VFX"
        Transform {
          Location {
          }
          Rotation {
          }
          Scale {
            X: 0.303030252
            Y: 0.303030252
            Z: 0.303030252
          }
        }
        ParentId: 10134172162813862221
        Lifespan: 1
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
            Id: 8224839933062359962
          }
          TeamSettings {
          }
          Vfx {
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
        Id: 15394214924908456593
        Name: "MCG: All - Chain_Inner"
        Transform {
          Location {
          }
          Rotation {
          }
          Scale {
            X: 0.818181694
            Y: 0.818181694
            Z: 0.818181694
          }
        }
        ParentId: 10134172162813862221
        UnregisteredParameters {
          Overrides {
            Name: "bp:Information"
            String: "See tool-tip for information. "
          }
          Overrides {
            Name: "bp:Element Type"
            Enum {
              Value: "mc:emcshapes:3"
            }
          }
          Overrides {
            Name: "bp:Top Color"
            Color {
              G: 1
              A: 1
            }
          }
          Overrides {
            Name: "bp:Middle Color"
            Color {
              G: 1
              A: 1
            }
          }
          Overrides {
            Name: "bp:Bottom Color"
            Color {
              G: 1
              A: 1
            }
          }
          Overrides {
            Name: "bp:Color Offset Top"
            Float: 0
          }
          Overrides {
            Name: "bp:Color Offset Middle"
            Float: 0.5
          }
          Overrides {
            Name: "bp:Color Offset Bottom"
            Float: 1
          }
          Overrides {
            Name: "bp:Emissive"
            Float: 10
          }
          Overrides {
            Name: "bp:Border Edge Fade"
            Bool: false
          }
          Overrides {
            Name: "bp:Element A Repetitions U"
            Float: 15
          }
          Overrides {
            Name: "bp:Element A Repetitions V"
            Float: 1
          }
          Overrides {
            Name: "bp:Count"
            Int: 1
          }
          Overrides {
            Name: "bp:Width"
            Float: 1
          }
          Overrides {
            Name: "bp:Height"
            Float: 1
          }
          Overrides {
            Name: "bp:Scale"
            Float: 1
          }
          Overrides {
            Name: "bp:Distance"
            Float: 0
          }
          Overrides {
            Name: "bp:Element Rotation"
            Float: 0
          }
          Overrides {
            Name: "bp:Element Rotation Axis"
            Enum {
              Value: "mc:emcrotationaxis:2"
            }
          }
          Overrides {
            Name: "bp:Offset Rotation"
            Float: 0
          }
          Overrides {
            Name: "bp:Width +/-"
            Float: 0
          }
          Overrides {
            Name: "bp:Height +/-"
            Float: 0
          }
          Overrides {
            Name: "bp:Distance +/-"
            Float: 0
          }
          Overrides {
            Name: "bp:Element Rotation +/-"
            Float: 0
          }
          Overrides {
            Name: "bp:Random Seed Value"
            Int: 0
          }
          Overrides {
            Name: "bp:Circle Thickness"
            Float: 3.08011627
          }
          Overrides {
            Name: "bp:Fade Start"
            Float: 0
          }
          Overrides {
            Name: "bp:Fade Softness"
            Float: 0
          }
          Overrides {
            Name: "bp:Initial Start Delay"
            Float: 1.35449791
          }
          Overrides {
            Name: "bp:Rotation Speed"
            Float: 0.097006917
          }
          Overrides {
            Name: "bp:Fade Axis"
            Enum {
              Value: "mc:emcfadeaxisxy:29"
            }
          }
          Overrides {
            Name: "bp:Fade Point Count"
            Int: 1
          }
          Overrides {
            Name: "bp:Fade Style"
            Enum {
              Value: "mc:emcfadestyle:30"
            }
          }
          Overrides {
            Name: "bp:Element A Set"
            Enum {
              Value: "mc:emagiccircleselementtype:newenumerator2"
            }
          }
          Overrides {
            Name: "bp:Element A Shape"
            Int: 10
          }
          Overrides {
            Name: "bp:Element B Set"
            Enum {
              Value: "mc:emagiccircleselementtype:newenumerator2"
            }
          }
          Overrides {
            Name: "bp:Element B Shape"
            Int: 14
          }
          Overrides {
            Name: "bp:Dual Texture"
            Bool: true
          }
          Overrides {
            Name: "bp:Alternate Blend"
            Bool: true
          }
          Overrides {
            Name: "bp:Element Blend"
            Float: 1
          }
          Overrides {
            Name: "bp:Alpha Blending"
            Bool: false
          }
          Overrides {
            Name: "bp:Flip U"
            Bool: false
          }
          Overrides {
            Name: "bp:Flip V"
            Bool: false
          }
          Overrides {
            Name: "bp:Element B Repetitions U"
            Float: 15
          }
          Overrides {
            Name: "bp:Element B Repetitions V"
            Float: 1
          }
          Overrides {
            Name: "bp:Scroll Speed"
            Float: 0
          }
          Overrides {
            Name: "bp:Rotation Speed B"
            Float: 0.22289
          }
          Overrides {
            Name: "bp:Scroll Speed B"
            Float: 0
          }
          Overrides {
            Name: "bp:Element A Offset U"
            Float: 0
          }
          Overrides {
            Name: "bp:Element A Offset V"
            Float: 0
          }
          Overrides {
            Name: "bp:Element B Offset U"
            Float: 0
          }
          Overrides {
            Name: "bp:Element B Offset V"
            Float: 0
          }
          Overrides {
            Name: "bp:Outline"
            Bool: false
          }
          Overrides {
            Name: "bp:Outline Thickness"
            Float: 0.25
          }
          Overrides {
            Name: "bp:Sort Priority"
            Int: -10
          }
          Overrides {
            Name: "bp:Shape Thickness"
            Float: 0.5
          }
          Overrides {
            Name: "bp:Circle Rotation Speed"
            Float: 0
          }
          Overrides {
            Name: "bp:Keystone"
            Float: 0
          }
          Overrides {
            Name: "bp:Keystone Top"
            Bool: false
          }
          Overrides {
            Name: "bp:Coloring Method"
            Enum {
              Value: "mc:emccoloringmethod:3"
            }
          }
          Overrides {
            Name: "bp:Circle Rotation Axis"
            Vector {
              Z: 1
            }
          }
          Overrides {
            Name: "bp:Element Rotation Speed"
            Float: 0
          }
          Overrides {
            Name: "bp:Element Rotation Update Rate"
            Float: 30
          }
          Overrides {
            Name: "bp:Circle Rotation Update Rate"
            Float: 30
          }
          Overrides {
            Name: "bp:Element Rotation Animation Axis"
            Vector {
              Z: 1
            }
          }
          Overrides {
            Name: "bp:Use Element Local Orientation"
            Bool: false
          }
          Overrides {
            Name: "bp:Center Element Pivot"
            Bool: true
          }
          Overrides {
            Name: "bp:Reset On Play"
            Bool: true
          }
          Overrides {
            Name: "bp:Reset On Stop"
            Bool: true
          }
          Overrides {
            Name: "bp:Reset On Duration End"
            Bool: true
          }
          Overrides {
            Name: "bp:Stop Texture Animation On Stop"
            Bool: true
          }
          Overrides {
            Name: "bp:Element A Theme"
            Enum {
              Value: "mc:emagiccirclealltypes:3"
            }
          }
          Overrides {
            Name: "bp:Element B Theme"
            Enum {
              Value: "mc:emagiccirclealltypes:newenumerator1"
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
            Id: 14388349938129413296
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
        Id: 7694182592153088613
        Name: "MCG: All - Chain_Outer"
        Transform {
          Location {
          }
          Rotation {
          }
          Scale {
            X: 1.07769573
            Y: 1.07769573
            Z: 1.07769573
          }
        }
        ParentId: 10134172162813862221
        UnregisteredParameters {
          Overrides {
            Name: "bp:Information"
            String: "See tool-tip for information. "
          }
          Overrides {
            Name: "bp:Element Type"
            Enum {
              Value: "mc:emcshapes:3"
            }
          }
          Overrides {
            Name: "bp:Top Color"
            Color {
              G: 1
              A: 1
            }
          }
          Overrides {
            Name: "bp:Middle Color"
            Color {
              G: 1
              A: 1
            }
          }
          Overrides {
            Name: "bp:Bottom Color"
            Color {
              G: 1
              A: 1
            }
          }
          Overrides {
            Name: "bp:Color Offset Top"
            Float: 0
          }
          Overrides {
            Name: "bp:Color Offset Middle"
            Float: 0.5
          }
          Overrides {
            Name: "bp:Color Offset Bottom"
            Float: 1
          }
          Overrides {
            Name: "bp:Emissive"
            Float: 11.0013733
          }
          Overrides {
            Name: "bp:Border Edge Fade"
            Bool: false
          }
          Overrides {
            Name: "bp:Element A Repetitions U"
            Float: 24
          }
          Overrides {
            Name: "bp:Element A Repetitions V"
            Float: 1
          }
          Overrides {
            Name: "bp:Count"
            Int: 1
          }
          Overrides {
            Name: "bp:Width"
            Float: 1
          }
          Overrides {
            Name: "bp:Height"
            Float: 1
          }
          Overrides {
            Name: "bp:Scale"
            Float: 1
          }
          Overrides {
            Name: "bp:Distance"
            Float: 0
          }
          Overrides {
            Name: "bp:Element Rotation"
            Float: 0
          }
          Overrides {
            Name: "bp:Element Rotation Axis"
            Enum {
              Value: "mc:emcrotationaxis:2"
            }
          }
          Overrides {
            Name: "bp:Offset Rotation"
            Float: 0
          }
          Overrides {
            Name: "bp:Width +/-"
            Float: 0
          }
          Overrides {
            Name: "bp:Height +/-"
            Float: 0
          }
          Overrides {
            Name: "bp:Distance +/-"
            Float: 0
          }
          Overrides {
            Name: "bp:Element Rotation +/-"
            Float: 0
          }
          Overrides {
            Name: "bp:Random Seed Value"
            Int: 0
          }
          Overrides {
            Name: "bp:Circle Thickness"
            Float: 1.70327377
          }
          Overrides {
            Name: "bp:Fade Start"
            Float: 0
          }
          Overrides {
            Name: "bp:Fade Softness"
            Float: 0
          }
          Overrides {
            Name: "bp:Initial Start Delay"
            Float: 0.548059881
          }
          Overrides {
            Name: "bp:Rotation Speed"
            Float: -0.0485453
          }
          Overrides {
            Name: "bp:Fade Axis"
            Enum {
              Value: "mc:emcfadeaxisxy:29"
            }
          }
          Overrides {
            Name: "bp:Fade Point Count"
            Int: 1
          }
          Overrides {
            Name: "bp:Fade Style"
            Enum {
              Value: "mc:emcfadestyle:30"
            }
          }
          Overrides {
            Name: "bp:Element A Set"
            Enum {
              Value: "mc:emagiccircleselementtype:newenumerator2"
            }
          }
          Overrides {
            Name: "bp:Element A Shape"
            Int: 10
          }
          Overrides {
            Name: "bp:Element B Set"
            Enum {
              Value: "mc:emagiccircleselementtype:newenumerator2"
            }
          }
          Overrides {
            Name: "bp:Element B Shape"
            Int: 14
          }
          Overrides {
            Name: "bp:Dual Texture"
            Bool: true
          }
          Overrides {
            Name: "bp:Alternate Blend"
            Bool: true
          }
          Overrides {
            Name: "bp:Element Blend"
            Float: 1
          }
          Overrides {
            Name: "bp:Alpha Blending"
            Bool: false
          }
          Overrides {
            Name: "bp:Flip U"
            Bool: false
          }
          Overrides {
            Name: "bp:Flip V"
            Bool: false
          }
          Overrides {
            Name: "bp:Element B Repetitions U"
            Float: 24
          }
          Overrides {
            Name: "bp:Element B Repetitions V"
            Float: 1
          }
          Overrides {
            Name: "bp:Scroll Speed"
            Float: 0
          }
          Overrides {
            Name: "bp:Rotation Speed B"
            Float: -0.0485453
          }
          Overrides {
            Name: "bp:Scroll Speed B"
            Float: 0
          }
          Overrides {
            Name: "bp:Element A Offset U"
            Float: 0
          }
          Overrides {
            Name: "bp:Element A Offset V"
            Float: 0
          }
          Overrides {
            Name: "bp:Element B Offset U"
            Float: 0
          }
          Overrides {
            Name: "bp:Element B Offset V"
            Float: 0
          }
          Overrides {
            Name: "bp:Outline"
            Bool: false
          }
          Overrides {
            Name: "bp:Outline Thickness"
            Float: 0.25
          }
          Overrides {
            Name: "bp:Sort Priority"
            Int: -10
          }
          Overrides {
            Name: "bp:Shape Thickness"
            Float: 0.5
          }
          Overrides {
            Name: "bp:Circle Rotation Speed"
            Float: 0
          }
          Overrides {
            Name: "bp:Keystone"
            Float: 0
          }
          Overrides {
            Name: "bp:Keystone Top"
            Bool: false
          }
          Overrides {
            Name: "bp:Coloring Method"
            Enum {
              Value: "mc:emccoloringmethod:3"
            }
          }
          Overrides {
            Name: "bp:Circle Rotation Axis"
            Vector {
              Z: 1
            }
          }
          Overrides {
            Name: "bp:Element Rotation Update Rate"
            Float: 30
          }
          Overrides {
            Name: "bp:Circle Rotation Update Rate"
            Float: 30
          }
          Overrides {
            Name: "bp:Element Rotation Animation Axis"
            Vector {
              Z: 1
            }
          }
          Overrides {
            Name: "bp:Use Element Local Orientation"
            Bool: false
          }
          Overrides {
            Name: "bp:Center Element Pivot"
            Bool: true
          }
          Overrides {
            Name: "bp:Reset On Play"
            Bool: true
          }
          Overrides {
            Name: "bp:Reset On Stop"
            Bool: true
          }
          Overrides {
            Name: "bp:Reset On Duration End"
            Bool: true
          }
          Overrides {
            Name: "bp:Stop Texture Animation On Stop"
            Bool: true
          }
          Overrides {
            Name: "bp:Element A Theme"
            Enum {
              Value: "mc:emagiccirclealltypes:3"
            }
          }
          Overrides {
            Name: "bp:Element B Theme"
            Enum {
              Value: "mc:emagiccirclealltypes:newenumerator1"
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
            Id: 14388349938129413296
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
        Id: 2317397133038030202
        Name: "MCG: All - Inner_Glyph"
        Transform {
          Location {
          }
          Rotation {
          }
          Scale {
            X: 0.303030252
            Y: 0.303030252
            Z: 0.303030252
          }
        }
        ParentId: 10134172162813862221
        UnregisteredParameters {
          Overrides {
            Name: "bp:Count"
            Int: 12
          }
          Overrides {
            Name: "bp:Distance"
            Float: 210.326767
          }
          Overrides {
            Name: "bp:Fade Axis"
            Enum {
              Value: "mc:emcfadeaxisxy:29"
            }
          }
          Overrides {
            Name: "bp:Fade Start"
            Float: 0
          }
          Overrides {
            Name: "bp:Border Edge Fade"
            Bool: false
          }
          Overrides {
            Name: "bp:Fade Softness"
            Float: 0.148363069
          }
          Overrides {
            Name: "bp:Fade Point Count"
            Int: 1
          }
          Overrides {
            Name: "bp:Fade Style"
            Enum {
              Value: "mc:emcfadestyle:30"
            }
          }
          Overrides {
            Name: "bp:Coloring Method"
            Enum {
              Value: "mc:emccoloringmethod:3"
            }
          }
          Overrides {
            Name: "bp:Element A Theme"
            Enum {
              Value: "mc:emagiccirclealltypes:newenumerator1"
            }
          }
          Overrides {
            Name: "bp:Element A Set"
            Enum {
              Value: "mc:emagiccircleselementtype:newenumerator1"
            }
          }
          Overrides {
            Name: "bp:Element A Shape"
            Int: 3
          }
          Overrides {
            Name: "bp:Scale"
            Float: 1.0931828
          }
          Overrides {
            Name: "bp:Keystone"
            Float: 0.586821854
          }
          Overrides {
            Name: "bp:Width"
            Float: 1.39297068
          }
          Overrides {
            Name: "bp:Height"
            Float: 1.65597737
          }
          Overrides {
            Name: "bp:Emissive"
            Float: 25.0313187
          }
          Overrides {
            Name: "bp:Rotation Speed"
            Float: 0.178063989
          }
          Overrides {
            Name: "bp:Circle Rotation Speed"
            Float: 32.2770081
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
            Id: 14388349938129413296
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
        Id: 2967193804652125871
        Name: "MCG: All - Inner Glyph 2"
        Transform {
          Location {
          }
          Rotation {
          }
          Scale {
            X: 0.106687203
            Y: 0.106687203
            Z: 0.106687203
          }
        }
        ParentId: 10134172162813862221
        UnregisteredParameters {
          Overrides {
            Name: "bp:Count"
            Int: 12
          }
          Overrides {
            Name: "bp:Distance"
            Float: 210.326767
          }
          Overrides {
            Name: "bp:Fade Axis"
            Enum {
              Value: "mc:emcfadeaxisxy:29"
            }
          }
          Overrides {
            Name: "bp:Fade Start"
            Float: 0
          }
          Overrides {
            Name: "bp:Border Edge Fade"
            Bool: false
          }
          Overrides {
            Name: "bp:Fade Softness"
            Float: 0.148363069
          }
          Overrides {
            Name: "bp:Fade Point Count"
            Int: 1
          }
          Overrides {
            Name: "bp:Fade Style"
            Enum {
              Value: "mc:emcfadestyle:30"
            }
          }
          Overrides {
            Name: "bp:Coloring Method"
            Enum {
              Value: "mc:emccoloringmethod:3"
            }
          }
          Overrides {
            Name: "bp:Element A Theme"
            Enum {
              Value: "mc:emagiccirclealltypes:newenumerator1"
            }
          }
          Overrides {
            Name: "bp:Element A Set"
            Enum {
              Value: "mc:emagiccircleselementtype:newenumerator1"
            }
          }
          Overrides {
            Name: "bp:Element A Shape"
            Int: 2
          }
          Overrides {
            Name: "bp:Scale"
            Float: 1.0931828
          }
          Overrides {
            Name: "bp:Keystone"
            Float: 0.586821854
          }
          Overrides {
            Name: "bp:Width"
            Float: 1.39297068
          }
          Overrides {
            Name: "bp:Height"
            Float: 1.65597737
          }
          Overrides {
            Name: "bp:Emissive"
            Float: 25.0313187
          }
          Overrides {
            Name: "bp:Rotation Speed"
            Float: 0.597990751
          }
          Overrides {
            Name: "bp:Circle Rotation Speed"
            Float: 32.2770081
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
            Id: 14388349938129413296
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
        Id: 3400303722730900749
        Name: "Binding Chains VFX"
        Transform {
          Location {
            Z: 31.0096054
          }
          Rotation {
          }
          Scale {
            X: 0.909090877
            Y: 0.909090877
            Z: 0.303030252
          }
        }
        ParentId: 10134172162813862221
        UnregisteredParameters {
          Overrides {
            Name: "bp:Color"
            Color {
              R: 0.820000052
              G: 0.0651655793
              A: 1
            }
          }
          Overrides {
            Name: "bp:Emissive Boost"
            Float: 19.7541771
          }
          Overrides {
            Name: "bp:Hold Duration"
            Float: 3
          }
          Overrides {
            Name: "bp:Chain Count"
            Int: 6
          }
          Overrides {
            Name: "bp:Manual Animation"
            Bool: false
          }
          Overrides {
            Name: "bp:Randomize Times"
            Bool: false
          }
          Overrides {
            Name: "bp:Fade Value"
            Float: 0
          }
          Overrides {
            Name: "bp:Animation Value"
            Float: 0
          }
          Overrides {
            Name: "bp:Loop"
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
        EditorIndicatorVisibility {
          Value: "mc:eindicatorvisibility:visiblewhenselected"
        }
        Blueprint {
          BlueprintAsset {
            Id: 6944913226793731875
          }
          TeamSettings {
          }
          Vfx {
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
    }
    Assets {
      Id: 4204935042848427516
      Name: "Magic Circle Generator Advanced: Fantasy VFX"
      PlatformAssetType: 8
      PrimaryAsset {
        AssetType: "VfxBlueprintAssetRef"
        AssetId: "fxbp_magic_circle_generator_fantasy"
      }
    }
    Assets {
      Id: 14388349938129413296
      Name: "Magic Circle Generator Advanced: All VFX"
      PlatformAssetType: 8
      PrimaryAsset {
        AssetType: "VfxBlueprintAssetRef"
        AssetId: "fxbp_magic_circle_generator_all"
      }
    }
    Assets {
      Id: 8224839933062359962
      Name: "Fire Volume VFX"
      PlatformAssetType: 8
      PrimaryAsset {
        AssetType: "VfxBlueprintAssetRef"
        AssetId: "fxbp_fire_volume_vfx"
      }
    }
    Assets {
      Id: 6944913226793731875
      Name: "Binding Chains VFX"
      PlatformAssetType: 8
      PrimaryAsset {
        AssetType: "VfxBlueprintAssetRef"
        AssetId: "fxbp_chainBind"
      }
    }
    PrimaryAssetId {
      AssetType: "TemplateAssetRef"
      AssetId: "Magic_Circle_Trap"
    }
  }
  SerializationVersion: 120
}
