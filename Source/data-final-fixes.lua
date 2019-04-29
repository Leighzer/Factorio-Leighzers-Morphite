if settings.startup["ismorphiteToExternalModEnabled"].value then --if enabled in the mod menu we will generate recipes for other supported mods
    require("prototypes.external-recipe.external-recipe") -- prototypes for morphite to x recipes for items introduced in other mods (bobs, angels, etc.)
end

InsertData()--this is where all recipes+technology get loaded into data.raw

local itemTable =
{
  {"morphite-ore", 1},
  {"morphite-fuel", 2}
}

if deadlock_stacking then
  for _, item in pairs(itemTable) do
    if data.raw.item[item[1]] then
      deadlock_stacking.create(item[1], "__leighzermorphite__/graphics/icons/"..item[1].."-stack.png", "deadlock-stacking-"..item[2], 32)
    end
  end
end

if deadlock_crating then
  for _, item in pairs(itemTable) do
    if data.raw.item[item[1]] then
      deadlock_crating.create(item[1], "deadlock-crating-"..item[2])
    end
  end
end
