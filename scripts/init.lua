local variant = Tracker.ActiveVariantUID
local has_map = variant ~= "var_minimal" and (not variant:find("itemsonly"))

Tracker:AddItems("items/quest.json")
Tracker:AddItems("items/equipment.json")
Tracker:AddItems("items/items.json")
Tracker:AddItems("items/dungeons.json")

ScriptHost:LoadScript("scripts/logic.lua")

if has_map then
  Tracker:AddMaps("maps/maps.json")
  Tracker:AddLocations("locations/overworld.json")
  Tracker:AddLocations("locations/forest.json")
  Tracker:AddLocations("locations/mines.json")
  Tracker:AddLocations("locations/lakebed.json")
  Tracker:AddLocations("locations/grounds.json")
  Tracker:AddLocations("locations/mansion.json")
  Tracker:AddLocations("locations/time.json")
  Tracker:AddLocations("locations/sky.json")
  Tracker:AddLocations("locations/palace.json")
  Tracker:AddLocations("locations/castle.json")
end

Tracker:AddLayouts("layouts/dungeon_grids.json")
Tracker:AddLayouts("layouts/item_grids.json")
Tracker:AddLayouts("layouts/layouts.json")
Tracker:AddLayouts("layouts/capture.json")
Tracker:AddLayouts("layouts/tracker.json")
Tracker:AddLayouts("layouts/broadcast.json")