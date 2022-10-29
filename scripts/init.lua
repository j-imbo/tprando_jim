local variant = Tracker.ActiveVariantUID
local has_map = variant ~= "var_minimal" and (not variant:find("itemsonly"))

Tracker:AddItems("items/quest.json")
Tracker:AddItems("items/equipment.json")
Tracker:AddItems("items/items.json")
Tracker:AddItems("items/dungeons.json")

ScriptHost:LoadScript("scripts/sdk/class.lua")
ScriptHost:LoadScript("scripts/sdk/custom_item.lua")

if PopVersion then
  ScriptHost:LoadScript("scripts/dungeonrewardspop.lua")
else
  ScriptHost:LoadScript("scripts/dungeonrewards.lua")
end
for i = 1, 8 do
  DungeonReward(i)
end

if PopVersion then
  ScriptHost:LoadScript("scripts/bombbagpop.lua")
else
  ScriptHost:LoadScript("scripts/bombbag.lua")
end
BombBag()

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

if PopVersion then
  Tracker:AddLayouts("layouts/dungeon_grids_pop.json")
  Tracker:AddLayouts("layouts/item_grids_pop.json")
  Tracker:AddLayouts("layouts/layouts_pop.json")
else
  Tracker:AddLayouts("layouts/dungeon_grids.json")
  Tracker:AddLayouts("layouts/item_grids.json")
  Tracker:AddLayouts("layouts/layouts.json")
end
Tracker:AddLayouts("layouts/capture.json")
Tracker:AddLayouts("layouts/tracker.json")
Tracker:AddLayouts("layouts/broadcast.json")