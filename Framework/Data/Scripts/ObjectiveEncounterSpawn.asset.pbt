Assets {
  Id: 15156443327978326566
  Name: "ObjectiveEncounterSpawn"
  PlatformAssetType: 3
  TextAsset {
    CustomParameters {
      Overrides {
        Name: "cs:MinPlayerLevel"
        Int: 0
      }
      Overrides {
        Name: "cs:MaxPlayerLevel"
        Int: 9999
      }
      Overrides {
        Name: "cs:enemyDefinitions"
        AssetReference {
          Id: 3622322006152135864
        }
      }
      Overrides {
        Name: "cs:EnemyIDs"
        String: "Raptor, Skeleton"
      }
      Overrides {
        Name: "cs:EnemyCount"
        Int: 4
      }
      Overrides {
        Name: "cs:ChanceRareEnemy"
        Float: 1
      }
      Overrides {
        Name: "cs:ChanceEpicEnemy"
        Float: 0.01
      }
      Overrides {
        Name: "cs:ChanceLegendaryEnemy"
        Float: 0.001
      }
      Overrides {
        Name: "cs:CommonLootId"
        String: "Common"
      }
      Overrides {
        Name: "cs:RareLootId"
        String: "Rare"
      }
      Overrides {
        Name: "cs:EpicLootId"
        String: "Epic"
      }
      Overrides {
        Name: "cs:LegendaryLootId"
        String: "Legendary"
      }
      Overrides {
        Name: "cs:TriggerTemplate"
        AssetReference {
          Id: 7623065181165501899
        }
      }
      Overrides {
        Name: "cs:AdditionalRadius"
        Int: 10000
      }
      Overrides {
        Name: "cs:DespawnDelay"
        Float: 10
      }
      Overrides {
        Name: "cs:enemyDefinitions:category"
        String: "EnemyInfo"
      }
      Overrides {
        Name: "cs:EnemyCount:category"
        String: "EnemyInfo"
      }
      Overrides {
        Name: "cs:EnemyIDs:category"
        String: "EnemyInfo"
      }
      Overrides {
        Name: "cs:ChanceRareEnemy:category"
        String: "EnemyInfo"
      }
      Overrides {
        Name: "cs:ChanceEpicEnemy:category"
        String: "EnemyInfo"
      }
      Overrides {
        Name: "cs:ChanceLegendaryEnemy:category"
        String: "EnemyInfo"
      }
      Overrides {
        Name: "cs:TriggerTemplate:category"
        String: "EncounterArea"
      }
      Overrides {
        Name: "cs:AdditionalRadius:category"
        String: "EncounterArea"
      }
      Overrides {
        Name: "cs:DespawnDelay:category"
        String: "EncounterArea"
      }
      Overrides {
        Name: "cs:EnemyIDs:tooltip"
        String: "Comma-separated list of enemy IDs to look up in the Enemies data table."
      }
      Overrides {
        Name: "cs:MinPlayerLevel:category"
        String: "LevelLimits"
      }
      Overrides {
        Name: "cs:CommonLootId:category"
        String: "Rewards"
      }
      Overrides {
        Name: "cs:RareLootId:category"
        String: "Rewards"
      }
      Overrides {
        Name: "cs:EpicLootId:category"
        String: "Rewards"
      }
      Overrides {
        Name: "cs:LegendaryLootId:category"
        String: "Rewards"
      }
      Overrides {
        Name: "cs:MaxPlayerLevel:category"
        String: "LevelLimits"
      }
    }
  }
  SerializationVersion: 124
}
