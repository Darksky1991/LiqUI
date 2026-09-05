---@class LiqUI
local LiqUI = LibStub and LibStub("LiqUI-1.0", true)
if not LiqUI or not LiqUI.Data then
  return
end

---@class LiqUI_Data
local Data = LiqUI.Data

local TableGet = LiqUI.Utils.TableGet

---@type LiqUI_Season[]
Data.seasons = {
  {seasonID = 17, seasonDisplayID = 1, expansionID = Enum.ExpansionLevel.Midnight, name = "Midnight - Season 1", description = "The Voidspire, March on Quel'Danas, The Dreamrift, Sporefall"},
  {seasonID = 18, seasonDisplayID = 2, expansionID = Enum.ExpansionLevel.Midnight, name = "Midnight - Season 2", description = "The Tidebound Grotto, The Venomous Abyss"},
}

---@return number
---@return number
function Data:GetCurrentSeason()
  if self.cache.seasonID and self.cache.seasonID > 0 and self.cache.seasonDisplayID and self.cache.seasonDisplayID > 0 then
    return self.cache.seasonID, self.cache.seasonDisplayID
  end

  local seasonID = C_MythicPlus.GetCurrentSeason() or -1
  local seasonDisplayID = C_MythicPlus.GetCurrentUIDisplaySeason() or -1
  if seasonID <= 0 or seasonDisplayID <= 0 then
    return -1, -1
  end

  local season = TableGet(self.seasons, "seasonID", seasonID)
  local currentExpansionLevel = GetExpansionLevel()
  if season and currentExpansionLevel and season.expansionID < currentExpansionLevel then
    local nextSeason = TableGet(self.seasons, "expansionID", currentExpansionLevel)
    if nextSeason then
      seasonID = nextSeason.seasonID
      seasonDisplayID = nextSeason.seasonDisplayID
    end
  end

  self.cache.seasonID = seasonID
  self.cache.seasonDisplayID = seasonDisplayID
  return seasonID, seasonDisplayID
end
