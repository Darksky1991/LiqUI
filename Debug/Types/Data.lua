---@class LiqUI_Expansion
---@field id Enum.ExpansionLevel
---@field abbr string
---@field name string

---@class LiqUI_Season
---@field seasonID number
---@field seasonDisplayID number
---@field expansionID Enum.ExpansionLevel
---@field name string
---@field description string

---@class LiqUI_Encounter
---@field index number
---@field name string|nil
---@field description string|nil
---@field journalEncounterID number|nil
---@field iconImage number|string|nil
---@field journalEncounterSectionID number|nil
---@field journalLink string|nil
---@field journalInstanceID number|nil
---@field instanceEncounterID number|nil
---@field instanceID number|nil

---@class LiqUI_Dungeon
---@field seasonID number
---@field seasonDisplayID number
---@field challengeModeID number
---@field journalInstanceID number
---@field mapId number
---@field teleports number[]
---@field time number
---@field encounters LiqUI_Encounter[]
---@field abbr string
---@field name string
---@field short string|nil
---@field description string|nil
---@field loot table
---@field texture number|string|nil

---@class LiqUI_Raid
---@field seasonID number
---@field seasonDisplayID number
---@field journalInstanceID number
---@field instanceID number
---@field order number
---@field numEncounters number
---@field encounters LiqUI_Encounter[]
---@field modifiedInstanceInfo table|nil
---@field abbr string
---@field name string
---@field short string|nil
---@field loot table

---@class LiqUI_RaidDifficulty
---@field id number
---@field order number
---@field abbr string
---@field name string
---@field short string|nil
---@field color colorRGBA

---@class LiqUI_InventorySlot
---@field id number
---@field token string
---@field paperdoll string
---@field side LiqUI_InventorySlotSideId
---@field canEnchant boolean
---@field canSocket boolean

---@alias LiqUI_UpgradeTrackKind "crest" | "label" | "crafted"

---@class LiqUI_UpgradeTrack
---@field kind LiqUI_UpgradeTrackKind
---@field name string
---@field maxLevel number
---@field bonusIDs number[]

---@class LiqUI_UpgradeSeason
---@field seasonID number
---@field seasonDisplayID number
---@field maxUpgradeLevel number
---@field tracks LiqUI_UpgradeTrack[]

---@class LiqUI_UpgradeBonusIndex
---@field track LiqUI_UpgradeTrack
---@field season LiqUI_UpgradeSeason
---@field index number

---@class LiqUI_Specialization
---@field specID number
---@field name string|nil
---@field icon number|nil

---@class LiqUI_Class
---@field id number
---@field name string
---@field file string
---@field specs LiqUI_Specialization[]

---@class LiqUI_DataCache
---@field seasonID number|nil
---@field seasonDisplayID number|nil
---@field classes table<number, LiqUI_Class>
---@field upgradeByBonusID table<number, LiqUI_UpgradeBonusIndex>|nil

---@class LiqUI_Data
---@field gameDataLoaded boolean
---@field cache LiqUI_DataCache
---@field dungeons LiqUI_Dungeon[]
---@field raids LiqUI_Raid[]
---@field raidDifficulties LiqUI_RaidDifficulty[]
---@field seasons LiqUI_Season[]
---@field expansions LiqUI_Expansion[]
---@field inventorySlots LiqUI_InventorySlot[]
---@field upgradeSeasons LiqUI_UpgradeSeason[]
---@field craftedSeasonBonusIDs table<number, number>
