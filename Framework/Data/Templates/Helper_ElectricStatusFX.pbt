Assets {
  Id: 5754998476708814654
  Name: "Helper_ElectricStatusFX"
  PlatformAssetType: 5
  TemplateAsset {
    ObjectBlock {
      RootId: 16539040428646565497
      Objects {
        Id: 16539040428646565497
        Name: "Helper_ElectricStatusFX"
        Transform {
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 4781671109827199097
        ChildIds: 9299902530092478446
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
        Id: 9299902530092478446
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
        ParentId: 16539040428646565497
        ChildIds: 3427845104905981454
        ChildIds: 18431441767331499485
        ChildIds: 5841882566988081188
        ChildIds: 14451659404839324466
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
        Id: 3427845104905981454
        Name: "ZapOtherPlayers"
        Transform {
          Location {
            Z: 253.465515
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 9299902530092478446
        ChildIds: 5289997132451138204
        ChildIds: 12573761562945129421
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
        Id: 5289997132451138204
        Name: "ZapOtherPlayersTest"
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
        ParentId: 3427845104905981454
        UnregisteredParameters {
          Overrides {
            Name: "cs:Beams"
            ObjectReference {
              SubObjectId: 12573761562945129421
            }
          }
          Overrides {
            Name: "cs:Root"
            ObjectReference {
              SubObjectId: 16539040428646565497
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
            Id: 14118052415360808500
          }
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 12573761562945129421
        Name: "Beams"
        Transform {
          Location {
          }
          Rotation {
          }
          Scale {
            X: 3
          }
        }
        ParentId: 3427845104905981454
        ChildIds: 4835672231039805942
        ChildIds: 13304933076607085854
        ChildIds: 12665816634810874070
        ChildIds: 5463000183606957134
        ChildIds: 5554084090755625555
        ChildIds: 10327046294609298973
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
        Id: 4835672231039805942
        Name: "Electrical Arc Volume"
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
        ParentId: 12573761562945129421
        UnregisteredParameters {
          Overrides {
            Name: "bp:End Plane X"
            Bool: true
          }
          Overrides {
            Name: "bp:Use Origin as Spawn Source"
            Bool: false
          }
          Overrides {
            Name: "bp:Volume Type"
            Enum {
              Value: "mc:evfxvolumecubesphereonly:0"
            }
          }
          Overrides {
            Name: "bp:Apply Beam Arch"
            Bool: false
          }
          Overrides {
            Name: "bp:End Plane Y"
            Bool: false
          }
          Overrides {
            Name: "bp:End Plane Z"
            Bool: false
          }
          Overrides {
            Name: "bp:End Plane Select"
            Enum {
              Value: "mc:efx_planeselector:newenumerator0"
            }
          }
          Overrides {
            Name: "bp:Is Moving"
            Bool: true
          }
          Overrides {
            Name: "bp:Local Space"
            Bool: true
          }
          Overrides {
            Name: "bp:Beam Maximum Life"
            Float: 0.2
          }
          Overrides {
            Name: "bp:Start Plane Select"
            Enum {
              Value: "mc:efx_planeselector:newenumerator1"
            }
          }
          Overrides {
            Name: "bp:Control Tangents"
            Bool: false
          }
          Overrides {
            Name: "bp:Beams Per Second"
            Float: 2
          }
          Overrides {
            Name: "bp:Beam Minimum Life"
            Float: 0.1
          }
          Overrides {
            Name: "bp:Beam Appearance"
            Enum {
              Value: "mc:ebeamtexturetype:1"
            }
          }
          Overrides {
            Name: "bp:Texture Scale"
            Float: 3.13105083
          }
          Overrides {
            Name: "bp:Texture Noise Amount"
            Float: 0.2
          }
          Overrides {
            Name: "bp:Texture Noise Speed"
            Float: 1
          }
          Overrides {
            Name: "bp:Texture Scroll Speed"
            Float: 1
          }
          Overrides {
            Name: "bp:Beam Width"
            Float: 4
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
        Id: 13304933076607085854
        Name: "Electrical Arc Volume"
        Transform {
          Location {
          }
          Rotation {
          }
          Scale {
            X: 1
          }
        }
        ParentId: 12573761562945129421
        UnregisteredParameters {
          Overrides {
            Name: "bp:End Plane X"
            Bool: true
          }
          Overrides {
            Name: "bp:Use Origin as Spawn Source"
            Bool: false
          }
          Overrides {
            Name: "bp:Volume Type"
            Enum {
              Value: "mc:evfxvolumecubesphereonly:0"
            }
          }
          Overrides {
            Name: "bp:Apply Beam Arch"
            Bool: false
          }
          Overrides {
            Name: "bp:End Plane Y"
            Bool: false
          }
          Overrides {
            Name: "bp:End Plane Z"
            Bool: false
          }
          Overrides {
            Name: "bp:End Plane Select"
            Enum {
              Value: "mc:efx_planeselector:newenumerator0"
            }
          }
          Overrides {
            Name: "bp:Is Moving"
            Bool: true
          }
          Overrides {
            Name: "bp:Local Space"
            Bool: true
          }
          Overrides {
            Name: "bp:Beam Maximum Life"
            Float: 1
          }
          Overrides {
            Name: "bp:Start Plane Select"
            Enum {
              Value: "mc:efx_planeselector:newenumerator1"
            }
          }
          Overrides {
            Name: "bp:Control Tangents"
            Bool: false
          }
          Overrides {
            Name: "bp:Beams Per Second"
            Float: 2
          }
          Overrides {
            Name: "bp:Beam Minimum Life"
            Float: 0.1
          }
          Overrides {
            Name: "bp:Beam Appearance"
            Enum {
              Value: "mc:ebeamtexturetype:1"
            }
          }
          Overrides {
            Name: "bp:Texture Scale"
            Float: 3.13105083
          }
          Overrides {
            Name: "bp:Texture Noise Amount"
            Float: 0.2
          }
          Overrides {
            Name: "bp:Texture Noise Speed"
            Float: 1
          }
          Overrides {
            Name: "bp:Texture Scroll Speed"
            Float: 1
          }
          Overrides {
            Name: "bp:Beam Width"
            Float: 4
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
        Id: 12665816634810874070
        Name: "Electrical Arc Volume"
        Transform {
          Location {
          }
          Rotation {
          }
          Scale {
            X: 1
          }
        }
        ParentId: 12573761562945129421
        UnregisteredParameters {
          Overrides {
            Name: "bp:End Plane X"
            Bool: true
          }
          Overrides {
            Name: "bp:Use Origin as Spawn Source"
            Bool: false
          }
          Overrides {
            Name: "bp:Volume Type"
            Enum {
              Value: "mc:evfxvolumecubesphereonly:0"
            }
          }
          Overrides {
            Name: "bp:Apply Beam Arch"
            Bool: false
          }
          Overrides {
            Name: "bp:End Plane Y"
            Bool: false
          }
          Overrides {
            Name: "bp:End Plane Z"
            Bool: false
          }
          Overrides {
            Name: "bp:End Plane Select"
            Enum {
              Value: "mc:efx_planeselector:newenumerator0"
            }
          }
          Overrides {
            Name: "bp:Is Moving"
            Bool: true
          }
          Overrides {
            Name: "bp:Local Space"
            Bool: true
          }
          Overrides {
            Name: "bp:Beam Maximum Life"
            Float: 1
          }
          Overrides {
            Name: "bp:Start Plane Select"
            Enum {
              Value: "mc:efx_planeselector:newenumerator1"
            }
          }
          Overrides {
            Name: "bp:Control Tangents"
            Bool: false
          }
          Overrides {
            Name: "bp:Beams Per Second"
            Float: 2
          }
          Overrides {
            Name: "bp:Beam Minimum Life"
            Float: 0.1
          }
          Overrides {
            Name: "bp:Beam Appearance"
            Enum {
              Value: "mc:ebeamtexturetype:1"
            }
          }
          Overrides {
            Name: "bp:Texture Scale"
            Float: 3.13105083
          }
          Overrides {
            Name: "bp:Texture Noise Amount"
            Float: 0.2
          }
          Overrides {
            Name: "bp:Texture Noise Speed"
            Float: 1
          }
          Overrides {
            Name: "bp:Texture Scroll Speed"
            Float: 1
          }
          Overrides {
            Name: "bp:Beam Width"
            Float: 4
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
        Id: 5463000183606957134
        Name: "Electrical Arc Volume"
        Transform {
          Location {
          }
          Rotation {
          }
          Scale {
            X: 1
          }
        }
        ParentId: 12573761562945129421
        UnregisteredParameters {
          Overrides {
            Name: "bp:End Plane X"
            Bool: true
          }
          Overrides {
            Name: "bp:Use Origin as Spawn Source"
            Bool: false
          }
          Overrides {
            Name: "bp:Volume Type"
            Enum {
              Value: "mc:evfxvolumecubesphereonly:0"
            }
          }
          Overrides {
            Name: "bp:Apply Beam Arch"
            Bool: false
          }
          Overrides {
            Name: "bp:End Plane Y"
            Bool: false
          }
          Overrides {
            Name: "bp:End Plane Z"
            Bool: false
          }
          Overrides {
            Name: "bp:End Plane Select"
            Enum {
              Value: "mc:efx_planeselector:newenumerator0"
            }
          }
          Overrides {
            Name: "bp:Is Moving"
            Bool: true
          }
          Overrides {
            Name: "bp:Local Space"
            Bool: true
          }
          Overrides {
            Name: "bp:Beam Maximum Life"
            Float: 1
          }
          Overrides {
            Name: "bp:Start Plane Select"
            Enum {
              Value: "mc:efx_planeselector:newenumerator1"
            }
          }
          Overrides {
            Name: "bp:Control Tangents"
            Bool: false
          }
          Overrides {
            Name: "bp:Beams Per Second"
            Float: 2
          }
          Overrides {
            Name: "bp:Beam Minimum Life"
            Float: 0.1
          }
          Overrides {
            Name: "bp:Beam Appearance"
            Enum {
              Value: "mc:ebeamtexturetype:1"
            }
          }
          Overrides {
            Name: "bp:Texture Scale"
            Float: 3.13105083
          }
          Overrides {
            Name: "bp:Texture Noise Amount"
            Float: 0.2
          }
          Overrides {
            Name: "bp:Texture Noise Speed"
            Float: 1
          }
          Overrides {
            Name: "bp:Texture Scroll Speed"
            Float: 1
          }
          Overrides {
            Name: "bp:Beam Width"
            Float: 4
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
        Id: 5554084090755625555
        Name: "Electrical Arc Volume"
        Transform {
          Location {
          }
          Rotation {
          }
          Scale {
            X: 1
          }
        }
        ParentId: 12573761562945129421
        UnregisteredParameters {
          Overrides {
            Name: "bp:End Plane X"
            Bool: true
          }
          Overrides {
            Name: "bp:Use Origin as Spawn Source"
            Bool: false
          }
          Overrides {
            Name: "bp:Volume Type"
            Enum {
              Value: "mc:evfxvolumecubesphereonly:0"
            }
          }
          Overrides {
            Name: "bp:Apply Beam Arch"
            Bool: false
          }
          Overrides {
            Name: "bp:End Plane Y"
            Bool: false
          }
          Overrides {
            Name: "bp:End Plane Z"
            Bool: false
          }
          Overrides {
            Name: "bp:End Plane Select"
            Enum {
              Value: "mc:efx_planeselector:newenumerator0"
            }
          }
          Overrides {
            Name: "bp:Is Moving"
            Bool: true
          }
          Overrides {
            Name: "bp:Local Space"
            Bool: true
          }
          Overrides {
            Name: "bp:Beam Maximum Life"
            Float: 1
          }
          Overrides {
            Name: "bp:Start Plane Select"
            Enum {
              Value: "mc:efx_planeselector:newenumerator1"
            }
          }
          Overrides {
            Name: "bp:Control Tangents"
            Bool: false
          }
          Overrides {
            Name: "bp:Beams Per Second"
            Float: 2
          }
          Overrides {
            Name: "bp:Beam Minimum Life"
            Float: 0.1
          }
          Overrides {
            Name: "bp:Beam Appearance"
            Enum {
              Value: "mc:ebeamtexturetype:1"
            }
          }
          Overrides {
            Name: "bp:Texture Scale"
            Float: 3.13105083
          }
          Overrides {
            Name: "bp:Texture Noise Amount"
            Float: 0.2
          }
          Overrides {
            Name: "bp:Texture Noise Speed"
            Float: 1
          }
          Overrides {
            Name: "bp:Texture Scroll Speed"
            Float: 1
          }
          Overrides {
            Name: "bp:Beam Width"
            Float: 4
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
        Id: 10327046294609298973
        Name: "Electrical Arc Volume"
        Transform {
          Location {
          }
          Rotation {
          }
          Scale {
            X: 1
          }
        }
        ParentId: 12573761562945129421
        UnregisteredParameters {
          Overrides {
            Name: "bp:End Plane X"
            Bool: true
          }
          Overrides {
            Name: "bp:Use Origin as Spawn Source"
            Bool: false
          }
          Overrides {
            Name: "bp:Volume Type"
            Enum {
              Value: "mc:evfxvolumecubesphereonly:0"
            }
          }
          Overrides {
            Name: "bp:Apply Beam Arch"
            Bool: false
          }
          Overrides {
            Name: "bp:End Plane Y"
            Bool: false
          }
          Overrides {
            Name: "bp:End Plane Z"
            Bool: false
          }
          Overrides {
            Name: "bp:End Plane Select"
            Enum {
              Value: "mc:efx_planeselector:newenumerator0"
            }
          }
          Overrides {
            Name: "bp:Is Moving"
            Bool: true
          }
          Overrides {
            Name: "bp:Local Space"
            Bool: true
          }
          Overrides {
            Name: "bp:Beam Maximum Life"
            Float: 1
          }
          Overrides {
            Name: "bp:Start Plane Select"
            Enum {
              Value: "mc:efx_planeselector:newenumerator1"
            }
          }
          Overrides {
            Name: "bp:Control Tangents"
            Bool: false
          }
          Overrides {
            Name: "bp:Beams Per Second"
            Float: 2
          }
          Overrides {
            Name: "bp:Beam Minimum Life"
            Float: 0.1
          }
          Overrides {
            Name: "bp:Beam Appearance"
            Enum {
              Value: "mc:ebeamtexturetype:1"
            }
          }
          Overrides {
            Name: "bp:Texture Scale"
            Float: 3.13105083
          }
          Overrides {
            Name: "bp:Texture Noise Amount"
            Float: 0.2
          }
          Overrides {
            Name: "bp:Texture Noise Speed"
            Float: 1
          }
          Overrides {
            Name: "bp:Texture Scroll Speed"
            Float: 1
          }
          Overrides {
            Name: "bp:Beam Width"
            Float: 4
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
        Id: 18431441767331499485
        Name: "Plasma Ball Projectile VFX"
        Transform {
          Location {
            Z: 254.116852
          }
          Rotation {
          }
          Scale {
            X: 0.805828512
            Y: 0.805828512
            Z: 0.805828512
          }
        }
        ParentId: 9299902530092478446
        UnregisteredParameters {
          Overrides {
            Name: "bp:Enable Arc Ball"
            Bool: true
          }
          Overrides {
            Name: "bp:Enable Arcs "
            Bool: true
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
            Name: "bp:Emissive Boost"
            Float: 7.84593
          }
          Overrides {
            Name: "bp:Particle Scale Multiplier"
            Float: 0.696421385
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
            Id: 1831315401048516328
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
        Id: 5841882566988081188
        Name: "MiddleCircle"
        Transform {
          Location {
            Z: 254.116852
          }
          Rotation {
          }
          Scale {
            X: 0.128375813
            Y: 0.128375813
            Z: 0.128375813
          }
        }
        ParentId: 9299902530092478446
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 675563715440209277
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.19
              G: 0.517218232
              B: 1
              A: 1
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
        CoreMesh {
          MeshAsset {
            Id: 7363477334452929865
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
        Id: 14451659404839324466
        Name: "Meta Fantasy Debuff 01 SFX"
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
        ParentId: 9299902530092478446
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
            Id: 6769684776685552986
          }
          AutoPlay: true
          Pitch: -1200
          Volume: 1
          Falloff: -1
          Radius: -1
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
      Id: 4488260479149208874
      Name: "Electrical Arc Volume"
      PlatformAssetType: 8
      PrimaryAsset {
        AssetType: "VfxBlueprintAssetRef"
        AssetId: "fxbp_Electrical_Arc_Volume"
      }
    }
    Assets {
      Id: 1831315401048516328
      Name: "Plasma Ball Projectile VFX"
      PlatformAssetType: 8
      PrimaryAsset {
        AssetType: "VfxBlueprintAssetRef"
        AssetId: "fxbp_plasmaball_projectile"
      }
    }
    Assets {
      Id: 7363477334452929865
      Name: "Sphere"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_sphere_002"
      }
    }
    Assets {
      Id: 675563715440209277
      Name: "Emissive Glow Transparent"
      PlatformAssetType: 2
      PrimaryAsset {
        AssetType: "MaterialAssetRef"
        AssetId: "mi_basic_emissive_001"
      }
    }
    Assets {
      Id: 6769684776685552986
      Name: "Meta Fantasy Debuff 01 SFX"
      PlatformAssetType: 7
      PrimaryAsset {
        AssetType: "AudioAssetRef"
        AssetId: "sfx_meta_fantasy_debuff_01_Cue_ref"
      }
    }
    PrimaryAssetId {
      AssetType: "None"
      AssetId: "None"
    }
  }
  SerializationVersion: 120
  VirtualFolderPath: "Loot"
  VirtualFolderPath: "Ability"
  VirtualFolderPath: "StatusEffects"
}
