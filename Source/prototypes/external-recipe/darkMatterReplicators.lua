if mods["dark-matter-replicators-0_17-port"] and settings.startup["isMorphiteTodark-matter-replicators-0_17-portEnabled"].value then
    
    --add item sub group so we can keep all of the morphite to bobs ores recipes in the same section
    data:extend({
        {
            type = "item-subgroup",
            name = "leighzermorphite-dark-matter-replicators-0_17-port",
            group = "leighzermorphite",
            order = "ag",
          }
    })
    
    AddRecipeDataBundle(
        {
            type = "recipe",
            name = "morphite-to-tenemut",
            energy_required = 1, 
            enabled = true,
            category = "crafting",
            ingredients = {{"morphite-ore", 1}},
            result = "tenemut",
            result_count = 1,
            subgroup = "leighzermorphite-dark-matter-replicators-0_17-port",
            order = "a"
        },
        nil,
        true,
        true 
    )
    
end