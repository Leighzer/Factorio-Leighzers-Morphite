
if mods["Clowns-Extended-Minerals"] and settings.startup["isMorphiteToClowns-Extended-MineralsEnabled"].value then
    data:extend({
        {
            type = "item-subgroup",
            name = "leighzermorphite-Clowns-Extended-Minerals",
            group = "leighzermorphite",
            order = "ag",
          }
    })
    
    for i=1,7 do
        AddRecipeDataBundle(
            {
                type = "recipe",
                name = "morphite-to-clowns-ore"..i,
                energy_required = 1, 
                enabled = true,
                category = "crafting",
                ingredients = {{"morphite-ore", 2}},
                result = "clowns-ore"..i,
                result_count = 1,
                subgroup = "leighzermorphite-Clowns-Extended-Minerals",
                order = i
            },
            nil,
            true,
            true 
        )
    end

end
