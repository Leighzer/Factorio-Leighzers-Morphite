if leighzermods and leighzermods.leighzercheetahore and settings.startup["isMorphiteToleighzercheetahoreEnabled"].value then
        
    data:extend({
        {
            type = "item-subgroup",
            name = "leighzermorphite-leighzercheetahore",
            group = "leighzermorphite",
            order = "ab",
          }
    })
    
    AddRecipeDataBundle(
        {
            type = "recipe",
            name = "morphite-to-cheetah-ore",
            energy_required = 5, 
            enabled = true,
            category = "advanced-crafting",
            ingredients = {{"morphite-ore", 1}},
            result = "cheetah-ore",
            result_count = 1,
            subgroup = "leighzermorphite-leighzercheetahore",
            order = "a"
        },
        nil, 
        true, 
        true 
    )
    
end