---@alias LiqUI_EJScanCallback fun()
---@alias LiqUI_EJScanInstanceType "raid" | "dungeon"
---@alias LiqUI_EJScanItemStats table<string, number>
---@alias LiqUI_EJScanProgressCallback fun(text: string|nil, progress: number|nil)

---@class LiqUI_EJScanCache
---@field seasonID number
---@field lastUpdate number
---@field items table<number, LiqUI_EJScanCacheItem>

---@class LiqUI_EJScanCacheItem
---@field itemID number
---@field name string
---@field link string|nil
---@field quality Enum.ItemQuality
---@field slot string
---@field filterType Enum.ItemSlotFilterType|nil
---@field classID number|nil
---@field subclassID number|nil
---@field equipLoc string|nil
---@field icon fileID|nil
---@field journalInstanceID number
---@field instanceName string
---@field instanceType LiqUI_EJScanInstanceType
---@field journalEncounterIDs table<number, boolean>
---@field specs table<number, boolean>
---@field stats LiqUI_EJScanItemStats
---@field loaded boolean|nil

---@class LiqUI_EJScanClassSpec
---@field classID number
---@field specID number

---@class LiqUI_EJScanInstance
---@field instance LiqUI_Dungeon|LiqUI_Raid
---@field instanceType LiqUI_EJScanInstanceType

---@class LiqUI_EJScanJob
---@field callbacks LiqUI_EJScanCallback[]
---@field state LiqUI_EJScanState|nil
---@field counter number

---@class LiqUI_EJScanJournalFilters
---@field tier number
---@field difficultyID number
---@field lootClassID number|nil
---@field lootSpecID number|nil
---@field slotFilter Enum.ItemSlotFilterType
---@field instanceID number|nil
---@field encounterID number|nil
---@field searchText string
---@field hadSearch boolean
---@field selectedTab number|nil
---@field encounterTab number|nil

---@class LiqUI_EJScanState
---@field scanId number
---@field cache LiqUI_EJScanCache
---@field journalFilters LiqUI_EJScanJournalFilters
---@field journalUIWasShown boolean
---@field journalPrimedForScan boolean|nil
---@field activeJournalInstanceID number|nil
---@field activeJournalEncounterID number|nil
---@field activeInstanceType LiqUI_EJScanInstanceType|nil
---@field instances LiqUI_EJScanInstance[]
---@field classSpecs LiqUI_EJScanClassSpec[]
---@field instanceIndex number
---@field encounterIndex number
---@field step number
---@field totalSteps number

---@class LiqUI_EJScan
---@field progressListeners LiqUI_EJScanProgressCallback[]
---@field itemCache LiqUI_EJScanCache
