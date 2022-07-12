Assets {
  Id: 3827264004051456006
  Name: "Locked Gate"
  PlatformAssetType: 5
  TemplateAsset {
    ObjectBlock {
      RootId: 16107452528929690851
      Objects {
        Id: 16107452528929690851
        Name: "Locked Gate"
        Transform {
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 8573613372286403397
        ChildIds: 18013566207048062937
        ChildIds: 9472852053063784545
        ChildIds: 13498035684377536395
        ChildIds: 6334474249365085257
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
        Id: 18013566207048062937
        Name: "LockedGateServer"
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
        ParentId: 16107452528929690851
        UnregisteredParameters {
          Overrides {
            Name: "cs:Trigger"
            ObjectReference {
              SubObjectId: 9472852053063784545
            }
          }
          Overrides {
            Name: "cs:Collider"
            ObjectReference {
              SubObjectId: 13498035684377536395
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
            Id: 14284317097065895712
          }
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 9472852053063784545
        Name: "Trigger"
        Transform {
          Location {
            X: -16.5853329
            Y: -8.67843628e-05
            Z: 133.107361
          }
          Rotation {
          }
          Scale {
            X: 1.29017913
            Y: 1.29017913
            Z: 1.29017913
          }
        }
        ParentId: 16107452528929690851
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
        Trigger {
          TeamSettings {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          TriggerShape_v2 {
            Value: "mc:etriggershape:box"
          }
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 13498035684377536395
        Name: "Collider"
        Transform {
          Location {
          }
          Rotation {
          }
          Scale {
            X: 0.74999994
            Y: 6.5
            Z: 9
          }
        }
        ParentId: 16107452528929690851
        WantsNetworking: true
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:forceoff"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:forceoff"
        }
        EditorIndicatorVisibility {
          Value: "mc:eindicatorvisibility:visiblewhenselected"
        }
        CoreMesh {
          MeshAsset {
            Id: 198353679974341757
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
        Id: 6334474249365085257
        Name: "ClientContext"
        Transform {
          Location {
          }
          Rotation {
            Yaw: -179.999954
            Roll: -179.999954
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 16107452528929690851
        ChildIds: 11206001457383005533
        ChildIds: 11258981553514273809
        ChildIds: 1232702910831417486
        ChildIds: 8408556065705174701
        ChildIds: 3819024858533995929
        ChildIds: 1186032712786898601
        Collidable_v2 {
          Value: "mc:ecollisionsetting:forceoff"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:forceoff"
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
        Id: 11206001457383005533
        Name: "LockedGateClient"
        Transform {
          Location {
          }
          Rotation {
            Yaw: -179.999954
            Roll: -179.999954
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 6334474249365085257
        UnregisteredParameters {
          Overrides {
            Name: "cs:Trigger"
            ObjectReference {
              SubObjectId: 9472852053063784545
            }
          }
          Overrides {
            Name: "cs:Lock"
            ObjectReference {
              SubObjectId: 11258981553514273809
            }
          }
          Overrides {
            Name: "cs:Gate"
            ObjectReference {
              SubObjectId: 1232702910831417486
            }
          }
          Overrides {
            Name: "cs:LockSFX"
            ObjectReference {
              SubObjectId: 8408556065705174701
            }
          }
          Overrides {
            Name: "cs:GateSFX"
            ObjectReference {
              SubObjectId: 3819024858533995929
            }
          }
          Overrides {
            Name: "cs:GateEndSFX"
            ObjectReference {
              SubObjectId: 1186032712786898601
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
            Id: 15716246380244760564
          }
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 11258981553514273809
        Name: "Lock"
        Transform {
          Location {
            X: 22.1293869
            Y: -2.31372261
            Z: -134.096542
          }
          Rotation {
            Pitch: 90
            Yaw: 0.0994292349
            Roll: -179.900574
          }
          Scale {
            X: 0.399127603
            Y: 0.399127603
            Z: 0.399127603
          }
        }
        ParentId: 6334474249365085257
        ChildIds: 4368457624263809000
        ChildIds: 6943561522999959838
        ChildIds: 3008147953810920551
        ChildIds: 140636611691849116
        ChildIds: 7100432479537709696
        ChildIds: 1228978073434792646
        ChildIds: 8356899949021190316
        ChildIds: 9373423841572893991
        ChildIds: 14636950710126845435
        ChildIds: 17340665019570006049
        ChildIds: 5616810533908259589
        ChildIds: 9415600082117980677
        ChildIds: 6838910030231690038
        Collidable_v2 {
          Value: "mc:ecollisionsetting:forceoff"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:forceoff"
        }
        EditorIndicatorVisibility {
          Value: "mc:eindicatorvisibility:visiblewhenselected"
        }
        Folder {
          Model {
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
        Id: 4368457624263809000
        Name: "Crescent - 01"
        Transform {
          Location {
            X: -59.2284
            Y: -0.0402284861
            Z: 24.9996853
          }
          Rotation {
            Yaw: -1.70754674e-06
          }
          Scale {
            X: 0.99999994
            Y: 0.99999994
            Z: 0.99999994
          }
        }
        ParentId: 11258981553514273809
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 17583774027684274893
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
        CoreMesh {
          MeshAsset {
            Id: 16606065455527485578
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
        Id: 6943561522999959838
        Name: "Cube"
        Transform {
          Location {
            X: 11.2945538
            Y: 42.2107697
            Z: 24.9996967
          }
          Rotation {
            Yaw: 15.0000305
          }
          Scale {
            X: 0.6
            Y: 0.549999952
            Z: 0.99999994
          }
        }
        ParentId: 11258981553514273809
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 17583774027684274893
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
        CoreMesh {
          MeshAsset {
            Id: 12095835209017042614
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
        Id: 3008147953810920551
        Name: "Cube"
        Transform {
          Location {
            X: 11.3037691
            Y: -42.6322899
            Z: 24.9993286
          }
          Rotation {
            Pitch: 6.83018879e-06
            Yaw: -15.000042
            Roll: 2.9401167e-06
          }
          Scale {
            X: 0.6
            Y: 0.549999952
            Z: 0.99999994
          }
        }
        ParentId: 11258981553514273809
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 17583774027684274893
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
        CoreMesh {
          MeshAsset {
            Id: 12095835209017042614
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
        Id: 140636611691849116
        Name: "Wedge - Concave"
        Transform {
          Location {
            X: -23.3373127
            Y: -60.9574432
            Z: 24.9994869
          }
          Rotation {
            Pitch: 90
            Yaw: -1.43209624
            Roll: 13.0679283
          }
          Scale {
            X: 0.99999994
            Y: 0.49999997
            Z: 0.49999997
          }
        }
        ParentId: 11258981553514273809
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 17583774027684274893
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
        CoreMesh {
          MeshAsset {
            Id: 10420083731386464032
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
        Id: 7100432479537709696
        Name: "Wedge - Concave"
        Transform {
          Location {
            X: -23.2982159
            Y: 60.7570114
            Z: 24.9992237
          }
          Rotation {
            Pitch: 89.9160614
            Yaw: 7.90717125
            Roll: -2.86240554
          }
          Scale {
            X: 0.99999994
            Y: 0.49999997
            Z: 0.49999997
          }
        }
        ParentId: 11258981553514273809
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 17583774027684274893
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
        CoreMesh {
          MeshAsset {
            Id: 10420083731386464032
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
        Id: 1228978073434792646
        Name: "Cube"
        Transform {
          Location {
            X: 55.250061
            Y: -0.0402039923
            Z: 24.9996147
          }
          Rotation {
            Yaw: -1.70754674e-06
          }
          Scale {
            X: 0.180361241
            Y: 0.549999952
            Z: 0.99999994
          }
        }
        ParentId: 11258981553514273809
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 17583774027684274893
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
        CoreMesh {
          MeshAsset {
            Id: 12095835209017042614
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
        Id: 8356899949021190316
        Name: "Cube"
        Transform {
          Location {
            X: 46.3208542
            Y: -47.7025604
            Z: 24.9999695
          }
          Rotation {
            Pitch: -6.83018879e-06
            Yaw: 2.63051796
            Roll: 3.33580533e-06
          }
          Scale {
            X: 0.305241942
            Y: 0.483876884
            Z: 0.99999994
          }
        }
        ParentId: 11258981553514273809
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 17583774027684274893
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
        CoreMesh {
          MeshAsset {
            Id: 12095835209017042614
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
        Id: 9373423841572893991
        Name: "Cube"
        Transform {
          Location {
            X: 46.3208885
            Y: 48.6101875
            Z: 24.999424
          }
          Rotation {
            Yaw: -2.63100791
            Roll: 1.70709677e-06
          }
          Scale {
            X: 0.305237
            Y: 0.471656352
            Z: 0.99999994
          }
        }
        ParentId: 11258981553514273809
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 17583774027684274893
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
        CoreMesh {
          MeshAsset {
            Id: 12095835209017042614
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
        Id: 14636950710126845435
        Name: "Cube - Rounded"
        Transform {
          Location {
            X: 76.7149048
            Y: -0.0402422249
            Z: 24.9995575
          }
          Rotation {
            Yaw: -1.70754674e-06
          }
          Scale {
            X: 0.6
            Y: 1.99127316
            Z: 0.99999994
          }
        }
        ParentId: 11258981553514273809
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 17583774027684274893
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
        CoreMesh {
          MeshAsset {
            Id: 17091160006555877630
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
        Id: 17340665019570006049
        Name: "Cube - Rounded"
        Transform {
          Location {
            X: -104.018883
            Y: -0.0403115153
            Z: 24.9996395
          }
          Rotation {
            Yaw: -1.70754674e-06
          }
          Scale {
            X: 0.6
            Y: 1.99127316
            Z: 0.99999994
          }
        }
        ParentId: 11258981553514273809
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 17583774027684274893
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
        CoreMesh {
          MeshAsset {
            Id: 17091160006555877630
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
        Id: 5616810533908259589
        Name: "Cube - Rounded"
        Transform {
          Location {
            X: -13.1923103
            Y: -70.0402908
            Z: 24.9997063
          }
          Rotation {
            Yaw: -1.70754674e-06
          }
          Scale {
            X: 2.35060692
            Y: 0.6
            Z: 0.99999994
          }
        }
        ParentId: 11258981553514273809
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 17583774027684274893
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
        CoreMesh {
          MeshAsset {
            Id: 17091160006555877630
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
        Id: 9415600082117980677
        Name: "Cube - Rounded"
        Transform {
          Location {
            X: -13.1922617
            Y: 69.9597473
            Z: 24.9994984
          }
          Rotation {
            Yaw: -1.70754674e-06
          }
          Scale {
            X: 2.35060692
            Y: 0.6
            Z: 0.99999994
          }
        }
        ParentId: 11258981553514273809
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 17583774027684274893
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
        CoreMesh {
          MeshAsset {
            Id: 17091160006555877630
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
        Id: 6838910030231690038
        Name: "Cube"
        Transform {
          Location {
            X: -10.937891
            Y: -0.0401783064
            Z: -0.000376330019
          }
          Rotation {
            Yaw: -1.70754674e-06
          }
          Scale {
            X: 1.53634083
            Y: 1.1889267
            Z: 0.49999997
          }
        }
        ParentId: 11258981553514273809
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 17583774027684274893
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.572
              G: 0.426992357
              B: 0.194479987
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
        CoreMesh {
          MeshAsset {
            Id: 12095835209017042614
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
        Id: 1232702910831417486
        Name: "Gate"
        Transform {
          Location {
            X: 3.49245854e-10
            Y: 0.000363959931
            Z: -1020.85181
          }
          Rotation {
            Yaw: 6.83017925e-06
          }
          Scale {
            X: 0.99999994
            Y: 1.24447381
            Z: 1.00000012
          }
        }
        ParentId: 6334474249365085257
        Collidable_v2 {
          Value: "mc:ecollisionsetting:forceoff"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:forceon"
        }
        CoreMesh {
          MeshAsset {
            Id: 4542959667302136808
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
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
        Id: 8408556065705174701
        Name: "Mechanical Gear Lock 01 SFX"
        Transform {
          Location {
            Y: 1.1728383e-12
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 6334474249365085257
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
            Id: 4307056941184665948
          }
          Volume: 1
          Falloff: 3600
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
        Id: 3819024858533995929
        Name: "Massive Metal Gears Cranking 01 SFX"
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
        ParentId: 6334474249365085257
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
            Id: 5247695854465748450
          }
          Volume: 1
          Falloff: -1
          Radius: -1
          EnableOcclusion: true
          FadeOutTime: 0.2
          IsSpatializationEnabled: true
          IsAttenuationEnabled: true
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 1186032712786898601
        Name: "Cinematic Metallic Slam Impact 01 SFX"
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
        ParentId: 6334474249365085257
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
            Id: 4521339182838057470
          }
          Volume: 2
          Falloff: 3600
          Radius: 400
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
      Id: 198353679974341757
      Name: "Cube - Bottom-Aligned"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_cube_001"
      }
    }
    Assets {
      Id: 16606065455527485578
      Name: "Crescent - 01"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_crescent_001"
      }
    }
    Assets {
      Id: 12095835209017042614
      Name: "Cube"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_cube_002"
      }
    }
    Assets {
      Id: 10420083731386464032
      Name: "Wedge - Concave"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_wedge_curved_concave_001"
      }
    }
    Assets {
      Id: 17091160006555877630
      Name: "Cube - Rounded"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_cube_rounded_002"
      }
    }
    Assets {
      Id: 4542959667302136808
      Name: "Portcullis"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_portcullis_001"
      }
    }
    Assets {
      Id: 4307056941184665948
      Name: "Mechanical Gear Lock 01 SFX"
      PlatformAssetType: 7
      PrimaryAsset {
        AssetType: "AudioAssetRef"
        AssetId: "sfx_mechanical_gear_lock_01_Cue_ref"
      }
    }
    Assets {
      Id: 5247695854465748450
      Name: "Massive Metal Gears Cranking 01 SFX"
      PlatformAssetType: 7
      PrimaryAsset {
        AssetType: "AudioAssetRef"
        AssetId: "sfx_massive_metal_gears_cranking_01_Cue_ref"
      }
    }
    Assets {
      Id: 4521339182838057470
      Name: "Cinematic Metallic Slam Impact 01 SFX"
      PlatformAssetType: 7
      PrimaryAsset {
        AssetType: "AudioAssetRef"
        AssetId: "sfx_designer_metallic_slam_impact_01_Cue_ref"
      }
    }
    PrimaryAssetId {
      AssetType: "None"
      AssetId: "None"
    }
  }
  SerializationVersion: 118
}
