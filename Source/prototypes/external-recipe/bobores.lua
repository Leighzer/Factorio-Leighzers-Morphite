if bobmods and bobmods.ores and not (angelsmods and angelsmods.refining) and settings.startup["isMorphiteToboboresEnabled"].value then
    
    --add item sub group so we can keep all of the morphite to bobs ores recipes in the same section
    data:extend({
        {
            type = "item-subgroup",
            name = "leighzermorphite-bobores",
            group = "leighzermorphite",
            order = "ad",
          }
    })

    --tech level 1 defined by bobingabout
    if bobmods.ores.tin.enabled then
        AddRecipeDataBundle(--this function stores the below data in leighzermods.recipeDataBundles    
            {--recipe prototype
                type = "recipe",
                name = "morphite-to-tin",
                energy_required = 1, 
                enabled = true,
                category = "crafting",
                ingredients = {{"morphite-ore", 1}},
                result = "tin-ore",
                result_count = 1,
                subgroup = "leighzermorphite-bobores", --have this value equal to item-subgroup name created above
                order = "a"
            },
            nil, --prototype for technology to unlock recipe
            bobmods.ores.tin.enabled, --bool to indicate if this recipe should be inserted into data.raw (can be later flipped by other mods to override what recipes ultimately get added)
            true --bool to indicate if this recipe should allow productivity modules
        )
    end

    if bobmods.ores.lead.enabled then
        AddRecipeDataBundle(    
            {
                type = "recipe",
                name = "morphite-to-lead",
                energy_required = 1, 
                enabled = true,
                category = "crafting",
                ingredients = {{"morphite-ore", 1}},
                result = "lead-ore",
                result_count = 1,
                subgroup = "leighzermorphite-bobores",
                order = "b"
            },
            nil,
            bobmods.ores.tin.enabled,
            true
        )        
    end

    if bobmods.ores.quartz.enabled then
        AddRecipeDataBundle(    
            {
                type = "recipe",
                name = "morphite-to-quartz",
                energy_required = 1, 
                enabled = true,
                category = "crafting",
                ingredients = {{"morphite-ore", 1}},
                result = "quartz",
                result_count = 1,
                subgroup = "leighzermorphite-bobores",
                order = "c"
            },
            nil,
            bobmods.ores.quartz.enabled,
            true
        )        
    end

    --tech level 2 defined by bobingabout
    if bobmods.ores.nickel.enabled then
        AddRecipeDataBundle(    
            {
                type = "recipe",
                name = "morphite-to-nickel",
                energy_required = 5, 
                enabled = true,
                category = "crafting",
                ingredients = {{"morphite-ore", 1}},
                result = "nickel-ore",
                result_count = 1,
                subgroup = "leighzermorphite-bobores",
                order = "d"
            },
            nil,
            bobmods.ores.nickel.enabled,
            true
        )        
    end

    if bobmods.ores.zinc.enabled then
        AddRecipeDataBundle(    
            {
                type = "recipe",
                name = "morphite-to-zinc",
                energy_required = 5, 
                enabled = true,
                category = "crafting",
                ingredients = {{"morphite-ore", 1}},
                result = "zinc-ore",
                result_count = 1,
                subgroup = "leighzermorphite-bobores",
                order = "e"
            },
            nil,
            bobmods.ores.zinc.enabled,
            true
        )        
    end

    if bobmods.ores.bauxite.enabled then
        AddRecipeDataBundle(    
            {
                type = "recipe",
                name = "morphite-to-bauxite",
                energy_required = 5, 
                enabled = true,
                category = "crafting",
                ingredients = {{"morphite-ore", 1}},
                result = "bauxite-ore",
                result_count = 1,
                subgroup = "leighzermorphite-bobores",
                order = "f"
            },
            nil,
            bobmods.ores.bauxite.enabled,
            true
        )
    end

    if bobmods.ores.cobalt.enabled then
        AddRecipeDataBundle(    
            {
                type = "recipe",
                name = "morphite-to-cobalt",
                energy_required = 5, 
                enabled = true,
                category = "crafting",
                ingredients = {{"morphite-ore", 1}},
                result = "cobalt-ore",
                result_count = 1,
                subgroup = "leighzermorphite-bobores",
                order = "g"
            },
            nil,
            bobmods.ores.cobalt.enabled,
            true
        )        
    end

    if bobmods.ores.silver.enabled then
        AddRecipeDataBundle(    
            {
                type = "recipe",
                name = "morphite-to-silver",
                energy_required = 5, 
                enabled = true,
                category = "crafting",
                ingredients = {{"morphite-ore", 1}},
                result = "silver-ore",
                result_count = 1,
                subgroup = "leighzermorphite-bobores",
                order = "h"
            },
            nil,
            bobmods.ores.silver.enabled,
            true
        )
    end    

    --tech level 3 defined by bobingabout
    if bobmods.ores.rutile.enabled then
        AddRecipeDataBundle(    
            {
                type = "recipe",
                name = "morphite-to-rutile",
                energy_required = 60, 
                enabled = true,
                category = "crafting",
                ingredients = {{"morphite-ore", 1}},
                result = "rutile-ore",
                result_count = 1,
                subgroup = "leighzermorphite-bobores",
                order = "i"
            },
            nil,
            bobmods.ores.rutile.enabled,
            true
        )        
    end

    if bobmods.ores.tungsten.enabled then
        AddRecipeDataBundle(    
            {
                type = "recipe",
                name = "morphite-to-tungsten",
                energy_required = 60, 
                enabled = true,
                category = "crafting",
                ingredients = {{"morphite-ore", 1}},
                result = "tungsten-ore",
                result_count = 1,
                subgroup = "leighzermorphite-bobores",
                order = "j"
            },
            nil,
            bobmods.ores.tungsten.enabled,
            true
        )        
    end

    if bobmods.ores.gold.enabled then
        AddRecipeDataBundle(    
            {
                type = "recipe",
                name = "morphite-to-gold",
                energy_required = 60, 
                enabled = true,
                category = "crafting",
                ingredients = {{"morphite-ore", 1}},
                result = "gold-ore",
                result_count = 1,
                subgroup = "leighzermorphite-bobores",
                order = "k"
            },
            nil,
            bobmods.ores.gold.enabled,
            true
        )        
    end

    if bobmods.ores.gems.enabled then
        AddRecipeDataBundle(    
            {
                type = "recipe",
                name = "morphite-to-gems",
                energy_required = 60, 
                enabled = true,
                category = "crafting",
                ingredients = {{"morphite-ore", 1}},
                result = "gem-ore",
                result_count = 1,
                subgroup = "leighzermorphite-bobores",
                order = "l"
            },
            nil,
            bobmods.ores.gems.enabled,
            true
        )        
    end

    if bobmods.ores.thorium.enabled then
        AddRecipeDataBundle(    
            {
                type = "recipe",
                name = "morphite-to-thorium",
                energy_required = 60, 
                enabled = true,
                category = "crafting",
                ingredients = {{"morphite-ore", 1}},
                result = "thorium-ore",
                result_count = 1,
                subgroup = "leighzermorphite-bobores",
                order = "m"
            },
            nil,
            bobmods.ores.thorium.enabled,
            true
        )        
    end

    --liquids
    if bobmods.ores.lithia_water.enabled then
        AddRecipeDataBundle(    
            {
                type = "recipe",
                name = "morphite-to-lithia-water",
                energy_required = 7.5, 
                enabled = true,
                category = "chemistry",
                ingredients = {{type="item",name="morphite-ore", amount=1},{type="fluid", name="water", amount=1000}},
                results = {{type="fluid",name="lithia-water",amount=1000}},                
                subgroup = "leighzermorphite-bobores", 
                order = "n"
            },
            nil,
            bobmods.ores.lithia_water.enabled,
            true
        )        
    end    
end
