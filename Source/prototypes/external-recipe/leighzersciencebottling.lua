if leighzermods and leighzermods.leighzersciencebottling and settings.startup["isMorphiteToleighzersciencebottlingEnabled"].value then
       
    data:extend({
        {
            type = "item-subgroup",
            name = "leighzermorphite-leighzersciencebottling",
            group = "leighzermorphite",
            order = "ac",
          }
    })

    if leighzermods.leighzersciencebottling.isPrecursoreEnabled then
        AddRecipeDataBundle(
            {
                type = "recipe",
                name = "morphite-to-precursore-ore",
                energy_required = 1, 
                enabled = true,
                category = "crafting",
                ingredients = {{"morphite-ore", 1}},
                result = "precursore-ore",
                result_count = 1,
                subgroup = "leighzermorphite-leighzersciencebottling", 
                order = "a"
            },
            nil, --prototype for technology to unlock recipe
            true, --bool to indicate if this recipe should be inserted into data.raw (can be later flipped by other mods to override what recipes ultimately get added)
            true --bool to indicate if this recipe should allow productivity modules
        )
    end
	
    AddRecipeDataBundle(
        {
            type = "recipe",
            name = "morphite-to-sand-ore",
            energy_required = 1, 
            enabled = true,
            category = "crafting",
            ingredients = {{"morphite-ore", 1}},
            result = "sand-ore",
            result_count = 1,
            subgroup = "leighzermorphite-leighzersciencebottling", 
            order = "b"
        },
        nil, --prototype for technology to unlock recipe
        true, --bool to indicate if this recipe should be inserted into data.raw (can be later flipped by other mods to override what recipes ultimately get added)
        true --bool to indicate if this recipe should allow productivity modules
    )

end