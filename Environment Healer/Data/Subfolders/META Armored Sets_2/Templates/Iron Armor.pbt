Assets {
  Id: 15375610413342666638
  Name: "Iron Armor"
  PlatformAssetType: 5
  TemplateAsset {
    ObjectBlock {
      RootId: 9573753560124197201
      Objects {
        Id: 9573753560124197201
        Name: "Iron Armor"
        Transform {
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 4781671109827199097
        ChildIds: 13186347273934891418
        ChildIds: 298531080652296407
        ChildIds: 5539184402336162495
        UnregisteredParameters {
          Overrides {
            Name: "cs:IsPlayerVisible"
            Bool: false
          }
          Overrides {
            Name: "cs:IsPlayerVisible:tooltip"
            String: "Is player visible wearing this costume?"
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
        Equipment {
          SocketName: "root"
          PickupTrigger {
            SubObjectId: 5539184402336162495
          }
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 13186347273934891418
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
        ParentId: 9573753560124197201
        ChildIds: 12566784161701933201
        ChildIds: 18001588904365696657
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
        NetworkContext {
          Type: Server
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 12566784161701933201
        Name: "EquipmentPlayerCostumeServer"
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
        ParentId: 13186347273934891418
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
            Id: 16819337106269311349
          }
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 18001588904365696657
        Name: "EquipmentPersisterServer"
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
        ParentId: 13186347273934891418
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
            Id: 15487007447758105123
          }
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 298531080652296407
        Name: "Client Context"
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
        ParentId: 9573753560124197201
        ChildIds: 12380405317075216134
        ChildIds: 16626570038979758447
        UnregisteredParameters {
        }
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
        Id: 12380405317075216134
        Name: "EquipmentPlayerCostumeClient"
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
        ParentId: 298531080652296407
        UnregisteredParameters {
          Overrides {
            Name: "cs:Costume"
            ObjectReference {
              SubObjectId: 16626570038979758447
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
            Id: 7220256456755787571
          }
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 16626570038979758447
        Name: "Costume"
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
        ParentId: 298531080652296407
        ChildIds: 17169119373931560678
        ChildIds: 6085348803957945767
        ChildIds: 1741161620319299995
        ChildIds: 13237482560042445510
        ChildIds: 8471376971535378014
        ChildIds: 7993432287154671961
        ChildIds: 1071608290926880140
        ChildIds: 10188042662085531553
        ChildIds: 16200990080885384343
        ChildIds: 1911253619631597637
        ChildIds: 5322416027881194053
        ChildIds: 7088599015034234668
        ChildIds: 7502341152648027233
        ChildIds: 16260531870495725876
        ChildIds: 1514978806860217940
        ChildIds: 8480731776625712631
        ChildIds: 17862777866145573272
        ChildIds: 4889027416524574205
        ChildIds: 17372713372376425819
        ChildIds: 2984490286495296348
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
        Id: 17169119373931560678
        Name: "root"
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
        ParentId: 16626570038979758447
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
        Id: 6085348803957945767
        Name: "head"
        Transform {
          Location {
            X: -8.4682579
            Y: 0.0620147325
            Z: 188.904099
          }
          Rotation {
            Pitch: -9.93499756
            Yaw: 0.000120403849
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 16626570038979758447
        ChildIds: 13279409137228242400
        ChildIds: 12902074471035012997
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
        Id: 13279409137228242400
        Name: "Helmet"
        Transform {
          Location {
            X: 9.96576118
            Y: -2.49046752e-05
            Z: -5.64839792
          }
          Rotation {
            Pitch: -1.28106689
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 6085348803957945767
        ChildIds: 6192944434152905712
        ChildIds: 15253413235446468779
        ChildIds: 7997761841151774016
        ChildIds: 5225755030288419392
        ChildIds: 2072700808249660083
        ChildIds: 9532566940386253421
        ChildIds: 15639064053464371428
        ChildIds: 11907627870096743894
        ChildIds: 1176662384996389864
        ChildIds: 676899542065916397
        ChildIds: 14239481475411126460
        ChildIds: 4838277379916785735
        ChildIds: 8176332645672432900
        ChildIds: 13359898580531263994
        ChildIds: 6407007542989979957
        ChildIds: 14326858053189963626
        ChildIds: 5586418476593428323
        ChildIds: 6872786756211430876
        ChildIds: 828419877925674706
        ChildIds: 13943307631853474635
        ChildIds: 59202516465512868
        ChildIds: 15851136194192102553
        ChildIds: 908309535895321024
        ChildIds: 5131573441414856413
        ChildIds: 9105418424894440756
        ChildIds: 3904070932529459080
        ChildIds: 681672933320316349
        ChildIds: 17160329338335376623
        ChildIds: 5123936766579163193
        ChildIds: 50689869405795949
        ChildIds: 6194606802404824979
        ChildIds: 12040925133165960208
        ChildIds: 10090727696632793708
        ChildIds: 2219955625562553553
        ChildIds: 16663437327546187338
        ChildIds: 2296021655296484880
        ChildIds: 14224233412804517833
        ChildIds: 17047150981583715190
        ChildIds: 6359888753483060212
        ChildIds: 5240520541621317219
        ChildIds: 3012949921640981523
        ChildIds: 12017347516725055318
        ChildIds: 16946556830565488380
        ChildIds: 15288208598121606772
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
          Model {
            AggressiveMerge: true
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
        Id: 6192944434152905712
        Name: "Urban Vehicle Car - Windshield 01"
        Transform {
          Location {
            X: -12.410037
            Y: 6.57999039
            Z: -1.93389332
          }
          Rotation {
            Pitch: -33.062336
            Yaw: 137.515488
            Roll: 6.98424387
          }
          Scale {
            X: 0.0935490951
            Y: 0.0656518862
            Z: 0.22757645
          }
        }
        ParentId: 13279409137228242400
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 2018227301497757374
            }
          }
          Overrides {
            Name: "ma:Shared_Detail1:id"
            AssetReference {
              Id: 2018227301497757374
            }
          }
          Overrides {
            Name: "ma:Shared_Detail2:id"
            AssetReference {
              Id: 2018227301497757374
            }
          }
          Overrides {
            Name: "ma:Shared_Detail3:id"
            AssetReference {
              Id: 11489275323901504074
            }
          }
          Overrides {
            Name: "ma:Shared_Detail3:color"
            Color {
              R: 0.163428575
              G: 0.18
              B: 0.17
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
            Id: 5035333608653009594
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
        Id: 15253413235446468779
        Name: "Ring"
        Transform {
          Location {
            X: -4.61304283
            Y: -0.0913038552
            Z: 16.637764
          }
          Rotation {
            Pitch: -9.93498135
            Yaw: 179.999802
            Roll: 2.82677574e-05
          }
          Scale {
            X: 0.249618664
            Y: 0.218795389
            Z: 0.18033725
          }
        }
        ParentId: 13279409137228242400
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 11489275323901504074
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.177777767
              G: 0.2
              B: 0.188888893
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
            Id: 16353917461806733124
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
        Id: 7997761841151774016
        Name: "Ring"
        Transform {
          Location {
            X: -4.86068249
            Y: -0.0913038626
            Z: 18.0515728
          }
          Rotation {
            Pitch: -9.93498135
            Yaw: 179.999802
            Roll: 2.82677574e-05
          }
          Scale {
            X: 0.230082989
            Y: 0.21140863
            Z: 0.237030923
          }
        }
        ParentId: 13279409137228242400
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 11489275323901504074
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.177777767
              G: 0.2
              B: 0.188888893
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
            Id: 5489775416547967874
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
        Id: 5225755030288419392
        Name: "Ring"
        Transform {
          Location {
            X: -1.72705078
            Y: 0.924804688
            Z: 1.25970459
          }
          Rotation {
            Pitch: -3.99852228
            Yaw: -119.110649
            Roll: -7.67949533
          }
          Scale {
            X: 0.272031546
            Y: -0.271338135
            Z: 0.172344908
          }
        }
        ParentId: 13279409137228242400
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 11489275323901504074
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.216666654
              G: 0.24
              B: 0.22
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
            Id: 517727953107580667
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
        Id: 2072700808249660083
        Name: "Ring"
        Transform {
          Location {
            X: -4.91994667
            Y: -0.0913038552
            Z: 18.3899288
          }
          Rotation {
            Pitch: -9.93498135
            Yaw: 179.999802
            Roll: 2.82677574e-05
          }
          Scale {
            X: 0.249618664
            Y: 0.218795419
            Z: 0.157091245
          }
        }
        ParentId: 13279409137228242400
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 11489275323901504074
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.177777767
              G: 0.2
              B: 0.188888893
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
            Id: 16353917461806733124
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
        Id: 9532566940386253421
        Name: "Ring"
        Transform {
          Location {
            X: -4.6231966
            Y: -0.0913038552
            Z: 16.695734
          }
          Rotation {
            Pitch: -9.93498135
            Yaw: 179.999802
            Roll: 2.82677574e-05
          }
          Scale {
            X: 0.249097541
            Y: 0.218795389
            Z: 0.0172489621
          }
        }
        ParentId: 13279409137228242400
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 11489275323901504074
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.378270745
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.125
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.177777767
              G: 0.2
              B: 0.188888893
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
            Id: 5836430349218932838
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
        Id: 15639064053464371428
        Name: "Ring"
        Transform {
          Location {
            X: -4.9079628
            Y: -0.0620069578
            Z: 18.2649078
          }
          Rotation {
            Pitch: -9.93498135
            Yaw: 179.999817
            Roll: 89.9999771
          }
          Scale {
            X: 0.240090594
            Y: 0.245689735
            Z: 0.525346518
          }
        }
        ParentId: 13279409137228242400
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 11489275323901504074
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 3.49439263
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 6.80835962
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.213333309
              G: 0.24
              B: 0.226666674
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
            Id: 5624341977690611171
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
        Id: 11907627870096743894
        Name: "Ring"
        Transform {
          Location {
            X: -4.9079628
            Y: -0.0620069578
            Z: 18.2649078
          }
          Rotation {
            Pitch: 9.93498135
            Yaw: -0.000163386445
            Roll: 89.9999161
          }
          Scale {
            X: 0.239482641
            Y: 0.24568978
            Z: 0.525346518
          }
        }
        ParentId: 13279409137228242400
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 11489275323901504074
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 3.49439263
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 6.80835962
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.213333309
              G: 0.24
              B: 0.226666674
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
            Id: 5624341977690611171
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
        Id: 1176662384996389864
        Name: "Urban Vehicle Car - Windshield 01"
        Transform {
          Location {
            X: -0.614746094
            Y: -11.2967529
            Z: -0.188537598
          }
          Rotation {
            Pitch: -29.6287651
            Yaw: -79.6723938
            Roll: -10.9546728
          }
          Scale {
            X: 0.108609371
            Y: -0.082220234
            Z: 0.223718539
          }
        }
        ParentId: 13279409137228242400
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 2018227301497757374
            }
          }
          Overrides {
            Name: "ma:Shared_Detail1:id"
            AssetReference {
              Id: 2018227301497757374
            }
          }
          Overrides {
            Name: "ma:Shared_Detail2:id"
            AssetReference {
              Id: 2018227301497757374
            }
          }
          Overrides {
            Name: "ma:Shared_Detail3:id"
            AssetReference {
              Id: 11489275323901504074
            }
          }
          Overrides {
            Name: "ma:Shared_Detail3:color"
            Color {
              R: 0.163428575
              G: 0.18
              B: 0.17
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
            Id: 5035333608653009594
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
        Id: 676899542065916397
        Name: "Urban Vehicle Sedan - Door Rear 01 - Window 01"
        Transform {
          Location {
            X: 6.49658203
            Y: -7.17346191
            Z: 9.20373535
          }
          Rotation {
            Pitch: -74.2203369
            Yaw: -4.41520119
            Roll: -119.575653
          }
          Scale {
            X: 0.115847431
            Y: -0.169994071
            Z: -0.0650227517
          }
        }
        ParentId: 13279409137228242400
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_Detail1:id"
            AssetReference {
              Id: 11489275323901504074
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 2018227301497757374
            }
          }
          Overrides {
            Name: "ma:Shared_Detail1:vtile"
            Float: 1.14021754
          }
          Overrides {
            Name: "ma:Shared_Detail1:utile"
            Float: 0.718567371
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
            Id: 10037221186293404892
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
        Id: 14239481475411126460
        Name: "Urban Vehicle Accessory - Sedan Fenderflare 02"
        Transform {
          Location {
            X: 5.08544922
            Y: -6.89025879
            Z: 16.6022339
          }
          Rotation {
            Pitch: -67.3924179
            Yaw: -88.349472
            Roll: 140.179718
          }
          Scale {
            X: -0.0492402129
            Y: 0.0362625904
            Z: -0.0412393548
          }
        }
        ParentId: 13279409137228242400
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 11489275323901504074
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.528005
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.399891287
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.216666654
              G: 0.24
              B: 0.22
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
            Id: 18119351551008849317
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
        Id: 4838277379916785735
        Name: "Urban Vehicle Accessory - Sedan Fenderflare 02"
        Transform {
          Location {
            X: 5.92558289
            Y: -4.24782658
            Z: 18.2863712
          }
          Rotation {
            Pitch: 7.64052248
            Yaw: 62.4797134
            Roll: 11.8567495
          }
          Scale {
            X: 0.0609573349
            Y: 0.0362577103
            Z: 0.0330940746
          }
        }
        ParentId: 13279409137228242400
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 11489275323901504074
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.528005
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.399891287
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.216666654
              G: 0.24
              B: 0.22
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
            Id: 18119351551008849317
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
        Id: 8176332645672432900
        Name: "Urban Vehicle Sedan - Door Rear 01 - Window 01"
        Transform {
          Location {
            X: 4.26855469
            Y: -7.46386719
            Z: 16.8349609
          }
          Rotation {
            Pitch: -7.95508
            Yaw: -138.878479
            Roll: -8.69354
          }
          Scale {
            X: 0.0268316623
            Y: -0.0789383575
            Z: -0.0543600135
          }
        }
        ParentId: 13279409137228242400
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_Detail1:id"
            AssetReference {
              Id: 11489275323901504074
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 2018227301497757374
            }
          }
          Overrides {
            Name: "ma:Shared_Detail1:vtile"
            Float: 0.590087712
          }
          Overrides {
            Name: "ma:Shared_Detail1:utile"
            Float: 0.320173264
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
            Id: 10037221186293404892
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
        Id: 13359898580531263994
        Name: "Ring"
        Transform {
          Location {
            X: -14.1354542
            Y: -0.0619723722
            Z: -0.217081308
          }
          Rotation {
            Pitch: 83.7844391
            Yaw: -179.999908
            Roll: 0.000249083037
          }
          Scale {
            X: 0.0987229124
            Y: 0.237863868
            Z: 0.299519926
          }
        }
        ParentId: 13279409137228242400
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 11489275323901504074
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.216666654
              G: 0.24
              B: 0.22
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
            Id: 17409486211126394575
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
        Id: 6407007542989979957
        Name: "Urban Vehicle Car - Windshield 01"
        Transform {
          Location {
            X: -12.4086914
            Y: -6.70361328
            Z: -1.93377686
          }
          Rotation {
            Pitch: -33.062355
            Yaw: -137.515778
            Roll: -6.98421192
          }
          Scale {
            X: 0.0935490951
            Y: -0.0656518862
            Z: 0.227576435
          }
        }
        ParentId: 13279409137228242400
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 2018227301497757374
            }
          }
          Overrides {
            Name: "ma:Shared_Detail1:id"
            AssetReference {
              Id: 2018227301497757374
            }
          }
          Overrides {
            Name: "ma:Shared_Detail2:id"
            AssetReference {
              Id: 2018227301497757374
            }
          }
          Overrides {
            Name: "ma:Shared_Detail3:id"
            AssetReference {
              Id: 11489275323901504074
            }
          }
          Overrides {
            Name: "ma:Shared_Detail3:color"
            Color {
              R: 0.163428575
              G: 0.18
              B: 0.17
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
            Id: 5035333608653009594
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
        Id: 14326858053189963626
        Name: "Ring"
        Transform {
          Location {
            X: -4.91860342
            Y: -0.0620069578
            Z: 18.3256588
          }
          Rotation {
            Pitch: -9.93498135
            Yaw: 179.999802
            Roll: 48.7021713
          }
          Scale {
            X: 0.237404272
            Y: 0.22843416
            Z: 0.15724653
          }
        }
        ParentId: 13279409137228242400
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 11489275323901504074
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 1.51804042
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 1.28488922
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.213333309
              G: 0.24
              B: 0.226666674
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
            Id: 517727953107580667
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
        Id: 5586418476593428323
        Name: "Ring"
        Transform {
          Location {
            X: -4.91650391
            Y: -0.0615234375
            Z: 18.3259277
          }
          Rotation {
            Pitch: -9.9349947
            Yaw: 179.999802
            Roll: 48.7022057
          }
          Scale {
            X: -0.236937433
            Y: 0.228434145
            Z: 0.157007411
          }
        }
        ParentId: 13279409137228242400
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 11489275323901504074
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 1.51804042
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 1.28488922
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.213333309
              G: 0.24
              B: 0.226666674
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
            Id: 517727953107580667
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
        Id: 6872786756211430876
        Name: "Ring"
        Transform {
          Location {
            X: -4.68945312
            Y: 5.77404785
            Z: 17.0343018
          }
          Rotation {
            Pitch: -9.93498802
            Yaw: 179.999817
            Roll: 48.7021484
          }
          Scale {
            X: -0.178736389
            Y: 0.130278796
            Z: 0.157007337
          }
        }
        ParentId: 13279409137228242400
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 11489275323901504074
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 1.51804042
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 1.28488922
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.213333309
              G: 0.24
              B: 0.226666674
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
            Id: 517727953107580667
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
        Id: 828419877925674706
        Name: "Ring"
        Transform {
          Location {
            X: -4.6924305
            Y: 5.77209711
            Z: 17.0344963
          }
          Rotation {
            Pitch: -9.93498135
            Yaw: 179.999802
            Roll: 48.7021332
          }
          Scale {
            X: 0.179088607
            Y: 0.130278796
            Z: 0.157246441
          }
        }
        ParentId: 13279409137228242400
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 11489275323901504074
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 1.51804042
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 1.28488922
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.213333309
              G: 0.24
              B: 0.226666674
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
            Id: 517727953107580667
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
        Id: 13943307631853474635
        Name: "Urban Vehicle Car - Windshield 01"
        Transform {
          Location {
            X: -15.5219727
            Y: -0.103637695
            Z: 6.08911133
          }
          Rotation {
            Pitch: -29.7022572
            Yaw: 179.516525
            Roll: -0.807732284
          }
          Scale {
            X: 0.0395548902
            Y: -0.03766286
            Z: 0.130228832
          }
        }
        ParentId: 13279409137228242400
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 2018227301497757374
            }
          }
          Overrides {
            Name: "ma:Shared_Detail1:id"
            AssetReference {
              Id: 2018227301497757374
            }
          }
          Overrides {
            Name: "ma:Shared_Detail2:id"
            AssetReference {
              Id: 2018227301497757374
            }
          }
          Overrides {
            Name: "ma:Shared_Detail3:id"
            AssetReference {
              Id: 11489275323901504074
            }
          }
          Overrides {
            Name: "ma:Shared_Detail3:color"
            Color {
              R: 0.163428575
              G: 0.18
              B: 0.17
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
            Id: 5035333608653009594
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
        Id: 59202516465512868
        Name: "Ring"
        Transform {
          Location {
            X: -4.91650391
            Y: -0.0616455078
            Z: 18.3259277
          }
          Rotation {
            Pitch: -9.93498802
            Yaw: 179.999817
            Roll: -48.7020836
          }
          Scale {
            X: -0.236937433
            Y: -0.228434145
            Z: 0.157007426
          }
        }
        ParentId: 13279409137228242400
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 11489275323901504074
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 1.51804042
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 1.28488922
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.213333309
              G: 0.24
              B: 0.226666674
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
            Id: 517727953107580667
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
        Id: 15851136194192102553
        Name: "Ring"
        Transform {
          Location {
            X: -4.91699219
            Y: -0.0615234375
            Z: 18.3257446
          }
          Rotation {
            Pitch: -9.93498802
            Yaw: 179.999817
            Roll: -48.7020836
          }
          Scale {
            X: 0.237404257
            Y: -0.22843416
            Z: 0.157246545
          }
        }
        ParentId: 13279409137228242400
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 11489275323901504074
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 1.51804042
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 1.28488922
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.213333309
              G: 0.24
              B: 0.226666674
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
            Id: 517727953107580667
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
        Id: 908309535895321024
        Name: "Ring"
        Transform {
          Location {
            X: -4.69091797
            Y: -5.89575195
            Z: 17.0346069
          }
          Rotation {
            Pitch: -9.93498802
            Yaw: 179.999817
            Roll: -48.7020378
          }
          Scale {
            X: 0.179088607
            Y: -0.130278796
            Z: 0.157246456
          }
        }
        ParentId: 13279409137228242400
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 11489275323901504074
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 1.51804042
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 1.28488922
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.213333309
              G: 0.24
              B: 0.226666674
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
            Id: 517727953107580667
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
        Id: 5131573441414856413
        Name: "Ring"
        Transform {
          Location {
            X: -4.68945312
            Y: -5.89709473
            Z: 17.0343018
          }
          Rotation {
            Pitch: -9.93498135
            Yaw: 179.999802
            Roll: -48.7020111
          }
          Scale {
            X: -0.178736389
            Y: -0.130278796
            Z: 0.157007337
          }
        }
        ParentId: 13279409137228242400
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 11489275323901504074
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 1.51804042
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 1.28488922
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.213333309
              G: 0.24
              B: 0.226666674
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
            Id: 517727953107580667
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
        Id: 9105418424894440756
        Name: "Gem - Pear Polished"
        Transform {
          Location {
            X: 6.24171543
            Y: -5.16469431
            Z: 13.1674433
          }
          Rotation {
            Pitch: 9.90142441
            Yaw: -55.7800407
            Roll: 76.1663055
          }
          Scale {
            X: 0.013
            Y: 0.00535093201
            Z: 0.0305915922
          }
        }
        ParentId: 13279409137228242400
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 11489275323901504074
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.216666654
              G: 0.24
              B: 0.22
              A: 1
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.125
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.125
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
            Id: 4952651028164497324
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
        Id: 3904070932529459080
        Name: "Gem - Pear Polished"
        Transform {
          Location {
            X: 6.51636696
            Y: -5.25124311
            Z: 12.71731
          }
          Rotation {
            Pitch: -72.3487473
            Yaw: -1.83423519
            Roll: 41.1875572
          }
          Scale {
            X: 0.0115755377
            Y: 0.0229499247
            Z: 0.0217907634
          }
        }
        ParentId: 13279409137228242400
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 11489275323901504074
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.216666654
              G: 0.24
              B: 0.22
              A: 1
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.125
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.125
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
            Id: 14202507408574622793
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
        Id: 681672933320316349
        Name: "Gem - Pear Polished"
        Transform {
          Location {
            X: 7.29302692
            Y: -5.27614594
            Z: 10.275631
          }
          Rotation {
            Pitch: -72.3487549
            Yaw: -1.834216
            Roll: 41.1875916
          }
          Scale {
            X: 0.0627022088
            Y: 0.0229504742
            Z: 0.0217895675
          }
        }
        ParentId: 13279409137228242400
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 11489275323901504074
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.216666654
              G: 0.24
              B: 0.22
              A: 1
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.131570175
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.125
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
            Id: 14202507408574622793
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
        Id: 17160329338335376623
        Name: "Gem - Pear Polished"
        Transform {
          Location {
            X: 8.52962303
            Y: -5.3156991
            Z: 6.39110184
          }
          Rotation {
            Pitch: -72.348587
            Yaw: -1.83408439
            Roll: 41.187397
          }
          Scale {
            X: 0.0742998198
            Y: 0.0229507051
            Z: 0.0217894465
          }
        }
        ParentId: 13279409137228242400
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 11489275323901504074
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.216666654
              G: 0.24
              B: 0.22
              A: 1
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.131570175
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.125
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
            Id: 14202507408574622793
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
        Id: 5123936766579163193
        Name: "Gem - Pear Polished"
        Transform {
          Location {
            X: 9.46178055
            Y: -5.34548426
            Z: 3.46071267
          }
          Rotation {
            Pitch: 11.518239
            Yaw: -52.0112381
            Roll: 76.5329208
          }
          Scale {
            X: 0.0227804966
            Y: 0.0295472685
            Z: 0.0305753276
          }
        }
        ParentId: 13279409137228242400
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 11489275323901504074
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.216666654
              G: 0.24
              B: 0.22
              A: 1
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.131570175
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.125
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
            Id: 17050817775433979705
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
        Id: 50689869405795949
        Name: "Gem - Pear Polished"
        Transform {
          Location {
            X: 9.46337891
            Y: 5.22180176
            Z: 3.46081543
          }
          Rotation {
            Pitch: 11.5182734
            Yaw: 52.0109444
            Roll: -76.5329514
          }
          Scale {
            X: 0.0227804966
            Y: -0.0295472685
            Z: 0.0305753276
          }
        }
        ParentId: 13279409137228242400
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 11489275323901504074
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.131570175
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.125
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.216666654
              G: 0.24
              B: 0.22
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
            Id: 17050817775433979705
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
        Id: 6194606802404824979
        Name: "Gem - Pear Polished"
        Transform {
          Location {
            X: 8.53125
            Y: 5.19189453
            Z: 6.39123535
          }
          Rotation {
            Pitch: -72.3486481
            Yaw: 1.83389485
            Roll: -41.1875877
          }
          Scale {
            X: 0.0742998198
            Y: -0.0229507051
            Z: 0.0217894465
          }
        }
        ParentId: 13279409137228242400
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 11489275323901504074
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.131570175
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.125
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.216666654
              G: 0.24
              B: 0.22
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
            Id: 14202507408574622793
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
        Id: 12040925133165960208
        Name: "Gem - Pear Polished"
        Transform {
          Location {
            X: 7.29492188
            Y: 5.15246582
            Z: 10.2756958
          }
          Rotation {
            Pitch: -72.3488235
            Yaw: 1.83408308
            Roll: -41.1878204
          }
          Scale {
            X: 0.0627022088
            Y: -0.0229504742
            Z: 0.0217895675
          }
        }
        ParentId: 13279409137228242400
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 11489275323901504074
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.131570175
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.125
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.216666654
              G: 0.24
              B: 0.22
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
            Id: 14202507408574622793
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
        Id: 10090727696632793708
        Name: "Gem - Pear Polished"
        Transform {
          Location {
            X: 6.51709
            Y: 5.12756348
            Z: 12.7174072
          }
          Rotation {
            Pitch: -72.3488846
            Yaw: 1.83407044
            Roll: -41.18787
          }
          Scale {
            X: 0.0115755377
            Y: -0.0229499247
            Z: 0.0217907634
          }
        }
        ParentId: 13279409137228242400
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 11489275323901504074
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.125
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.125
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.216666654
              G: 0.24
              B: 0.22
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
            Id: 14202507408574622793
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
        Id: 2219955625562553553
        Name: "Gem - Pear Polished"
        Transform {
          Location {
            X: 6.24316406
            Y: 5.04101562
            Z: 13.1676025
          }
          Rotation {
            Pitch: 9.90148544
            Yaw: 55.7797127
            Roll: -76.1663895
          }
          Scale {
            X: 0.013
            Y: -0.00535093201
            Z: 0.0305915922
          }
        }
        ParentId: 13279409137228242400
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 11489275323901504074
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.125
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.125
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.216666654
              G: 0.24
              B: 0.22
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
            Id: 4952651028164497324
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
        Id: 16663437327546187338
        Name: "Urban Vehicle Accessory - Sedan Fenderflare 02"
        Transform {
          Location {
            X: 5.08544922
            Y: 6.76709
            Z: 16.6022339
          }
          Rotation {
            Pitch: -67.3922806
            Yaw: 88.3490829
            Roll: -140.179611
          }
          Scale {
            X: -0.0492402129
            Y: -0.0362625904
            Z: -0.0412393548
          }
        }
        ParentId: 13279409137228242400
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 11489275323901504074
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.528005
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.399891287
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.216666654
              G: 0.24
              B: 0.22
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
            Id: 18119351551008849317
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
        Id: 2296021655296484880
        Name: "Urban Vehicle Accessory - Sedan Fenderflare 02"
        Transform {
          Location {
            X: 5.92773438
            Y: 4.12414551
            Z: 18.2866211
          }
          Rotation {
            Pitch: 7.64048147
            Yaw: -62.480114
            Roll: -11.8567982
          }
          Scale {
            X: 0.0609573349
            Y: -0.0362577103
            Z: 0.0330940746
          }
        }
        ParentId: 13279409137228242400
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 11489275323901504074
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.528005
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.399891287
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.216666654
              G: 0.24
              B: 0.22
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
            Id: 18119351551008849317
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
        Id: 14224233412804517833
        Name: "Gem - Pear Polished"
        Transform {
          Location {
            X: 6.88769531
            Y: 0.228515625
            Z: 18.3325195
          }
          Rotation {
            Pitch: -17.1149025
            Yaw: -174.723404
            Roll: -91.5567474
          }
          Scale {
            X: 0.0124197165
            Y: -0.0203342717
            Z: 0.0253834687
          }
        }
        ParentId: 13279409137228242400
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 11489275323901504074
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.125
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.125
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.216666654
              G: 0.24
              B: 0.22
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
        Id: 17047150981583715190
        Name: "Gem - Pear Polished"
        Transform {
          Location {
            X: 6.88615131
            Y: -0.352200717
            Z: 18.3324299
          }
          Rotation {
            Pitch: -17.1149158
            Yaw: 174.723053
            Roll: 91.5567932
          }
          Scale {
            X: 0.0124197165
            Y: 0.0203342717
            Z: 0.0253834687
          }
        }
        ParentId: 13279409137228242400
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 11489275323901504074
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.216666654
              G: 0.24
              B: 0.22
              A: 1
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.125
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.125
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
        Id: 6359888753483060212
        Name: "Gem - Pear Polished"
        Transform {
          Location {
            X: 7.60592079
            Y: -0.0621626824
            Z: 16.0683975
          }
          Rotation {
            Pitch: -72.8160477
            Yaw: -7.39170064e-05
            Roll: -8.22798756e-05
          }
          Scale {
            X: 0.0657632872
            Y: 0.0412069261
            Z: 0.0339985415
          }
        }
        ParentId: 13279409137228242400
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 11489275323901504074
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.194147602
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.125
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.216666654
              G: 0.24
              B: 0.22
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
            Id: 14202507408574622793
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
        Id: 5240520541621317219
        Name: "Gem - Pear Polished"
        Transform {
          Location {
            X: 8.44915199
            Y: -0.0621637
            Z: 13.342886
          }
          Rotation {
            Pitch: -2.73207552e-05
            Yaw: -90.0001297
            Roll: 72.8165436
          }
          Scale {
            X: 0.034158688
            Y: 0.0475696288
            Z: 0.0475696363
          }
        }
        ParentId: 13279409137228242400
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 11489275323901504074
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.173721507
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.194147602
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.216666654
              G: 0.24
              B: 0.22
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
            Id: 17050817775433979705
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
        Id: 3012949921640981523
        Name: "Urban Vehicle Car - Windshield 01"
        Transform {
          Location {
            X: -0.614840031
            Y: 11.1730938
            Z: -0.188557327
          }
          Rotation {
            Pitch: -29.6286755
            Yaw: 79.6719742
            Roll: 10.9546499
          }
          Scale {
            X: 0.108609371
            Y: 0.082220234
            Z: 0.223718539
          }
        }
        ParentId: 13279409137228242400
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 2018227301497757374
            }
          }
          Overrides {
            Name: "ma:Shared_Detail1:id"
            AssetReference {
              Id: 2018227301497757374
            }
          }
          Overrides {
            Name: "ma:Shared_Detail2:id"
            AssetReference {
              Id: 2018227301497757374
            }
          }
          Overrides {
            Name: "ma:Shared_Detail3:id"
            AssetReference {
              Id: 11489275323901504074
            }
          }
          Overrides {
            Name: "ma:Shared_Detail3:color"
            Color {
              R: 0.163428575
              G: 0.18
              B: 0.17
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
            Id: 5035333608653009594
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
        Id: 12017347516725055318
        Name: "Ring"
        Transform {
          Location {
            X: -1.72810829
            Y: -1.04845762
            Z: 1.25964749
          }
          Rotation {
            Pitch: -3.9984746
            Yaw: 119.110298
            Roll: 7.6795125
          }
          Scale {
            X: 0.272031546
            Y: 0.271338135
            Z: 0.172344908
          }
        }
        ParentId: 13279409137228242400
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 11489275323901504074
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.216666654
              G: 0.24
              B: 0.22
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
            Id: 517727953107580667
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
        Id: 16946556830565488380
        Name: "Urban Vehicle Sedan - Door Rear 01 - Window 01"
        Transform {
          Location {
            X: 6.49658203
            Y: 7.05029297
            Z: 9.20373535
          }
          Rotation {
            Pitch: -74.2202606
            Yaw: 4.41523743
            Roll: 119.575325
          }
          Scale {
            X: 0.115847431
            Y: 0.169994071
            Z: -0.0650227517
          }
        }
        ParentId: 13279409137228242400
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_Detail1:id"
            AssetReference {
              Id: 11489275323901504074
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 2018227301497757374
            }
          }
          Overrides {
            Name: "ma:Shared_Detail1:vtile"
            Float: 1.14021754
          }
          Overrides {
            Name: "ma:Shared_Detail1:utile"
            Float: 0.718567371
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
            Id: 10037221186293404892
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
        Id: 15288208598121606772
        Name: "Urban Vehicle Sedan - Door Rear 01 - Window 01"
        Transform {
          Location {
            X: 4.26855469
            Y: 7.34069824
            Z: 16.8349609
          }
          Rotation {
            Pitch: -7.9550252
            Yaw: 138.878143
            Roll: 8.69358253
          }
          Scale {
            X: 0.0268316623
            Y: 0.0789383575
            Z: -0.0543600135
          }
        }
        ParentId: 13279409137228242400
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_Detail1:id"
            AssetReference {
              Id: 11489275323901504074
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 2018227301497757374
            }
          }
          Overrides {
            Name: "ma:Shared_Detail1:vtile"
            Float: 0.590087712
          }
          Overrides {
            Name: "ma:Shared_Detail1:utile"
            Float: 0.320173264
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
            Id: 10037221186293404892
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
        Id: 12902074471035012997
        Name: "Head"
        Transform {
          Location {
            X: 17.6318188
            Y: -0.06202057
            Z: -82.4141464
          }
          Rotation {
            Pitch: 6
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 6085348803957945767
        UnregisteredParameters {
          Overrides {
            Name: "ma:1:Shared_BaseMaterial:id"
            AssetReference {
              Id: 2018227301497757374
            }
          }
          Overrides {
            Name: "ma:1:Shared_Detail1:id"
            AssetReference {
              Id: 2018227301497757374
            }
          }
          Overrides {
            Name: "ma:1:Shared_Detail2:id"
            AssetReference {
              Id: 2018227301497757374
            }
          }
          Overrides {
            Name: "ma:1:Shared_Detail3:id"
            AssetReference {
              Id: 2018227301497757374
            }
          }
          Overrides {
            Name: "ma:2:Shared_BaseMaterial:id"
            AssetReference {
              Id: 2018227301497757374
            }
          }
          Overrides {
            Name: "ma:2:Shared_Detail1:id"
            AssetReference {
              Id: 2018227301497757374
            }
          }
          Overrides {
            Name: "ma:2:Shared_Detail2:id"
            AssetReference {
              Id: 2018227301497757374
            }
          }
          Overrides {
            Name: "ma:2:Shared_Detail3:id"
            AssetReference {
              Id: 2018227301497757374
            }
          }
          Overrides {
            Name: "ma:2:Shared_Detail4:id"
            AssetReference {
              Id: 2018227301497757374
            }
          }
          Overrides {
            Name: "ma:3:Shared_BaseMaterial:id"
            AssetReference {
              Id: 2018227301497757374
            }
          }
          Overrides {
            Name: "ma:3:Shared_Detail1:id"
            AssetReference {
              Id: 2018227301497757374
            }
          }
          Overrides {
            Name: "ma:3:Shared_Detail2:id"
            AssetReference {
              Id: 2018227301497757374
            }
          }
          Overrides {
            Name: "ma:3:Shared_Detail3:id"
            AssetReference {
              Id: 2018227301497757374
            }
          }
          Overrides {
            Name: "ma:3:Shared_Detail4:id"
            AssetReference {
              Id: 2018227301497757374
            }
          }
          Overrides {
            Name: "ma:1:Shared_Detail4:id"
            AssetReference {
              Id: 2018227301497757374
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
            Id: 10377995983548406039
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          AnimatedMesh {
            AnimationStance: "unarmed_bind_pose"
            PlayOnStartAnimation {
            }
            SkinnedMeshes {
              Id: 537187530340465379
            }
            SkinnedMeshes {
              Id: 5966194567568449308
            }
            SkinnedMeshes {
              Id: 10258188976838646478
            }
            SkinnedMeshes {
              Id: 841534158063459245
            }
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
        Id: 1741161620319299995
        Name: "neck"
        Transform {
          Location {
            X: -9.43066
            Y: -2.71449026e-05
            Z: 180.032791
          }
          Rotation {
            Pitch: -9.93499756
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 16626570038979758447
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
        Id: 13237482560042445510
        Name: "right_clavicle"
        Transform {
          Location {
            X: -7.84569931
            Y: 5.00000095
            Z: 171.296021
          }
          Rotation {
            Yaw: 8.8260107
            Roll: -79.6859741
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 16626570038979758447
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
        Id: 8471376971535378014
        Name: "left_clavicle"
        Transform {
          Location {
            X: -7.87011719
            Y: -4.99999523
            Z: 171.296021
          }
          Rotation {
            Yaw: -8.82601929
            Roll: 79.6859818
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 16626570038979758447
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
        Id: 7993432287154671961
        Name: "upper_spine"
        Transform {
          Location {
            X: -4.43945265
            Y: 0.469058365
            Z: 160.912674
          }
          Rotation {
            Pitch: 7.51320767e-05
            Yaw: 7.17169532e-05
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 16626570038979758447
        ChildIds: 14167776933805329802
        ChildIds: 8290211129623996523
        ChildIds: 8997146339496091217
        ChildIds: 9589603468658477358
        ChildIds: 13547851675674626933
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
        Id: 14167776933805329802
        Name: "Upper Torso"
        Transform {
          Location {
            X: 0.0540140159
            Y: -0.363480806
            Z: -8.28787327
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 7993432287154671961
        ChildIds: 17048705452038425775
        ChildIds: 15992781060399481476
        ChildIds: 13472590511448190500
        ChildIds: 10140364145504835142
        ChildIds: 3215628993128258785
        ChildIds: 8964869068910797625
        ChildIds: 4414200484545732322
        ChildIds: 10611223050296089797
        ChildIds: 11200295330256889898
        ChildIds: 17182969104021699551
        ChildIds: 14344535153689168973
        ChildIds: 13388870802583126138
        ChildIds: 87358300635960041
        ChildIds: 9322820520742270600
        ChildIds: 218983462353917045
        ChildIds: 5999280536838984481
        ChildIds: 10783825163647259128
        ChildIds: 12281227946885367409
        ChildIds: 9118674775353387916
        ChildIds: 11442324517958656692
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
          Model {
            AggressiveMerge: true
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
        Id: 17048705452038425775
        Name: "Urban Vehicle Accessory - Sedan Fenderflare 02"
        Transform {
          Location {
            X: -9.81982422
            Y: 0.972045898
            Z: 29.1546783
          }
          Rotation {
            Pitch: 1.41225076
            Yaw: -93.8560104
            Roll: 89.4848404
          }
          Scale {
            X: 0.168187261
            Y: 0.113008283
            Z: -0.147431165
          }
        }
        ParentId: 14167776933805329802
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 11489275323901504074
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 4.05853033
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 1.68145728
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
            Id: 18119351551008849317
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
        Id: 15992781060399481476
        Name: "Urban Vehicle Accessory - Sedan Fenderflare 02"
        Transform {
          Location {
            X: 8.98442841
            Y: 21.3730221
            Z: 11.6125374
          }
          Rotation {
            Pitch: 75.8780594
            Yaw: -32.8123894
            Roll: 153.71463
          }
          Scale {
            X: 0.169058487
            Y: 0.116083361
            Z: 0.148934916
          }
        }
        ParentId: 14167776933805329802
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 11489275323901504074
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 4.05853033
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 1.68145728
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
            Id: 18119351551008849317
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
        Id: 13472590511448190500
        Name: "Urban Vehicle Accessory - Sedan Fenderflare 02"
        Transform {
          Location {
            X: -12.3842773
            Y: 19.3741455
            Z: 14.9445953
          }
          Rotation {
            Pitch: -78.927536
            Yaw: 134.366531
            Roll: 61.4578285
          }
          Scale {
            X: -0.168596417
            Y: 0.123916529
            Z: 0.16024673
          }
        }
        ParentId: 14167776933805329802
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 11489275323901504074
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 4.05853033
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 1.68145728
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
            Id: 18119351551008849317
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
        Id: 10140364145504835142
        Name: "Urban Vehicle Accessory - Sedan Fenderflare 02"
        Transform {
          Location {
            X: 8.984375
            Y: -21.5842285
            Z: 11.6125641
          }
          Rotation {
            Pitch: 75.8782196
            Yaw: 32.8123093
            Roll: -153.714691
          }
          Scale {
            X: 0.169058487
            Y: -0.116083361
            Z: 0.148934916
          }
        }
        ParentId: 14167776933805329802
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 11489275323901504074
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 4.05853033
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 1.68145728
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
            Id: 18119351551008849317
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
        Id: 3215628993128258785
        Name: "Urban Vehicle Accessory - Sedan Fenderflare 02"
        Transform {
          Location {
            X: -12.3842773
            Y: -19.5853271
            Z: 14.9445953
          }
          Rotation {
            Pitch: -78.9274673
            Yaw: -134.366562
            Roll: -61.4579277
          }
          Scale {
            X: -0.168596417
            Y: -0.123916529
            Z: 0.16024673
          }
        }
        ParentId: 14167776933805329802
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 11489275323901504074
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 4.05853033
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 1.68145728
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
            Id: 18119351551008849317
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
        Id: 8964869068910797625
        Name: "Urban Pipe Wrap 01"
        Transform {
          Location {
            X: 0.977050364
            Y: -0.105592713
            Z: -1.28120826e-06
          }
          Rotation {
            Pitch: -8.31708717
            Yaw: 179.999893
            Roll: -1.5140926e-10
          }
          Scale {
            X: 0.38327384
            Y: 0.458694756
            Z: 0.428
          }
        }
        ParentId: 14167776933805329802
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 11489275323901504074
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.614234149
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.271010101
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
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
        CoreMesh {
          MeshAsset {
            Id: 8692862186300254979
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
        Id: 4414200484545732322
        Name: "Urban Pipe Wrap 01"
        Transform {
          Location {
            X: -5.5370903
            Y: -0.105579898
            Z: 12.7512436
          }
          Rotation {
            Pitch: 4.56936216
            Yaw: 179.999893
            Roll: -179.999969
          }
          Scale {
            X: 0.241074398
            Y: 0.437484205
            Z: 0.278496087
          }
        }
        ParentId: 14167776933805329802
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 11489275323901504074
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.614234149
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.271010101
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
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
        CoreMesh {
          MeshAsset {
            Id: 8692862186300254979
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
        Id: 10611223050296089797
        Name: "Urban Pipe Wrap 01"
        Transform {
          Location {
            X: -6.72262383
            Y: -0.105577566
            Z: 23.4211521
          }
          Rotation {
            Pitch: -2.33559
            Yaw: 179.999893
            Roll: -179.999969
          }
          Scale {
            X: 0.148477316
            Y: 0.267419398
            Z: 0.0961004049
          }
        }
        ParentId: 14167776933805329802
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 7082128979156015040
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.045
              G: 0.043
              B: 0.044416111
              A: 1
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.614234149
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.271010101
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
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
        CoreMesh {
          MeshAsset {
            Id: 8692862186300254979
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
        Id: 11200295330256889898
        Name: "Urban Pipe Wrap 01"
        Transform {
          Location {
            X: 0.458055019
            Y: 9.33983898
            Z: 22.1088104
          }
          Rotation {
            Pitch: -19.0908699
            Yaw: 103.04689
            Roll: 155.399109
          }
          Scale {
            X: 0.143939123
            Y: 0.219591126
            Z: 0.187633485
          }
        }
        ParentId: 14167776933805329802
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 7082128979156015040
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.045
              G: 0.043
              B: 0.044416111
              A: 1
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.741886437
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.541582942
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
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
        CoreMesh {
          MeshAsset {
            Id: 2092839297938637125
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
        Id: 17182969104021699551
        Name: "Urban Pipe Wrap 01"
        Transform {
          Location {
            X: -0.359853029
            Y: -9.51940441
            Z: 21.9788971
          }
          Rotation {
            Pitch: 18.6141014
            Yaw: 77.9954147
            Roll: 154.105576
          }
          Scale {
            X: 0.143939123
            Y: 0.219591126
            Z: 0.187633485
          }
        }
        ParentId: 14167776933805329802
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 7082128979156015040
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.045
              G: 0.043
              B: 0.044416111
              A: 1
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.741886437
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.541582942
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
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
        CoreMesh {
          MeshAsset {
            Id: 2092839297938637125
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
        Id: 14344535153689168973
        Name: "Urban Pipe Wrap 01"
        Transform {
          Location {
            X: 7.94729137
            Y: -0.105606422
            Z: 20.7992
          }
          Rotation {
            Pitch: -50.6129456
            Yaw: 179.999893
            Roll: -2.46362319e-10
          }
          Scale {
            X: 0.117018633
            Y: 0.259941459
            Z: 0.230588228
          }
        }
        ParentId: 14167776933805329802
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 7082128979156015040
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.045
              G: 0.043
              B: 0.044416111
              A: 1
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.741886437
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.541582942
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
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
        CoreMesh {
          MeshAsset {
            Id: 2092839297938637125
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
        Id: 13388870802583126138
        Name: "Urban Pipe Wrap 01"
        Transform {
          Location {
            X: -0.84076643
            Y: 15.2166729
            Z: 18.1324787
          }
          Rotation {
            Pitch: -44.2570076
            Yaw: 116.332062
            Roll: 153.995255
          }
          Scale {
            X: 0.274149835
            Y: 0.22557205
            Z: 0.221202269
          }
        }
        ParentId: 14167776933805329802
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 11489275323901504074
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.841407597
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.448395729
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
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
        CoreMesh {
          MeshAsset {
            Id: 2092839297938637125
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
        Id: 87358300635960041
        Name: "Urban Pipe Wrap 01"
        Transform {
          Location {
            X: 7.66264391
            Y: 16.3200455
            Z: 12.0457659
          }
          Rotation {
            Pitch: 22.2448597
            Yaw: 132.847565
            Roll: 102.828857
          }
          Scale {
            X: 0.185569733
            Y: 0.169816405
            Z: 0.123899303
          }
        }
        ParentId: 14167776933805329802
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 11489275323901504074
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.841407597
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.448395729
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
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
        CoreMesh {
          MeshAsset {
            Id: 2092839297938637125
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
        Id: 9322820520742270600
        Name: "Urban Pipe Wrap 01"
        Transform {
          Location {
            X: 7.66259766
            Y: -16.53125
            Z: 12.0457916
          }
          Rotation {
            Pitch: 22.2448254
            Yaw: -132.847931
            Roll: -102.828949
          }
          Scale {
            X: 0.185569733
            Y: -0.169816405
            Z: 0.123899303
          }
        }
        ParentId: 14167776933805329802
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 11489275323901504074
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.841407597
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.448395729
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
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
        CoreMesh {
          MeshAsset {
            Id: 2092839297938637125
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
        Id: 218983462353917045
        Name: "Urban Pipe Wrap 01"
        Transform {
          Location {
            X: -1.14355469
            Y: -15.3775635
            Z: 18.2455444
          }
          Rotation {
            Pitch: -43.0525
            Yaw: -119.580826
            Roll: -151.752335
          }
          Scale {
            X: 0.284523636
            Y: -0.219308525
            Z: 0.221203238
          }
        }
        ParentId: 14167776933805329802
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 11489275323901504074
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.841407597
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.448395729
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
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
        CoreMesh {
          MeshAsset {
            Id: 2092839297938637125
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
        Id: 5999280536838984481
        Name: "Urban Vehicle Accessory - Sedan Fenderflare 02"
        Transform {
          Location {
            X: -1.24804688
            Y: 13.9688721
            Z: 26.348587
          }
          Rotation {
            Pitch: -7.75897169
            Yaw: 4.16970348
            Roll: -129.802917
          }
          Scale {
            X: 0.168709144
            Y: -0.14514327
            Z: -0.119482383
          }
        }
        ParentId: 14167776933805329802
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 11489275323901504074
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 4.05853033
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 1.68145728
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
            Id: 18119351551008849317
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
        Id: 10783825163647259128
        Name: "Urban Vehicle Accessory - Sedan Fenderflare 02"
        Transform {
          Location {
            X: 14.6069527
            Y: -0.0588666052
            Z: 18.0206413
          }
          Rotation {
            Pitch: 0.383207738
            Yaw: -91.1754532
            Roll: 129.916687
          }
          Scale {
            X: 0.228875667
            Y: 0.134727031
            Z: 0.180037931
          }
        }
        ParentId: 14167776933805329802
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 11489275323901504074
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 4.05853033
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 1.68145728
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
            Id: 18119351551008849317
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
        Id: 12281227946885367409
        Name: "Urban Vehicle Accessory - Sedan Fenderflare 02"
        Transform {
          Location {
            X: -1.42089844
            Y: -13.9564209
            Z: 26.23349
          }
          Rotation {
            Pitch: -11.9211044
            Yaw: -6.7614646
            Roll: 130.30072
          }
          Scale {
            X: 0.168709978
            Y: 0.127702191
            Z: -0.11069949
          }
        }
        ParentId: 14167776933805329802
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 11489275323901504074
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 4.05853033
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 1.68145728
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
            Id: 18119351551008849317
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
        Id: 9118674775353387916
        Name: "Urban Vehicle Accessory - Sedan Fenderflare 02"
        Transform {
          Location {
            X: -14.762207
            Y: 0.462890625
            Z: 22.9335938
          }
          Rotation {
            Pitch: 0.844791889
            Yaw: -90.4549103
            Roll: 57.37043
          }
          Scale {
            X: 0.211811
            Y: 0.134722263
            Z: -0.143203631
          }
        }
        ParentId: 14167776933805329802
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 11489275323901504074
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 4.05853033
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 1.68145728
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
            Id: 18119351551008849317
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
        Id: 11442324517958656692
        Name: "Urban Vehicle Accessory - Sedan Fenderflare 02"
        Transform {
          Location {
            X: 9.33645248
            Y: 0.00632929
            Z: 23.1252022
          }
          Rotation {
            Pitch: 0.383207738
            Yaw: -91.1755
            Roll: 124.65596
          }
          Scale {
            X: 0.169191852
            Y: 0.113000348
            Z: 0.151002347
          }
        }
        ParentId: 14167776933805329802
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 11489275323901504074
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 4.05853033
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 1.68145728
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
            Id: 18119351551008849317
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
        Id: 8290211129623996523
        Name: "Urban Pipe Wrap 01"
        Transform {
          Location {
            X: 8.00147724
            Y: -0.469009757
            Z: 12.5113268
          }
          Rotation {
            Pitch: -50.6129684
            Yaw: 179.999893
            Roll: -2.41229897e-10
          }
          Scale {
            X: 0.120211974
            Y: 0.267035037
            Z: 0.236880779
          }
        }
        ParentId: 7993432287154671961
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 807038937784509847
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 1.5788883
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 1.22747719
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.25
              G: 0.25
              B: 0.229
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
            Id: 2092839297938637125
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
        Id: 8997146339496091217
        Name: "Urban Pipe Wrap 01"
        Transform {
          Location {
            X: 0.512242556
            Y: 8.97643566
            Z: 13.8209372
          }
          Rotation {
            Pitch: -19.0908833
            Yaw: 103.046936
            Roll: 155.399124
          }
          Scale {
            X: 0.147867084
            Y: 0.225583568
            Z: 0.192753851
          }
        }
        ParentId: 7993432287154671961
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 807038937784509847
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 1.5788883
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 1.22747719
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.25
              G: 0.25
              B: 0.229
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
            Id: 2092839297938637125
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
        Id: 9589603468658477358
        Name: "Urban Pipe Wrap 01"
        Transform {
          Location {
            X: -6.66843605
            Y: -0.468980908
            Z: 15.1332788
          }
          Rotation {
            Pitch: -2.33559
            Yaw: 179.999893
            Roll: -179.999954
          }
          Scale {
            X: 0.15154092
            Y: 0.270035267
            Z: 0.0980832949
          }
        }
        ParentId: 7993432287154671961
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 807038937784509847
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 1.22747719
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.654136598
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.25
              G: 0.25
              B: 0.229
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
            Id: 8692862186300254979
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
        Id: 13547851675674626933
        Name: "Urban Pipe Wrap 01"
        Transform {
          Location {
            X: -0.305665433
            Y: -9.88280773
            Z: 13.6910248
          }
          Rotation {
            Pitch: 18.6141148
            Yaw: 77.9954376
            Roll: 154.105621
          }
          Scale {
            X: 0.147867084
            Y: 0.225583568
            Z: 0.192753851
          }
        }
        ParentId: 7993432287154671961
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 807038937784509847
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 1.5788883
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 1.22747719
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.25
              G: 0.25
              B: 0.229
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
            Id: 2092839297938637125
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
        Id: 1071608290926880140
        Name: "lower_spine"
        Transform {
          Location {
            X: -4.3833003
            Y: 0.469058305
            Z: 133.869461
          }
          Rotation {
            Pitch: 7.51320767e-05
            Yaw: 7.17169532e-05
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 16626570038979758447
        ChildIds: 1017757366365625654
        ChildIds: 1821242882563346444
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
        Id: 1017757366365625654
        Name: "Lower Torso"
        Transform {
          Location {
            X: 3.02780056
            Y: -0.502203
            Z: -22.3855934
          }
          Rotation {
            Pitch: 7.51320767e-05
            Yaw: 179.999893
            Roll: -1.47781135e-10
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 1071608290926880140
        ChildIds: 11181663098706183374
        ChildIds: 1461715927221064179
        ChildIds: 9464232267125294978
        ChildIds: 9884832329192907590
        ChildIds: 5353992953698813709
        ChildIds: 7520845920681885483
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
          Model {
            AggressiveMerge: true
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
        Id: 11181663098706183374
        Name: "Urban Pipe Wrap 01"
        Transform {
          Location {
            X: -1.64111328
            Y: -0.0332028307
            Z: 7.78377708e-15
          }
          Rotation {
            Pitch: 1.80178332
            Yaw: -179.999954
            Roll: -1.52742131e-13
          }
          Scale {
            X: 0.354499161
            Y: 0.418283254
            Z: 0.318374693
          }
        }
        ParentId: 1017757366365625654
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 7082128979156015040
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.045
              G: 0.043
              B: 0.044416111
              A: 1
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 1.681
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 1.22747719
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
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
        CoreMesh {
          MeshAsset {
            Id: 9732748442197767654
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
        Id: 1461715927221064179
        Name: "Urban Vehicle Accessory - Sedan Fenderflare 02"
        Transform {
          Location {
            X: -17.1220703
            Y: -0.295651227
            Z: 22.7537689
          }
          Rotation {
            Pitch: 0.352089405
            Yaw: -88.0473251
            Roll: -63.1622314
          }
          Scale {
            X: 0.30802542
            Y: 0.149034694
            Z: 0.188711077
          }
        }
        ParentId: 1017757366365625654
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 11489275323901504074
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 4.05853033
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 1.68145728
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
            Id: 18119351551008849317
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
        Id: 9464232267125294978
        Name: "Urban Vehicle Accessory - Sedan Fenderflare 02"
        Transform {
          Location {
            X: 1.02245748
            Y: -19.6368408
            Z: 18.2100525
          }
          Rotation {
            Pitch: -10.5080471
            Yaw: 8.58477592
            Roll: -92.3056412
          }
          Scale {
            X: 0.246721625
            Y: 0.14326869
            Z: 0.188708946
          }
        }
        ParentId: 1017757366365625654
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 11489275323901504074
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 4.05853033
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 1.68145728
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
            Id: 18119351551008849317
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
        Id: 9884832329192907590
        Name: "Urban Vehicle Accessory - Sedan Fenderflare 02"
        Transform {
          Location {
            X: 16.015625
            Y: 0.428341866
            Z: 17.0803223
          }
          Rotation {
            Pitch: 0.921692967
            Yaw: 91.756134
            Roll: -80.6263351
          }
          Scale {
            X: 0.276994258
            Y: 0.150481284
            Z: 0.141784728
          }
        }
        ParentId: 1017757366365625654
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 11489275323901504074
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 4.05853033
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 1.68145728
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
            Id: 18119351551008849317
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
        Id: 5353992953698813709
        Name: "Urban Vehicle Accessory - Sedan Fenderflare 02"
        Transform {
          Location {
            X: 1.02246094
            Y: 19.5705566
            Z: 18.2100525
          }
          Rotation {
            Pitch: -7.17990112
            Yaw: -8.44984913
            Roll: 92.2849045
          }
          Scale {
            X: 0.242399052
            Y: -0.143266618
            Z: 0.188706711
          }
        }
        ParentId: 1017757366365625654
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 11489275323901504074
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 4.05853033
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 1.68145728
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
            Id: 18119351551008849317
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
        Id: 7520845920681885483
        Name: "Urban Pipe Wrap 01"
        Transform {
          Location {
            X: 0.701171875
            Y: -0.0332032517
            Z: 30.0348206
          }
          Rotation {
            Pitch: 6.13569498
            Yaw: -179.999954
            Roll: -2.0472827e-13
          }
          Scale {
            X: 0.38562122
            Y: 0.445244431
            Z: 0.515274286
          }
        }
        ParentId: 1017757366365625654
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 11489275323901504074
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.614234149
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.271010101
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
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
        CoreMesh {
          MeshAsset {
            Id: 8692862186300254979
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
        Id: 1821242882563346444
        Name: "Urban Pipe Wrap 01"
        Transform {
          Location {
            X: 4.66842461
            Y: -0.469003201
            Z: -22.3855953
          }
          Rotation {
            Pitch: 1.80170822
            Yaw: -8.19622219e-05
            Roll: 1.20971774e-10
          }
          Scale {
            X: 0.358261526
            Y: 0.422722638
            Z: 0.321753621
          }
        }
        ParentId: 1071608290926880140
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 807038937784509847
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.25
              G: 0.25
              B: 0.229
              A: 1
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 1.681
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 1.22747719
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
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
        CoreMesh {
          MeshAsset {
            Id: 9732748442197767654
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
        Id: 10188042662085531553
        Name: "right_shoulder"
        Transform {
          Location {
            X: -7.99998379
            Y: 23.0000057
            Z: 168.665985
          }
          Rotation {
            Pitch: 1.64699757
            Yaw: 3.0570004
            Roll: -30.1109924
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 16626570038979758447
        ChildIds: 11067153609937972852
        ChildIds: 13336089854468109451
        ChildIds: 15036795683529215518
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
        Id: 11067153609937972852
        Name: "Right Shoulder"
        Transform {
          Location {
            X: 2.5076921
            Y: 1.32193422
            Z: -21.5800591
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 10188042662085531553
        ChildIds: 6067183155215326283
        ChildIds: 3885644081463121477
        ChildIds: 896108684042336330
        ChildIds: 11793391175479181542
        ChildIds: 7228892729372073710
        ChildIds: 15600977520892295337
        ChildIds: 11579952280824265442
        ChildIds: 17118523743766417504
        ChildIds: 5624862924859297605
        ChildIds: 3337804413652423507
        ChildIds: 17464002355773394018
        ChildIds: 1961218311239389533
        ChildIds: 1003036822649795667
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
          Model {
            AggressiveMerge: true
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
        Id: 6067183155215326283
        Name: "Crescent - 02"
        Transform {
          Location {
            X: -0.844726562
            Y: 1.66235352
            Z: 13.0315552
          }
          Rotation {
            Pitch: -8.40241623
            Yaw: -93.3720474
            Roll: -177.97699
          }
          Scale {
            X: 0.177285
            Y: -0.229318663
            Z: 0.0898203105
          }
        }
        ParentId: 11067153609937972852
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 11489275323901504074
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.338473201
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.125
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
            Id: 16056750561997177580
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
        Id: 3885644081463121477
        Name: "Urban Vehicle Accessory - Sedan Fenderflare 02"
        Transform {
          Location {
            X: 7.84960938
            Y: 3.22253418
            Z: 25.5253296
          }
          Rotation {
            Pitch: 12.7904434
            Yaw: 168.465958
            Roll: -59.953022
          }
          Scale {
            X: 0.147189781
            Y: -0.382007748
            Z: 0.197013751
          }
        }
        ParentId: 11067153609937972852
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 11489275323901504074
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
            Id: 18119351551008849317
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
        Id: 896108684042336330
        Name: "Crescent - 02"
        Transform {
          Location {
            X: -1.22949219
            Y: -2.44299316
            Z: 15.0958252
          }
          Rotation {
            Pitch: -2.12208509
            Yaw: -89.4460526
            Roll: -178.545868
          }
          Scale {
            X: -0.20679982
            Y: -0.221494108
            Z: 0.101385772
          }
        }
        ParentId: 11067153609937972852
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 11489275323901504074
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.194147602
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.125
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
            Id: 16056750561997177580
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
        Id: 11793391175479181542
        Name: "Urban Vehicle Accessory - Sedan Fenderflare 02"
        Transform {
          Location {
            X: -1.34570312
            Y: -11.6033936
            Z: 9.50067139
          }
          Rotation {
            Pitch: -0.849217892
            Yaw: -2.70754504
            Roll: -78.1392899
          }
          Scale {
            X: -0.192262158
            Y: 0.106465839
            Z: 0.155955359
          }
        }
        ParentId: 11067153609937972852
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 11489275323901504074
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
            Id: 18119351551008849317
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
        Id: 7228892729372073710
        Name: "Crescent - 02"
        Transform {
          Location {
            X: -0.994140625
            Y: -0.0190429688
            Z: 7.44036865
          }
          Rotation {
            Pitch: 16.5435772
            Yaw: -95.5805893
            Roll: -178.252213
          }
          Scale {
            X: 0.184985608
            Y: -0.209559664
            Z: 0.0575890169
          }
        }
        ParentId: 11067153609937972852
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 11489275323901504074
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.194147602
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.125
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
            Id: 16056750561997177580
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
        Id: 15600977520892295337
        Name: "Urban Vehicle Accessory - Sedan Fenderflare 02"
        Transform {
          Location {
            X: -0.153903604
            Y: 8.06153107
            Z: 5.24520874e-06
          }
          Rotation {
            Pitch: -0.048330415
            Yaw: 174.42012
            Roll: -103.753067
          }
          Scale {
            X: 0.178166032
            Y: 0.106465347
            Z: 0.164888427
          }
        }
        ParentId: 11067153609937972852
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 11489275323901504074
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
            Id: 18119351551008849317
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
        Id: 11579952280824265442
        Name: "Crescent - 02"
        Transform {
          Location {
            X: -0.510742188
            Y: -3.5369873
            Z: 19.2301025
          }
          Rotation {
            Pitch: -0.761272371
            Yaw: 176.062042
            Roll: -110.788956
          }
          Scale {
            X: 0.265276879
            Y: -0.318792403
            Z: 0.244833902
          }
        }
        ParentId: 11067153609937972852
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 11489275323901504074
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.86273104
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.553773403
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
            Id: 517727953107580667
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
        Id: 17118523743766417504
        Name: "Crescent - 02"
        Transform {
          Location {
            X: -0.245117188
            Y: -1.30004883
            Z: 22.7251587
          }
          Rotation {
            Pitch: -63.5018501
            Yaw: -92.1493301
            Roll: 179.521866
          }
          Scale {
            X: 0.221529797
            Y: -0.236618564
            Z: 0.0347390212
          }
        }
        ParentId: 11067153609937972852
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 11489275323901504074
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.472454131
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.125
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
            Id: 16056750561997177580
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
        Id: 5624862924859297605
        Name: "Crescent - 02"
        Transform {
          Location {
            X: -0.533203125
            Y: -3.71496582
            Z: 20.2921753
          }
          Rotation {
            Pitch: 0.213388756
            Yaw: -2.57733107
            Roll: -67.0338669
          }
          Scale {
            X: 0.26527971
            Y: -0.30034408
            Z: 0.244833738
          }
        }
        ParentId: 11067153609937972852
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 11489275323901504074
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.86273104
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.553773403
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
            Id: 517727953107580667
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
        Id: 3337804413652423507
        Name: "Urban Vehicle Accessory - Sedan Fenderflare 02"
        Transform {
          Location {
            X: -0.282689095
            Y: 9.95652294
            Z: 8.664114
          }
          Rotation {
            Pitch: 0.948399
            Yaw: 176.541656
            Roll: -82.4333267
          }
          Scale {
            X: 0.19223763
            Y: 0.106465429
            Z: 0.1527064
          }
        }
        ParentId: 11067153609937972852
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 11489275323901504074
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
            Id: 18119351551008849317
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
        Id: 17464002355773394018
        Name: "Urban Vehicle Accessory - Sedan Fenderflare 02"
        Transform {
          Location {
            X: 0.194335938
            Y: 6.50805664
            Z: 28.0944824
          }
          Rotation {
            Pitch: 0.41727671
            Yaw: 177.596222
            Roll: -66.1526718
          }
          Scale {
            X: 0.214653894
            Y: -0.438654184
            Z: 0.197014019
          }
        }
        ParentId: 11067153609937972852
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 11489275323901504074
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
            Id: 18119351551008849317
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
        Id: 1961218311239389533
        Name: "Fantasy Sack Tied"
        Transform {
          Location {
            X: -0.931640625
            Y: -1.83276367
            Z: 0.997131348
          }
          Rotation {
            Pitch: 2.58009696
            Yaw: -82.0413437
            Roll: 178.082443
          }
          Scale {
            X: 0.392387897
            Y: -0.4180471
            Z: 0.472308427
          }
        }
        ParentId: 11067153609937972852
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 7082128979156015040
            }
          }
          Overrides {
            Name: "ma:Shared_Detail1:id"
            AssetReference {
              Id: 5475761223416488121
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.045
              G: 0.043
              B: 0.044416111
              A: 1
            }
          }
          Overrides {
            Name: "ma:Shared_Detail1:color"
            Color {
              R: 0.126
              G: 0.182000011
              B: 0.415000021
              A: 1
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.735893667
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 1.60108674
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
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
        CoreMesh {
          MeshAsset {
            Id: 12794205808434669014
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
        Id: 1003036822649795667
        Name: "Fantasy Sack Tied"
        Transform {
          Location {
            X: -0.970214844
            Y: -4.96167
            Z: 20.8707275
          }
          Rotation {
            Pitch: -0.11039634
            Yaw: 176.529633
            Roll: -30.1516018
          }
          Scale {
            X: 0.218808
            Y: -0.217724025
            Z: 0.213026762
          }
        }
        ParentId: 11067153609937972852
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 7082128979156015040
            }
          }
          Overrides {
            Name: "ma:Shared_Detail1:id"
            AssetReference {
              Id: 5475761223416488121
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.045
              G: 0.043
              B: 0.044416111
              A: 1
            }
          }
          Overrides {
            Name: "ma:Shared_Detail1:color"
            Color {
              R: 0.126
              G: 0.182000011
              B: 0.415000021
              A: 1
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.735893667
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 1.60108674
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
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
        CoreMesh {
          MeshAsset {
            Id: 12434974458467685788
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
        Id: 13336089854468109451
        Name: "Fantasy Sack Tied"
        Transform {
          Location {
            X: 1.53710938
            Y: -3.63964844
            Z: -0.709411621
          }
          Rotation {
            Pitch: -0.11039634
            Yaw: 176.529633
            Roll: -30.151598
          }
          Scale {
            X: 0.221925542
            Y: -0.220826179
            Z: 0.216061935
          }
        }
        ParentId: 10188042662085531553
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 807038937784509847
            }
          }
          Overrides {
            Name: "ma:Shared_Detail1:id"
            AssetReference {
              Id: 5475761223416488121
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.25
              G: 0.25
              B: 0.229
              A: 1
            }
          }
          Overrides {
            Name: "ma:Shared_Detail1:color"
            Color {
              R: 0.126
              G: 0.182000011
              B: 0.415000021
              A: 1
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 2.1
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.9
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
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
        CoreMesh {
          MeshAsset {
            Id: 12434974458467685788
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
        Id: 15036795683529215518
        Name: "Fantasy Sack Tied"
        Transform {
          Location {
            X: 1.57568359
            Y: -0.510864258
            Z: -20.5830078
          }
          Rotation {
            Pitch: 2.58009696
            Yaw: -82.0413513
            Roll: 178.082443
          }
          Scale {
            X: 0.397979
            Y: -0.424003
            Z: 0.47903803
          }
        }
        ParentId: 10188042662085531553
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 807038937784509847
            }
          }
          Overrides {
            Name: "ma:Shared_Detail1:id"
            AssetReference {
              Id: 5475761223416488121
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.25
              G: 0.25
              B: 0.229
              A: 1
            }
          }
          Overrides {
            Name: "ma:Shared_Detail1:color"
            Color {
              R: 0.126
              G: 0.182000011
              B: 0.415000021
              A: 1
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 1.90701854
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 2.16283727
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
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
        CoreMesh {
          MeshAsset {
            Id: 12794205808434669014
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
        Id: 16200990080885384343
        Name: "left_shoulder"
        Transform {
          Location {
            X: -8.00001621
            Y: -22.9999943
            Z: 168.665985
          }
          Rotation {
            Pitch: -1.64801025
            Yaw: -3.05700684
            Roll: 30.1110077
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 16626570038979758447
        ChildIds: 9283794230240865304
        ChildIds: 13939959086503835307
        ChildIds: 16409484040864211360
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
        Id: 9283794230240865304
        Name: "Left Shoulder"
        Transform {
          Location {
            X: 2.80658245
            Y: -1.39782417
            Z: -21.4430542
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 16200990080885384343
        ChildIds: 8723292851578382067
        ChildIds: 3122038044778451837
        ChildIds: 8315388136053223770
        ChildIds: 11534679639987693574
        ChildIds: 3093904895003243271
        ChildIds: 1818608969743761454
        ChildIds: 8269293416710645323
        ChildIds: 3053699165516242231
        ChildIds: 7375305720272421187
        ChildIds: 12910683102114163266
        ChildIds: 10130767725363196990
        ChildIds: 5205630327872860055
        ChildIds: 5434158132580104676
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
          Model {
            AggressiveMerge: true
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
        Id: 8723292851578382067
        Name: "Urban Vehicle Accessory - Sedan Fenderflare 02"
        Transform {
          Location {
            X: 7.20670795
            Y: -3.44096708
            Z: 25.8949566
          }
          Rotation {
            Pitch: 9.98933506
            Yaw: -170.225632
            Roll: 59.4154434
          }
          Scale {
            X: 0.147189781
            Y: 0.382007718
            Z: 0.197013751
          }
        }
        ParentId: 9283794230240865304
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 11489275323901504074
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
            Id: 18119351551008849317
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
        Id: 3122038044778451837
        Name: "Crescent - 02"
        Transform {
          Location {
            X: -1.17089844
            Y: 2.48864746
            Z: 15.2598572
          }
          Rotation {
            Pitch: -2.05079842
            Yaw: 87.6887512
            Roll: -178.602875
          }
          Scale {
            X: -0.20679982
            Y: 0.221494108
            Z: 0.101385772
          }
        }
        ParentId: 9283794230240865304
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 11489275323901504074
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.194147602
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.125
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
            Id: 16056750561997177580
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
        Id: 8315388136053223770
        Name: "Urban Vehicle Accessory - Sedan Fenderflare 02"
        Transform {
          Location {
            X: -0.750488281
            Y: 11.6328125
            Z: 9.44363403
          }
          Rotation {
            Pitch: 1.99947631
            Yaw: 1.05502367
            Roll: 78.2328339
          }
          Scale {
            X: -0.192262158
            Y: -0.106465839
            Z: 0.155955359
          }
        }
        ParentId: 9283794230240865304
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 11489275323901504074
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
            Id: 18119351551008849317
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
        Id: 11534679639987693574
        Name: "Crescent - 02"
        Transform {
          Location {
            X: -0.629648447
            Y: 0.0415489674
            Z: 7.3952117
          }
          Rotation {
            Pitch: 16.2865791
            Yaw: 94.7635803
            Roll: -178.788467
          }
          Scale {
            X: 0.184985608
            Y: 0.209559664
            Z: 0.0575890169
          }
        }
        ParentId: 9283794230240865304
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 11489275323901504074
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.194147602
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.125
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
            Id: 16056750561997177580
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
        Id: 3093904895003243271
        Name: "Urban Vehicle Accessory - Sedan Fenderflare 02"
        Transform {
          Location {
            X: 0.344726562
            Y: -8.06494141
            Z: 3.05175781e-05
          }
          Rotation {
            Pitch: -2.88875318
            Yaw: -176.06752
            Roll: 103.516754
          }
          Scale {
            X: 0.178166032
            Y: -0.106465347
            Z: 0.164888427
          }
        }
        ParentId: 9283794230240865304
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 11489275323901504074
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
            Id: 18119351551008849317
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
        Id: 1818608969743761454
        Name: "Crescent - 02"
        Transform {
          Location {
            X: -0.808448374
            Y: -1.63950634
            Z: 12.9855595
          }
          Rotation {
            Pitch: -8.51850891
            Yaw: 91.2949066
            Roll: -179.143723
          }
          Scale {
            X: 0.177284986
            Y: 0.229318663
            Z: 0.0898203
          }
        }
        ParentId: 9283794230240865304
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 11489275323901504074
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.338473201
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.125
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
            Id: 16056750561997177580
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
        Id: 8269293416710645323
        Name: "Crescent - 02"
        Transform {
          Location {
            X: -0.632678866
            Y: 3.55255413
            Z: 19.196785
          }
          Rotation {
            Pitch: -3.60730267
            Yaw: -177.709579
            Roll: 110.633926
          }
          Scale {
            X: 0.265276879
            Y: 0.318792403
            Z: 0.244833902
          }
        }
        ParentId: 9283794230240865304
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 11489275323901504074
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.86273104
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.553773403
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
            Id: 517727953107580667
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
        Id: 3053699165516242231
        Name: "Crescent - 02"
        Transform {
          Location {
            X: -0.605028749
            Y: 1.31129837
            Z: 22.6991692
          }
          Rotation {
            Pitch: -63.4260559
            Yaw: 84.7864
            Roll: -173.142136
          }
          Scale {
            X: 0.221529797
            Y: 0.236618564
            Z: 0.0347390212
          }
        }
        ParentId: 9283794230240865304
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 11489275323901504074
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.472454131
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.125
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
            Id: 16056750561997177580
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
        Id: 7375305720272421187
        Name: "Crescent - 02"
        Transform {
          Location {
            X: -0.702929854
            Y: 3.7315731
            Z: 20.256485
          }
          Rotation {
            Pitch: 3.06228781
            Yaw: 0.926360905
            Roll: 67.1209335
          }
          Scale {
            X: 0.26527971
            Y: 0.30034408
            Z: 0.244833738
          }
        }
        ParentId: 9283794230240865304
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 11489275323901504074
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.86273104
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.553773403
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
            Id: 517727953107580667
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
        Id: 12910683102114163266
        Name: "Urban Vehicle Accessory - Sedan Fenderflare 02"
        Transform {
          Location {
            X: -0.26953125
            Y: -9.94921875
            Z: 8.64572144
          }
          Rotation {
            Pitch: -1.89881301
            Yaw: -178.194046
            Roll: 82.3024673
          }
          Scale {
            X: 0.19223763
            Y: -0.106465429
            Z: 0.1527064
          }
        }
        ParentId: 9283794230240865304
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 11489275323901504074
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
            Id: 18119351551008849317
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
        Id: 10130767725363196990
        Name: "Urban Vehicle Accessory - Sedan Fenderflare 02"
        Transform {
          Location {
            X: -0.658201933
            Y: -6.50245094
            Z: 28.0779896
          }
          Rotation {
            Pitch: -2.43186831
            Yaw: -179.248306
            Roll: 66.0741501
          }
          Scale {
            X: 0.214653894
            Y: 0.438654184
            Z: 0.197014019
          }
        }
        ParentId: 9283794230240865304
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 11489275323901504074
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
            Id: 18119351551008849317
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
        Id: 5205630327872860055
        Name: "Fantasy Sack Tied"
        Transform {
          Location {
            X: -0.195661366
            Y: 1.84828424
            Z: 0.964230895
          }
          Rotation {
            Pitch: 3.01212692
            Yaw: 80.5254822
            Roll: -175.261765
          }
          Scale {
            X: 0.392387897
            Y: 0.4180471
            Z: 0.472308427
          }
        }
        ParentId: 9283794230240865304
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 7082128979156015040
            }
          }
          Overrides {
            Name: "ma:Shared_Detail1:id"
            AssetReference {
              Id: 5475761223416488121
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.045
              G: 0.043
              B: 0.044416111
              A: 1
            }
          }
          Overrides {
            Name: "ma:Shared_Detail1:color"
            Color {
              R: 0.126
              G: 0.182000011
              B: 0.415000021
              A: 1
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.735893667
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 1.60108674
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
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
        CoreMesh {
          MeshAsset {
            Id: 12794205808434669014
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
        Id: 5434158132580104676
        Name: "Fantasy Sack Tied"
        Transform {
          Location {
            X: -1.13179421
            Y: 4.99102497
            Z: 20.8136139
          }
          Rotation {
            Pitch: -2.95758796
            Yaw: -178.179565
            Roll: 30.0200043
          }
          Scale {
            X: 0.218808
            Y: 0.217724025
            Z: 0.213026762
          }
        }
        ParentId: 9283794230240865304
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 7082128979156015040
            }
          }
          Overrides {
            Name: "ma:Shared_Detail1:id"
            AssetReference {
              Id: 5475761223416488121
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.045
              G: 0.043
              B: 0.044416111
              A: 1
            }
          }
          Overrides {
            Name: "ma:Shared_Detail1:color"
            Color {
              R: 0.126
              G: 0.182000011
              B: 0.415000021
              A: 1
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.735893667
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 1.60108674
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
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
        CoreMesh {
          MeshAsset {
            Id: 12434974458467685788
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
        Id: 13939959086503835307
        Name: "Fantasy Sack Tied"
        Transform {
          Location {
            X: 1.67497492
            Y: 3.59319639
            Z: -0.629431963
          }
          Rotation {
            Pitch: -2.95758796
            Yaw: -178.179565
            Roll: 30.0200176
          }
          Scale {
            X: 0.220059425
            Y: 0.218969315
            Z: 0.214245126
          }
        }
        ParentId: 16200990080885384343
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 807038937784509847
            }
          }
          Overrides {
            Name: "ma:Shared_Detail1:id"
            AssetReference {
              Id: 5475761223416488121
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.25
              G: 0.25
              B: 0.229
              A: 1
            }
          }
          Overrides {
            Name: "ma:Shared_Detail1:color"
            Color {
              R: 0.126
              G: 0.182000011
              B: 0.415000021
              A: 1
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 2.1
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.9
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
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
        CoreMesh {
          MeshAsset {
            Id: 12434974458467685788
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
        Id: 16409484040864211360
        Name: "Fantasy Sack Tied"
        Transform {
          Location {
            X: 2.61110783
            Y: 0.450454712
            Z: -20.4788132
          }
          Rotation {
            Pitch: 3.01213384
            Yaw: 80.5255127
            Roll: -175.26178
          }
          Scale {
            X: 0.397979
            Y: 0.424003
            Z: 0.47903803
          }
        }
        ParentId: 16200990080885384343
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 807038937784509847
            }
          }
          Overrides {
            Name: "ma:Shared_Detail1:id"
            AssetReference {
              Id: 5475761223416488121
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.25
              G: 0.25
              B: 0.229
              A: 1
            }
          }
          Overrides {
            Name: "ma:Shared_Detail1:color"
            Color {
              R: 0.126
              G: 0.182000011
              B: 0.415000021
              A: 1
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 1.90701854
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 2.16283727
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
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
        CoreMesh {
          MeshAsset {
            Id: 12794205808434669014
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
        Id: 1911253619631597637
        Name: "right_elbow"
        Transform {
          Location {
            X: -8.0390358
            Y: 37.8040237
            Z: 141.289
          }
          Rotation {
            Pitch: 18.4199944
            Yaw: -9.02801514
            Roll: -31.9079895
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 16626570038979758447
        ChildIds: 2994459917034532786
        ChildIds: 17729113825457516927
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
        Id: 2994459917034532786
        Name: "Right Elbow"
        Transform {
          Location {
            X: -1.06715405
            Y: 1.7130034
            Z: -31.7883911
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 1911253619631597637
        ChildIds: 6332653248314935751
        ChildIds: 3900346322390071440
        ChildIds: 11440276456845154279
        ChildIds: 7785562847135929653
        ChildIds: 9493876822246075516
        ChildIds: 12547998101329619269
        ChildIds: 15779640703765221386
        ChildIds: 2793108966160142545
        ChildIds: 3197031049363602005
        ChildIds: 4524207160225421747
        ChildIds: 7857590715063429672
        ChildIds: 12867557606618158709
        ChildIds: 10501399549872045209
        ChildIds: 17237162148675772248
        ChildIds: 6774211818424084899
        ChildIds: 16635827343453205673
        ChildIds: 11189821400057093230
        ChildIds: 16092937843033829322
        ChildIds: 18030727576021140141
        ChildIds: 2845554979848582203
        ChildIds: 9159250575458933011
        ChildIds: 3173587864439242793
        ChildIds: 12482980044209500397
        ChildIds: 3151000820020174787
        ChildIds: 1429328253610219854
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
          Model {
            AggressiveMerge: true
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
        Id: 6332653248314935751
        Name: "Basic Apple"
        Transform {
          Location {
            X: -4.54413223
            Y: 0.754511833
            Z: 32.9376297
          }
          Rotation {
            Pitch: -80.0788651
            Yaw: -174.735229
            Roll: 161.456268
          }
          Scale {
            X: 0.160811484
            Y: 0.135636538
            Z: 0.0402184837
          }
        }
        ParentId: 2994459917034532786
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 7082128979156015040
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.046
              G: 0.0328
              B: 0.024
              A: 1
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.373067409
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.290402621
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
            Id: 8692862186300254979
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
        Id: 3900346322390071440
        Name: "Teardrop - Rounded"
        Transform {
          Location {
            X: 1.84106588
            Y: -0.362925529
            Z: 18.945261
          }
          Rotation {
            Pitch: -0.112356603
            Yaw: -84.4321213
            Roll: 178.903183
          }
          Scale {
            X: 0.174281329
            Y: 0.170982942
            Z: 0.0982292295
          }
        }
        ParentId: 2994459917034532786
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 7082128979156015040
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.038
              G: 0.026
              B: 0.017
              A: 1
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 1.02874744
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.5
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
            Id: 2433235999455009803
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
        Id: 11440276456845154279
        Name: "Teardrop - Rounded"
        Transform {
          Location {
            X: 1.98552465
            Y: -0.335189342
            Z: 12.0606632
          }
          Rotation {
            Pitch: 0.112336114
            Yaw: 95.5679474
            Roll: 1.0965879
          }
          Scale {
            X: 0.2882393
            Y: 0.282791555
            Z: 0.375698537
          }
        }
        ParentId: 2994459917034532786
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 7082128979156015040
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.038
              G: 0.026
              B: 0.017
              A: 1
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 8.5035305
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 7.60888243
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
            Id: 2280761768427719435
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
        Id: 7785562847135929653
        Name: "Teardrop - Rounded"
        Transform {
          Location {
            X: 1.916255
            Y: -0.350727081
            Z: 15.8957024
          }
          Rotation {
            Pitch: -0.1123771
            Yaw: -84.4320831
            Roll: 178.903244
          }
          Scale {
            X: 0.155195355
            Y: 0.152261123
            Z: 0.12675494
          }
        }
        ParentId: 2994459917034532786
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 7082128979156015040
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.038
              G: 0.026
              B: 0.017
              A: 1
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 1.02874744
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.5
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
            Id: 2433235999455009803
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
        Id: 9493876822246075516
        Name: "Fantasy Sack Tied"
        Transform {
          Location {
            X: 1.76806641
            Y: -0.590332031
            Z: 6.72918701
          }
          Rotation {
            Pitch: 4.85528088
            Yaw: -15.8325539
            Roll: -177.805649
          }
          Scale {
            X: 0.289906889
            Y: -0.286561102
            Z: 0.290351182
          }
        }
        ParentId: 2994459917034532786
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_Detail1:id"
            AssetReference {
              Id: 5475761223416488121
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.04
              G: 0.0267833937
              B: 0.01785
              A: 1
            }
          }
          Overrides {
            Name: "ma:Shared_Detail1:color"
            Color {
              R: 0.126
              G: 0.182000011
              B: 0.415000021
              A: 1
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 1.6
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 1.4
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 7082128979156015040
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
        CoreMesh {
          MeshAsset {
            Id: 12794205808434669014
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
        Id: 12547998101329619269
        Name: "Teardrop - Rounded"
        Transform {
          Location {
            X: 1.62029088
            Y: -0.474646568
            Z: 11.4376698
          }
          Rotation {
            Pitch: -0.112356603
            Yaw: -84.4320908
            Roll: 178.903244
          }
          Scale {
            X: 0.149940491
            Y: 0.151794523
            Z: 0.0976349
          }
        }
        ParentId: 2994459917034532786
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 7082128979156015040
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.038
              G: 0.026
              B: 0.017
              A: 1
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 1.02874744
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.5
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
            Id: 2433235999455009803
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
        Id: 15779640703765221386
        Name: "Urban Vehicle Accessory - Sedan Fenderflare 02"
        Transform {
          Location {
            X: -0.569335938
            Y: -8.32019
            Z: 21.2603149
          }
          Rotation {
            Pitch: 1.01982236
            Yaw: -14.7408915
            Roll: 87.2185898
          }
          Scale {
            X: 0.116957769
            Y: 0.137737542
            Z: -0.119566992
          }
        }
        ParentId: 2994459917034532786
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 7082128979156015040
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.04
              G: 0.0267833937
              B: 0.01785
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
            Id: 18119351551008849317
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
        Id: 2793108966160142545
        Name: "Urban Vehicle Accessory - Sedan Fenderflare 02"
        Transform {
          Location {
            X: 3.39303899
            Y: 8.17897129
            Z: 22.3633099
          }
          Rotation {
            Pitch: 1.25571656
            Yaw: -12.0296469
            Roll: 85.0520325
          }
          Scale {
            X: 0.116949141
            Y: 0.137733817
            Z: 0.136765823
          }
        }
        ParentId: 2994459917034532786
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 7082128979156015040
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.04
              G: 0.0267833937
              B: 0.01785
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
            Id: 18119351551008849317
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
        Id: 3197031049363602005
        Name: "Teardrop - Rounded"
        Transform {
          Location {
            X: 1.83377981
            Y: -1.14403439
            Z: 1.99381018
          }
          Rotation {
            Pitch: 9.65924644
            Yaw: -81.8309555
            Roll: -178.425385
          }
          Scale {
            X: 0.109229349
            Y: 0.119537123
            Z: 0.215447545
          }
        }
        ParentId: 2994459917034532786
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 7082128979156015040
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.038
              G: 0.026
              B: 0.017
              A: 1
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 1.02874744
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.5
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
            Id: 2433235999455009803
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
        Id: 4524207160225421747
        Name: "Office Cubicle Desk Leg 01"
        Transform {
          Location {
            X: 2.44775391
            Y: 4.42407227
            Z: 0.797729492
          }
          Rotation {
            Pitch: 75.1340561
            Yaw: 90.098
            Roll: 174.908676
          }
          Scale {
            X: 0.0203990526
            Y: 0.0134892566
            Z: -0.00249431608
          }
        }
        ParentId: 2994459917034532786
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 11489275323901504074
            }
          }
          Overrides {
            Name: "ma:Shared_Detail1:id"
            AssetReference {
              Id: 5961184720642333683
            }
          }
          Overrides {
            Name: "ma:Shared_Detail2:id"
            AssetReference {
              Id: 5961184720642333683
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.13561447
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.127341971
          }
          Overrides {
            Name: "ma:Shared_Detail1:utile"
            Float: 0.5
          }
          Overrides {
            Name: "ma:Shared_Detail1:vtile"
            Float: 0.5
          }
          Overrides {
            Name: "ma:Shared_Detail2:utile"
            Float: 0.5
          }
          Overrides {
            Name: "ma:Shared_Detail2:vtile"
            Float: 0.5
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
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
        CoreMesh {
          MeshAsset {
            Id: 2291424959345176054
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
        Id: 7857590715063429672
        Name: "Office Cubicle Desk Leg 01"
        Transform {
          Location {
            X: -0.270019531
            Y: 4.11254883
            Z: 0.893920898
          }
          Rotation {
            Pitch: -75.0343628
            Yaw: -89.4666367
            Roll: 79.3987732
          }
          Scale {
            X: 0.0192521568
            Y: 0.00268287677
            Z: -0.0101622939
          }
        }
        ParentId: 2994459917034532786
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 5475761223416488121
            }
          }
          Overrides {
            Name: "ma:Shared_Detail1:id"
            AssetReference {
              Id: 14629909211943041809
            }
          }
          Overrides {
            Name: "ma:Shared_Detail2:id"
            AssetReference {
              Id: 14629909211943041809
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.081
              G: 0.0800941959
              B: 0.0770332739
              A: 1
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.270998806
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.183650792
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
            Id: 1488213721497979136
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
        Id: 12867557606618158709
        Name: "Office Cubicle Desk Leg 01"
        Transform {
          Location {
            X: 0.0756594688
            Y: 4.12221432
            Z: 0.890297294
          }
          Rotation {
            Pitch: -75.0344391
            Yaw: -89.4656754
            Roll: 89.0418625
          }
          Scale {
            X: 0.0191014558
            Y: 0.0026593667
            Z: 0.00817616191
          }
        }
        ParentId: 2994459917034532786
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 5475761223416488121
            }
          }
          Overrides {
            Name: "ma:Shared_Detail1:id"
            AssetReference {
              Id: 14629909211943041809
            }
          }
          Overrides {
            Name: "ma:Shared_Detail2:id"
            AssetReference {
              Id: 14629909211943041809
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.081
              G: 0.0800941959
              B: 0.0770332739
              A: 1
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.270998806
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.183650792
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
        Id: 10501399549872045209
        Name: "Fantasy Sack Tied"
        Transform {
          Location {
            X: 2.01074219
            Y: -0.387817383
            Z: 18.1744385
          }
          Rotation {
            Pitch: 4.85547876
            Yaw: -15.8328457
            Roll: 178.779556
          }
          Scale {
            X: 0.302001446
            Y: -0.309600562
            Z: 0.302465707
          }
        }
        ParentId: 2994459917034532786
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 7082128979156015040
            }
          }
          Overrides {
            Name: "ma:Shared_Detail1:id"
            AssetReference {
              Id: 5475761223416488121
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.045
              G: 0.043
              B: 0.044416111
              A: 1
            }
          }
          Overrides {
            Name: "ma:Shared_Detail1:color"
            Color {
              R: 0.126
              G: 0.182000011
              B: 0.415000021
              A: 1
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.735893667
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 1.60108674
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
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
        CoreMesh {
          MeshAsset {
            Id: 12794205808434669014
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
        Id: 17237162148675772248
        Name: "Fantasy Sack Tied"
        Transform {
          Location {
            X: 2.89111328
            Y: -1.00170898
            Z: 32.1331177
          }
          Rotation {
            Pitch: 20.3559494
            Yaw: 178.060013
            Roll: -0.0692022368
          }
          Scale {
            X: 0.163239956
            Y: -0.163484812
            Z: 0.202657446
          }
        }
        ParentId: 2994459917034532786
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 7082128979156015040
            }
          }
          Overrides {
            Name: "ma:Shared_Detail1:id"
            AssetReference {
              Id: 5475761223416488121
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.046
              G: 0.0328
              B: 0.024
              A: 1
            }
          }
          Overrides {
            Name: "ma:Shared_Detail1:color"
            Color {
              R: 0.126
              G: 0.182000011
              B: 0.415000021
              A: 1
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.735893667
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 1.60108674
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
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
        CoreMesh {
          MeshAsset {
            Id: 12434974458467685788
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
        Id: 6774211818424084899
        Name: "Urban Vehicle Accessory - Sedan Fenderflare 02"
        Transform {
          Location {
            X: -4.63867188
            Y: -9.28857422
            Z: 31.8150024
          }
          Rotation {
            Pitch: -78.9744415
            Yaw: 163.390869
            Roll: -110.857269
          }
          Scale {
            X: -0.117589429
            Y: 0.104101047
            Z: -0.0319943912
          }
        }
        ParentId: 2994459917034532786
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 11489275323901504074
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
            Id: 18119351551008849317
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
        Id: 16635827343453205673
        Name: "Urban Vehicle Accessory - Sedan Fenderflare 02"
        Transform {
          Location {
            X: -4.24316406
            Y: 7.22753906
            Z: 32.5855103
          }
          Rotation {
            Pitch: 82.4903564
            Yaw: -15.3924932
            Roll: -142.721909
          }
          Scale {
            X: 0.117659718
            Y: 0.104097888
            Z: -0.0433905423
          }
        }
        ParentId: 2994459917034532786
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 11489275323901504074
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
            Id: 18119351551008849317
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
        Id: 11189821400057093230
        Name: "Urban Vehicle Accessory - Sedan Fenderflare 02"
        Transform {
          Location {
            X: -7.01464844
            Y: -0.882446289
            Z: 23.7321167
          }
          Rotation {
            Pitch: 1.03880346
            Yaw: 85.2705536
            Roll: -73.5211334
          }
          Scale {
            X: 0.106440559
            Y: 0.104100384
            Z: -0.0433885157
          }
        }
        ParentId: 2994459917034532786
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 11489275323901504074
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
            Id: 18119351551008849317
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
        Id: 16092937843033829322
        Name: "Urban Vehicle Accessory - Sedan Fenderflare 02"
        Transform {
          Location {
            X: -5.15458298
            Y: -1.52324486
            Z: 41.6653061
          }
          Rotation {
            Pitch: 1.87920356
            Yaw: 88.1292877
            Roll: 70.1479797
          }
          Scale {
            X: 0.10430789
            Y: 0.107668735
            Z: 0.0463980585
          }
        }
        ParentId: 2994459917034532786
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 11489275323901504074
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
            Id: 18119351551008849317
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
        Id: 18030727576021140141
        Name: "Lathe Simple "
        Transform {
          Location {
            X: 0.640625
            Y: -1.72021484
            Z: 33.6157837
          }
          Rotation {
            Pitch: 45.713623
            Yaw: 149.777618
            Roll: 88.1958084
          }
          Scale {
            X: 0.188663751
            Y: -0.230232149
            Z: 0.107094534
          }
        }
        ParentId: 2994459917034532786
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 11489275323901504074
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 1
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
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
        EditorIndicatorVisibility {
          Value: "mc:eindicatorvisibility:visiblewhenselected"
        }
        CoreMesh {
          MeshAsset {
            Id: 7511473365680159662
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
        Id: 2845554979848582203
        Name: "Lathe Simple "
        Transform {
          Location {
            X: 0.857204437
            Y: -1.75855446
            Z: 33.188221
          }
          Rotation {
            Pitch: 47.3967171
            Yaw: -154.858459
            Roll: -84.5789185
          }
          Scale {
            X: 0.190279201
            Y: 0.227490306
            Z: 0.107097737
          }
        }
        ParentId: 2994459917034532786
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 11489275323901504074
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 1
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
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
        EditorIndicatorVisibility {
          Value: "mc:eindicatorvisibility:visiblewhenselected"
        }
        CoreMesh {
          MeshAsset {
            Id: 7511473365680159662
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
        Id: 9159250575458933011
        Name: "Lathe Simple "
        Transform {
          Location {
            X: 1.13854027
            Y: -1.75843239
            Z: 33.48423
          }
          Rotation {
            Pitch: 47.9629555
            Yaw: 176.593323
            Roll: -90.0857468
          }
          Scale {
            X: 0.191006929
            Y: 0.235487819
            Z: 0.107095972
          }
        }
        ParentId: 2994459917034532786
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 11489275323901504074
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 1
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
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
        EditorIndicatorVisibility {
          Value: "mc:eindicatorvisibility:visiblewhenselected"
        }
        CoreMesh {
          MeshAsset {
            Id: 7511473365680159662
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
        Id: 3173587864439242793
        Name: "Lathe Simple "
        Transform {
          Location {
            X: -4.58604431
            Y: -1.11926937
            Z: 32.6882782
          }
          Rotation {
            Pitch: 81.9976044
            Yaw: 0.826524913
            Roll: -174.743576
          }
          Scale {
            X: 0.298539847
            Y: 0.148301512
            Z: 0.107726306
          }
        }
        ParentId: 2994459917034532786
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 11489275323901504074
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 1
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
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
        EditorIndicatorVisibility {
          Value: "mc:eindicatorvisibility:visiblewhenselected"
        }
        CoreMesh {
          MeshAsset {
            Id: 2092839297938637125
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
        Id: 12482980044209500397
        Name: "Teardrop - Rounded"
        Transform {
          Location {
            X: 2.19003153
            Y: -0.650859833
            Z: 27.9309196
          }
          Rotation {
            Pitch: -1.39798939
            Yaw: 68.0170441
            Roll: 172.5784
          }
          Scale {
            X: 0.163945943
            Y: 0.160371348
            Z: 0.0197040364
          }
        }
        ParentId: 2994459917034532786
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 7082128979156015040
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.0580000021
              G: 0.0396842398
              B: 0.0248298701
              A: 1
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.392233491
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.125
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
            Id: 916665379155427451
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
        Id: 3151000820020174787
        Name: "Teardrop - Rounded"
        Transform {
          Location {
            X: 4.04663563
            Y: -0.882705688
            Z: 35.728363
          }
          Rotation {
            Pitch: -1.09673023
            Yaw: 90.5904541
            Roll: 162.135147
          }
          Scale {
            X: 0.157971963
            Y: 0.172063321
            Z: 0.0186295956
          }
        }
        ParentId: 2994459917034532786
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 7082128979156015040
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.0580000021
              G: 0.0396842398
              B: 0.0248298701
              A: 1
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.392233491
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.125
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
            Id: 916665379155427451
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
        Id: 1429328253610219854
        Name: "Office Cubicle Desk Leg 01"
        Transform {
          Location {
            X: 0.362304688
            Y: 3.7331543
            Z: -6.10351562e-05
          }
          Rotation {
            Pitch: 14.8074532
            Yaw: -84.6350174
            Roll: -88.6497269
          }
          Scale {
            X: 0.0279501919
            Y: 0.0132508613
            Z: -0.0159998275
          }
        }
        ParentId: 2994459917034532786
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 11489275323901504074
            }
          }
          Overrides {
            Name: "ma:Shared_Detail1:id"
            AssetReference {
              Id: 11489275323901504074
            }
          }
          Overrides {
            Name: "ma:Shared_Detail2:id"
            AssetReference {
              Id: 11489275323901504074
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.5
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.350051254
          }
          Overrides {
            Name: "ma:Shared_Detail1:utile"
            Float: 0.5
          }
          Overrides {
            Name: "ma:Shared_Detail1:vtile"
            Float: 0.5
          }
          Overrides {
            Name: "ma:Shared_Detail2:utile"
            Float: 0.5
          }
          Overrides {
            Name: "ma:Shared_Detail2:vtile"
            Float: 0.5
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
            Id: 890442874131206195
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
        Id: 17729113825457516927
        Name: "Fantasy Sack Tied"
        Transform {
          Location {
            X: 0.943847656
            Y: 1.32507324
            Z: -13.6139526
          }
          Rotation {
            Pitch: 4.85545158
            Yaw: -15.8327789
            Roll: 178.779526
          }
          Scale {
            X: 0.310258389
            Y: -0.318065286
            Z: 0.310735285
          }
        }
        ParentId: 1911253619631597637
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 807038937784509847
            }
          }
          Overrides {
            Name: "ma:Shared_Detail1:id"
            AssetReference {
              Id: 5475761223416488121
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.25
              G: 0.25
              B: 0.229
              A: 1
            }
          }
          Overrides {
            Name: "ma:Shared_Detail1:color"
            Color {
              R: 0.126
              G: 0.182000011
              B: 0.415000021
              A: 1
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 1.6
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 1.4
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
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
        CoreMesh {
          MeshAsset {
            Id: 12794205808434669014
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
        Id: 5322416027881194053
        Name: "left_elbow"
        Transform {
          Location {
            X: -8.68166733
            Y: -37.4969864
            Z: 141.289
          }
          Rotation {
            Pitch: 18.4199944
            Yaw: 9.02801228
            Roll: 31.9080124
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 16626570038979758447
        ChildIds: 12696325311532735695
        ChildIds: 12100514520270181569
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
        Id: 12696325311532735695
        Name: "Left Elbow"
        Transform {
          Location {
            X: -0.0811228082
            Y: -1.42945755
            Z: -25.4298687
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 5322416027881194053
        ChildIds: 8641647882646633602
        ChildIds: 11666920805003414094
        ChildIds: 14083205282020711332
        ChildIds: 13766309821176452478
        ChildIds: 10290661356423978779
        ChildIds: 8631332104111632412
        ChildIds: 15792230074604247089
        ChildIds: 8859427732211450945
        ChildIds: 7273036916846297134
        ChildIds: 17166456963269264452
        ChildIds: 9366932765037022289
        ChildIds: 11700711072247109347
        ChildIds: 9792828044545892207
        ChildIds: 14623376479848760176
        ChildIds: 7361670710307788824
        ChildIds: 14500388743132068653
        ChildIds: 14567535674319769150
        ChildIds: 5365899715292497217
        ChildIds: 11693175050886467850
        ChildIds: 5726422849695242704
        ChildIds: 2918566355032871353
        ChildIds: 7965300367776812894
        ChildIds: 3891767812351256601
        ChildIds: 8708667854332961702
        ChildIds: 14588672442491967834
        ChildIds: 7324906810170719027
        ChildIds: 15324627920726955213
        ChildIds: 12099542309652350853
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
          Model {
            AggressiveMerge: true
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
        Id: 8641647882646633602
        Name: "Sphere"
        Transform {
          Location {
            X: 7.35249949
            Y: 4.84144115
            Z: 10.762394
          }
          Rotation {
            Pitch: 13.9792109
            Yaw: -136.347473
            Roll: -91.2035751
          }
          Scale {
            X: 0.0086605493
            Y: 0.0133732148
            Z: 0.0133737978
          }
        }
        ParentId: 12696325311532735695
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 4060778856531270988
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.35
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.35
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
            Id: 12434974458467685788
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
        Id: 11666920805003414094
        Name: "Fantasy Sack Tied"
        Transform {
          Location {
            X: 1.58192825
            Y: -0.140502453
            Z: 11.4452267
          }
          Rotation {
            Pitch: 4.85545158
            Yaw: 15.832757
            Roll: -178.77951
          }
          Scale {
            X: 0.302001446
            Y: 0.309600562
            Z: 0.302465707
          }
        }
        ParentId: 12696325311532735695
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 7082128979156015040
            }
          }
          Overrides {
            Name: "ma:Shared_Detail1:id"
            AssetReference {
              Id: 5475761223416488121
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.045
              G: 0.043
              B: 0.044416111
              A: 1
            }
          }
          Overrides {
            Name: "ma:Shared_Detail1:color"
            Color {
              R: 0.126
              G: 0.182000011
              B: 0.415000021
              A: 1
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.735893667
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 1.60108674
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
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
        CoreMesh {
          MeshAsset {
            Id: 12794205808434669014
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
        Id: 14083205282020711332
        Name: "Fantasy Sack Tied"
        Transform {
          Location {
            X: 2.46118212
            Y: 0.473409653
            Z: 25.4039249
          }
          Rotation {
            Pitch: 20.355957
            Yaw: -178.060104
            Roll: 0.0691857114
          }
          Scale {
            X: 0.163239956
            Y: 0.163484812
            Z: 0.202657446
          }
        }
        ParentId: 12696325311532735695
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 7082128979156015040
            }
          }
          Overrides {
            Name: "ma:Shared_Detail1:id"
            AssetReference {
              Id: 5475761223416488121
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.046
              G: 0.0328
              B: 0.024
              A: 1
            }
          }
          Overrides {
            Name: "ma:Shared_Detail1:color"
            Color {
              R: 0.126
              G: 0.182000011
              B: 0.415000021
              A: 1
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.735893667
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 1.60108674
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
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
        CoreMesh {
          MeshAsset {
            Id: 12434974458467685788
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
        Id: 13766309821176452478
        Name: "Urban Vehicle Accessory - Sedan Fenderflare 02"
        Transform {
          Location {
            X: -4.671875
            Y: -7.75610352
            Z: 25.8564453
          }
          Rotation {
            Pitch: 82.4903564
            Yaw: 15.3923817
            Roll: 142.721924
          }
          Scale {
            X: 0.117659718
            Y: -0.104097888
            Z: -0.0433905423
          }
        }
        ParentId: 12696325311532735695
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 11489275323901504074
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
            Id: 18119351551008849317
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
        Id: 10290661356423978779
        Name: "Urban Vehicle Accessory - Sedan Fenderflare 02"
        Transform {
          Location {
            X: -7.44360352
            Y: 0.353515625
            Z: 17.0031738
          }
          Rotation {
            Pitch: 1.03877604
            Yaw: -85.2706146
            Roll: 73.5211487
          }
          Scale {
            X: 0.106440559
            Y: -0.104100384
            Z: -0.0433885157
          }
        }
        ParentId: 12696325311532735695
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 11489275323901504074
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
            Id: 18119351551008849317
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
        Id: 8631332104111632412
        Name: "Urban Vehicle Accessory - Sedan Fenderflare 02"
        Transform {
          Location {
            X: -5.58496094
            Y: 0.994506836
            Z: 34.9362793
          }
          Rotation {
            Pitch: 1.87918305
            Yaw: -88.1294479
            Roll: -70.1479797
          }
          Scale {
            X: 0.10430789
            Y: -0.107668735
            Z: 0.0463980585
          }
        }
        ParentId: 12696325311532735695
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 11489275323901504074
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
            Id: 18119351551008849317
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
        Id: 15792230074604247089
        Name: "Lathe Simple "
        Transform {
          Location {
            X: 0.211440086
            Y: 1.19160843
            Z: 26.8868294
          }
          Rotation {
            Pitch: 45.713623
            Yaw: -149.777725
            Roll: -88.1957703
          }
          Scale {
            X: 0.188663751
            Y: 0.230232149
            Z: 0.107094534
          }
        }
        ParentId: 12696325311532735695
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 11489275323901504074
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 1
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
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
        EditorIndicatorVisibility {
          Value: "mc:eindicatorvisibility:visiblewhenselected"
        }
        CoreMesh {
          MeshAsset {
            Id: 7511473365680159662
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
        Id: 8859427732211450945
        Name: "Lathe Simple "
        Transform {
          Location {
            X: 0.427246094
            Y: 1.22998047
            Z: 26.4592285
          }
          Rotation {
            Pitch: 47.3967819
            Yaw: 154.858398
            Roll: 84.5789719
          }
          Scale {
            X: 0.190279201
            Y: -0.227490306
            Z: 0.107097737
          }
        }
        ParentId: 12696325311532735695
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 11489275323901504074
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 1
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
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
        EditorIndicatorVisibility {
          Value: "mc:eindicatorvisibility:visiblewhenselected"
        }
        CoreMesh {
          MeshAsset {
            Id: 7511473365680159662
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
        Id: 7273036916846297134
        Name: "Lathe Simple "
        Transform {
          Location {
            X: 0.709472656
            Y: 1.2298584
            Z: 26.755127
          }
          Rotation {
            Pitch: 47.9630699
            Yaw: -176.59346
            Roll: 90.0857697
          }
          Scale {
            X: 0.191006929
            Y: -0.235487819
            Z: 0.107095972
          }
        }
        ParentId: 12696325311532735695
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 11489275323901504074
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 1
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
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
        EditorIndicatorVisibility {
          Value: "mc:eindicatorvisibility:visiblewhenselected"
        }
        CoreMesh {
          MeshAsset {
            Id: 7511473365680159662
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
        Id: 17166456963269264452
        Name: "Lathe Simple "
        Transform {
          Location {
            X: -5.015625
            Y: 0.590820312
            Z: 25.9589844
          }
          Rotation {
            Pitch: 81.998024
            Yaw: -0.826421618
            Roll: 174.743851
          }
          Scale {
            X: 0.298539847
            Y: -0.148301512
            Z: 0.107726306
          }
        }
        ParentId: 12696325311532735695
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 11489275323901504074
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 1
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
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
        EditorIndicatorVisibility {
          Value: "mc:eindicatorvisibility:visiblewhenselected"
        }
        CoreMesh {
          MeshAsset {
            Id: 2092839297938637125
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
        Id: 9366932765037022289
        Name: "Urban Vehicle Accessory - Sedan Fenderflare 02"
        Transform {
          Location {
            X: -5.06860352
            Y: 8.76001
            Z: 25.0861816
          }
          Rotation {
            Pitch: -78.9744568
            Yaw: -163.391098
            Roll: 110.857452
          }
          Scale {
            X: -0.117589429
            Y: -0.104101047
            Z: -0.0319943912
          }
        }
        ParentId: 12696325311532735695
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 11489275323901504074
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
            Id: 18119351551008849317
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
        Id: 11700711072247109347
        Name: "Teardrop - Rounded"
        Transform {
          Location {
            X: 1.76074219
            Y: 0.122558594
            Z: 21.2016602
          }
          Rotation {
            Pitch: -1.39798939
            Yaw: -68.0172119
            Roll: -172.578293
          }
          Scale {
            X: 0.163945943
            Y: -0.160371348
            Z: 0.0197040364
          }
        }
        ParentId: 12696325311532735695
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 7082128979156015040
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.0580000021
              G: 0.0396842398
              B: 0.0248298701
              A: 1
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.392233491
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.125
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
            Id: 916665379155427451
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
        Id: 9792828044545892207
        Name: "Teardrop - Rounded"
        Transform {
          Location {
            X: 3.61669922
            Y: 0.354492188
            Z: 28.9992676
          }
          Rotation {
            Pitch: -1.09670973
            Yaw: -90.5906296
            Roll: -162.135117
          }
          Scale {
            X: 0.157971963
            Y: -0.172063321
            Z: 0.0186295956
          }
        }
        ParentId: 12696325311532735695
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 7082128979156015040
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.0580000021
              G: 0.0396842398
              B: 0.0248298701
              A: 1
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.392233491
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.125
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
            Id: 916665379155427451
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
        Id: 14623376479848760176
        Name: "Basic Apple"
        Transform {
          Location {
            X: -4.97387695
            Y: -1.28271484
            Z: 26.2084961
          }
          Rotation {
            Pitch: -80.0789948
            Yaw: 174.735367
            Roll: -161.456497
          }
          Scale {
            X: 0.160811484
            Y: -0.135636538
            Z: 0.0402184837
          }
        }
        ParentId: 12696325311532735695
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 7082128979156015040
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.046
              G: 0.0328
              B: 0.024
              A: 1
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.373067409
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.290402621
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
            Id: 8692862186300254979
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
        Id: 7361670710307788824
        Name: "Fantasy Sack Tied"
        Transform {
          Location {
            X: 1.33977008
            Y: 0.0620792508
            Z: 7.87377357e-05
          }
          Rotation {
            Pitch: 4.85525322
            Yaw: 15.8324575
            Roll: 177.805695
          }
          Scale {
            X: 0.289904207
            Y: 0.297198892
            Z: 0.290349811
          }
        }
        ParentId: 12696325311532735695
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_Detail1:id"
            AssetReference {
              Id: 5475761223416488121
            }
          }
          Overrides {
            Name: "ma:Shared_Detail1:color"
            Color {
              R: 0.126
              G: 0.182000011
              B: 0.415000021
              A: 1
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 1.6
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 1.4
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 11489275323901504074
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
        CoreMesh {
          MeshAsset {
            Id: 12794205808434669014
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
        Id: 14500388743132068653
        Name: "Teardrop - Rounded"
        Transform {
          Location {
            X: 1.41162109
            Y: -0.165527344
            Z: 12.2158203
          }
          Rotation {
            Pitch: -0.112411246
            Yaw: 84.4320602
            Roll: -178.903229
          }
          Scale {
            X: 0.174281329
            Y: -0.170982942
            Z: 0.0982292295
          }
        }
        ParentId: 12696325311532735695
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 11489275323901504074
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 1.02874744
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.5
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
            Id: 2433235999455009803
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
        Id: 14567535674319769150
        Name: "Teardrop - Rounded"
        Transform {
          Location {
            X: 1.55712891
            Y: -0.193115234
            Z: 5.33129883
          }
          Rotation {
            Pitch: 0.112383924
            Yaw: -95.5680847
            Roll: -1.09651768
          }
          Scale {
            X: 0.2882393
            Y: -0.282791555
            Z: 0.375698537
          }
        }
        ParentId: 12696325311532735695
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 11489275323901504074
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 8.5035305
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 7.60888243
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
            Id: 2280761768427719435
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
        Id: 5365899715292497217
        Name: "Teardrop - Rounded"
        Transform {
          Location {
            X: 1.42382812
            Y: -0.178955078
            Z: 5.29516602
          }
          Rotation {
            Pitch: -0.112390757
            Yaw: 84.4320679
            Roll: -178.903244
          }
          Scale {
            X: 0.152235314
            Y: -0.149357036
            Z: 0.0875811577
          }
        }
        ParentId: 12696325311532735695
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 11489275323901504074
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 1.02874744
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.5
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
            Id: 2433235999455009803
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
        Id: 11693175050886467850
        Name: "Teardrop - Rounded"
        Transform {
          Location {
            X: 1.48681641
            Y: -0.177612305
            Z: 9.16650391
          }
          Rotation {
            Pitch: -0.112390757
            Yaw: 84.4320602
            Roll: -178.903259
          }
          Scale {
            X: 0.155195355
            Y: -0.152261123
            Z: 0.12675494
          }
        }
        ParentId: 12696325311532735695
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 11489275323901504074
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 1.02874744
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.5
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
            Id: 2433235999455009803
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
        Id: 5726422849695242704
        Name: "Sphere"
        Transform {
          Location {
            X: 8.20968723
            Y: -3.98330021
            Z: 10.8162374
          }
          Rotation {
            Pitch: 13.5219431
            Yaw: 154.403244
            Roll: -90.5078812
          }
          Scale {
            X: 0.0086605493
            Y: 0.0133732148
            Z: 0.0133737978
          }
        }
        ParentId: 12696325311532735695
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 4060778856531270988
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.35
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.35
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
            Id: 12434974458467685788
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
        Id: 2918566355032871353
        Name: "Sphere"
        Transform {
          Location {
            X: 9.18809319
            Y: 0.411889553
            Z: 10.8179817
          }
          Rotation {
            Pitch: 13.5511971
            Yaw: -172.0065
            Roll: -91.1653366
          }
          Scale {
            X: 0.0086605493
            Y: 0.0133732148
            Z: 0.0133737978
          }
        }
        ParentId: 12696325311532735695
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 4060778856531270988
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.35
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.35
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
            Id: 12434974458467685788
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
        Id: 7965300367776812894
        Name: "Sphere"
        Transform {
          Location {
            X: 4.95432758
            Y: -7.09428263
            Z: 10.7667608
          }
          Rotation {
            Pitch: 13.8515406
            Yaw: 120.792847
            Roll: -89.9431305
          }
          Scale {
            X: 0.0086605493
            Y: 0.0133732148
            Z: 0.0133737978
          }
        }
        ParentId: 12696325311532735695
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 4060778856531270988
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.35
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.35
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
            Id: 12434974458467685788
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
        Id: 3891767812351256601
        Name: "Sphere"
        Transform {
          Location {
            X: 0.519803762
            Y: -7.87219191
            Z: 10.6861591
          }
          Rotation {
            Pitch: 14.4297781
            Yaw: 87.1177444
            Roll: -89.6604385
          }
          Scale {
            X: 0.0086605493
            Y: 0.0133732148
            Z: 0.0133737978
          }
        }
        ParentId: 12696325311532735695
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 4060778856531270988
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.35
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.35
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
            Id: 12434974458467685788
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
        Id: 8708667854332961702
        Name: "Sphere"
        Transform {
          Location {
            X: -3.59920406
            Y: -6.0549264
            Z: 10.6015644
          }
          Rotation {
            Pitch: 15.0628881
            Yaw: 53.3491516
            Roll: -89.7566681
          }
          Scale {
            X: 0.0086605493
            Y: 0.0133732148
            Z: 0.0133737978
          }
        }
        ParentId: 12696325311532735695
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 4060778856531270988
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.35
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.35
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
            Id: 12434974458467685788
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
        Id: 14588672442491967834
        Name: "Sphere"
        Transform {
          Location {
            X: -6.01439
            Y: -2.25502968
            Z: 10.5415382
          }
          Rotation {
            Pitch: 15.5370817
            Yaw: 19.4875565
            Roll: -90.2020874
          }
          Scale {
            X: 0.0086605493
            Y: 0.0133732148
            Z: 0.0133737978
          }
        }
        ParentId: 12696325311532735695
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 4060778856531270988
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.35
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.35
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
            Id: 12434974458467685788
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
        Id: 7324906810170719027
        Name: "Sphere"
        Transform {
          Location {
            X: -5.85756969
            Y: 2.46228123
            Z: 10.5296783
          }
          Rotation {
            Pitch: 15.6035252
            Yaw: -18.2469101
            Roll: -91.8767242
          }
          Scale {
            X: 0.0086605493
            Y: 0.0133732148
            Z: 0.0133737978
          }
        }
        ParentId: 12696325311532735695
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 4060778856531270988
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.35
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.35
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
            Id: 12434974458467685788
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
        Id: 15324627920726955213
        Name: "Sphere"
        Transform {
          Location {
            X: -2.37392187
            Y: 6.55142498
            Z: 10.5716658
          }
          Rotation {
            Pitch: 15.3741884
            Yaw: -57.5260773
            Roll: -91.0779
          }
          Scale {
            X: 0.0086605493
            Y: 0.0133732148
            Z: 0.0133737978
          }
        }
        ParentId: 12696325311532735695
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 4060778856531270988
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.35
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.35
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
            Id: 12434974458467685788
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
        Id: 12099542309652350853
        Name: "Sphere"
        Transform {
          Location {
            X: 2.39137697
            Y: 7.52654076
            Z: 10.6629028
          }
          Rotation {
            Pitch: 14.7456398
            Yaw: -93.4499588
            Roll: -91.9145584
          }
          Scale {
            X: 0.0086605493
            Y: 0.0133732148
            Z: 0.0133737978
          }
        }
        ParentId: 12696325311532735695
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 4060778856531270988
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.35
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.35
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
            Id: 12434974458467685788
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
        Id: 12100514520270181569
        Name: "Fantasy Sack Tied"
        Transform {
          Location {
            X: 1.50094509
            Y: -1.5699873
            Z: -13.9847202
          }
          Rotation {
            Pitch: 4.85542393
            Yaw: 15.8327036
            Roll: -178.77951
          }
          Scale {
            X: 0.310258389
            Y: 0.318065286
            Z: 0.310735285
          }
        }
        ParentId: 5322416027881194053
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 807038937784509847
            }
          }
          Overrides {
            Name: "ma:Shared_Detail1:id"
            AssetReference {
              Id: 5475761223416488121
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.25
              G: 0.25
              B: 0.229
              A: 1
            }
          }
          Overrides {
            Name: "ma:Shared_Detail1:color"
            Color {
              R: 0.126
              G: 0.182000011
              B: 0.415000021
              A: 1
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 1.6
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 1.4
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
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
        CoreMesh {
          MeshAsset {
            Id: 12794205808434669014
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
        Id: 7088599015034234668
        Name: "right_wrist"
        Transform {
          Location {
            X: 1.54544652
            Y: 50.8969116
            Z: 118.823502
          }
          Rotation {
            Pitch: 13.9379902
            Yaw: -10.196991
            Roll: -27.3249817
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 16626570038979758447
        ChildIds: 16605705205605117016
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
        Id: 16605705205605117016
        Name: "Right Hand"
        Transform {
          Location {
            X: 1.23069608
            Y: 0.188236549
            Z: -24.6672363
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 7088599015034234668
        ChildIds: 14190620039929093675
        ChildIds: 6613431916174369033
        ChildIds: 16023176955127477689
        ChildIds: 11248222465038796538
        ChildIds: 13054232772266833779
        ChildIds: 9155817357138583952
        ChildIds: 617778947427311937
        ChildIds: 15146399631361384412
        ChildIds: 2827168432249782131
        ChildIds: 14414550463744078840
        ChildIds: 16874379904392850825
        ChildIds: 8309851939864382038
        ChildIds: 572789844280026264
        ChildIds: 5758059866948430383
        ChildIds: 13293402368079353769
        ChildIds: 5440188384395189138
        ChildIds: 6120062201794165457
        ChildIds: 11498641935895202218
        ChildIds: 4202327670498853955
        ChildIds: 13060416095468920
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
          Model {
            AggressiveMerge: true
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
        Id: 14190620039929093675
        Name: "Teardrop - Rounded"
        Transform {
          Location {
            X: 8.27832
            Y: -2.86853027
            Z: 13.2295532
          }
          Rotation {
            Pitch: 17.0333977
            Yaw: 21.830698
            Roll: -157.410477
          }
          Scale {
            X: 0.0478788242
            Y: -0.0485632382
            Z: 0.083376646
          }
        }
        ParentId: 16605705205605117016
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 7082128979156015040
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.337499112
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.5
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.04
              G: 0.0267833937
              B: 0.01785
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
            Id: 8692862186300254979
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
        Id: 6613431916174369033
        Name: "Teardrop - Rounded"
        Transform {
          Location {
            X: -0.114681244
            Y: 1.57727385
            Z: 15.7706203
          }
          Rotation {
            Pitch: -2.60502028
            Yaw: 87.9581
            Roll: 174.008163
          }
          Scale {
            X: 0.086106196
            Y: 0.149797961
            Z: 0.174750671
          }
        }
        ParentId: 16605705205605117016
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 7082128979156015040
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.337499112
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.5
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.04
              G: 0.0267833937
              B: 0.01785
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
            Id: 8692862186300254979
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
        Id: 16023176955127477689
        Name: "Teardrop - Rounded"
        Transform {
          Location {
            X: -0.849921703
            Y: -0.212064743
            Z: 15.2471275
          }
          Rotation {
            Pitch: 6.65942049
            Yaw: 163.242249
            Roll: 90.8907394
          }
          Scale {
            X: 0.141493678
            Y: 0.163374901
            Z: 0.0683440119
          }
        }
        ParentId: 16605705205605117016
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 7082128979156015040
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.337499112
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.5
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.04
              G: 0.0267833937
              B: 0.01785
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
            Id: 8692862186300254979
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
        Id: 11248222465038796538
        Name: "Teardrop - Rounded"
        Transform {
          Location {
            X: 5.15429688
            Y: -0.864868164
            Z: 18.0053711
          }
          Rotation {
            Pitch: 11.8744402
            Yaw: 42.412468
            Roll: 38.732872
          }
          Scale {
            X: 0.0631986186
            Y: -0.0640981272
            Z: 0.13472262
          }
        }
        ParentId: 16605705205605117016
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 7082128979156015040
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.337499112
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.5
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.04
              G: 0.0267833937
              B: 0.01785
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
            Id: 8692862186300254979
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
        Id: 13054232772266833779
        Name: "Teardrop - Rounded"
        Transform {
          Location {
            X: 4.97705078
            Y: -1.5670166
            Z: 16.9702148
          }
          Rotation {
            Pitch: 14.434989
            Yaw: 48.4053345
            Roll: 40.098381
          }
          Scale {
            X: 0.0641037598
            Y: -0.0670379549
            Z: 0.117140181
          }
        }
        ParentId: 16605705205605117016
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 7082128979156015040
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.337499112
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.5
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.04
              G: 0.0267833937
              B: 0.01785
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
            Id: 8692862186300254979
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
        Id: 9155817357138583952
        Name: "Teardrop - Rounded"
        Transform {
          Location {
            X: 10.0107422
            Y: -3.99475098
            Z: 9.34643555
          }
          Rotation {
            Pitch: 17.0334053
            Yaw: 21.8307037
            Roll: 22.589489
          }
          Scale {
            X: 0.0437000506
            Y: -0.0443270877
            Z: 0.0661545843
          }
        }
        ParentId: 16605705205605117016
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 7082128979156015040
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.337499112
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.5
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.04
              G: 0.0267833937
              B: 0.01785
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
            Id: 8692862186300254979
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
        Id: 617778947427311937
        Name: "Teardrop - Rounded"
        Transform {
          Location {
            X: 4.2890625
            Y: -1.83972168
            Z: 0.923584
          }
          Rotation {
            Pitch: -54.3157539
            Yaw: 83.6586685
            Roll: 0.530624926
          }
          Scale {
            X: 0.0355563387
            Y: -0.0360706113
            Z: 0.0599599
          }
        }
        ParentId: 16605705205605117016
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 7082128979156015040
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.337499112
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.5
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.04
              G: 0.0267833937
              B: 0.01785
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
            Id: 8692862186300254979
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
        Id: 15146399631361384412
        Name: "Teardrop - Rounded"
        Transform {
          Location {
            X: 4.49169922
            Y: 0.18371582
            Z: 2.78289795
          }
          Rotation {
            Pitch: -36.7777443
            Yaw: 83.8582764
            Roll: 0.386757374
          }
          Scale {
            X: 0.0381479189
            Y: -0.0374045819
            Z: 0.066459544
          }
        }
        ParentId: 16605705205605117016
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 7082128979156015040
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.337499112
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.5
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.04
              G: 0.0267833937
              B: 0.01785
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
            Id: 8692862186300254979
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
        Id: 2827168432249782131
        Name: "Teardrop - Rounded"
        Transform {
          Location {
            X: 4.63232422
            Y: 1.84094238
            Z: 6.77209473
          }
          Rotation {
            Pitch: -16.5549221
            Yaw: 83.9969482
            Roll: -179.675827
          }
          Scale {
            X: 0.0429886654
            Y: -0.0391042605
            Z: 0.0884902477
          }
        }
        ParentId: 16605705205605117016
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 7082128979156015040
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.337499112
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.5
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.04
              G: 0.0267833937
              B: 0.01785
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
            Id: 8692862186300254979
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
        Id: 14414550463744078840
        Name: "Teardrop - Rounded"
        Transform {
          Location {
            X: -0.68489337
            Y: 2.01445317
            Z: 10.8504438
          }
          Rotation {
            Pitch: 5.58986044
            Yaw: 91.3085098
            Roll: -5.83475494
          }
          Scale {
            X: 0.0716146454
            Y: 0.146656319
            Z: 0.0908636078
          }
        }
        ParentId: 16605705205605117016
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 7082128979156015040
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.337499112
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.5
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.04
              G: 0.0267833937
              B: 0.01785
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
            Id: 8692862186300254979
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
        Id: 16874379904392850825
        Name: "Teardrop - Rounded"
        Transform {
          Location {
            X: -5.7421875
            Y: 1.36584473
            Z: 11.1071777
          }
          Rotation {
            Pitch: 0.592068076
            Yaw: 97.2653046
            Roll: -8.18122196
          }
          Scale {
            X: 0.0609916635
            Y: -0.0484012
            Z: 0.0660590902
          }
        }
        ParentId: 16605705205605117016
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 7082128979156015040
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.337499112
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.5
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.04
              G: 0.0267833937
              B: 0.01785
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
            Id: 8692862186300254979
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
        Id: 8309851939864382038
        Name: "Teardrop - Rounded"
        Transform {
          Location {
            X: -8.1640625
            Y: -1.76916504
            Z: 3.26098633
          }
          Rotation {
            Pitch: -47.7361488
            Yaw: 120.179932
            Roll: -26.7147083
          }
          Scale {
            X: 0.0315040462
            Y: -0.0319597125
            Z: 0.0531263761
          }
        }
        ParentId: 16605705205605117016
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 7082128979156015040
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.337499112
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.5
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.04
              G: 0.0267833937
              B: 0.01785
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
            Id: 8692862186300254979
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
        Id: 572789844280026264
        Name: "Teardrop - Rounded"
        Transform {
          Location {
            X: -7.77978516
            Y: -0.0451660156
            Z: 4.90997314
          }
          Rotation {
            Pitch: -32.5961266
            Yaw: 105.237419
            Roll: -22.2912121
          }
          Scale {
            X: 0.0344603099
            Y: -0.0337888263
            Z: 0.0600351505
          }
        }
        ParentId: 16605705205605117016
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 7082128979156015040
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.337499112
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.5
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.04
              G: 0.0267833937
              B: 0.01785
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
            Id: 8692862186300254979
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
        Id: 5758059866948430383
        Name: "Teardrop - Rounded"
        Transform {
          Location {
            X: -6.77880859
            Y: 1.30322266
            Z: 8.32885742
          }
          Rotation {
            Pitch: -14.883091
            Yaw: 104.115288
            Roll: 161.872009
          }
          Scale {
            X: 0.0426241942
            Y: -0.0355862305
            Z: 0.0827288181
          }
        }
        ParentId: 16605705205605117016
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 7082128979156015040
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.337499112
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.5
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.04
              G: 0.0267833937
              B: 0.01785
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
            Id: 8692862186300254979
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
        Id: 13293402368079353769
        Name: "Teardrop - Rounded"
        Transform {
          Location {
            X: -4.51171875
            Y: -1.19226074
            Z: 1.13861084
          }
          Rotation {
            Pitch: -52.5985107
            Yaw: 93.6883774
            Roll: -8.44063568
          }
          Scale {
            X: 0.0357879661
            Y: -0.0363055915
            Z: 0.0603505075
          }
        }
        ParentId: 16605705205605117016
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 7082128979156015040
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.337499112
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.5
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.04
              G: 0.0267833937
              B: 0.01785
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
            Id: 8692862186300254979
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
        Id: 5440188384395189138
        Name: "Teardrop - Rounded"
        Transform {
          Location {
            X: -4.18115234
            Y: 0.791992188
            Z: 3.04541016
          }
          Rotation {
            Pitch: -35.6075439
            Yaw: 91.0961914
            Roll: -9.14497185
          }
          Scale {
            X: 0.038396433
            Y: -0.0376482494
            Z: 0.0668924749
          }
        }
        ParentId: 16605705205605117016
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 7082128979156015040
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.337499112
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.5
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.04
              G: 0.0267833937
              B: 0.01785
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
            Id: 8692862186300254979
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
        Id: 6120062201794165457
        Name: "Teardrop - Rounded"
        Transform {
          Location {
            X: -3.55273438
            Y: 2.29296875
            Z: 7.07220459
          }
          Rotation {
            Pitch: -15.5968246
            Yaw: 87.8254395
            Roll: 172.291138
          }
          Scale {
            X: 0.0442112163
            Y: -0.0402163193
            Z: 0.0910068
          }
        }
        ParentId: 16605705205605117016
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 7082128979156015040
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.337499112
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.5
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.04
              G: 0.0267833937
              B: 0.01785
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
            Id: 8692862186300254979
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
        Id: 11498641935895202218
        Name: "Teardrop - Rounded"
        Transform {
          Location {
            X: 0.201171875
            Y: 1.25427246
            Z: 2.07952881
          }
          Rotation {
            Pitch: -33.0016212
            Yaw: 83.1740494
            Roll: -0.83457756
          }
          Scale {
            X: 0.0394026414
            Y: -0.038634859
            Z: 0.0686454624
          }
        }
        ParentId: 16605705205605117016
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 7082128979156015040
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.337499112
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.5
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.04
              G: 0.0267833937
              B: 0.01785
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
            Id: 8692862186300254979
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
        Id: 4202327670498853955
        Name: "Teardrop - Rounded"
        Transform {
          Location {
            X: -0.0727539062
            Y: -0.677978516
            Z: 6.10351562e-05
          }
          Rotation {
            Pitch: -54.5162964
            Yaw: 83.7017365
            Roll: -1.20615065
          }
          Scale {
            X: 0.0367258266
            Y: -0.037257012
            Z: 0.061932046
          }
        }
        ParentId: 16605705205605117016
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 7082128979156015040
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.337499112
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.5
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.04
              G: 0.0267833937
              B: 0.01785
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
            Id: 8692862186300254979
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
        Id: 13060416095468920
        Name: "Teardrop - Rounded"
        Transform {
          Location {
            X: 0.392578125
            Y: 2.4050293
            Z: 6.35168457
          }
          Rotation {
            Pitch: -8.76406765
            Yaw: 82.8264618
            Roll: 179.293106
          }
          Scale {
            X: 0.0463436171
            Y: -0.0403972194
            Z: 0.0913988724
          }
        }
        ParentId: 16605705205605117016
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 7082128979156015040
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.337499112
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.5
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.04
              G: 0.0267833937
              B: 0.01785
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
            Id: 8692862186300254979
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
        Id: 7502341152648027233
        Name: "left_wrist"
        Transform {
          Location {
            X: 1.48726821
            Y: -50.9835815
            Z: 118.802414
          }
          Rotation {
            Pitch: 13.9379902
            Yaw: 10.1970139
            Roll: 27.3249855
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 16626570038979758447
        ChildIds: 13640316736756420751
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
        Id: 13640316736756420751
        Name: "Left Hand"
        Transform {
          Location {
            X: 1.30632961
            Y: -0.122835778
            Z: -24.6300659
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 7502341152648027233
        ChildIds: 16921563296431314245
        ChildIds: 15148552890845889710
        ChildIds: 2480126903513270637
        ChildIds: 4621455632815568053
        ChildIds: 2598787928219809274
        ChildIds: 3911443838193372996
        ChildIds: 5018445019122900040
        ChildIds: 3040620736643524682
        ChildIds: 1486961872762672140
        ChildIds: 17730437611543215500
        ChildIds: 7797811696238740707
        ChildIds: 11088980549440687906
        ChildIds: 13887781030996270805
        ChildIds: 12166586721306008423
        ChildIds: 1747702166115236759
        ChildIds: 907742583646668238
        ChildIds: 14020536080658111008
        ChildIds: 3373998300422956489
        ChildIds: 14584669622937272110
        ChildIds: 1155573303807542291
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
          Model {
            AggressiveMerge: true
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
        Id: 16921563296431314245
        Name: "Teardrop - Rounded"
        Transform {
          Location {
            X: 8.27883816
            Y: 2.86859035
            Z: 13.2296
          }
          Rotation {
            Pitch: 17.033432
            Yaw: -21.8307571
            Roll: 157.410568
          }
          Scale {
            X: 0.0478788242
            Y: 0.0485632382
            Z: 0.083376646
          }
        }
        ParentId: 13640316736756420751
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 11489275323901504074
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.337499112
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.5
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
            Id: 8692862186300254979
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
        Id: 15148552890845889710
        Name: "Teardrop - Rounded"
        Transform {
          Location {
            X: -0.114257812
            Y: -1.57702637
            Z: 15.7703857
          }
          Rotation {
            Pitch: -2.60488367
            Yaw: -87.9582596
            Roll: -174.008163
          }
          Scale {
            X: 0.086106196
            Y: -0.149797961
            Z: 0.174750671
          }
        }
        ParentId: 13640316736756420751
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 11489275323901504074
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.337499112
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.5
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
            Id: 8692862186300254979
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
        Id: 2480126903513270637
        Name: "Teardrop - Rounded"
        Transform {
          Location {
            X: -0.849121094
            Y: 0.212158203
            Z: 15.2470703
          }
          Rotation {
            Pitch: 6.65948868
            Yaw: -163.242416
            Roll: -90.8909
          }
          Scale {
            X: 0.141493678
            Y: -0.163374901
            Z: 0.0683440119
          }
        }
        ParentId: 13640316736756420751
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 11489275323901504074
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.337499112
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.5
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
            Id: 8692862186300254979
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
        Id: 4621455632815568053
        Name: "Teardrop - Rounded"
        Transform {
          Location {
            X: 5.15458584
            Y: 0.864875793
            Z: 18.0054531
          }
          Rotation {
            Pitch: 11.8745155
            Yaw: -42.412529
            Roll: -38.7327309
          }
          Scale {
            X: 0.0631986186
            Y: 0.0640981272
            Z: 0.13472262
          }
        }
        ParentId: 13640316736756420751
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 11489275323901504074
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.337499112
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.5
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
            Id: 8692862186300254979
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
        Id: 2598787928219809274
        Name: "Teardrop - Rounded"
        Transform {
          Location {
            X: 4.97715807
            Y: 1.56710911
            Z: 16.9702816
          }
          Rotation {
            Pitch: 14.435071
            Yaw: -48.4053841
            Roll: -40.0982361
          }
          Scale {
            X: 0.0641037598
            Y: 0.0670379549
            Z: 0.117140181
          }
        }
        ParentId: 13640316736756420751
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 11489275323901504074
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.337499112
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.5
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
            Id: 8692862186300254979
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
        Id: 3911443838193372996
        Name: "Teardrop - Rounded"
        Transform {
          Location {
            X: 10.0109329
            Y: 3.99481392
            Z: 9.34639359
          }
          Rotation {
            Pitch: 17.0334396
            Yaw: -21.8307743
            Roll: -22.5893269
          }
          Scale {
            X: 0.0437000506
            Y: 0.0443270877
            Z: 0.0661545843
          }
        }
        ParentId: 13640316736756420751
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 11489275323901504074
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.337499112
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.5
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
            Id: 8692862186300254979
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
        Id: 5018445019122900040
        Name: "Teardrop - Rounded"
        Transform {
          Location {
            X: 4.29005527
            Y: 1.83973479
            Z: 0.923564494
          }
          Rotation {
            Pitch: -54.3155594
            Yaw: -83.6586304
            Roll: -0.530599236
          }
          Scale {
            X: 0.0355563387
            Y: 0.0360706113
            Z: 0.0599599
          }
        }
        ParentId: 13640316736756420751
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 11489275323901504074
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.337499112
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.5
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
            Id: 8692862186300254979
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
        Id: 3040620736643524682
        Name: "Teardrop - Rounded"
        Transform {
          Location {
            X: 4.49172068
            Y: -0.183894873
            Z: 2.78272223
          }
          Rotation {
            Pitch: -36.7775688
            Yaw: -83.8583221
            Roll: -0.38668409
          }
          Scale {
            X: 0.0381479189
            Y: 0.0374045819
            Z: 0.066459544
          }
        }
        ParentId: 13640316736756420751
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 11489275323901504074
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.337499112
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.5
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
            Id: 8692862186300254979
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
        Id: 1486961872762672140
        Name: "Teardrop - Rounded"
        Transform {
          Location {
            X: 4.63246727
            Y: -1.84110796
            Z: 6.77223253
          }
          Rotation {
            Pitch: -16.5547523
            Yaw: -83.997
            Roll: 179.675827
          }
          Scale {
            X: 0.0429886654
            Y: 0.0391042605
            Z: 0.0884902477
          }
        }
        ParentId: 13640316736756420751
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 11489275323901504074
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.337499112
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.5
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
            Id: 8692862186300254979
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
        Id: 17730437611543215500
        Name: "Teardrop - Rounded"
        Transform {
          Location {
            X: -0.684082031
            Y: -2.01428223
            Z: 10.8504639
          }
          Rotation {
            Pitch: 5.58999729
            Yaw: -91.3086853
            Roll: 5.83479691
          }
          Scale {
            X: 0.0716146454
            Y: -0.146656319
            Z: 0.0908636078
          }
        }
        ParentId: 13640316736756420751
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 11489275323901504074
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.337499112
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.5
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
            Id: 8692862186300254979
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
        Id: 7797811696238740707
        Name: "Teardrop - Rounded"
        Transform {
          Location {
            X: -5.74293327
            Y: -1.36590385
            Z: 11.107336
          }
          Rotation {
            Pitch: 0.592197835
            Yaw: -97.2653732
            Roll: 8.18117237
          }
          Scale {
            X: 0.0609916635
            Y: 0.0484012
            Z: 0.0660590902
          }
        }
        ParentId: 13640316736756420751
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 11489275323901504074
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.337499112
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.5
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
            Id: 8692862186300254979
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
        Id: 11088980549440687906
        Name: "Teardrop - Rounded"
        Transform {
          Location {
            X: -8.16391659
            Y: 1.76903629
            Z: 3.26100016
          }
          Rotation {
            Pitch: -47.7359695
            Yaw: -120.179863
            Roll: 26.7145882
          }
          Scale {
            X: 0.0315040462
            Y: 0.0319597125
            Z: 0.0531263761
          }
        }
        ParentId: 13640316736756420751
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 11489275323901504074
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.337499112
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.5
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
            Id: 8692862186300254979
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
        Id: 13887781030996270805
        Name: "Teardrop - Rounded"
        Transform {
          Location {
            X: -7.77974129
            Y: 0.0451514721
            Z: 4.90986967
          }
          Rotation {
            Pitch: -32.5959358
            Yaw: -105.237473
            Roll: 22.291193
          }
          Scale {
            X: 0.0344603099
            Y: 0.0337888263
            Z: 0.0600351505
          }
        }
        ParentId: 13640316736756420751
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 11489275323901504074
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.337499112
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.5
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
            Id: 8692862186300254979
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
        Id: 12166586721306008423
        Name: "Teardrop - Rounded"
        Transform {
          Location {
            X: -6.77889633
            Y: -1.30336022
            Z: 8.32888794
          }
          Rotation {
            Pitch: -14.8829269
            Yaw: -104.115356
            Roll: -161.872009
          }
          Scale {
            X: 0.0426241942
            Y: 0.0355862305
            Z: 0.0827288181
          }
        }
        ParentId: 13640316736756420751
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 11489275323901504074
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.337499112
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.5
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
            Id: 8692862186300254979
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
        Id: 1747702166115236759
        Name: "Teardrop - Rounded"
        Transform {
          Location {
            X: -4.51155663
            Y: 1.19210243
            Z: 1.13875628
          }
          Rotation {
            Pitch: -52.5983124
            Yaw: -93.6884308
            Roll: 8.44067097
          }
          Scale {
            X: 0.0357879661
            Y: 0.0363055915
            Z: 0.0603505075
          }
        }
        ParentId: 13640316736756420751
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 11489275323901504074
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.337499112
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.5
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
            Id: 8692862186300254979
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
        Id: 907742583646668238
        Name: "Teardrop - Rounded"
        Transform {
          Location {
            X: -4.18093395
            Y: -0.792120337
            Z: 3.04536533
          }
          Rotation {
            Pitch: -35.607357
            Yaw: -91.0962601
            Roll: 9.14500713
          }
          Scale {
            X: 0.038396433
            Y: 0.0376482494
            Z: 0.0668924749
          }
        }
        ParentId: 13640316736756420751
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 11489275323901504074
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.337499112
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.5
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
            Id: 8692862186300254979
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
        Id: 14020536080658111008
        Name: "Teardrop - Rounded"
        Transform {
          Location {
            X: -3.55259562
            Y: -2.29300785
            Z: 7.07229185
          }
          Rotation {
            Pitch: -15.5966606
            Yaw: -87.8255
            Roll: -172.291122
          }
          Scale {
            X: 0.0442112163
            Y: 0.0402163193
            Z: 0.0910068
          }
        }
        ParentId: 13640316736756420751
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 11489275323901504074
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.337499112
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.5
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
            Id: 8692862186300254979
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
        Id: 3373998300422956489
        Name: "Teardrop - Rounded"
        Transform {
          Location {
            X: 0.20220381
            Y: -1.25442612
            Z: 2.07950282
          }
          Rotation {
            Pitch: -33.0014534
            Yaw: -83.1740875
            Roll: 0.834624887
          }
          Scale {
            X: 0.0394026414
            Y: 0.038634859
            Z: 0.0686454624
          }
        }
        ParentId: 13640316736756420751
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 11489275323901504074
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.337499112
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.5
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
            Id: 8692862186300254979
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
        Id: 14584669622937272110
        Name: "Teardrop - Rounded"
        Transform {
          Location {
            X: -0.0729511827
            Y: 0.677775
            Z: 3.65972519e-05
          }
          Rotation {
            Pitch: -54.5160866
            Yaw: -83.7017441
            Roll: 1.20620978
          }
          Scale {
            X: 0.0367258266
            Y: 0.037257012
            Z: 0.061932046
          }
        }
        ParentId: 13640316736756420751
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 11489275323901504074
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.337499112
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.5
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
            Id: 8692862186300254979
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
        Id: 1155573303807542291
        Name: "Teardrop - Rounded"
        Transform {
          Location {
            X: 0.392680883
            Y: -2.40513706
            Z: 6.35176706
          }
          Rotation {
            Pitch: -8.76391792
            Yaw: -82.8265381
            Roll: -179.293091
          }
          Scale {
            X: 0.0463436171
            Y: 0.0403972194
            Z: 0.0913988724
          }
        }
        ParentId: 13640316736756420751
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 11489275323901504074
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.337499112
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.5
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
            Id: 8692862186300254979
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
        Id: 16260531870495725876
        Name: "pelvis"
        Transform {
          Location {
            X: -3.69335842
            Y: -2.91967226e-05
            Z: 120
          }
          Rotation {
            Pitch: 7.51320767e-05
            Yaw: 7.17169532e-05
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 16626570038979758447
        ChildIds: 13121064422979580021
        ChildIds: 764501695027003492
        ChildIds: 14655112006825809863
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
        Id: 13121064422979580021
        Name: "Pelvis"
        Transform {
          Location {
            X: 3.69284701
            Y: 1.52098835
            Z: -19.881216
          }
          Rotation {
            Pitch: 7.51320767e-05
            Yaw: 179.999893
            Roll: -1.47781135e-10
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 16260531870495725876
        ChildIds: 16067263201063227830
        ChildIds: 12979040522110191468
        ChildIds: 8473355019615783637
        ChildIds: 11692130449944632182
        ChildIds: 6049499712918896313
        ChildIds: 12545946863524339910
        ChildIds: 15038189534661562038
        ChildIds: 13371695098468547391
        ChildIds: 9870121169098177746
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
          Model {
            AggressiveMerge: true
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
        Id: 16067263201063227830
        Name: "Urban Pipe Wrap 01"
        Transform {
          Location {
            X: 0.935547173
            Y: 1.52099597
            Z: 18.326889
          }
          Rotation {
            Pitch: -0.704493
            Yaw: -179.999985
            Roll: -6.3615897e-15
          }
          Scale {
            X: 1.16042054
            Y: 1.33135808
            Z: 0.500067174
          }
        }
        ParentId: 13121064422979580021
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 7082128979156015040
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 4
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 8
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.038
              G: 0.026
              B: 0.017
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
            Id: 12610149741243116648
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
        Id: 12979040522110191468
        Name: "Urban Pipe Wrap 01"
        Transform {
          Location {
            X: -6.0932622
            Y: -2.12634158
            Z: 23.2502594
          }
          Rotation {
            Pitch: 2.07598805
            Yaw: 18.6079845
            Roll: 1.37940657
          }
          Scale {
            X: 0.238718554
            Y: 0.342127323
            Z: 0.0377453044
          }
        }
        ParentId: 13121064422979580021
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 7082128979156015040
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.174439177
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.125
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.038
              G: 0.026
              B: 0.017
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
            Id: 16056750561997177580
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
        Id: 8473355019615783637
        Name: "Basic Bean 01"
        Transform {
          Location {
            X: -17.9160137
            Y: 6.78198576
            Z: 22.723587
          }
          Rotation {
            Pitch: -87.9021072
            Yaw: -37.3820076
            Roll: -141.930969
          }
          Scale {
            X: 0.0355399363
            Y: 0.019769568
            Z: 0.00515234051
          }
        }
        ParentId: 13121064422979580021
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 7082128979156015040
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.125
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 2.60346
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.038
              G: 0.026
              B: 0.017
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
        Id: 11692130449944632182
        Name: "Basic Bean 01"
        Transform {
          Location {
            X: -17.9306622
            Y: 7.72192717
            Z: 22.7042389
          }
          Rotation {
            Pitch: -87.9339752
            Yaw: -38.341217
            Roll: 134.590561
          }
          Scale {
            X: 0.0355400257
            Y: 0.00499776891
            Z: 0.0419057868
          }
        }
        ParentId: 13121064422979580021
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 7082128979156015040
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.125
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 2.60346
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.038
              G: 0.026
              B: 0.017
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
            Id: 1488213721497979136
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
        Id: 6049499712918896313
        Name: "Office Cubicle Desk Leg 01"
        Transform {
          Location {
            X: -18.3837891
            Y: 1.1818881
            Z: 24.5160217
          }
          Rotation {
            Pitch: 0.0438907929
            Yaw: -5.42587328
            Roll: 90.413765
          }
          Scale {
            X: 0.052696269
            Y: 0.0254102014
            Z: 0.0526962616
          }
        }
        ParentId: 13121064422979580021
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 5961184720642333683
            }
          }
          Overrides {
            Name: "ma:Shared_Detail1:id"
            AssetReference {
              Id: 5961184720642333683
            }
          }
          Overrides {
            Name: "ma:Shared_Detail2:id"
            AssetReference {
              Id: 5961184720642333683
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.5
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.5
          }
          Overrides {
            Name: "ma:Shared_Detail1:utile"
            Float: 0.5
          }
          Overrides {
            Name: "ma:Shared_Detail1:vtile"
            Float: 0.5
          }
          Overrides {
            Name: "ma:Shared_Detail2:utile"
            Float: 0.5
          }
          Overrides {
            Name: "ma:Shared_Detail2:vtile"
            Float: 0.5
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.74
              G: 0.74
              B: 0.74
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
            Id: 890442874131206195
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
        Id: 12545946863524339910
        Name: "Urban Pipe Wrap 01"
        Transform {
          Location {
            X: 0.480957299
            Y: 1.52099597
            Z: 11.1111298
          }
          Rotation {
            Pitch: 10.7966433
            Yaw: -179.999985
            Roll: -179.999985
          }
          Scale {
            X: 0.32250315
            Y: 0.423628122
            Z: 0.321247756
          }
        }
        ParentId: 13121064422979580021
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 7082128979156015040
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.045
              G: 0.043
              B: 0.044416111
              A: 1
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.529771745
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 1.01609552
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
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
        CoreMesh {
          MeshAsset {
            Id: 8692862186300254979
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
        Id: 15038189534661562038
        Name: "Urban Pipe Wrap 01"
        Transform {
          Location {
            X: -9.56640625
            Y: 1.52099776
            Z: 19.0383301
          }
          Rotation {
            Pitch: -5.27215433
          }
          Scale {
            X: 0.156824872
            Y: 0.311805874
            Z: 0.0331619494
          }
        }
        ParentId: 13121064422979580021
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 11489275323901504074
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 1.5788883
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.125
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.225333318
              G: 0.26
              B: 0.246843368
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
            Id: 16056750561997177580
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
        Id: 13371695098468547391
        Name: "Urban Pipe Wrap 01"
        Transform {
          Location {
            X: 11.0410156
            Y: 1.52099407
            Z: 18.1870575
          }
          Rotation {
            Pitch: -16.4724617
            Yaw: -179.999985
            Roll: -2.12267771e-13
          }
          Scale {
            X: 0.156852841
            Y: 0.29082045
            Z: 0.0363392234
          }
        }
        ParentId: 13121064422979580021
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 11489275323901504074
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 1.5788883
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.125
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.225333318
              G: 0.26
              B: 0.246843368
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
            Id: 16056750561997177580
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
        Id: 9870121169098177746
        Name: "Urban Pipe Wrap 01"
        Transform {
          Location {
            X: -1.14111304
            Y: 1.52099633
            Z: 2.60531616
          }
          Rotation {
            Pitch: 10.7965412
            Yaw: 180
          }
          Scale {
            X: 0.32250315
            Y: 0.423628122
            Z: 0.321247756
          }
        }
        ParentId: 13121064422979580021
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 7082128979156015040
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.045
              G: 0.043
              B: 0.044416111
              A: 1
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.529771745
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 1.01609552
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
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
        CoreMesh {
          MeshAsset {
            Id: 8692862186300254979
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
        Id: 764501695027003492
        Name: "Corrugated Sheet Small"
        Transform {
          Location {
            X: -19.4360352
            Y: -1.53320312
            Z: -36.595108
          }
          Rotation {
            Pitch: -6.33644104
            Yaw: 79.9162445
            Roll: -9.72255898
          }
          Scale {
            X: -0.113488525
            Y: 0.107714161
            Z: 0.184493825
          }
        }
        ParentId: 16260531870495725876
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 807038937784509847
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 3.57849
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 2.61232519
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.25
              G: 0.25
              B: 0.229000017
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
            Id: 5154493427538871909
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
        Id: 14655112006825809863
        Name: "Corrugated Sheet Small"
        Transform {
          Location {
            X: 26.4530659
            Y: -1.36260033
            Z: -37.6593742
          }
          Rotation {
            Pitch: 3.77115893
            Yaw: -80.7408829
            Roll: -12.5874033
          }
          Scale {
            X: 0.158681408
            Y: 0.14012906
            Z: 0.208142042
          }
        }
        ParentId: 16260531870495725876
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 807038937784509847
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 3.57849
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 2.61232519
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.25
              G: 0.25
              B: 0.229000017
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
            Id: 5154493427538871909
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
        Id: 1514978806860217940
        Name: "right_hip"
        Transform {
          Location {
            X: -4.9999938
            Y: 12.1261883
            Z: 109.63501
          }
          Rotation {
            Pitch: 3.17958951
            Yaw: -0.34942627
            Roll: -4.47894287
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 16626570038979758447
        ChildIds: 16951740307888810398
        ChildIds: 107635867923413228
        ChildIds: 7125986124604698358
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
        Id: 16951740307888810398
        Name: "Right Hip"
        Transform {
          Location {
            X: 3.78503752
            Y: 3.94933462
            Z: -34.4437981
          }
          Rotation {
            Pitch: 3.19712257
            Yaw: -179.899673
            Roll: -4.4664607
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 1514978806860217940
        ChildIds: 11805727763048843708
        ChildIds: 7315175135267367742
        ChildIds: 16842372239406827990
        ChildIds: 8351106662809199229
        ChildIds: 9887480746582401989
        ChildIds: 17974315527508300291
        ChildIds: 10340586662283161101
        ChildIds: 9614166714126337127
        ChildIds: 12328239600587525627
        ChildIds: 14982507366263520924
        ChildIds: 9375599328249077266
        ChildIds: 18304975208502855654
        ChildIds: 2177842911452941946
        ChildIds: 15803991300974373105
        ChildIds: 4043411910343580383
        ChildIds: 6772934777519594326
        ChildIds: 6319804250475811235
        ChildIds: 570670228290775495
        ChildIds: 963883965631759535
        ChildIds: 5919215215681274767
        ChildIds: 8576112506073933144
        ChildIds: 8046260943381897411
        ChildIds: 10981684793766547867
        ChildIds: 8352595401370463584
        ChildIds: 16026433500507261966
        ChildIds: 2242441571246607109
        ChildIds: 14710104691057478537
        ChildIds: 14792637303281410676
        ChildIds: 502159550411593353
        ChildIds: 6490002426057117440
        ChildIds: 15019890872305554468
        ChildIds: 16203224065620027762
        ChildIds: 6827745051267723025
        ChildIds: 7633840320119979636
        ChildIds: 15574978262998195022
        ChildIds: 15988105010574174777
        ChildIds: 3848649978806535364
        ChildIds: 17471002689773178669
        ChildIds: 10705200489422413735
        ChildIds: 9730320775094041934
        ChildIds: 7836748294534673267
        ChildIds: 447993033670052438
        ChildIds: 9416135026418438351
        ChildIds: 18271735972697812108
        ChildIds: 17146471608915542095
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
          Model {
            AggressiveMerge: true
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
        Id: 11805727763048843708
        Name: "Basic Bean 01"
        Transform {
          Location {
            X: -17.64991
            Y: 10.9836597
            Z: 40.6864243
          }
          Rotation {
            Pitch: 24.0775757
            Yaw: 95.1740875
            Roll: 0.520231843
          }
          Scale {
            X: 0.0228591561
            Y: 0.0203141216
            Z: 0.084142223
          }
        }
        ParentId: 16951740307888810398
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 7082128979156015040
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.038
              G: 0.026
              B: 0.017
              A: 1
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
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
        CoreMesh {
          MeshAsset {
            Id: 9161309425071896764
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
        Id: 7315175135267367742
        Name: "Basic Bean 01"
        Transform {
          Location {
            X: 0.785149693
            Y: 13.4441023
            Z: 38.9179039
          }
          Rotation {
            Pitch: 0.475039631
            Yaw: 4.96217632
            Roll: -24.0789795
          }
          Scale {
            X: 0.407461822
            Y: 0.499377668
            Z: 0.0421223454
          }
        }
        ParentId: 16951740307888810398
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 7082128979156015040
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.038
              G: 0.026
              B: 0.017
              A: 1
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
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
        CoreMesh {
          MeshAsset {
            Id: 11585801559919915394
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
        Id: 16842372239406827990
        Name: "Office Cubicle Desk Leg 01"
        Transform {
          Location {
            X: -17.5361423
            Y: 10.197773
            Z: 46.0469894
          }
          Rotation {
            Pitch: -0.649871826
            Yaw: -2.84664917
            Roll: 74.0143051
          }
          Scale {
            X: 0.0368739925
            Y: 0.0189276654
            Z: 0.0368756466
          }
        }
        ParentId: 16951740307888810398
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 5961184720642333683
            }
          }
          Overrides {
            Name: "ma:Shared_Detail1:id"
            AssetReference {
              Id: 5961184720642333683
            }
          }
          Overrides {
            Name: "ma:Shared_Detail2:id"
            AssetReference {
              Id: 5961184720642333683
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.5
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.5
          }
          Overrides {
            Name: "ma:Shared_Detail1:utile"
            Float: 0.5
          }
          Overrides {
            Name: "ma:Shared_Detail1:vtile"
            Float: 0.5
          }
          Overrides {
            Name: "ma:Shared_Detail2:utile"
            Float: 0.5
          }
          Overrides {
            Name: "ma:Shared_Detail2:vtile"
            Float: 0.5
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.74
              G: 0.74
              B: 0.74
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
            Id: 890442874131206195
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
        Id: 8351106662809199229
        Name: "Basic Bean 01"
        Transform {
          Location {
            X: 1.00438702
            Y: 13.4326286
            Z: 42.4339867
          }
          Rotation {
            Pitch: -0.254669189
            Yaw: 5.30796242
            Roll: -16.4854736
          }
          Scale {
            X: 0.377106518
            Y: 0.41886422
            Z: 0.0387273319
          }
        }
        ParentId: 16951740307888810398
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 7082128979156015040
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.038
              G: 0.026
              B: 0.017
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
            Id: 11585801559919915394
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
        Id: 9887480746582401989
        Name: "Basic Bean 01"
        Transform {
          Location {
            X: 20.1498947
            Y: 14.2652636
            Z: 41.0009155
          }
          Rotation {
            Pitch: 24.0775089
            Yaw: 95.1740952
            Roll: -179.479858
          }
          Scale {
            X: 0.0228592511
            Y: 0.020088613
            Z: 0.0841423348
          }
        }
        ParentId: 16951740307888810398
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 7082128979156015040
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.038
              G: 0.026
              B: 0.017
              A: 1
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
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
        CoreMesh {
          MeshAsset {
            Id: 9161309425071896764
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
        Id: 17974315527508300291
        Name: "Basic Bean 01"
        Transform {
          Location {
            X: 18.6166916
            Y: 14.516242
            Z: 44.1427917
          }
          Rotation {
            Pitch: 18.9207573
            Yaw: 90.6439514
            Roll: -166.903992
          }
          Scale {
            X: 0.0210168827
            Y: 0.0169992484
            Z: 0.0773630887
          }
        }
        ParentId: 16951740307888810398
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 7082128979156015040
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.038
              G: 0.026
              B: 0.017
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
            Id: 9161309425071896764
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
        Id: 10340586662283161101
        Name: "Office Cubicle Desk Leg 01"
        Transform {
          Location {
            X: 19.5488281
            Y: 14.0114746
            Z: 46.0403061
          }
          Rotation {
            Pitch: -1.92651367
            Yaw: -174.372696
            Roll: 107.493477
          }
          Scale {
            X: 0.0368739925
            Y: 0.0189276654
            Z: -0.037
          }
        }
        ParentId: 16951740307888810398
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 5961184720642333683
            }
          }
          Overrides {
            Name: "ma:Shared_Detail1:id"
            AssetReference {
              Id: 5961184720642333683
            }
          }
          Overrides {
            Name: "ma:Shared_Detail2:id"
            AssetReference {
              Id: 5961184720642333683
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.5
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.5
          }
          Overrides {
            Name: "ma:Shared_Detail1:utile"
            Float: 0.5
          }
          Overrides {
            Name: "ma:Shared_Detail1:vtile"
            Float: 0.5
          }
          Overrides {
            Name: "ma:Shared_Detail2:utile"
            Float: 0.5
          }
          Overrides {
            Name: "ma:Shared_Detail2:vtile"
            Float: 0.5
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.74
              G: 0.74
              B: 0.74
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
            Id: 890442874131206195
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
        Id: 9614166714126337127
        Name: "Office Cubicle Desk Leg 01"
        Transform {
          Location {
            X: 20.284668
            Y: 18.9353027
            Z: 45.3063278
          }
          Rotation {
            Pitch: -6.50973511
            Yaw: -161.464096
            Roll: 113.377838
          }
          Scale {
            X: 0.0368726812
            Y: 0.0261881854
            Z: -0.0471461751
          }
        }
        ParentId: 16951740307888810398
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 5961184720642333683
            }
          }
          Overrides {
            Name: "ma:Shared_Detail1:id"
            AssetReference {
              Id: 5961184720642333683
            }
          }
          Overrides {
            Name: "ma:Shared_Detail2:id"
            AssetReference {
              Id: 5961184720642333683
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.5
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.5
          }
          Overrides {
            Name: "ma:Shared_Detail1:utile"
            Float: 0.5
          }
          Overrides {
            Name: "ma:Shared_Detail1:vtile"
            Float: 0.5
          }
          Overrides {
            Name: "ma:Shared_Detail2:utile"
            Float: 0.5
          }
          Overrides {
            Name: "ma:Shared_Detail2:vtile"
            Float: 0.5
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.74
              G: 0.74
              B: 0.74
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
            Id: 890442874131206195
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
        Id: 12328239600587525627
        Name: "Office Cubicle Desk Leg 01"
        Transform {
          Location {
            X: 18.0800781
            Y: 24.8198242
            Z: 45.8604813
          }
          Rotation {
            Pitch: -8.86669922
            Yaw: -155.867294
            Roll: 112.627525
          }
          Scale {
            X: 0.00269598677
            Y: 0.0386657789
            Z: -0.0252374355
          }
        }
        ParentId: 16951740307888810398
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 7082128979156015040
            }
          }
          Overrides {
            Name: "ma:Shared_Detail1:id"
            AssetReference {
              Id: 5961184720642333683
            }
          }
          Overrides {
            Name: "ma:Shared_Detail2:id"
            AssetReference {
              Id: 5961184720642333683
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.5
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.5
          }
          Overrides {
            Name: "ma:Shared_Detail1:utile"
            Float: 0.5
          }
          Overrides {
            Name: "ma:Shared_Detail1:vtile"
            Float: 0.5
          }
          Overrides {
            Name: "ma:Shared_Detail2:utile"
            Float: 0.5
          }
          Overrides {
            Name: "ma:Shared_Detail2:vtile"
            Float: 0.5
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.038
              G: 0.026
              B: 0.017
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
            Id: 1751008683233857052
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
        Id: 14982507366263520924
        Name: "Office Cubicle Desk Leg 01"
        Transform {
          Location {
            X: 19.5327148
            Y: 22.0064697
            Z: 44.6386948
          }
          Rotation {
            Pitch: -6.50973511
            Yaw: -161.464081
            Roll: 113.377907
          }
          Scale {
            X: 0.00269693229
            Y: 0.0400385782
            Z: -0.0471454524
          }
        }
        ParentId: 16951740307888810398
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 7082128979156015040
            }
          }
          Overrides {
            Name: "ma:Shared_Detail1:id"
            AssetReference {
              Id: 5961184720642333683
            }
          }
          Overrides {
            Name: "ma:Shared_Detail2:id"
            AssetReference {
              Id: 5961184720642333683
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.5
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.5
          }
          Overrides {
            Name: "ma:Shared_Detail1:utile"
            Float: 0.5
          }
          Overrides {
            Name: "ma:Shared_Detail1:vtile"
            Float: 0.5
          }
          Overrides {
            Name: "ma:Shared_Detail2:utile"
            Float: 0.5
          }
          Overrides {
            Name: "ma:Shared_Detail2:vtile"
            Float: 0.5
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.038
              G: 0.026
              B: 0.017
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
            Id: 1751008683233857052
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
        Id: 9375599328249077266
        Name: "Basic Bean 01"
        Transform {
          Location {
            X: -16.8935642
            Y: 11.0913267
            Z: 44.5091782
          }
          Rotation {
            Pitch: 16.3428459
            Yaw: 88.382309
            Roll: -2.20327759
          }
          Scale {
            X: 0.0194808468
            Y: 0.0157667678
            Z: 0.0706869662
          }
        }
        ParentId: 16951740307888810398
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 7082128979156015040
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.038
              G: 0.026
              B: 0.017
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
            Id: 9161309425071896764
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
        Id: 18304975208502855654
        Name: "Fantasy Sack Tied"
        Transform {
          Location {
            X: -2.45263886
            Y: 8.45606422
            Z: 29.7109509
          }
          Rotation {
            Pitch: 6.76155233
            Yaw: -1.07556117
            Roll: -172.53302
          }
          Scale {
            X: 0.412967771
            Y: 0.256184459
            Z: 0.344098449
          }
        }
        ParentId: 16951740307888810398
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 7082128979156015040
            }
          }
          Overrides {
            Name: "ma:Shared_Detail1:id"
            AssetReference {
              Id: 7082128979156015040
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.045
              G: 0.043
              B: 0.044416111
              A: 1
            }
          }
          Overrides {
            Name: "ma:Shared_Detail1:color"
            Color {
              R: 0.045
              G: 0.043
              B: 0.044416111
              A: 1
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.735893667
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 1.60108674
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
        CoreMesh {
          MeshAsset {
            Id: 581308431536911762
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
        Id: 2177842911452941946
        Name: "Sphere"
        Transform {
          Location {
            X: 0.711915553
            Y: 4.30017042
            Z: 6.5396689e-06
          }
          Rotation {
            Pitch: 7.16751146
            Yaw: 4.22593689
            Roll: 10.6238947
          }
          Scale {
            X: 0.230533168
            Y: 0.199962661
            Z: 0.115028858
          }
        }
        ParentId: 16951740307888810398
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 7082128979156015040
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.045
              G: 0.043
              B: 0.044416111
              A: 1
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 1
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.5
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
            Id: 916665379155427451
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
        Id: 15803991300974373105
        Name: "Urban Vehicle Car - Windshield 01"
        Transform {
          Location {
            X: -16.1655293
            Y: 4.04102659
            Z: 19.5306435
          }
          Rotation {
            Pitch: 38.4749107
            Yaw: -170.887634
            Roll: 170.335236
          }
          Scale {
            X: 0.166433752
            Y: 0.0860072151
            Z: 0.225094482
          }
        }
        ParentId: 16951740307888810398
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 2018227301497757374
            }
          }
          Overrides {
            Name: "ma:Shared_Detail1:id"
            AssetReference {
              Id: 2018227301497757374
            }
          }
          Overrides {
            Name: "ma:Shared_Detail2:id"
            AssetReference {
              Id: 2018227301497757374
            }
          }
          Overrides {
            Name: "ma:Shared_Detail3:id"
            AssetReference {
              Id: 7082128979156015040
            }
          }
          Overrides {
            Name: "ma:Shared_Detail3:utile"
            Float: 0.758593738
          }
          Overrides {
            Name: "ma:Shared_Detail3:vtile"
            Float: 1.21865642
          }
          Overrides {
            Name: "ma:Shared_Detail3:color"
            Color {
              R: 0.042
              G: 0.0328
              B: 0.024
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
            Id: 5035333608653009594
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
        Id: 4043411910343580383
        Name: "Sphere"
        Transform {
          Location {
            X: 20.7348633
            Y: 2.94042969
            Z: 9.31078339
          }
          Rotation {
            Pitch: 18.9240971
            Yaw: -9.9854784
            Roll: 97.576622
          }
          Scale {
            X: 0.0108329533
            Y: -0.0168564487
            Z: 0.0168559644
          }
        }
        ParentId: 16951740307888810398
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 4060778856531270988
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.35
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.35
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
            Id: 12434974458467685788
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
        Id: 6772934777519594326
        Name: "Urban Vehicle Car - Windshield 01"
        Transform {
          Location {
            X: -11.3925838
            Y: -4.8205452
            Z: 27.044342
          }
          Rotation {
            Pitch: -28.0739746
            Yaw: -123.732841
            Roll: -0.584866047
          }
          Scale {
            X: 0.173538849
            Y: 0.118492007
            Z: 0.238871381
          }
        }
        ParentId: 16951740307888810398
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 2018227301497757374
            }
          }
          Overrides {
            Name: "ma:Shared_Detail1:id"
            AssetReference {
              Id: 2018227301497757374
            }
          }
          Overrides {
            Name: "ma:Shared_Detail2:id"
            AssetReference {
              Id: 2018227301497757374
            }
          }
          Overrides {
            Name: "ma:Shared_Detail3:id"
            AssetReference {
              Id: 2486353801458828990
            }
          }
          Overrides {
            Name: "ma:Shared_Detail3:utile"
            Float: 0.758593738
          }
          Overrides {
            Name: "ma:Shared_Detail3:vtile"
            Float: 1.21865642
          }
          Overrides {
            Name: "ma:Shared_Detail3:color"
            Color {
              R: 0.13
              G: 0.14
              B: 0.13
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
            Id: 5035333608653009594
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
        Id: 6319804250475811235
        Name: "Urban Vehicle Car - Windshield 01"
        Transform {
          Location {
            X: 14.8837833
            Y: -3.55077887
            Z: 26.8851662
          }
          Rotation {
            Pitch: -28.4837456
            Yaw: -51.0946426
            Roll: 1.21789145
          }
          Scale {
            X: 0.173538849
            Y: 0.118492007
            Z: 0.238871381
          }
        }
        ParentId: 16951740307888810398
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 2018227301497757374
            }
          }
          Overrides {
            Name: "ma:Shared_Detail1:id"
            AssetReference {
              Id: 2018227301497757374
            }
          }
          Overrides {
            Name: "ma:Shared_Detail2:id"
            AssetReference {
              Id: 2018227301497757374
            }
          }
          Overrides {
            Name: "ma:Shared_Detail3:id"
            AssetReference {
              Id: 2486353801458828990
            }
          }
          Overrides {
            Name: "ma:Shared_Detail3:utile"
            Float: 0.758593738
          }
          Overrides {
            Name: "ma:Shared_Detail3:vtile"
            Float: 1.21865642
          }
          Overrides {
            Name: "ma:Shared_Detail3:color"
            Color {
              R: 0.13
              G: 0.14
              B: 0.13
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
            Id: 5035333608653009594
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
        Id: 570670228290775495
        Name: "Urban Vehicle Car - Windshield 01"
        Transform {
          Location {
            X: 14.586421
            Y: -5.26879835
            Z: 19.8241386
          }
          Rotation {
            Pitch: -28.4837456
            Yaw: -51.0946426
            Roll: 1.21789145
          }
          Scale {
            X: 0.173538849
            Y: 0.118492007
            Z: 0.238871381
          }
        }
        ParentId: 16951740307888810398
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 2018227301497757374
            }
          }
          Overrides {
            Name: "ma:Shared_Detail1:id"
            AssetReference {
              Id: 2018227301497757374
            }
          }
          Overrides {
            Name: "ma:Shared_Detail2:id"
            AssetReference {
              Id: 2018227301497757374
            }
          }
          Overrides {
            Name: "ma:Shared_Detail3:id"
            AssetReference {
              Id: 2486353801458828990
            }
          }
          Overrides {
            Name: "ma:Shared_Detail3:utile"
            Float: 0.758593738
          }
          Overrides {
            Name: "ma:Shared_Detail3:vtile"
            Float: 1.21865642
          }
          Overrides {
            Name: "ma:Shared_Detail3:color"
            Color {
              R: 0.13
              G: 0.14
              B: 0.13
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
            Id: 5035333608653009594
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
        Id: 963883965631759535
        Name: "Urban Vehicle Car - Windshield 01"
        Transform {
          Location {
            X: -11.6904354
            Y: -6.53868675
            Z: 19.9833145
          }
          Rotation {
            Pitch: -28.0739746
            Yaw: -123.732841
            Roll: -0.584866047
          }
          Scale {
            X: 0.173538849
            Y: 0.118492007
            Z: 0.238871381
          }
        }
        ParentId: 16951740307888810398
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 2018227301497757374
            }
          }
          Overrides {
            Name: "ma:Shared_Detail1:id"
            AssetReference {
              Id: 2018227301497757374
            }
          }
          Overrides {
            Name: "ma:Shared_Detail2:id"
            AssetReference {
              Id: 2018227301497757374
            }
          }
          Overrides {
            Name: "ma:Shared_Detail3:id"
            AssetReference {
              Id: 2486353801458828990
            }
          }
          Overrides {
            Name: "ma:Shared_Detail3:utile"
            Float: 0.758593738
          }
          Overrides {
            Name: "ma:Shared_Detail3:vtile"
            Float: 1.21865642
          }
          Overrides {
            Name: "ma:Shared_Detail3:color"
            Color {
              R: 0.13
              G: 0.14
              B: 0.13
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
            Id: 5035333608653009594
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
        Id: 5919215215681274767
        Name: "Urban Vehicle Car - Windshield 01"
        Transform {
          Location {
            X: -11.8881884
            Y: -7.80211639
            Z: 12.7682571
          }
          Rotation {
            Pitch: -28.0739746
            Yaw: -123.732841
            Roll: -0.584866047
          }
          Scale {
            X: 0.173538849
            Y: 0.118492007
            Z: 0.238871381
          }
        }
        ParentId: 16951740307888810398
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 2018227301497757374
            }
          }
          Overrides {
            Name: "ma:Shared_Detail1:id"
            AssetReference {
              Id: 2018227301497757374
            }
          }
          Overrides {
            Name: "ma:Shared_Detail2:id"
            AssetReference {
              Id: 2018227301497757374
            }
          }
          Overrides {
            Name: "ma:Shared_Detail3:id"
            AssetReference {
              Id: 2486353801458828990
            }
          }
          Overrides {
            Name: "ma:Shared_Detail3:utile"
            Float: 0.758593738
          }
          Overrides {
            Name: "ma:Shared_Detail3:vtile"
            Float: 1.21865642
          }
          Overrides {
            Name: "ma:Shared_Detail3:color"
            Color {
              R: 0.13
              G: 0.14
              B: 0.13
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
            Id: 5035333608653009594
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
        Id: 8576112506073933144
        Name: "Urban Vehicle Car - Windshield 01"
        Transform {
          Location {
            X: 14.3881788
            Y: -6.53222799
            Z: 12.6090889
          }
          Rotation {
            Pitch: -28.4837456
            Yaw: -51.0946426
            Roll: 1.21789145
          }
          Scale {
            X: 0.173538849
            Y: 0.118492007
            Z: 0.238871381
          }
        }
        ParentId: 16951740307888810398
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 2018227301497757374
            }
          }
          Overrides {
            Name: "ma:Shared_Detail1:id"
            AssetReference {
              Id: 2018227301497757374
            }
          }
          Overrides {
            Name: "ma:Shared_Detail2:id"
            AssetReference {
              Id: 2018227301497757374
            }
          }
          Overrides {
            Name: "ma:Shared_Detail3:id"
            AssetReference {
              Id: 2486353801458828990
            }
          }
          Overrides {
            Name: "ma:Shared_Detail3:utile"
            Float: 0.758593738
          }
          Overrides {
            Name: "ma:Shared_Detail3:vtile"
            Float: 1.21865642
          }
          Overrides {
            Name: "ma:Shared_Detail3:color"
            Color {
              R: 0.13
              G: 0.14
              B: 0.13
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
            Id: 5035333608653009594
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
        Id: 8046260943381897411
        Name: "Urban Vehicle Car - Windshield 01"
        Transform {
          Location {
            X: 14.2197227
            Y: -8.18152237
            Z: 3.97443867
          }
          Rotation {
            Pitch: -29.9339027
            Yaw: -50.1022835
            Roll: -0.816875517
          }
          Scale {
            X: 0.173538849
            Y: 0.118492007
            Z: 0.238871381
          }
        }
        ParentId: 16951740307888810398
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 2018227301497757374
            }
          }
          Overrides {
            Name: "ma:Shared_Detail1:id"
            AssetReference {
              Id: 2018227301497757374
            }
          }
          Overrides {
            Name: "ma:Shared_Detail2:id"
            AssetReference {
              Id: 2018227301497757374
            }
          }
          Overrides {
            Name: "ma:Shared_Detail3:id"
            AssetReference {
              Id: 2486353801458828990
            }
          }
          Overrides {
            Name: "ma:Shared_Detail3:utile"
            Float: 0.758593738
          }
          Overrides {
            Name: "ma:Shared_Detail3:vtile"
            Float: 1.21865642
          }
          Overrides {
            Name: "ma:Shared_Detail3:color"
            Color {
              R: 0.13
              G: 0.14
              B: 0.13
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
            Id: 5035333608653009594
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
        Id: 10981684793766547867
        Name: "Urban Vehicle Car - Windshield 01"
        Transform {
          Location {
            X: -12.057621
            Y: -9.45226574
            Z: 3.87642741
          }
          Rotation {
            Pitch: -30.1906033
            Yaw: -124.224945
            Roll: 0.424157947
          }
          Scale {
            X: 0.173538849
            Y: 0.118492007
            Z: 0.238871381
          }
        }
        ParentId: 16951740307888810398
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 2018227301497757374
            }
          }
          Overrides {
            Name: "ma:Shared_Detail1:id"
            AssetReference {
              Id: 2018227301497757374
            }
          }
          Overrides {
            Name: "ma:Shared_Detail2:id"
            AssetReference {
              Id: 2018227301497757374
            }
          }
          Overrides {
            Name: "ma:Shared_Detail3:id"
            AssetReference {
              Id: 2486353801458828990
            }
          }
          Overrides {
            Name: "ma:Shared_Detail3:utile"
            Float: 0.758593738
          }
          Overrides {
            Name: "ma:Shared_Detail3:vtile"
            Float: 1.21865642
          }
          Overrides {
            Name: "ma:Shared_Detail3:color"
            Color {
              R: 0.13
              G: 0.14
              B: 0.13
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
            Id: 5035333608653009594
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
        Id: 8352595401370463584
        Name: "Sphere"
        Transform {
          Location {
            X: -19.6821289
            Y: 0.84765625
            Z: 8.96954346
          }
          Rotation {
            Pitch: -18.1563969
            Yaw: 24.9247475
            Roll: 88.8469086
          }
          Scale {
            X: 0.0108329533
            Y: -0.0168564487
            Z: 0.0168559644
          }
        }
        ParentId: 16951740307888810398
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 4060778856531270988
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.35
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.35
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
            Id: 12434974458467685788
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
        Id: 16026433500507261966
        Name: "Sphere"
        Transform {
          Location {
            X: -19.4624023
            Y: 2.6809082
            Z: 17.323555
          }
          Rotation {
            Pitch: -15.8608522
            Yaw: 15.6092625
            Roll: 91.7533493
          }
          Scale {
            X: 0.0108329533
            Y: -0.0168564487
            Z: 0.0168559644
          }
        }
        ParentId: 16951740307888810398
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 4060778856531270988
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.35
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.35
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
            Id: 12434974458467685788
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
        Id: 2242441571246607109
        Name: "Sphere"
        Transform {
          Location {
            X: -19.3022461
            Y: 4.22912598
            Z: 24.7216797
          }
          Rotation {
            Pitch: -18.1580906
            Yaw: 17.6565552
            Roll: 90.6027374
          }
          Scale {
            X: 0.0108329533
            Y: -0.0168564487
            Z: 0.0168559644
          }
        }
        ParentId: 16951740307888810398
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 4060778856531270988
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.35
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.35
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
            Id: 12434974458467685788
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
        Id: 14710104691057478537
        Name: "Sphere"
        Transform {
          Location {
            X: -18.909668
            Y: 5.88696289
            Z: 31.8538513
          }
          Rotation {
            Pitch: -16.6621704
            Yaw: 26.9628353
            Roll: 87.7060242
          }
          Scale {
            X: 0.0108329533
            Y: -0.0168564487
            Z: 0.0168559644
          }
        }
        ParentId: 16951740307888810398
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 4060778856531270988
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.35
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.35
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
            Id: 12434974458467685788
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
        Id: 14792637303281410676
        Name: "Sphere"
        Transform {
          Location {
            X: 21.4111328
            Y: 7.79333496
            Z: 31.538147
          }
          Rotation {
            Pitch: 17.4913
            Yaw: -19.6541405
            Roll: 94.5003891
          }
          Scale {
            X: 0.0108329533
            Y: -0.0168564487
            Z: 0.0168559644
          }
        }
        ParentId: 16951740307888810398
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 4060778856531270988
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.35
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.35
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
            Id: 12434974458467685788
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
        Id: 502159550411593353
        Name: "Sphere"
        Transform {
          Location {
            X: 21.1162109
            Y: 6.12268066
            Z: 24.4098282
          }
          Rotation {
            Pitch: 18.2254238
            Yaw: -11.666132
            Roll: 96.9990387
          }
          Scale {
            X: 0.0108329533
            Y: -0.0168564487
            Z: 0.0168559644
          }
        }
        ParentId: 16951740307888810398
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 4060778856531270988
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.35
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.35
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
            Id: 12434974458467685788
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
        Id: 6490002426057117440
        Name: "Sphere"
        Transform {
          Location {
            X: 20.949707
            Y: 4.84863281
            Z: 17.4014282
          }
          Rotation {
            Pitch: 20.2466202
            Yaw: -11.4018488
            Roll: 97.0862503
          }
          Scale {
            X: 0.0108329533
            Y: -0.0168564487
            Z: 0.0168559644
          }
        }
        ParentId: 16951740307888810398
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 4060778856531270988
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.35
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.35
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
            Id: 12434974458467685788
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
        Id: 15019890872305554468
        Name: "Lathe Simple "
        Transform {
          Location {
            X: -7.47753477
            Y: 0.830443144
            Z: -15.3073292
          }
          Rotation {
            Pitch: 70.2778778
            Yaw: 159.128021
            Roll: -28.2392445
          }
          Scale {
            X: 0.367971241
            Y: 0.194676474
            Z: 0.124183781
          }
        }
        ParentId: 16951740307888810398
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 11489275323901504074
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 1
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
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
        EditorIndicatorVisibility {
          Value: "mc:eindicatorvisibility:visiblewhenselected"
        }
        CoreMesh {
          MeshAsset {
            Id: 2092839297938637125
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
        Id: 16203224065620027762
        Name: "Lathe Simple "
        Transform {
          Location {
            X: -1.82421529
            Y: 1.25439215
            Z: -11.5244226
          }
          Rotation {
            Pitch: 21.70117
            Yaw: 178.993912
            Roll: -96.7973251
          }
          Scale {
            X: 0.231415927
            Y: 0.2832838
            Z: 0.127112478
          }
        }
        ParentId: 16951740307888810398
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 11489275323901504074
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 1
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
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
        EditorIndicatorVisibility {
          Value: "mc:eindicatorvisibility:visiblewhenselected"
        }
        CoreMesh {
          MeshAsset {
            Id: 7511473365680159662
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
        Id: 6827745051267723025
        Name: "Lathe Simple "
        Transform {
          Location {
            X: -2.36181259
            Y: 1.97533941
            Z: -12.0094385
          }
          Rotation {
            Pitch: 27.1580334
            Yaw: -155.843597
            Roll: -107.086388
          }
          Scale {
            X: 0.231418714
            Y: 0.273196548
            Z: 0.127112985
          }
        }
        ParentId: 16951740307888810398
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 11489275323901504074
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 1
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
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
        EditorIndicatorVisibility {
          Value: "mc:eindicatorvisibility:visiblewhenselected"
        }
        CoreMesh {
          MeshAsset {
            Id: 7511473365680159662
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
        Id: 7633840320119979636
        Name: "Lathe Simple "
        Transform {
          Location {
            X: -3.96581674
            Y: 1.23693681
            Z: -12.0214319
          }
          Rotation {
            Pitch: 34.5655518
            Yaw: -132.904114
            Roll: -114.853615
          }
          Scale {
            X: 0.215109423
            Y: 0.256960422
            Z: 0.127120584
          }
        }
        ParentId: 16951740307888810398
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 11489275323901504074
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 1
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
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
        EditorIndicatorVisibility {
          Value: "mc:eindicatorvisibility:visiblewhenselected"
        }
        CoreMesh {
          MeshAsset {
            Id: 7511473365680159662
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
        Id: 15574978262998195022
        Name: "Lathe Simple "
        Transform {
          Location {
            X: -5.47021484
            Y: 1.89562988
            Z: -11.2354813
          }
          Rotation {
            Pitch: 19.8519917
            Yaw: 133.860214
            Roll: 104.737083
          }
          Scale {
            X: 0.18787913
            Y: -0.277768791
            Z: 0.127126083
          }
        }
        ParentId: 16951740307888810398
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 11489275323901504074
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 1
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
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
        EditorIndicatorVisibility {
          Value: "mc:eindicatorvisibility:visiblewhenselected"
        }
        CoreMesh {
          MeshAsset {
            Id: 7511473365680159662
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
        Id: 15988105010574174777
        Name: "Lathe Simple "
        Transform {
          Location {
            X: -2.54785156
            Y: 1.17004395
            Z: -11.7357788
          }
          Rotation {
            Pitch: 21.5825214
            Yaw: 157.717667
            Roll: 92.8956146
          }
          Scale {
            X: 0.231412292
            Y: -0.282157749
            Z: 0.127109498
          }
        }
        ParentId: 16951740307888810398
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 11489275323901504074
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 1
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
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
        EditorIndicatorVisibility {
          Value: "mc:eindicatorvisibility:visiblewhenselected"
        }
        CoreMesh {
          MeshAsset {
            Id: 7511473365680159662
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
        Id: 3848649978806535364
        Name: "Wedge - Corner Complex"
        Transform {
          Location {
            X: -9.09618473
            Y: -0.963016629
            Z: -27.6041126
          }
          Rotation {
            Pitch: -8.32313156
            Yaw: 95.0598907
            Roll: 141.055878
          }
          Scale {
            X: 0.185986817
            Y: 0.0968844369
            Z: 0.195134312
          }
        }
        ParentId: 16951740307888810398
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 11489275323901504074
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.696631253
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
            Id: 16383387032370848731
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
        Id: 17471002689773178669
        Name: "Urban Vehicle Accessory - Sedan Fenderflare 02"
        Transform {
          Location {
            X: -13.0566387
            Y: 1.3822062
            Z: -4.6318779
          }
          Rotation {
            Pitch: -6.82090664
            Yaw: 95.8795
            Roll: 98.3428192
          }
          Scale {
            X: 0.134461164
            Y: 0.142276898
            Z: 0.0550632477
          }
        }
        ParentId: 16951740307888810398
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 11489275323901504074
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
            Id: 18119351551008849317
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
        Id: 10705200489422413735
        Name: "Teardrop - Rounded"
        Transform {
          Location {
            X: 1.50195611
            Y: 3.0662818
            Z: -6.72939348
          }
          Rotation {
            Pitch: -9.00259209
            Yaw: 88.8205109
            Roll: -177.043533
          }
          Scale {
            X: 0.206972823
            Y: 0.239550114
            Z: 0.0246976726
          }
        }
        ParentId: 16951740307888810398
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 7082128979156015040
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.0580000021
              G: 0.0396842398
              B: 0.0248298701
              A: 1
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.392233491
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.125
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
            Id: 916665379155427451
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
        Id: 9730320775094041934
        Name: "Sphere"
        Transform {
          Location {
            X: 2.26367569
            Y: 1.97521544
            Z: -12.4227448
          }
          Rotation {
            Pitch: 15.0242977
            Yaw: 5.87634563
            Roll: 11.8170052
          }
          Scale {
            X: 0.234976247
            Y: 0.203816548
            Z: 0.117245816
          }
        }
        ParentId: 16951740307888810398
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 7082128979156015040
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.046
              G: 0.0328
              B: 0.024
              A: 1
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 1
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.5
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
            Id: 4914364069940318769
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
        Id: 7836748294534673267
        Name: "Teardrop - Rounded"
        Transform {
          Location {
            X: 4.21436071
            Y: 1.12365031
            Z: -19.1337051
          }
          Rotation {
            Pitch: -6.92007399
            Yaw: 88.9289
            Roll: -165.7509
          }
          Scale {
            X: 0.188697979
            Y: 0.228289008
            Z: 0.0246978253
          }
        }
        ParentId: 16951740307888810398
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 7082128979156015040
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.0580000021
              G: 0.0396842398
              B: 0.0248298701
              A: 1
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.392233491
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.125
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
            Id: 916665379155427451
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
        Id: 447993033670052438
        Name: "Office Cubicle Desk Leg 01"
        Transform {
          Location {
            X: -4.74804688
            Y: 11.3209229
            Z: -9.9419632
          }
          Rotation {
            Pitch: 8.50068188
            Yaw: -50.2445564
            Roll: 93.2189941
          }
          Scale {
            X: 0.0298129953
            Y: -0.0230000019
            Z: -0.0393340848
          }
        }
        ParentId: 16951740307888810398
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 11489275323901504074
            }
          }
          Overrides {
            Name: "ma:Shared_Detail1:id"
            AssetReference {
              Id: 11489275323901504074
            }
          }
          Overrides {
            Name: "ma:Shared_Detail2:id"
            AssetReference {
              Id: 11489275323901504074
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.5
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.5
          }
          Overrides {
            Name: "ma:Shared_Detail1:utile"
            Float: 0.5
          }
          Overrides {
            Name: "ma:Shared_Detail1:vtile"
            Float: 0.5
          }
          Overrides {
            Name: "ma:Shared_Detail2:utile"
            Float: 0.5
          }
          Overrides {
            Name: "ma:Shared_Detail2:vtile"
            Float: 0.5
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
            Id: 890442874131206195
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
        Id: 9416135026418438351
        Name: "Office Cubicle Desk Leg 01"
        Transform {
          Location {
            X: -0.650390625
            Y: 8.88964844
            Z: -23.0082321
          }
          Rotation {
            Pitch: 15.0543299
            Yaw: -52.9235497
            Roll: 83.5213852
          }
          Scale {
            X: 0.0298155826
            Y: -0.0230000019
            Z: -0.0393295176
          }
        }
        ParentId: 16951740307888810398
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 11489275323901504074
            }
          }
          Overrides {
            Name: "ma:Shared_Detail1:id"
            AssetReference {
              Id: 11489275323901504074
            }
          }
          Overrides {
            Name: "ma:Shared_Detail2:id"
            AssetReference {
              Id: 11489275323901504074
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.5
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.5
          }
          Overrides {
            Name: "ma:Shared_Detail1:utile"
            Float: 0.5
          }
          Overrides {
            Name: "ma:Shared_Detail1:vtile"
            Float: 0.5
          }
          Overrides {
            Name: "ma:Shared_Detail2:utile"
            Float: 0.5
          }
          Overrides {
            Name: "ma:Shared_Detail2:vtile"
            Float: 0.5
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
            Id: 890442874131206195
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
        Id: 18271735972697812108
        Name: "Sphere"
        Transform {
          Location {
            X: 0.876943946
            Y: 10.1519899
            Z: 44.3579979
          }
          Rotation {
            Pitch: 2.04905664e-05
            Yaw: -3.05175781e-05
            Roll: 11.7384062
          }
          Scale {
            X: 0.323084384
            Y: 0.246242315
            Z: 0.081696406
          }
        }
        ParentId: 16951740307888810398
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 7082128979156015040
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.045
              G: 0.043
              B: 0.044416111
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
            Id: 12434974458467685788
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
        Id: 17146471608915542095
        Name: "Office Cubicle Desk Leg 01"
        Transform {
          Location {
            X: 19.5336914
            Y: 16.4090576
            Z: 45.3442307
          }
          Rotation {
            Pitch: -0.648651123
            Yaw: -174.717117
            Roll: 107.398666
          }
          Scale {
            X: 0.00212987629
            Y: 0.0303708427
            Z: -0.037320368
          }
        }
        ParentId: 16951740307888810398
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 7082128979156015040
            }
          }
          Overrides {
            Name: "ma:Shared_Detail1:id"
            AssetReference {
              Id: 5961184720642333683
            }
          }
          Overrides {
            Name: "ma:Shared_Detail2:id"
            AssetReference {
              Id: 5961184720642333683
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.5
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.5
          }
          Overrides {
            Name: "ma:Shared_Detail1:utile"
            Float: 0.5
          }
          Overrides {
            Name: "ma:Shared_Detail1:vtile"
            Float: 0.5
          }
          Overrides {
            Name: "ma:Shared_Detail2:utile"
            Float: 0.5
          }
          Overrides {
            Name: "ma:Shared_Detail2:vtile"
            Float: 0.5
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.038
              G: 0.026
              B: 0.017
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
            Id: 1751008683233857052
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
        Id: 107635867923413228
        Name: "Corrugated Sheet Small"
        Transform {
          Location {
            X: -8.71630859
            Y: -2.32531738
            Z: 11.8094597
          }
          Rotation {
            Pitch: -9.77601528
            Yaw: 57.7805557
            Roll: -9.93252754
          }
          Scale {
            X: 0.100384451
            Y: -0.0929983556
            Z: -0.358837783
          }
        }
        ParentId: 1514978806860217940
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 807038937784509847
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 3.57849
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 4.90198946
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.25
              G: 0.25
              B: 0.229000017
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
            Id: 17656495108824350163
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
        Id: 7125986124604698358
        Name: "Corrugated Sheet Small"
        Transform {
          Location {
            X: 17.9760742
            Y: -0.66015625
            Z: 9.93966293
          }
          Rotation {
            Pitch: 7.25389957
            Yaw: -60.7575607
            Roll: -8.28027
          }
          Scale {
            X: -0.100383289
            Y: -0.0930046812
            Z: -0.363071591
          }
        }
        ParentId: 1514978806860217940
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 807038937784509847
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 3.57849
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 4.90198946
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.25
              G: 0.25
              B: 0.229000017
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
            Id: 17656495108824350163
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
        Id: 8480731776625712631
        Name: "left_hip"
        Transform {
          Location {
            X: -5.00000238
            Y: -12.3759403
            Z: 109.394
          }
          Rotation {
            Pitch: 3.17944598
            Yaw: 0.34948045
            Roll: 4.47926426
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 16626570038979758447
        ChildIds: 13751931701776616909
        ChildIds: 10688717490000997547
        ChildIds: 15867297060079959710
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
        Id: 13751931701776616909
        Name: "Left Hip"
        Transform {
          Location {
            X: 5.42661047
            Y: -3.39236259
            Z: -62.2440338
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 8480731776625712631
        ChildIds: 3917591793156809618
        ChildIds: 12382290429712799011
        ChildIds: 2722336006290178688
        ChildIds: 10125934784032421949
        ChildIds: 3263390748912703709
        ChildIds: 16244600155064136299
        ChildIds: 3112435931677296304
        ChildIds: 4709567996856432422
        ChildIds: 8096965397014493292
        ChildIds: 4515477354182499805
        ChildIds: 1582356398971860335
        ChildIds: 16583960759017698800
        ChildIds: 9228143707564477952
        ChildIds: 13903574335901297470
        ChildIds: 13546243506438618168
        ChildIds: 150871339250716633
        ChildIds: 813714395221337298
        ChildIds: 16741677141694730171
        ChildIds: 10616477248168538054
        ChildIds: 13215571560156514369
        ChildIds: 13891864429110364737
        ChildIds: 8666413705626587537
        ChildIds: 15863435902044648915
        ChildIds: 5633340351412745108
        ChildIds: 4919699658735571510
        ChildIds: 4058669528463327573
        ChildIds: 18421189116739877400
        ChildIds: 4064448082468153533
        ChildIds: 3687443996069216238
        ChildIds: 11647798545726593921
        ChildIds: 1749104968453720348
        ChildIds: 16485854454430680563
        ChildIds: 13087407002517911804
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
          Model {
            AggressiveMerge: true
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
        Id: 3917591793156809618
        Name: "Teardrop - Rounded"
        Transform {
          Location {
            X: -3.48144531
            Y: 3.25769043
            Z: 21.6832886
          }
          Rotation {
            Pitch: -4.46451855
            Yaw: 91.3197098
            Roll: 173.929565
          }
          Scale {
            X: 0.206972823
            Y: -0.239550114
            Z: 0.0246976726
          }
        }
        ParentId: 13751931701776616909
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 7082128979156015040
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.0580000021
              G: 0.0396842398
              B: 0.0248298701
              A: 1
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.392233491
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.125
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
            Id: 916665379155427451
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
        Id: 12382290429712799011
        Name: "Sphere"
        Transform {
          Location {
            X: -4.56445312
            Y: 2.61523438
            Z: 15.9736328
          }
          Rotation {
            Pitch: 18.6210823
            Yaw: 175.154434
            Roll: -7.48138666
          }
          Scale {
            X: 0.234976247
            Y: -0.203816548
            Z: 0.117245816
          }
        }
        ParentId: 13751931701776616909
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 7082128979156015040
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.046
              G: 0.0328
              B: 0.024
              A: 1
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 1
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.5
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
            Id: 4914364069940318769
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
        Id: 2722336006290178688
        Name: "Teardrop - Rounded"
        Transform {
          Location {
            X: -6.88867188
            Y: 2.29296875
            Z: 9.33609
          }
          Rotation {
            Pitch: -2.39092135
            Yaw: 91.0989914
            Roll: 162.635132
          }
          Scale {
            X: 0.188697979
            Y: -0.228289008
            Z: 0.0246978253
          }
        }
        ParentId: 13751931701776616909
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 7082128979156015040
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.0580000021
              G: 0.0396842398
              B: 0.0248298701
              A: 1
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.392233491
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.125
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
            Id: 916665379155427451
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
        Id: 10125934784032421949
        Name: "Lathe Simple "
        Transform {
          Location {
            X: 4.99560547
            Y: 1.68188477
            Z: 12.4700928
          }
          Rotation {
            Pitch: 68.2462845
            Yaw: 7.11527586
            Roll: 13.7822552
          }
          Scale {
            X: 0.367971241
            Y: -0.194676474
            Z: 0.124183781
          }
        }
        ParentId: 13751931701776616909
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 11489275323901504074
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 1
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
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
        EditorIndicatorVisibility {
          Value: "mc:eindicatorvisibility:visiblewhenselected"
        }
        CoreMesh {
          MeshAsset {
            Id: 2092839297938637125
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
        Id: 3263390748912703709
        Name: "Lathe Simple "
        Transform {
          Location {
            X: -0.4375
            Y: 1.81921387
            Z: 16.5838013
          }
          Rotation {
            Pitch: 18.5135612
            Yaw: -0.857784867
            Roll: 92.0349655
          }
          Scale {
            X: 0.231415927
            Y: -0.2832838
            Z: 0.127112478
          }
        }
        ParentId: 13751931701776616909
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 11489275323901504074
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 1
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
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
        EditorIndicatorVisibility {
          Value: "mc:eindicatorvisibility:visiblewhenselected"
        }
        CoreMesh {
          MeshAsset {
            Id: 7511473365680159662
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
        Id: 16244600155064136299
        Name: "Lathe Simple "
        Transform {
          Location {
            X: 0.0766601562
            Y: 2.57507324
            Z: 16.1270447
          }
          Rotation {
            Pitch: 22.3809586
            Yaw: -25.632885
            Roll: 104.102928
          }
          Scale {
            X: 0.231418714
            Y: -0.273196548
            Z: 0.127112985
          }
        }
        ParentId: 13751931701776616909
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 11489275323901504074
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 1
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
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
        EditorIndicatorVisibility {
          Value: "mc:eindicatorvisibility:visiblewhenselected"
        }
        CoreMesh {
          MeshAsset {
            Id: 7511473365680159662
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
        Id: 3112435931677296304
        Name: "Lathe Simple "
        Transform {
          Location {
            X: 1.67333984
            Y: 1.8371582
            Z: 15.9683228
          }
          Rotation {
            Pitch: 29.1158524
            Yaw: -47.7396469
            Roll: 114.060974
          }
          Scale {
            X: 0.215109423
            Y: -0.256960422
            Z: 0.127120584
          }
        }
        ParentId: 13751931701776616909
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 11489275323901504074
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 1
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
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
        EditorIndicatorVisibility {
          Value: "mc:eindicatorvisibility:visiblewhenselected"
        }
        CoreMesh {
          MeshAsset {
            Id: 7511473365680159662
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
        Id: 4709567996856432422
        Name: "Lathe Simple "
        Transform {
          Location {
            X: 3.22336197
            Y: 2.42972875
            Z: 16.7179832
          }
          Rotation {
            Pitch: 20.7580357
            Yaw: 43.9089622
            Roll: -110.512062
          }
          Scale {
            X: 0.18787913
            Y: 0.277768791
            Z: 0.127126083
          }
        }
        ParentId: 13751931701776616909
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 11489275323901504074
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 1
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
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
        EditorIndicatorVisibility {
          Value: "mc:eindicatorvisibility:visiblewhenselected"
        }
        CoreMesh {
          MeshAsset {
            Id: 7511473365680159662
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
        Id: 8096965397014493292
        Name: "Lathe Simple "
        Transform {
          Location {
            X: 0.273383409
            Y: 1.75048137
            Z: 16.3265228
          }
          Rotation {
            Pitch: 20.2173939
            Yaw: 20.0243664
            Roll: -98.5894
          }
          Scale {
            X: 0.231412292
            Y: 0.282157749
            Z: 0.127109498
          }
        }
        ParentId: 13751931701776616909
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 11489275323901504074
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 1
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
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
        EditorIndicatorVisibility {
          Value: "mc:eindicatorvisibility:visiblewhenselected"
        }
        CoreMesh {
          MeshAsset {
            Id: 7511473365680159662
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
        Id: 4515477354182499805
        Name: "Urban Vehicle Accessory - Sedan Fenderflare 02"
        Transform {
          Location {
            X: 11.1606445
            Y: 1.38964844
            Z: 22.8282471
          }
          Rotation {
            Pitch: -2.6990788
            Yaw: 84.1977539
            Roll: -101.984291
          }
          Scale {
            X: 0.134461164
            Y: -0.142276898
            Z: 0.0550632477
          }
        }
        ParentId: 13751931701776616909
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 11489275323901504074
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
            Id: 18119351551008849317
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
        Id: 1582356398971860335
        Name: "Wedge - Corner Complex"
        Transform {
          Location {
            X: 5.91845703
            Y: 0.849853516
          }
          Rotation {
            Pitch: -4.14711285
            Yaw: 85.1048813
            Roll: -144.643478
          }
          Scale {
            X: 0.185986817
            Y: -0.0968844369
            Z: 0.195134312
          }
        }
        ParentId: 13751931701776616909
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 11489275323901504074
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.696631253
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
            Id: 16383387032370848731
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
        Id: 16583960759017698800
        Name: "Office Cubicle Desk Leg 01"
        Transform {
          Location {
            X: 2.63085938
            Y: 11.7265625
            Z: 18.7787781
          }
          Rotation {
            Pitch: 7.08218861
            Yaw: -129.25415
            Roll: -87.8646393
          }
          Scale {
            X: 0.0298129953
            Y: 0.0230000038
            Z: -0.0393340848
          }
        }
        ParentId: 13751931701776616909
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 11489275323901504074
            }
          }
          Overrides {
            Name: "ma:Shared_Detail1:id"
            AssetReference {
              Id: 11489275323901504074
            }
          }
          Overrides {
            Name: "ma:Shared_Detail2:id"
            AssetReference {
              Id: 11489275323901504074
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.5
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.5
          }
          Overrides {
            Name: "ma:Shared_Detail1:utile"
            Float: 0.5
          }
          Overrides {
            Name: "ma:Shared_Detail1:vtile"
            Float: 0.5
          }
          Overrides {
            Name: "ma:Shared_Detail2:utile"
            Float: 0.5
          }
          Overrides {
            Name: "ma:Shared_Detail2:vtile"
            Float: 0.5
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
            Id: 890442874131206195
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
        Id: 9228143707564477952
        Name: "Office Cubicle Desk Leg 01"
        Transform {
          Location {
            X: -2.20019531
            Y: 10.3289795
            Z: 5.81188965
          }
          Rotation {
            Pitch: 13.3618984
            Yaw: -125.977821
            Roll: -78.1323547
          }
          Scale {
            X: 0.0298155844
            Y: 0.0230000038
            Z: -0.0393295176
          }
        }
        ParentId: 13751931701776616909
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 11489275323901504074
            }
          }
          Overrides {
            Name: "ma:Shared_Detail1:id"
            AssetReference {
              Id: 11489275323901504074
            }
          }
          Overrides {
            Name: "ma:Shared_Detail2:id"
            AssetReference {
              Id: 11489275323901504074
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.5
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.5
          }
          Overrides {
            Name: "ma:Shared_Detail1:utile"
            Float: 0.5
          }
          Overrides {
            Name: "ma:Shared_Detail1:vtile"
            Float: 0.5
          }
          Overrides {
            Name: "ma:Shared_Detail2:utile"
            Float: 0.5
          }
          Overrides {
            Name: "ma:Shared_Detail2:vtile"
            Float: 0.5
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
            Id: 890442874131206195
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
        Id: 13903574335901297470
        Name: "Fantasy Sack Tied"
        Transform {
          Location {
            X: 2.52099609
            Y: 5.78222656
            Z: 58.1549683
          }
          Rotation {
            Pitch: 9.85291576
            Yaw: -178.486282
            Roll: 177.11998
          }
          Scale {
            X: 0.412967771
            Y: -0.256184459
            Z: 0.344098449
          }
        }
        ParentId: 13751931701776616909
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 7082128979156015040
            }
          }
          Overrides {
            Name: "ma:Shared_Detail1:id"
            AssetReference {
              Id: 7082128979156015040
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.045
              G: 0.043
              B: 0.044416111
              A: 1
            }
          }
          Overrides {
            Name: "ma:Shared_Detail1:color"
            Color {
              R: 0.045
              G: 0.043
              B: 0.044416111
              A: 1
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.735893667
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 1.60108674
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
        CoreMesh {
          MeshAsset {
            Id: 581308431536911762
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
        Id: 13546243506438618168
        Name: "Sphere"
        Transform {
          Location {
            X: -2.31201172
            Y: 3.96167
            Z: 28.4337769
          }
          Rotation {
            Pitch: 10.6649981
            Yaw: 176.213715
            Roll: -6.33830643
          }
          Scale {
            X: 0.230533168
            Y: -0.199962661
            Z: 0.115028858
          }
        }
        ParentId: 13751931701776616909
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 7082128979156015040
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.045
              G: 0.043
              B: 0.044416111
              A: 1
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 1
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.5
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
            Id: 916665379155427451
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
        Id: 150871339250716633
        Name: "Sphere"
        Transform {
          Location {
            X: -21.73456
            Y: 1.77838659
            Z: 38.7913208
          }
          Rotation {
            Pitch: 20.9606209
            Yaw: -168.881653
            Roll: -90.5295563
          }
          Scale {
            X: 0.0108329533
            Y: 0.0168564487
            Z: 0.0168559644
          }
        }
        ParentId: 13751931701776616909
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 4060778856531270988
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.35
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.35
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
            Id: 12434974458467685788
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
        Id: 813714395221337298
        Name: "Sphere"
        Transform {
          Location {
            X: -21.2090321
            Y: 3.32552528
            Z: 54.140049
          }
          Rotation {
            Pitch: 20.0714245
            Yaw: -167.285202
            Roll: -89.9277725
          }
          Scale {
            X: 0.0108329533
            Y: 0.0168564487
            Z: 0.0168559644
          }
        }
        ParentId: 13751931701776616909
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 4060778856531270988
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.35
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.35
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
            Id: 12434974458467685788
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
        Id: 16741677141694730171
        Name: "Sphere"
        Transform {
          Location {
            X: -21.4584541
            Y: 2.80937
            Z: 47.0379333
          }
          Rotation {
            Pitch: 22.1080036
            Yaw: -167.282257
            Roll: -89.9269104
          }
          Scale {
            X: 0.0108329533
            Y: 0.0168564487
            Z: 0.0168559644
          }
        }
        ParentId: 13751931701776616909
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 4060778856531270988
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.35
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.35
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
            Id: 12434974458467685788
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
        Id: 10616477248168538054
        Name: "Sphere"
        Transform {
          Location {
            X: -21.0708103
            Y: 4.22544575
            Z: 61.4106369
          }
          Rotation {
            Pitch: 18.3956661
            Yaw: -159.391983
            Roll: -87.2782669
          }
          Scale {
            X: 0.0108329533
            Y: 0.0168564487
            Z: 0.0168559644
          }
        }
        ParentId: 13751931701776616909
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 4060778856531270988
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.35
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.35
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
            Id: 12434974458467685788
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
        Id: 13215571560156514369
        Name: "Urban Vehicle Car - Windshield 01"
        Transform {
          Location {
            X: 11.109375
            Y: -8.45752
            Z: 53.7354431
          }
          Rotation {
            Pitch: -34.9694595
            Yaw: -57.1191025
            Roll: -0.220188618
          }
          Scale {
            X: 0.173538849
            Y: -0.118492007
            Z: 0.238871381
          }
        }
        ParentId: 13751931701776616909
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 2018227301497757374
            }
          }
          Overrides {
            Name: "ma:Shared_Detail1:id"
            AssetReference {
              Id: 2018227301497757374
            }
          }
          Overrides {
            Name: "ma:Shared_Detail2:id"
            AssetReference {
              Id: 2018227301497757374
            }
          }
          Overrides {
            Name: "ma:Shared_Detail3:id"
            AssetReference {
              Id: 2486353801458828990
            }
          }
          Overrides {
            Name: "ma:Shared_Detail3:utile"
            Float: 0.758593738
          }
          Overrides {
            Name: "ma:Shared_Detail3:vtile"
            Float: 1.21865642
          }
          Overrides {
            Name: "ma:Shared_Detail3:color"
            Color {
              R: 0.13
              G: 0.14
              B: 0.13
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
            Id: 5035333608653009594
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
        Id: 13891864429110364737
        Name: "Urban Vehicle Car - Windshield 01"
        Transform {
          Location {
            X: -15.0961914
            Y: -6.67431641
            Z: 55.2134094
          }
          Rotation {
            Pitch: -30.9696465
            Yaw: -133.87854
            Roll: 6.23304081
          }
          Scale {
            X: 0.173538849
            Y: -0.118492007
            Z: 0.238871381
          }
        }
        ParentId: 13751931701776616909
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 2018227301497757374
            }
          }
          Overrides {
            Name: "ma:Shared_Detail1:id"
            AssetReference {
              Id: 2018227301497757374
            }
          }
          Overrides {
            Name: "ma:Shared_Detail2:id"
            AssetReference {
              Id: 2018227301497757374
            }
          }
          Overrides {
            Name: "ma:Shared_Detail3:id"
            AssetReference {
              Id: 2486353801458828990
            }
          }
          Overrides {
            Name: "ma:Shared_Detail3:utile"
            Float: 0.758593738
          }
          Overrides {
            Name: "ma:Shared_Detail3:vtile"
            Float: 1.21865642
          }
          Overrides {
            Name: "ma:Shared_Detail3:color"
            Color {
              R: 0.13
              G: 0.14
              B: 0.13
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
            Id: 5035333608653009594
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
        Id: 8666413705626587537
        Name: "Urban Vehicle Car - Windshield 01"
        Transform {
          Location {
            X: 10.9770508
            Y: -9.41223145
            Z: 46.5264282
          }
          Rotation {
            Pitch: -34.9694595
            Yaw: -57.1191025
            Roll: -0.220188618
          }
          Scale {
            X: 0.173538849
            Y: -0.118492007
            Z: 0.238871381
          }
        }
        ParentId: 13751931701776616909
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 2018227301497757374
            }
          }
          Overrides {
            Name: "ma:Shared_Detail1:id"
            AssetReference {
              Id: 2018227301497757374
            }
          }
          Overrides {
            Name: "ma:Shared_Detail2:id"
            AssetReference {
              Id: 2018227301497757374
            }
          }
          Overrides {
            Name: "ma:Shared_Detail3:id"
            AssetReference {
              Id: 2486353801458828990
            }
          }
          Overrides {
            Name: "ma:Shared_Detail3:utile"
            Float: 0.758593738
          }
          Overrides {
            Name: "ma:Shared_Detail3:vtile"
            Float: 1.21865642
          }
          Overrides {
            Name: "ma:Shared_Detail3:color"
            Color {
              R: 0.13
              G: 0.14
              B: 0.13
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
            Id: 5035333608653009594
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
        Id: 15863435902044648915
        Name: "Urban Vehicle Car - Windshield 01"
        Transform {
          Location {
            X: -15.2304688
            Y: -7.6307373
            Z: 48.0042725
          }
          Rotation {
            Pitch: -30.9696465
            Yaw: -133.87854
            Roll: 6.23304081
          }
          Scale {
            X: 0.173538849
            Y: -0.118492007
            Z: 0.238871381
          }
        }
        ParentId: 13751931701776616909
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 2018227301497757374
            }
          }
          Overrides {
            Name: "ma:Shared_Detail1:id"
            AssetReference {
              Id: 2018227301497757374
            }
          }
          Overrides {
            Name: "ma:Shared_Detail2:id"
            AssetReference {
              Id: 2018227301497757374
            }
          }
          Overrides {
            Name: "ma:Shared_Detail3:id"
            AssetReference {
              Id: 2486353801458828990
            }
          }
          Overrides {
            Name: "ma:Shared_Detail3:utile"
            Float: 0.758593738
          }
          Overrides {
            Name: "ma:Shared_Detail3:vtile"
            Float: 1.21865642
          }
          Overrides {
            Name: "ma:Shared_Detail3:color"
            Color {
              R: 0.13
              G: 0.14
              B: 0.13
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
            Id: 5035333608653009594
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
        Id: 5633340351412745108
        Name: "Urban Vehicle Car - Windshield 01"
        Transform {
          Location {
            X: 10.7480469
            Y: -9.89697266
            Z: 39.2185059
          }
          Rotation {
            Pitch: -34.9694595
            Yaw: -57.1191025
            Roll: -0.220188618
          }
          Scale {
            X: 0.173538849
            Y: -0.118492007
            Z: 0.238871381
          }
        }
        ParentId: 13751931701776616909
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 2018227301497757374
            }
          }
          Overrides {
            Name: "ma:Shared_Detail1:id"
            AssetReference {
              Id: 2018227301497757374
            }
          }
          Overrides {
            Name: "ma:Shared_Detail2:id"
            AssetReference {
              Id: 2018227301497757374
            }
          }
          Overrides {
            Name: "ma:Shared_Detail3:id"
            AssetReference {
              Id: 2486353801458828990
            }
          }
          Overrides {
            Name: "ma:Shared_Detail3:utile"
            Float: 0.758593738
          }
          Overrides {
            Name: "ma:Shared_Detail3:vtile"
            Float: 1.21865642
          }
          Overrides {
            Name: "ma:Shared_Detail3:color"
            Color {
              R: 0.13
              G: 0.14
              B: 0.13
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
            Id: 5035333608653009594
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
        Id: 4919699658735571510
        Name: "Urban Vehicle Car - Windshield 01"
        Transform {
          Location {
            X: -15.4570312
            Y: -8.1138916
            Z: 40.6963501
          }
          Rotation {
            Pitch: -30.9696465
            Yaw: -133.87854
            Roll: 6.23304081
          }
          Scale {
            X: 0.173538849
            Y: -0.118492007
            Z: 0.238871381
          }
        }
        ParentId: 13751931701776616909
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 2018227301497757374
            }
          }
          Overrides {
            Name: "ma:Shared_Detail1:id"
            AssetReference {
              Id: 2018227301497757374
            }
          }
          Overrides {
            Name: "ma:Shared_Detail2:id"
            AssetReference {
              Id: 2018227301497757374
            }
          }
          Overrides {
            Name: "ma:Shared_Detail3:id"
            AssetReference {
              Id: 2486353801458828990
            }
          }
          Overrides {
            Name: "ma:Shared_Detail3:utile"
            Float: 0.758593738
          }
          Overrides {
            Name: "ma:Shared_Detail3:vtile"
            Float: 1.21865642
          }
          Overrides {
            Name: "ma:Shared_Detail3:color"
            Color {
              R: 0.13
              G: 0.14
              B: 0.13
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
            Id: 5035333608653009594
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
        Id: 4058669528463327573
        Name: "Urban Vehicle Car - Windshield 01"
        Transform {
          Location {
            X: 10.3896484
            Y: -10.5839844
            Z: 30.206604
          }
          Rotation {
            Pitch: -37.0795097
            Yaw: -56.5487633
            Roll: -1.32511818
          }
          Scale {
            X: 0.173538849
            Y: -0.118492007
            Z: 0.238871381
          }
        }
        ParentId: 13751931701776616909
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 2018227301497757374
            }
          }
          Overrides {
            Name: "ma:Shared_Detail1:id"
            AssetReference {
              Id: 2018227301497757374
            }
          }
          Overrides {
            Name: "ma:Shared_Detail2:id"
            AssetReference {
              Id: 2018227301497757374
            }
          }
          Overrides {
            Name: "ma:Shared_Detail3:id"
            AssetReference {
              Id: 2486353801458828990
            }
          }
          Overrides {
            Name: "ma:Shared_Detail3:utile"
            Float: 0.758593738
          }
          Overrides {
            Name: "ma:Shared_Detail3:vtile"
            Float: 1.21865642
          }
          Overrides {
            Name: "ma:Shared_Detail3:color"
            Color {
              R: 0.13
              G: 0.14
              B: 0.13
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
            Id: 5035333608653009594
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
        Id: 18421189116739877400
        Name: "Urban Vehicle Car - Windshield 01"
        Transform {
          Location {
            X: -15.8032227
            Y: -8.82910156
            Z: 31.9397583
          }
          Rotation {
            Pitch: -32.293808
            Yaw: -135.110352
            Roll: 8.4295578
          }
          Scale {
            X: 0.173538849
            Y: -0.118492007
            Z: 0.238871381
          }
        }
        ParentId: 13751931701776616909
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 2018227301497757374
            }
          }
          Overrides {
            Name: "ma:Shared_Detail1:id"
            AssetReference {
              Id: 2018227301497757374
            }
          }
          Overrides {
            Name: "ma:Shared_Detail2:id"
            AssetReference {
              Id: 2018227301497757374
            }
          }
          Overrides {
            Name: "ma:Shared_Detail3:id"
            AssetReference {
              Id: 2486353801458828990
            }
          }
          Overrides {
            Name: "ma:Shared_Detail3:utile"
            Float: 0.758593738
          }
          Overrides {
            Name: "ma:Shared_Detail3:vtile"
            Float: 1.21865642
          }
          Overrides {
            Name: "ma:Shared_Detail3:color"
            Color {
              R: 0.13
              G: 0.14
              B: 0.13
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
            Id: 5035333608653009594
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
        Id: 4064448082468153533
        Name: "Sphere"
        Transform {
          Location {
            X: 18.538187
            Y: -1.03993595
            Z: 35.9214935
          }
          Rotation {
            Pitch: -12.5657711
            Yaw: 152.674362
            Roll: -84.5985947
          }
          Scale {
            X: 0.0108329533
            Y: 0.0168564487
            Z: 0.0168559644
          }
        }
        ParentId: 13751931701776616909
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 4060778856531270988
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.35
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.35
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
            Id: 12434974458467685788
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
        Id: 3687443996069216238
        Name: "Sphere"
        Transform {
          Location {
            X: 18.8214436
            Y: -0.111812592
            Z: 44.4219513
          }
          Rotation {
            Pitch: -11.0042677
            Yaw: 161.934128
            Roll: -86.6695557
          }
          Scale {
            X: 0.0108329533
            Y: 0.0168564487
            Z: 0.0168559644
          }
        }
        ParentId: 13751931701776616909
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 4060778856531270988
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.35
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.35
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
            Id: 12434974458467685788
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
        Id: 11647798545726593921
        Name: "Sphere"
        Transform {
          Location {
            X: 19.1052494
            Y: 0.635453701
            Z: 51.9397354
          }
          Rotation {
            Pitch: -13.1216192
            Yaw: 159.734604
            Roll: -85.658165
          }
          Scale {
            X: 0.0108329533
            Y: 0.0168564487
            Z: 0.0168559644
          }
        }
        ParentId: 13751931701776616909
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 4060778856531270988
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.35
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.35
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
            Id: 12434974458467685788
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
        Id: 1749104968453720348
        Name: "Sphere"
        Transform {
          Location {
            X: 19.1465874
            Y: 1.52541018
            Z: 59.2185173
          }
          Rotation {
            Pitch: -10.9353237
            Yaw: 150.803131
            Roll: -83.6865234
          }
          Scale {
            X: 0.0108329533
            Y: 0.0168564487
            Z: 0.0168559644
          }
        }
        ParentId: 13751931701776616909
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 4060778856531270988
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.35
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.35
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
            Id: 12434974458467685788
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
        Id: 16485854454430680563
        Name: "Urban Vehicle Car - Windshield 01"
        Transform {
          Location {
            X: 15.6210938
            Y: 2.15100098
            Z: 46.9133911
          }
          Rotation {
            Pitch: 34.5111389
            Yaw: -12.1533012
            Roll: -175.064972
          }
          Scale {
            X: 0.166433752
            Y: -0.0860072151
            Z: 0.225094482
          }
        }
        ParentId: 13751931701776616909
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 2018227301497757374
            }
          }
          Overrides {
            Name: "ma:Shared_Detail1:id"
            AssetReference {
              Id: 2018227301497757374
            }
          }
          Overrides {
            Name: "ma:Shared_Detail2:id"
            AssetReference {
              Id: 2018227301497757374
            }
          }
          Overrides {
            Name: "ma:Shared_Detail3:id"
            AssetReference {
              Id: 7082128979156015040
            }
          }
          Overrides {
            Name: "ma:Shared_Detail3:utile"
            Float: 0.758593738
          }
          Overrides {
            Name: "ma:Shared_Detail3:vtile"
            Float: 1.21865642
          }
          Overrides {
            Name: "ma:Shared_Detail3:color"
            Color {
              R: 0.042
              G: 0.0328
              B: 0.024
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
            Id: 5035333608653009594
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
        Id: 13087407002517911804
        Name: "Sphere"
        Transform {
          Location {
            X: 0.227050781
            Y: 4.74804688
            Z: 73.1502533
          }
          Rotation {
            Pitch: 3.19699955
            Yaw: 179.899567
            Roll: -7.27166748
          }
          Scale {
            X: 0.323084384
            Y: -0.246242315
            Z: 0.081696406
          }
        }
        ParentId: 13751931701776616909
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 7082128979156015040
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.045
              G: 0.043
              B: 0.044416111
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
            Id: 12434974458467685788
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
        Id: 10688717490000997547
        Name: "Corrugated Sheet Small"
        Transform {
          Location {
            X: -9.68115234
            Y: 1.71020508
            Z: 10.4380646
          }
          Rotation {
            Pitch: 8.50074387
            Yaw: 107.931625
            Roll: -9.40458679
          }
          Scale {
            X: -0.103367895
            Y: 0.0971323848
            Z: -0.3205553
          }
        }
        ParentId: 8480731776625712631
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 807038937784509847
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 3.57849
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 4.90198946
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.25
              G: 0.25
              B: 0.229000017
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
            Id: 17656495108824350163
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
        Id: 15867297060079959710
        Name: "Corrugated Sheet Small"
        Transform {
          Location {
            X: 18.7880859
            Y: -0.439575195
            Z: 8.52066
          }
          Rotation {
            Pitch: -7.1405797
            Yaw: -109.456764
            Roll: -5.4512682
          }
          Scale {
            X: 0.103366435
            Y: 0.0971378163
            Z: -0.349675745
          }
        }
        ParentId: 8480731776625712631
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 807038937784509847
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 3.57849
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 4.90198946
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.25
              G: 0.25
              B: 0.229000017
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
            Id: 17656495108824350163
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
        Id: 17862777866145573272
        Name: "right_knee"
        Transform {
          Location {
            X: -2.99998713
            Y: 18.0000019
            Z: 59.697998
          }
          Rotation {
            Pitch: -3.90997314
            Yaw: 3.6291163
            Roll: -4.28347778
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 16626570038979758447
        ChildIds: 9198407098388470313
        ChildIds: 3188467826282234083
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
        Id: 9198407098388470313
        Name: "Right Knee"
        Transform {
          Location {
            X: 0.447621346
            Y: 0.882012129
            Z: -43.6549034
          }
          Rotation {
            Pitch: -4.16274738
            Yaw: 176.66391
            Roll: -6.0383029
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 17862777866145573272
        ChildIds: 14236094414783208706
        ChildIds: 5025285688739703231
        ChildIds: 582730620069438196
        ChildIds: 6638502084978563542
        ChildIds: 2415799817226595218
        ChildIds: 8166305537878693637
        ChildIds: 15608407727736252656
        ChildIds: 8932667321052091310
        ChildIds: 10543138949967837161
        ChildIds: 14723469138400987185
        ChildIds: 4667884461970011196
        ChildIds: 10860157156378989714
        ChildIds: 5308985904020608454
        ChildIds: 2323741388348585049
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
          Model {
            AggressiveMerge: true
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
        Id: 14236094414783208706
        Name: "Sphere"
        Transform {
          Location {
            X: -0.0605411157
            Y: 3.49736524
            Z: 36.3832893
          }
          Rotation {
            Pitch: 10.4620667
            Yaw: -0.776306331
            Roll: 6.7834568
          }
          Scale {
            X: 0.196369901
            Y: 0.170305863
            Z: 0.0997205302
          }
        }
        ParentId: 9198407098388470313
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 7082128979156015040
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.6
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 2.3
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.045
              G: 0.043
              B: 0.044416111
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
            Id: 4914364069940318769
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
        Id: 5025285688739703231
        Name: "Teardrop - Rounded"
        Transform {
          Location {
            X: 1.6098671
            Y: 2.04024482
            Z: 23.0727921
          }
          Rotation {
            Pitch: -6.31366253
            Yaw: 89.9722748
            Roll: -176.079941
          }
          Scale {
            X: 0.177823365
            Y: 0.183540791
            Z: 0.0213884562
          }
        }
        ParentId: 9198407098388470313
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 7082128979156015040
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.038
              G: 0.026
              B: 0.017
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
            Id: 14349802543597031035
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
        Id: 582730620069438196
        Name: "Office Cubicle Desk Leg 01"
        Transform {
          Location {
            X: -2.44824219
            Y: -5.44665527
            Z: -5.7220459e-06
          }
          Rotation {
            Pitch: -6.50399256
            Yaw: 41.9432106
            Roll: -90.2839737
          }
          Scale {
            X: 0.0464048907
            Y: 0.022
            Z: -0.0265640561
          }
        }
        ParentId: 9198407098388470313
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 11489275323901504074
            }
          }
          Overrides {
            Name: "ma:Shared_Detail1:id"
            AssetReference {
              Id: 11489275323901504074
            }
          }
          Overrides {
            Name: "ma:Shared_Detail2:id"
            AssetReference {
              Id: 11489275323901504074
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.5
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.350051254
          }
          Overrides {
            Name: "ma:Shared_Detail1:utile"
            Float: 0.5
          }
          Overrides {
            Name: "ma:Shared_Detail1:vtile"
            Float: 0.5
          }
          Overrides {
            Name: "ma:Shared_Detail2:utile"
            Float: 0.5
          }
          Overrides {
            Name: "ma:Shared_Detail2:vtile"
            Float: 0.5
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
            Id: 890442874131206195
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
        Id: 6638502084978563542
        Name: "Office Cubicle Desk Leg 01"
        Transform {
          Location {
            X: -2.10546613
            Y: -5.80242395
            Z: 1.60373819
          }
          Rotation {
            Pitch: -83.5924
            Yaw: -141.533096
            Roll: -92.1744766
          }
          Scale {
            X: 0.0317136
            Y: 0.00441526715
            Z: 0.0135746477
          }
        }
        ParentId: 9198407098388470313
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 7082128979156015040
            }
          }
          Overrides {
            Name: "ma:Shared_Detail1:id"
            AssetReference {
              Id: 14629909211943041809
            }
          }
          Overrides {
            Name: "ma:Shared_Detail2:id"
            AssetReference {
              Id: 14629909211943041809
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.038
              G: 0.026
              B: 0.017
              A: 1
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.5
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.5
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
        Id: 2415799817226595218
        Name: "Teardrop - Rounded"
        Transform {
          Location {
            X: 1.62109399
            Y: -0.254460722
            Z: 0.758037508
          }
          Rotation {
            Pitch: -5.01614523
            Yaw: 91.0142746
            Roll: 174.41246
          }
          Scale {
            X: 0.133614123
            Y: 0.138997391
            Z: 0.038
          }
        }
        ParentId: 9198407098388470313
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 7082128979156015040
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.038
              G: 0.026
              B: 0.017
              A: 1
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.185771257
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.185771257
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
            Id: 13828127444655325311
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
        Id: 8166305537878693637
        Name: "Teardrop - Rounded"
        Transform {
          Location {
            X: 1.55761862
            Y: 0.60529846
            Z: 8.23918915
          }
          Rotation {
            Pitch: -4.50989151
            Yaw: 90.0962
            Roll: -176.091644
          }
          Scale {
            X: 0.138181448
            Y: 0.143335775
            Z: 0.0185387637
          }
        }
        ParentId: 9198407098388470313
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 7082128979156015040
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.038
              G: 0.026
              B: 0.017
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
            Id: 13828127444655325311
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
        Id: 15608407727736252656
        Name: "Teardrop - Rounded"
        Transform {
          Location {
            X: 1.63916266
            Y: 1.28402603
            Z: 15.4016695
          }
          Rotation {
            Pitch: -5.90786743
            Yaw: 90.0000916
            Roll: -179.429245
          }
          Scale {
            X: 0.155026272
            Y: 0.16109094
            Z: 0.019165881
          }
        }
        ParentId: 9198407098388470313
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 7082128979156015040
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.038
              G: 0.026
              B: 0.017
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
            Id: 13828127444655325311
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
        Id: 8932667321052091310
        Name: "Office Cubicle Desk Leg 01"
        Transform {
          Location {
            X: -1.71679688
            Y: -6.32775879
            Z: 1.60200691
          }
          Rotation {
            Pitch: -83.5928574
            Yaw: -141.532
            Roll: -101.820122
          }
          Scale {
            X: 0.0319638066
            Y: 0.00445430353
            Z: -0.016872162
          }
        }
        ParentId: 9198407098388470313
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 7082128979156015040
            }
          }
          Overrides {
            Name: "ma:Shared_Detail1:id"
            AssetReference {
              Id: 14629909211943041809
            }
          }
          Overrides {
            Name: "ma:Shared_Detail2:id"
            AssetReference {
              Id: 14629909211943041809
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.038
              G: 0.026
              B: 0.017
              A: 1
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.5
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.5
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
            Id: 1488213721497979136
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
        Id: 10543138949967837161
        Name: "Office Cubicle Desk Leg 01"
        Transform {
          Location {
            X: -4.99902344
            Y: -3.0111084
            Z: 1.62748909
          }
          Rotation {
            Pitch: 83.4896317
            Yaw: 39.4372902
            Roll: -2.48949742
          }
          Scale {
            X: 0.0338679627
            Y: 0.0223958138
            Z: -0.00414124178
          }
        }
        ParentId: 9198407098388470313
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 11489275323901504074
            }
          }
          Overrides {
            Name: "ma:Shared_Detail1:id"
            AssetReference {
              Id: 5961184720642333683
            }
          }
          Overrides {
            Name: "ma:Shared_Detail2:id"
            AssetReference {
              Id: 5961184720642333683
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.13561447
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.127341971
          }
          Overrides {
            Name: "ma:Shared_Detail1:utile"
            Float: 0.5
          }
          Overrides {
            Name: "ma:Shared_Detail1:vtile"
            Float: 0.5
          }
          Overrides {
            Name: "ma:Shared_Detail2:utile"
            Float: 0.5
          }
          Overrides {
            Name: "ma:Shared_Detail2:vtile"
            Float: 0.5
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
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
        CoreMesh {
          MeshAsset {
            Id: 2291424959345176054
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
        Id: 14723469138400987185
        Name: "Teardrop - Rounded"
        Transform {
          Location {
            X: 0.28369683
            Y: 3.43597841
            Z: 34.5869408
          }
          Rotation {
            Pitch: -6.92006731
            Yaw: 88.9289703
            Roll: -170.798355
          }
          Scale {
            X: 0.189058021
            Y: 0.20437558
            Z: 0.225476727
          }
        }
        ParentId: 9198407098388470313
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 7082128979156015040
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.079
              G: 0.0540526658
              B: 0.0338199958
              A: 1
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.5
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.5
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
            Id: 2433235999455009803
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
        Id: 4667884461970011196
        Name: "Teardrop - Rounded"
        Transform {
          Location {
            X: 0.57959497
            Y: 3.20775
            Z: 32.7523499
          }
          Rotation {
            Pitch: -6.92006731
            Yaw: 88.9289856
            Roll: -170.798355
          }
          Scale {
            X: 0.187509939
            Y: 0.202698067
            Z: 0.0516174622
          }
        }
        ParentId: 9198407098388470313
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 7082128979156015040
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.079
              G: 0.0540526658
              B: 0.0338199958
              A: 1
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.5
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.5
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
            Id: 13828127444655325311
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
        Id: 10860157156378989714
        Name: "Teardrop - Rounded"
        Transform {
          Location {
            X: 1.05908668
            Y: 2.82497907
            Z: 29.6857166
          }
          Rotation {
            Pitch: -6.92006731
            Yaw: 88.9289856
            Roll: -170.798355
          }
          Scale {
            X: 0.197233617
            Y: 0.213213846
            Z: 0.478019148
          }
        }
        ParentId: 9198407098388470313
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 7082128979156015040
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.079
              G: 0.0540526658
              B: 0.0338199958
              A: 1
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.5
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.5
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
            Id: 2433235999455009803
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
        Id: 5308985904020608454
        Name: "Teardrop - Rounded"
        Transform {
          Location {
            X: 1.3852582
            Y: 2.31405663
            Z: 26.9297504
          }
          Rotation {
            Pitch: -7.45745277
            Yaw: 88.8481827
            Roll: -169.904495
          }
          Scale {
            X: 0.187491581
            Y: 0.198006272
            Z: 0.130725279
          }
        }
        ParentId: 9198407098388470313
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 7082128979156015040
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.038
              G: 0.026
              B: 0.017
              A: 1
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.5
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.5
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
            Id: 2433235999455009803
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
        Id: 2323741388348585049
        Name: "Teardrop - Rounded"
        Transform {
          Location {
            X: 1.59277654
            Y: 1.63376534
            Z: 18.9145145
          }
          Rotation {
            Pitch: -5.34914446
            Yaw: 93.0222473
            Roll: 179.955566
          }
          Scale {
            X: 0.179260865
            Y: 0.18581751
            Z: 0.528003871
          }
        }
        ParentId: 9198407098388470313
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 7082128979156015040
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.046
              G: 0.0328
              B: 0.024
              A: 1
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
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
        EditorIndicatorVisibility {
          Value: "mc:eindicatorvisibility:visiblewhenselected"
        }
        CoreMesh {
          MeshAsset {
            Id: 7701301908407571554
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
        Id: 3188467826282234083
        Name: "Sphere"
        Transform {
          Location {
            X: -2.12037611
            Y: 1.38173306
            Z: -7.19761419
          }
          Rotation {
            Pitch: 6.16121292
            Yaw: 174.79924
            Roll: 0.78357017
          }
          Scale {
            X: 0.199299529
            Y: 0.172846615
            Z: 0.10120824
          }
        }
        ParentId: 17862777866145573272
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 807038937784509847
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.6
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 2.3
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.577
              G: 0.577
              B: 0.577
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
            Id: 4914364069940318769
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
        Id: 4889027416524574205
        Name: "left_knee"
        Transform {
          Location {
            X: -3.00001287
            Y: -17.9999981
            Z: 59.697998
          }
          Rotation {
            Pitch: -3.90988159
            Yaw: -3.62918091
            Roll: 4.28336239
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 16626570038979758447
        ChildIds: 11570759282418961353
        ChildIds: 11110717143287977229
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
        Id: 11570759282418961353
        Name: "Left Knee"
        Transform {
          Location {
            X: 0.495117188
            Y: -1.44494629
            Z: -43.8584595
          }
          Rotation {
            Pitch: -4.16264486
            Yaw: -176.66391
            Roll: 4.03817368
          }
          Scale {
            X: 1
            Y: -1
            Z: 1
          }
        }
        ParentId: 4889027416524574205
        ChildIds: 9655524511268083426
        ChildIds: 2202429814909889814
        ChildIds: 11062992044404458685
        ChildIds: 12252813690136464660
        ChildIds: 16674325791607096509
        ChildIds: 11932472135124436827
        ChildIds: 14243381259015911021
        ChildIds: 3693920320966492346
        ChildIds: 10559985045643272817
        ChildIds: 3577462479866396839
        ChildIds: 6985238490199040482
        ChildIds: 17265554360160816387
        ChildIds: 10875189470960172892
        ChildIds: 15798674816346561447
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
          Model {
            AggressiveMerge: true
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
        Id: 9655524511268083426
        Name: "Sphere"
        Transform {
          Location {
            X: -0.060546875
            Y: 2.80249023
            Z: 36.6732368
          }
          Rotation {
            Pitch: 10.4285231
            Yaw: -1.14498889
            Roll: 4.75004196
          }
          Scale {
            X: 0.196369901
            Y: 0.170305863
            Z: 0.0997205302
          }
        }
        ParentId: 11570759282418961353
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 7082128979156015040
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.6
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 2.3
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.045
              G: 0.043
              B: 0.044416111
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
            Id: 4914364069940318769
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
        Id: 2202429814909889814
        Name: "Teardrop - Rounded"
        Transform {
          Location {
            X: 1.60986328
            Y: 1.81091309
            Z: 23.3200264
          }
          Rotation {
            Pitch: -4.31366
            Yaw: 89.9724
            Roll: -176.080917
          }
          Scale {
            X: 0.177823365
            Y: 0.183540791
            Z: 0.0213884562
          }
        }
        ParentId: 11570759282418961353
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 7082128979156015040
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.038
              G: 0.026
              B: 0.017
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
            Id: 14349802543597031035
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
        Id: 11062992044404458685
        Name: "Office Cubicle Desk Leg 01"
        Transform {
          Location {
            X: -2.44824219
            Y: -4.86633301
            Z: -3.81469727e-06
          }
          Rotation {
            Pitch: -5.1651597
            Yaw: 42.0950623
            Roll: -91.7775421
          }
          Scale {
            X: 0.0464048907
            Y: 0.022
            Z: -0.0265640561
          }
        }
        ParentId: 11570759282418961353
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 11489275323901504074
            }
          }
          Overrides {
            Name: "ma:Shared_Detail1:id"
            AssetReference {
              Id: 11489275323901504074
            }
          }
          Overrides {
            Name: "ma:Shared_Detail2:id"
            AssetReference {
              Id: 11489275323901504074
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.5
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.350051254
          }
          Overrides {
            Name: "ma:Shared_Detail1:utile"
            Float: 0.5
          }
          Overrides {
            Name: "ma:Shared_Detail1:vtile"
            Float: 0.5
          }
          Overrides {
            Name: "ma:Shared_Detail2:utile"
            Float: 0.5
          }
          Overrides {
            Name: "ma:Shared_Detail2:vtile"
            Float: 0.5
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
            Id: 890442874131206195
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
        Id: 12252813690136464660
        Name: "Office Cubicle Desk Leg 01"
        Transform {
          Location {
            X: -2.10546875
            Y: -5.27771
            Z: 1.5903511
          }
          Rotation {
            Pitch: -84.6054306
            Yaw: -158.342819
            Roll: -75.2774582
          }
          Scale {
            X: 0.0317136
            Y: 0.00441526715
            Z: 0.0135746477
          }
        }
        ParentId: 11570759282418961353
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 7082128979156015040
            }
          }
          Overrides {
            Name: "ma:Shared_Detail1:id"
            AssetReference {
              Id: 14629909211943041809
            }
          }
          Overrides {
            Name: "ma:Shared_Detail2:id"
            AssetReference {
              Id: 14629909211943041809
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.5
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.5
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.038
              G: 0.026
              B: 0.017
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
        Id: 16674325791607096509
        Name: "Teardrop - Rounded"
        Transform {
          Location {
            X: 1.62109375
            Y: 0.296264648
            Z: 0.938785553
          }
          Rotation {
            Pitch: -3.01644349
            Yaw: 91.0118
            Roll: 174.447891
          }
          Scale {
            X: 0.133614123
            Y: 0.138997391
            Z: 0.038
          }
        }
        ParentId: 11570759282418961353
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 7082128979156015040
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.185771257
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.185771257
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.038
              G: 0.026
              B: 0.017
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
            Id: 13828127444655325311
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
        Id: 11932472135124436827
        Name: "Teardrop - Rounded"
        Transform {
          Location {
            X: 1.55761719
            Y: 0.89453125
            Z: 8.44538116
          }
          Rotation {
            Pitch: -2.50988269
            Yaw: 90.096
            Roll: -176.088257
          }
          Scale {
            X: 0.138181448
            Y: 0.143335775
            Z: 0.0185387637
          }
        }
        ParentId: 11570759282418961353
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 7082128979156015040
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.038
              G: 0.026
              B: 0.017
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
            Id: 13828127444655325311
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
        Id: 14243381259015911021
        Name: "Teardrop - Rounded"
        Transform {
          Location {
            X: 1.63916016
            Y: 1.32287598
            Z: 15.6271858
          }
          Rotation {
            Pitch: -3.90786529
            Yaw: 90.0001526
            Roll: -179.42923
          }
          Scale {
            X: 0.155026272
            Y: 0.16109094
            Z: 0.019165881
          }
        }
        ParentId: 11570759282418961353
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 7082128979156015040
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.038
              G: 0.026
              B: 0.017
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
            Id: 13828127444655325311
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
        Id: 3693920320966492346
        Name: "Office Cubicle Desk Leg 01"
        Transform {
          Location {
            X: -1.71679688
            Y: -5.80285645
            Z: 1.57028198
          }
          Rotation {
            Pitch: -84.6058
            Yaw: -158.342438
            Roll: -84.9219742
          }
          Scale {
            X: 0.0319638066
            Y: 0.00445430353
            Z: -0.016872162
          }
        }
        ParentId: 11570759282418961353
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 7082128979156015040
            }
          }
          Overrides {
            Name: "ma:Shared_Detail1:id"
            AssetReference {
              Id: 14629909211943041809
            }
          }
          Overrides {
            Name: "ma:Shared_Detail2:id"
            AssetReference {
              Id: 14629909211943041809
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.5
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.5
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.038
              G: 0.026
              B: 0.017
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
            Id: 1488213721497979136
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
        Id: 10559985045643272817
        Name: "Office Cubicle Desk Leg 01"
        Transform {
          Location {
            X: -4.99902344
            Y: -2.4888916
            Z: 1.71150208
          }
          Rotation {
            Pitch: 84.538063
            Yaw: 23.0751591
            Roll: -18.9394131
          }
          Scale {
            X: 0.0338679627
            Y: 0.0223958138
            Z: -0.00414124178
          }
        }
        ParentId: 11570759282418961353
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 11489275323901504074
            }
          }
          Overrides {
            Name: "ma:Shared_Detail1:id"
            AssetReference {
              Id: 5961184720642333683
            }
          }
          Overrides {
            Name: "ma:Shared_Detail2:id"
            AssetReference {
              Id: 5961184720642333683
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.13561447
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.127341971
          }
          Overrides {
            Name: "ma:Shared_Detail1:utile"
            Float: 0.5
          }
          Overrides {
            Name: "ma:Shared_Detail1:vtile"
            Float: 0.5
          }
          Overrides {
            Name: "ma:Shared_Detail2:utile"
            Float: 0.5
          }
          Overrides {
            Name: "ma:Shared_Detail2:vtile"
            Float: 0.5
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
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
        CoreMesh {
          MeshAsset {
            Id: 2291424959345176054
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
        Id: 3577462479866396839
        Name: "Teardrop - Rounded"
        Transform {
          Location {
            X: 0.283691406
            Y: 2.80395508
            Z: 34.875843
          }
          Rotation {
            Pitch: -4.920434
            Yaw: 88.9328384
            Roll: -170.835815
          }
          Scale {
            X: 0.189058021
            Y: 0.20437558
            Z: 0.225476727
          }
        }
        ParentId: 11570759282418961353
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 7082128979156015040
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.079
              G: 0.0540526658
              B: 0.0338199958
              A: 1
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.5
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.5
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
            Id: 2433235999455009803
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
        Id: 6985238490199040482
        Name: "Teardrop - Rounded"
        Transform {
          Location {
            X: 0.579589844
            Y: 2.63977051
            Z: 33.0344048
          }
          Rotation {
            Pitch: -4.920434
            Yaw: 88.9328537
            Roll: -170.835815
          }
          Scale {
            X: 0.187509939
            Y: 0.202698067
            Z: 0.0516174622
          }
        }
        ParentId: 11570759282418961353
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 7082128979156015040
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.079
              G: 0.0540526658
              B: 0.0338199958
              A: 1
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.5
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.5
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
            Id: 13828127444655325311
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
        Id: 17265554360160816387
        Name: "Teardrop - Rounded"
        Transform {
          Location {
            X: 1.05908203
            Y: 2.36425781
            Z: 29.9562798
          }
          Rotation {
            Pitch: -4.920434
            Yaw: 88.9328537
            Roll: -170.835815
          }
          Scale {
            X: 0.197233617
            Y: 0.213213846
            Z: 0.478019148
          }
        }
        ParentId: 11570759282418961353
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 7082128979156015040
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.5
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.5
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.079
              G: 0.0540526658
              B: 0.0338199958
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
            Id: 2433235999455009803
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
        Id: 10875189470960172892
        Name: "Teardrop - Rounded"
        Transform {
          Location {
            X: 1.38525391
            Y: 1.9498291
            Z: 27.1841621
          }
          Rotation {
            Pitch: -5.45782614
            Yaw: 88.8527298
            Roll: -169.944839
          }
          Scale {
            X: 0.187491581
            Y: 0.198006272
            Z: 0.130725279
          }
        }
        ParentId: 11570759282418961353
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 7082128979156015040
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.038
              G: 0.026
              B: 0.017
              A: 1
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.5
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.5
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
            Id: 2433235999455009803
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
        Id: 15798674816346561447
        Name: "Teardrop - Rounded"
        Transform {
          Location {
            X: 1.59277344
            Y: 1.54968262
            Z: 19.1501198
          }
          Rotation {
            Pitch: -3.35189462
            Yaw: 93.0142212
            Roll: -179.938797
          }
          Scale {
            X: 0.179260865
            Y: 0.18581751
            Z: 0.528003871
          }
        }
        ParentId: 11570759282418961353
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 7082128979156015040
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 1
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.046
              G: 0.0328
              B: 0.024
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
            Id: 7701301908407571554
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
        Id: 11110717143287977229
        Name: "Sphere"
        Transform {
          Location {
            X: -2.12304688
            Y: -1.38391113
            Z: -7.17153931
          }
          Rotation {
            Pitch: 6.16130161
            Yaw: -174.799255
            Roll: -0.783706546
          }
          Scale {
            X: 0.199299529
            Y: -0.172846615
            Z: 0.10120824
          }
        }
        ParentId: 4889027416524574205
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 807038937784509847
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.6
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 2.3
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.577
              G: 0.577
              B: 0.577
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
            Id: 4914364069940318769
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
        Id: 17372713372376425819
        Name: "right_ankle"
        Transform {
          Location {
            X: -8.1159668
            Y: 23.0544128
            Z: 11.4559937
          }
          Rotation {
            Pitch: -7.46794415
            Yaw: -0.616062105
            Roll: -1.07538474
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 16626570038979758447
        ChildIds: 17135175823011077053
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
        Id: 17135175823011077053
        Name: "Right Shoe"
        Transform {
          Location {
            X: 12.2907114
            Y: 1.82681751
            Z: -9.11069
          }
          Rotation {
            Pitch: -7.38316774
            Yaw: -176.209076
            Roll: -1.55640948
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 17372713372376425819
        ChildIds: 5945617241455003630
        ChildIds: 3903490350506848735
        ChildIds: 8740992770399579271
        ChildIds: 2583831072678038183
        ChildIds: 17086401903116977371
        ChildIds: 13874893372547088146
        ChildIds: 12140713478058745610
        ChildIds: 16358723079559561194
        ChildIds: 6158490244025023714
        ChildIds: 6672348030334793886
        ChildIds: 14585326266209580360
        ChildIds: 890675332941466704
        ChildIds: 1243478042137555240
        ChildIds: 303530239492072580
        ChildIds: 9963608323235726694
        ChildIds: 16432782567984029813
        ChildIds: 6751956362117283471
        ChildIds: 8160174224787382905
        ChildIds: 9980810587914702522
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
          Model {
            AggressiveMerge: true
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
        Id: 5945617241455003630
        Name: "Office Cubicle Desk Leg 01"
        Transform {
          Location {
            X: 0.976074219
            Y: -4.5892334
            Z: 10.9308529
          }
          Rotation {
            Pitch: -28.2617912
            Yaw: 179.875626
            Roll: -79.3650436
          }
          Scale {
            X: 0.0319638066
            Y: 0.00445430353
            Z: -0.016872162
          }
        }
        ParentId: 17135175823011077053
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 7082128979156015040
            }
          }
          Overrides {
            Name: "ma:Shared_Detail1:id"
            AssetReference {
              Id: 14629909211943041809
            }
          }
          Overrides {
            Name: "ma:Shared_Detail2:id"
            AssetReference {
              Id: 14629909211943041809
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.038
              G: 0.026
              B: 0.017
              A: 1
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.5
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.5
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
            Id: 1488213721497979136
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
        Id: 3903490350506848735
        Name: "Office Cubicle Desk Leg 01"
        Transform {
          Location {
            X: 0.856436491
            Y: -3.99141264
            Z: 11.123312
          }
          Rotation {
            Pitch: -28.2614975
            Yaw: 179.875381
            Roll: -69.5074158
          }
          Scale {
            X: 0.0317136
            Y: 0.00441526715
            Z: 0.0135746477
          }
        }
        ParentId: 17135175823011077053
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 7082128979156015040
            }
          }
          Overrides {
            Name: "ma:Shared_Detail1:id"
            AssetReference {
              Id: 14629909211943041809
            }
          }
          Overrides {
            Name: "ma:Shared_Detail2:id"
            AssetReference {
              Id: 14629909211943041809
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.038
              G: 0.026
              B: 0.017
              A: 1
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.5
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.5
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
        Id: 8740992770399579271
        Name: "Office Cubicle Desk Leg 01"
        Transform {
          Location {
            X: 0.0952148438
            Y: -0.322631836
            Z: 12.2643414
          }
          Rotation {
            Pitch: -27.2908802
            Yaw: -177.170822
            Roll: -158.201324
          }
          Scale {
            X: 0.0338716209
            Y: 0.0165765025
            Z: -0.00469484273
          }
        }
        ParentId: 17135175823011077053
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 11489275323901504074
            }
          }
          Overrides {
            Name: "ma:Shared_Detail1:id"
            AssetReference {
              Id: 5961184720642333683
            }
          }
          Overrides {
            Name: "ma:Shared_Detail2:id"
            AssetReference {
              Id: 5961184720642333683
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.153806627
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.125
          }
          Overrides {
            Name: "ma:Shared_Detail1:utile"
            Float: 0.5
          }
          Overrides {
            Name: "ma:Shared_Detail1:vtile"
            Float: 0.5
          }
          Overrides {
            Name: "ma:Shared_Detail2:utile"
            Float: 0.5
          }
          Overrides {
            Name: "ma:Shared_Detail2:vtile"
            Float: 0.5
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
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
        CoreMesh {
          MeshAsset {
            Id: 2291424959345176054
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
        Id: 2583831072678038183
        Name: "Office Cubicle Desk Leg 01"
        Transform {
          Location {
            X: -0.611328125
            Y: -3.50256348
            Z: 10.4198093
          }
          Rotation {
            Pitch: -55.6029549
            Yaw: 43.926506
            Roll: -125.744667
          }
          Scale {
            X: 0.0464033186
            Y: 0.023
            Z: -0.0265651904
          }
        }
        ParentId: 17135175823011077053
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 11489275323901504074
            }
          }
          Overrides {
            Name: "ma:Shared_Detail1:id"
            AssetReference {
              Id: 11489275323901504074
            }
          }
          Overrides {
            Name: "ma:Shared_Detail2:id"
            AssetReference {
              Id: 11489275323901504074
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.5
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.5
          }
          Overrides {
            Name: "ma:Shared_Detail1:utile"
            Float: 0.5
          }
          Overrides {
            Name: "ma:Shared_Detail1:vtile"
            Float: 0.5
          }
          Overrides {
            Name: "ma:Shared_Detail2:utile"
            Float: 0.5
          }
          Overrides {
            Name: "ma:Shared_Detail2:vtile"
            Float: 0.5
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
            Id: 890442874131206195
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
        Id: 17086401903116977371
        Name: "Teardrop - Rounded"
        Transform {
          Location {
            X: 3.2272861
            Y: 1.55956125
            Z: 6.35588694
          }
          Rotation {
            Pitch: -3.6812737
            Yaw: 89.6481934
            Roll: 117.120224
          }
          Scale {
            X: 0.165400982
            Y: 0.136108458
            Z: 0.0380130261
          }
        }
        ParentId: 17135175823011077053
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 7082128979156015040
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.038
              G: 0.026
              B: 0.017
              A: 1
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.185771257
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.185771257
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
            Id: 13828127444655325311
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
        Id: 13874893372547088146
        Name: "Teardrop - Rounded"
        Transform {
          Location {
            X: 3.83002448
            Y: -4.01435757
            Z: 4.57483482
          }
          Rotation {
            Pitch: 3.59144306
            Yaw: 93.369957
            Roll: 107.598175
          }
          Scale {
            X: 0.0597449541
            Y: 0.0851138309
            Z: 0.036663495
          }
        }
        ParentId: 17135175823011077053
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 7082128979156015040
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.038
              G: 0.026
              B: 0.017
              A: 1
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.185771257
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.185771257
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
            Id: 13828127444655325311
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
        Id: 12140713478058745610
        Name: "Teardrop - Rounded"
        Transform {
          Location {
            X: -8.21595478
            Y: 1.55444455
            Z: 4.52016973
          }
          Rotation {
            Pitch: 89.8587189
            Yaw: -177.598587
            Roll: 179.999832
          }
          Scale {
            X: 0.179114223
            Y: 0.133621067
            Z: 0.139965907
          }
        }
        ParentId: 17135175823011077053
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 7082128979156015040
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.042
              G: 0.0267833937
              B: 0.01785
              A: 1
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.5
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.5
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
            Id: 10557092075203194640
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
        Id: 16358723079559561194
        Name: "Teardrop - Rounded"
        Transform {
          Location {
            X: 10.4465132
            Y: 1.45387816
            Z: 9.79090786
          }
          Rotation {
            Pitch: 89.6834717
            Yaw: 2.40052223
            Roll: 180
          }
          Scale {
            X: 0.405747265
            Y: 0.120895
            Z: 0.112790264
          }
        }
        ParentId: 17135175823011077053
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 7082128979156015040
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.042
              G: 0.0267833937
              B: 0.01785
              A: 1
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.262715548
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.175965235
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
            Id: 10557092075203194640
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
        Id: 6158490244025023714
        Name: "Cylinder"
        Transform {
          Location {
            X: -9.1058588
            Y: 1.52633953
            Z: -6.82858911e-07
          }
          Rotation {
            Yaw: -90.0000076
            Roll: -179.999969
          }
          Scale {
            X: 0.159903407
            Y: 0.180728808
            Z: 0.0111243427
          }
        }
        ParentId: 17135175823011077053
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 7082128979156015040
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 1.67690432
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.09
              G: 0.0638370067
              B: 0.0486900024
              A: 1
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.373067409
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
            Id: 1137112816547272582
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
        Id: 6672348030334793886
        Name: "Teardrop - Rounded"
        Transform {
          Location {
            X: 2.78216648
            Y: 4.45368958
            Z: 6.33503199
          }
          Rotation {
            Pitch: 2.92288375
            Yaw: 77.652092
            Roll: 109.256371
          }
          Scale {
            X: 0.102456979
            Y: 0.125865847
            Z: 0.203911185
          }
        }
        ParentId: 17135175823011077053
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 7082128979156015040
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.042
              G: 0.0267833937
              B: 0.01785
              A: 1
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.226054773
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.5
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
            Id: 7701301908407571554
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
        Id: 14585326266209580360
        Name: "Teardrop - Rounded"
        Transform {
          Location {
            X: 3.47425103
            Y: 5.46397114
            Z: 4.16046381
          }
          Rotation {
            Pitch: -15.1656828
            Yaw: 76.5287781
            Roll: 99.2113495
          }
          Scale {
            X: 0.0767276734
            Y: 0.10041137
            Z: 0.198624343
          }
        }
        ParentId: 17135175823011077053
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 7082128979156015040
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.042
              G: 0.0267833937
              B: 0.01785
              A: 1
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.290402621
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.373067409
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
            Id: 7701301908407571554
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
        Id: 890675332941466704
        Name: "Cylinder"
        Transform {
          Location {
            X: 10.2660522
            Y: 1.47178411
            Z: 8.74847899e-07
          }
          Rotation {
            Yaw: -82.4998703
            Roll: -179.999985
          }
          Scale {
            X: 0.147750646
            Y: 0.15578115
            Z: 0.0112174926
          }
        }
        ParentId: 17135175823011077053
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 7082128979156015040
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 1.67690432
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.09
              G: 0.0638370067
              B: 0.0486900024
              A: 1
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.373067409
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
            Id: 1137112816547272582
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
        Id: 1243478042137555240
        Name: "Cylinder"
        Transform {
          Location {
            X: 0.541725
            Y: 1.63902164
            Z: 9.75078507e-08
          }
          Rotation {
            Yaw: -95.2796173
            Roll: -179.999985
          }
          Scale {
            X: 0.119908355
            Y: 0.144224629
            Z: 0.0111243306
          }
        }
        ParentId: 17135175823011077053
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 7082128979156015040
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 1.67690432
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.09
              G: 0.0638370067
              B: 0.0486900024
              A: 1
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.373067409
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
        Id: 303530239492072580
        Name: "Teardrop - Rounded"
        Transform {
          Location {
            X: 3.16796875
            Y: -2.27990723
            Z: 6.68972969
          }
          Rotation {
            Pitch: -13.0197945
            Yaw: -75.8093719
            Roll: -109.244011
          }
          Scale {
            X: 0.0927697271
            Y: -0.0996472612
            Z: 0.203912482
          }
        }
        ParentId: 17135175823011077053
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 7082128979156015040
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.042
              G: 0.0267833937
              B: 0.01785
              A: 1
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.226054773
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.5
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
            Id: 7701301908407571554
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
        Id: 9963608323235726694
        Name: "Teardrop - Rounded"
        Transform {
          Location {
            X: 2.48095703
            Y: -2.48986816
            Z: 4.09958649
          }
          Rotation {
            Pitch: -5.92065334
            Yaw: -76.6505508
            Roll: -98.7357178
          }
          Scale {
            X: 0.0961619765
            Y: -0.0952014476
            Z: 0.203280196
          }
        }
        ParentId: 17135175823011077053
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 7082128979156015040
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.042
              G: 0.0267833937
              B: 0.01785
              A: 1
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.290402621
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.373067409
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
            Id: 7701301908407571554
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
        Id: 16432782567984029813
        Name: "Cylinder"
        Transform {
          Location {
            X: -2.70859551
            Y: -2.3810885
            Z: 3.51834751e-06
          }
          Rotation {
            Yaw: -81.4445496
            Roll: -179.999985
          }
          Scale {
            X: 0.0621709563
            Y: 0.116457462
            Z: 0.0111243641
          }
        }
        ParentId: 17135175823011077053
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 7082128979156015040
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 1.67690432
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.09
              G: 0.0638370067
              B: 0.0486900024
              A: 1
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.373067409
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
        Id: 6751956362117283471
        Name: "Teardrop - Rounded"
        Transform {
          Location {
            X: -10.9463072
            Y: 1.50717163
            Z: 4.51181507
          }
          Rotation {
            Pitch: 89.8417358
            Yaw: 178.485519
            Roll: 180
          }
          Scale {
            X: 0.179114193
            Y: 0.129416257
            Z: 0.102522038
          }
        }
        ParentId: 17135175823011077053
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 11489275323901504074
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.5
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.5
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
            Id: 10557092075203194640
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
        Id: 8160174224787382905
        Name: "Gem - Heart Polished"
        Transform {
          Location {
            X: -9.51144409
            Y: 1.6148566
            Z: 6.70786
          }
          Rotation {
            Pitch: -0.00442596246
            Yaw: 91.2542801
            Roll: 112.925507
          }
          Scale {
            X: 0.132897794
            Y: 0.104702935
            Z: 0.113759577
          }
        }
        ParentId: 17135175823011077053
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 11489275323901504074
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.348596871
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.288615704
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
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
        CoreMesh {
          MeshAsset {
            Id: 7464623361773434919
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
        Id: 9980810587914702522
        Name: "Teardrop - Rounded"
        Transform {
          Location {
            X: -1.04124343
            Y: 1.32727027
            Z: 6.81721306
          }
          Rotation {
            Pitch: 55.8753128
            Yaw: 179.823
            Roll: -2.54532051
          }
          Scale {
            X: 0.0853461251
            Y: 0.158985883
            Z: 0.236732408
          }
        }
        ParentId: 17135175823011077053
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 7082128979156015040
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.042
              G: 0.0267833937
              B: 0.01785
              A: 1
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.373067409
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.5
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
            Id: 7701301908407571554
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
        Id: 2984490286495296348
        Name: "left_ankle"
        Transform {
          Location {
            X: -8.1159668
            Y: -23.0543823
            Z: 11.4559937
          }
          Rotation {
            Pitch: -7.46754789
            Yaw: 0.615756929
            Roll: 1.07542014
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 16626570038979758447
        ChildIds: 15861206320404201382
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
        Id: 15861206320404201382
        Name: "Left Shoe"
        Transform {
          Location {
            X: 12.2900391
            Y: -1.82678223
            Z: -9.11077881
          }
          Rotation {
            Pitch: -7.38277149
            Yaw: 176.20932
            Roll: 1.55638897
          }
          Scale {
            X: 1
            Y: -1
            Z: 1
          }
        }
        ParentId: 2984490286495296348
        ChildIds: 11271640989398845921
        ChildIds: 13547168648801734851
        ChildIds: 7256527014951684887
        ChildIds: 17170392076576034021
        ChildIds: 6735959624335872993
        ChildIds: 17738516690509502330
        ChildIds: 14634266040858582772
        ChildIds: 17612854536410747746
        ChildIds: 7267408986432705733
        ChildIds: 5012320195059793136
        ChildIds: 10562431805313705803
        ChildIds: 17569017751514149101
        ChildIds: 15583595519991986544
        ChildIds: 18111010720222225447
        ChildIds: 10622334719892364955
        ChildIds: 2929755882481781596
        ChildIds: 8589714172971750402
        ChildIds: 7506410723925672873
        ChildIds: 421711855827797878
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
          Model {
            AggressiveMerge: true
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
        Id: 11271640989398845921
        Name: "Office Cubicle Desk Leg 01"
        Transform {
          Location {
            X: 0.975585938
            Y: -4.5892334
            Z: 10.9308491
          }
          Rotation {
            Pitch: -28.2617912
            Yaw: 179.875626
            Roll: -79.3650284
          }
          Scale {
            X: 0.0319638066
            Y: 0.00445430353
            Z: -0.016872162
          }
        }
        ParentId: 15861206320404201382
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 7082128979156015040
            }
          }
          Overrides {
            Name: "ma:Shared_Detail1:id"
            AssetReference {
              Id: 14629909211943041809
            }
          }
          Overrides {
            Name: "ma:Shared_Detail2:id"
            AssetReference {
              Id: 14629909211943041809
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.5
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.5
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.038
              G: 0.026
              B: 0.017
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
            Id: 1488213721497979136
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
        Id: 13547168648801734851
        Name: "Office Cubicle Desk Leg 01"
        Transform {
          Location {
            X: 0.856445312
            Y: -3.99133301
            Z: 11.1233082
          }
          Rotation {
            Pitch: -28.2614975
            Yaw: 179.875366
            Roll: -69.5073853
          }
          Scale {
            X: 0.0317136
            Y: 0.00441526715
            Z: 0.0135746477
          }
        }
        ParentId: 15861206320404201382
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 7082128979156015040
            }
          }
          Overrides {
            Name: "ma:Shared_Detail1:id"
            AssetReference {
              Id: 14629909211943041809
            }
          }
          Overrides {
            Name: "ma:Shared_Detail2:id"
            AssetReference {
              Id: 14629909211943041809
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.5
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.5
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.038
              G: 0.026
              B: 0.017
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
        Id: 7256527014951684887
        Name: "Office Cubicle Desk Leg 01"
        Transform {
          Location {
            X: 0.0942382812
            Y: -0.322753906
            Z: 12.2643375
          }
          Rotation {
            Pitch: -27.2908726
            Yaw: -177.170822
            Roll: -158.201324
          }
          Scale {
            X: 0.0338716209
            Y: 0.0165765025
            Z: -0.00469484273
          }
        }
        ParentId: 15861206320404201382
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 11489275323901504074
            }
          }
          Overrides {
            Name: "ma:Shared_Detail1:id"
            AssetReference {
              Id: 5961184720642333683
            }
          }
          Overrides {
            Name: "ma:Shared_Detail2:id"
            AssetReference {
              Id: 5961184720642333683
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.153806627
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.125
          }
          Overrides {
            Name: "ma:Shared_Detail1:utile"
            Float: 0.5
          }
          Overrides {
            Name: "ma:Shared_Detail1:vtile"
            Float: 0.5
          }
          Overrides {
            Name: "ma:Shared_Detail2:utile"
            Float: 0.5
          }
          Overrides {
            Name: "ma:Shared_Detail2:vtile"
            Float: 0.5
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
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
        CoreMesh {
          MeshAsset {
            Id: 2291424959345176054
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
        Id: 17170392076576034021
        Name: "Office Cubicle Desk Leg 01"
        Transform {
          Location {
            X: -0.611816406
            Y: -3.50268555
            Z: 10.4198017
          }
          Rotation {
            Pitch: -55.6029396
            Yaw: 43.9264908
            Roll: -125.744652
          }
          Scale {
            X: 0.0464033186
            Y: 0.023
            Z: -0.0265651904
          }
        }
        ParentId: 15861206320404201382
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 11489275323901504074
            }
          }
          Overrides {
            Name: "ma:Shared_Detail1:id"
            AssetReference {
              Id: 11489275323901504074
            }
          }
          Overrides {
            Name: "ma:Shared_Detail2:id"
            AssetReference {
              Id: 11489275323901504074
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.5
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.5
          }
          Overrides {
            Name: "ma:Shared_Detail1:utile"
            Float: 0.5
          }
          Overrides {
            Name: "ma:Shared_Detail1:vtile"
            Float: 0.5
          }
          Overrides {
            Name: "ma:Shared_Detail2:utile"
            Float: 0.5
          }
          Overrides {
            Name: "ma:Shared_Detail2:vtile"
            Float: 0.5
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
            Id: 890442874131206195
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
        Id: 6735959624335872993
        Name: "Teardrop - Rounded"
        Transform {
          Location {
            X: 3.22705078
            Y: 1.55957031
            Z: 6.35588264
          }
          Rotation {
            Pitch: -3.68128061
            Yaw: 89.6481476
            Roll: 117.120171
          }
          Scale {
            X: 0.165400982
            Y: 0.136108458
            Z: 0.0380130261
          }
        }
        ParentId: 15861206320404201382
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 7082128979156015040
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.185771257
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.185771257
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.038
              G: 0.026
              B: 0.017
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
            Id: 13828127444655325311
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
        Id: 17738516690509502330
        Name: "Teardrop - Rounded"
        Transform {
          Location {
            X: 3.82910156
            Y: -4.0144043
            Z: 4.57483482
          }
          Rotation {
            Pitch: 3.59143615
            Yaw: 93.3699341
            Roll: 107.59816
          }
          Scale {
            X: 0.0597449541
            Y: 0.0851138309
            Z: 0.036663495
          }
        }
        ParentId: 15861206320404201382
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 7082128979156015040
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.038
              G: 0.026
              B: 0.017
              A: 1
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.185771257
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.185771257
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
            Id: 13828127444655325311
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
        Id: 14634266040858582772
        Name: "Teardrop - Rounded"
        Transform {
          Location {
            X: -8.21630859
            Y: 1.55444336
            Z: 4.52017
          }
          Rotation {
            Pitch: 89.8493271
            Yaw: -177.597702
            Roll: -179.999756
          }
          Scale {
            X: 0.179114223
            Y: 0.133621067
            Z: 0.139965907
          }
        }
        ParentId: 15861206320404201382
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 7082128979156015040
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.5
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.5
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.042
              G: 0.0267833937
              B: 0.01785
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
            Id: 10557092075203194640
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
        Id: 17612854536410747746
        Name: "Teardrop - Rounded"
        Transform {
          Location {
            X: 10.4467773
            Y: 1.45385742
            Z: 9.79090309
          }
          Rotation {
            Pitch: 89.6816254
            Yaw: 2.40072894
            Roll: -179.99971
          }
          Scale {
            X: 0.405747265
            Y: 0.120895
            Z: 0.112790264
          }
        }
        ParentId: 15861206320404201382
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 7082128979156015040
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.262715548
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.175965235
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.042
              G: 0.0267833937
              B: 0.01785
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
            Id: 10557092075203194640
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
        Id: 7267408986432705733
        Name: "Cylinder"
        Transform {
          Location {
            X: -9.10595703
            Y: 1.52648926
          }
          Rotation {
            Yaw: -90.0000076
            Roll: -179.999954
          }
          Scale {
            X: 0.159903407
            Y: 0.180728808
            Z: 0.0111243427
          }
        }
        ParentId: 15861206320404201382
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 7082128979156015040
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 1.67690432
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.373067409
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.09
              G: 0.0638370067
              B: 0.0486900024
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
            Id: 1137112816547272582
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
        Id: 5012320195059793136
        Name: "Teardrop - Rounded"
        Transform {
          Location {
            X: 2.78222656
            Y: 4.45373535
            Z: 6.33503151
          }
          Rotation {
            Pitch: 2.92288375
            Yaw: 77.6520462
            Roll: 109.256348
          }
          Scale {
            X: 0.102456979
            Y: 0.125865847
            Z: 0.203911185
          }
        }
        ParentId: 15861206320404201382
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 7082128979156015040
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.226054773
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.5
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.042
              G: 0.0267833937
              B: 0.01785
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
            Id: 7701301908407571554
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
        Id: 10562431805313705803
        Name: "Teardrop - Rounded"
        Transform {
          Location {
            X: 3.47363281
            Y: 5.46398926
            Z: 4.16046333
          }
          Rotation {
            Pitch: -15.1656799
            Yaw: 76.5287628
            Roll: 99.2113495
          }
          Scale {
            X: 0.0767276734
            Y: 0.10041137
            Z: 0.198624343
          }
        }
        ParentId: 15861206320404201382
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 7082128979156015040
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.290402621
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.373067409
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.042
              G: 0.0267833937
              B: 0.01785
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
            Id: 7701301908407571554
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
        Id: 17569017751514149101
        Name: "Cylinder"
        Transform {
          Location {
            X: 10.265625
            Y: 1.47180176
          }
          Rotation {
            Yaw: -82.4998398
            Roll: -179.999969
          }
          Scale {
            X: 0.147750646
            Y: 0.15578115
            Z: 0.0112174926
          }
        }
        ParentId: 15861206320404201382
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 7082128979156015040
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 1.67690432
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.373067409
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.09
              G: 0.0638370067
              B: 0.0486900024
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
            Id: 1137112816547272582
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
        Id: 15583595519991986544
        Name: "Cylinder"
        Transform {
          Location {
            X: 0.541015625
            Y: 1.63916016
          }
          Rotation {
            Yaw: -95.2796097
            Roll: -179.999985
          }
          Scale {
            X: 0.119908355
            Y: 0.144224629
            Z: 0.0111243306
          }
        }
        ParentId: 15861206320404201382
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 7082128979156015040
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 1.67690432
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.373067409
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.09
              G: 0.0638370067
              B: 0.0486900024
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
        Id: 18111010720222225447
        Name: "Teardrop - Rounded"
        Transform {
          Location {
            X: 3.16650391
            Y: -2.27990723
            Z: 6.68972206
          }
          Rotation {
            Pitch: -13.0198059
            Yaw: -75.8093262
            Roll: -109.244
          }
          Scale {
            X: 0.0927697271
            Y: -0.0996472612
            Z: 0.203912482
          }
        }
        ParentId: 15861206320404201382
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 7082128979156015040
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.226054773
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.5
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.042
              G: 0.0267833937
              B: 0.01785
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
            Id: 7701301908407571554
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
        Id: 10622334719892364955
        Name: "Teardrop - Rounded"
        Transform {
          Location {
            X: 2.47998047
            Y: -2.48986816
            Z: 4.09958267
          }
          Rotation {
            Pitch: -5.9206543
            Yaw: -76.6505432
            Roll: -98.7357178
          }
          Scale {
            X: 0.0961619765
            Y: -0.0952014476
            Z: 0.203280196
          }
        }
        ParentId: 15861206320404201382
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 7082128979156015040
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.290402621
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.373067409
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.042
              G: 0.0267833937
              B: 0.01785
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
            Id: 7701301908407571554
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
        Id: 2929755882481781596
        Name: "Cylinder"
        Transform {
          Location {
            X: -2.70898438
            Y: -2.38110352
            Z: 3.81469727e-06
          }
          Rotation {
            Yaw: -81.444519
            Roll: -179.999969
          }
          Scale {
            X: 0.0621709563
            Y: 0.116457462
            Z: 0.0111243641
          }
        }
        ParentId: 15861206320404201382
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 7082128979156015040
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 1.67690432
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.373067409
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.09
              G: 0.0638370067
              B: 0.0486900024
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
        Id: 8589714172971750402
        Name: "Teardrop - Rounded"
        Transform {
          Location {
            X: -10.9462891
            Y: 1.50720215
            Z: 4.51181412
          }
          Rotation {
            Pitch: 89.8309708
            Yaw: 178.485321
            Roll: -179.999893
          }
          Scale {
            X: 0.179114193
            Y: 0.129416257
            Z: 0.102522038
          }
        }
        ParentId: 15861206320404201382
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 11489275323901504074
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.5
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.5
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
            Id: 10557092075203194640
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
        Id: 7506410723925672873
        Name: "Gem - Heart Polished"
        Transform {
          Location {
            X: -9.51123
            Y: 1.61486816
            Z: 6.70786095
          }
          Rotation {
            Pitch: -0.00442596246
            Yaw: 91.2542572
            Roll: 112.925461
          }
          Scale {
            X: 0.132897794
            Y: 0.104702935
            Z: 0.113759577
          }
        }
        ParentId: 15861206320404201382
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 11489275323901504074
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.348596871
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.288615704
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
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
        CoreMesh {
          MeshAsset {
            Id: 7464623361773434919
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
        Id: 421711855827797878
        Name: "Teardrop - Rounded"
        Transform {
          Location {
            X: -1.04150391
            Y: 1.32727051
            Z: 6.81754112
          }
          Rotation {
            Pitch: 55.8752594
            Yaw: 179.823013
            Roll: -2.5453186
          }
          Scale {
            X: 0.0853461251
            Y: 0.158985883
            Z: 0.236732408
          }
        }
        ParentId: 15861206320404201382
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 7082128979156015040
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.373067409
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.5
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.042
              G: 0.0267833937
              B: 0.01785
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
            Id: 7701301908407571554
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
        Id: 5539184402336162495
        Name: "PickupTrigger"
        Transform {
          Location {
            Z: 130.652557
          }
          Rotation {
            Yaw: 3.25688781e-12
          }
          Scale {
            X: 1.5
            Y: 1.5
            Z: 2.5
          }
        }
        ParentId: 9573753560124197201
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
        Trigger {
          Interactable: true
          InteractionLabel: "Equip Iron Armor"
          TeamSettings {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          TriggerShape_v2 {
            Value: "mc:etriggershape:box"
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
    }
    Assets {
      Id: 5035333608653009594
      Name: "Urban Vehicle Car - Windshield 01"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_veh_urb_car_kit_wndshield_001_ref"
      }
    }
    Assets {
      Id: 2018227301497757374
      Name: "Invisible"
      PlatformAssetType: 2
      PrimaryAsset {
        AssetType: "MaterialAssetRef"
        AssetId: "mi_invisible_001"
      }
    }
    Assets {
      Id: 16353917461806733124
      Name: "Ring - Thin"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_torus_003"
      }
    }
    Assets {
      Id: 5489775416547967874
      Name: "Sphere - Half"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_hemisphere_001"
      }
    }
    Assets {
      Id: 517727953107580667
      Name: "Ring - Quarter Thin"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_quarter_torus_001"
      }
    }
    Assets {
      Id: 5836430349218932838
      Name: "Pipe - Thin"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_pipe_003"
      }
    }
    Assets {
      Id: 5624341977690611171
      Name: "Ring - Quarter Beveled Thin"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_quarter_ring_faceted_thin_001_ref"
      }
    }
    Assets {
      Id: 10037221186293404892
      Name: "Urban Vehicle Sedan - Door Rear 01 - Window 01"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_veh_urb_car_sdn_door_rear_001_window_001_ref"
      }
    }
    Assets {
      Id: 18119351551008849317
      Name: "Urban Vehicle Accessory - Sedan Fenderflare 02"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_veh_urb_car_acc_fenderflare_002_ref"
      }
    }
    Assets {
      Id: 17409486211126394575
      Name: "Basic Bean Thin Long"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_prim_bean_thin_long_001_ref"
      }
    }
    Assets {
      Id: 4952651028164497324
      Name: "Gem - Trillion Polished"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_gem_trillion_polished_001"
      }
    }
    Assets {
      Id: 14202507408574622793
      Name: "Gem - Baguette Polished"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_gem_baguette_polished_001"
      }
    }
    Assets {
      Id: 17050817775433979705
      Name: "Gem - Pear Polished"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_gem_pear_polished_001"
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
      Id: 10377995983548406039
      Name: "Humanoid 2 Rig"
      PlatformAssetType: 25
      PrimaryAsset {
        AssetType: "SkeletonAssetRef"
        AssetId: "npc_guy_wireframe_001_ref"
      }
    }
    Assets {
      Id: 537187530340465379
      Name: "Humanoid 2 Roscoe"
      PlatformAssetType: 26
      PrimaryAsset {
        AssetType: "SkinnedMeshAssetRef"
        AssetId: "npc_human_guy_head_military_001_ref"
      }
    }
    Assets {
      Id: 5966194567568449308
      Name: "Humanoid 2 Military Pants"
      PlatformAssetType: 26
      PrimaryAsset {
        AssetType: "SkinnedMeshAssetRef"
        AssetId: "npc_human_guy_lower_military_000_ref"
      }
    }
    Assets {
      Id: 10258188976838646478
      Name: "Humanoid 2 Trooper Armor"
      PlatformAssetType: 26
      PrimaryAsset {
        AssetType: "SkinnedMeshAssetRef"
        AssetId: "npc_human_guy_upper_scifi_002_ref"
      }
    }
    Assets {
      Id: 8692862186300254979
      Name: "Basic Apple"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_prim_org_apple_001_ref"
      }
    }
    Assets {
      Id: 2092839297938637125
      Name: "Basic Bean 01"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_prim_org_bean_001_ref"
      }
    }
    Assets {
      Id: 807038937784509847
      Name: "Chain Link 01"
      PlatformAssetType: 2
      PrimaryAsset {
        AssetType: "MaterialAssetRef"
        AssetId: "mi_mil_chainlink_001_uv_ref"
      }
    }
    Assets {
      Id: 9732748442197767654
      Name: "Teardrop - Truncated"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_truncated_teardrop_001"
      }
    }
    Assets {
      Id: 16056750561997177580
      Name: "Crescent - 02"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_crescent_002"
      }
    }
    Assets {
      Id: 12794205808434669014
      Name: "Basic Avocado"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_prim_org_avocado_001_ref"
      }
    }
    Assets {
      Id: 5475761223416488121
      Name: "Fabric Burlap New 01"
      PlatformAssetType: 2
      PrimaryAsset {
        AssetType: "MaterialAssetRef"
        AssetId: "mi_fan_fabric_burlap_002_uv"
      }
    }
    Assets {
      Id: 12434974458467685788
      Name: "Sphere"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_sphere_002"
      }
    }
    Assets {
      Id: 2433235999455009803
      Name: "Ring"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_torus_004"
      }
    }
    Assets {
      Id: 2280761768427719435
      Name: "Chain Ceiling Anchor"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_chain_top_001"
      }
    }
    Assets {
      Id: 2291424959345176054
      Name: "Prism - 3-Sided Polished"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_prism_hq_001"
      }
    }
    Assets {
      Id: 5961184720642333683
      Name: "Metal Iron 01"
      PlatformAssetType: 2
      PrimaryAsset {
        AssetType: "MaterialAssetRef"
        AssetId: "mi_metal_iron_001"
      }
    }
    Assets {
      Id: 1488213721497979136
      Name: "Cube - Arched"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_cube_arched_001"
      }
    }
    Assets {
      Id: 14629909211943041809
      Name: "Metal Gold 01"
      PlatformAssetType: 2
      PrimaryAsset {
        AssetType: "MaterialAssetRef"
        AssetId: "mi_metal_gold_001"
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
      Id: 7511473365680159662
      Name: "Ring - Quarter"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_quarter_torus_002"
      }
    }
    Assets {
      Id: 916665379155427451
      Name: "Capsule"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_capsule_001"
      }
    }
    Assets {
      Id: 890442874131206195
      Name: "Office Cubicle Desk Leg 01"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_prop_off_cubicle_deskleg_001_ref"
      }
    }
    Assets {
      Id: 12610149741243116648
      Name: "Urban Pipe Wrap 01"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_prop_urb_pipes_acc_coupling_005_ref"
      }
    }
    Assets {
      Id: 5154493427538871909
      Name: "Corrugated Sheet Medium"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_prop_mil_corrugated_sheet_03_ref"
      }
    }
    Assets {
      Id: 9161309425071896764
      Name: "Trim - Curve 30\302\260 - 12m Radius"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_trimitives_001_curve30_12m_ref"
      }
    }
    Assets {
      Id: 11585801559919915394
      Name: "Pipe - Half Thin"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_half-pipe_002"
      }
    }
    Assets {
      Id: 1751008683233857052
      Name: "Cube - Rounded"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_cube_rounded_002"
      }
    }
    Assets {
      Id: 581308431536911762
      Name: "Fantasy Sack Tied"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_prop_fantasy_sack_002_ref"
      }
    }
    Assets {
      Id: 16383387032370848731
      Name: "Wedge - Corner Complex"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_corelogo_shape_001"
      }
    }
    Assets {
      Id: 4914364069940318769
      Name: "Ellipsoid - Truncated"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_ellipsoid_truncated_001"
      }
    }
    Assets {
      Id: 17656495108824350163
      Name: "Corrugated Sheet Small"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_prop_mil_corrugated_sheet_04_ref"
      }
    }
    Assets {
      Id: 14349802543597031035
      Name: "Cylinder - Chamfered"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_cylinder_chamfer"
      }
    }
    Assets {
      Id: 13828127444655325311
      Name: "Cylinder - Rounded"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_cylinder_rounded_002"
      }
    }
    Assets {
      Id: 7701301908407571554
      Name: "Lathe Simple "
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_prim_lathe_simple_001_ref"
      }
    }
    Assets {
      Id: 10557092075203194640
      Name: "Teardrop - Rounded"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_teardrop_rounded_001_ref"
      }
    }
    Assets {
      Id: 1137112816547272582
      Name: "Cylinder"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_cylinder_002"
      }
    }
    Assets {
      Id: 7464623361773434919
      Name: "Heart - Polished"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_heart_polished_001"
      }
    }
    PrimaryAssetId {
      AssetType: "None"
      AssetId: "None"
    }
  }
  Marketplace {
    Description: "This pack includes (5) player equippable fully body armored sets.\r\n\r\nCredits -\r\nOrginally created by: StormHawk\r\nOptimized by: WindfallDrifter"
  }
  SerializationVersion: 118
  DirectlyPublished: true
}
