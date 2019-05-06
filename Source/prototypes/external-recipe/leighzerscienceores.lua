if leighzermods and leighzermods.leighzerscienceores and settings.startup["isMorphiteToleighzerscienceoresEnabled"].value then
        
    data:extend({
        {
            type = "item-subgroup",
            name = "leighzermorphite-leighzerscienceores",
            group = "leighzermorphite",
            order = "ab",
          }
    })

    if leighzermods.leighzerscienceores.automationEnabled then
        AddRecipeDataBundle(
            {
                type = "recipe",
                name = "morphite-to-automation-science-ore",
                energy_required = data.raw["recipe"]["automation-science-pack"].energy_required, 
                enabled = true,
                category = "crafting",
                ingredients = {{"morphite-ore", 1}},
                result = "automation-science-ore",
                result_count = 1,
                subgroup = "leighzermorphite-leighzerscienceores",
                order = "a"
            },
            nil, 
            leighzermods.leighzerscienceores.automationEnabled, 
            true 
        )
    end

    if leighzermods.leighzerscienceores.logisticEnabled then
        AddRecipeDataBundle(
            {
                type = "recipe",
                name = "morphite-to-logistic-science-ore",
                energy_required = data.raw["recipe"]["logistic-science-pack"].energy_required, 
                enabled = true,
                category = "crafting",
                ingredients = {{"morphite-ore", 1}},
                result = "logistic-science-ore",
                result_count = 1,
                subgroup = "leighzermorphite-leighzerscienceores",
                order = "b"
            },
            nil, 
            leighzermods.leighzerscienceores.logisticEnabled, 
            true 
        )
    end

    if leighzermods.leighzerscienceores.militaryEnabled then
        AddRecipeDataBundle(
            {
                type = "recipe",
                name = "morphite-to-military-science-ore",
                energy_required = data.raw["recipe"]["military-science-pack"].energy_required, 
                enabled = true,
                category = "crafting",
                ingredients = {{"morphite-ore", 1}},
                result = "military-science-ore",
                result_count = 1,
                subgroup = "leighzermorphite-leighzerscienceores", 
                order = "c"
            },
            nil, 
            leighzermods.leighzerscienceores.militaryEnabled, 
            true 
        )
    end

    if leighzermods.leighzerscienceores.chemicalEnabled then
        AddRecipeDataBundle(
            {
                type = "recipe",
                name = "morphite-to-chemical-science-ore",
                energy_required = data.raw["recipe"]["chemical-science-pack"].energy_required, 
                enabled = true,
                category = "crafting",
                ingredients = {{"morphite-ore", 1}},
                result = "chemical-science-ore",
                result_count = 1,
                subgroup = "leighzermorphite-leighzerscienceores", 
                order = "d"
            },
            nil, 
            leighzermods.leighzerscienceores.chemicalEnabled, 
            true 
        )
    end

    if mods["bobtech"] and leighzermods.leighzerscienceores.advancedLogisticEnabled then
        AddRecipeDataBundle(
            {
                type = "recipe",
                name = "morphite-to-advanced-logistic-science-ore",
                energy_required = data.raw["recipe"]["advanced-logistic-science-pack"].energy_required, 
                enabled = true,
                category = "crafting",
                ingredients = {{"morphite-ore", 1}},
                result = "advanced-logistic-science-ore",
                result_count = 1,
                subgroup = "leighzermorphite-leighzerscienceores", 
                order = "da"
            },
            nil, 
            leighzermods.leighzerscienceores.advancedLogisticEnabled,
            true
        )
    end

    if leighzermods.leighzerscienceores.productionEnabled then
        AddRecipeDataBundle(
            {
                type = "recipe",
                name = "morphite-to-production-science-ore",
                energy_required = data.raw["recipe"]["production-science-pack"].energy_required, 
                enabled = true,
                category = "crafting",
                ingredients = {{"morphite-ore", 1}},
                result = "production-science-ore",
                result_count = 1,
                subgroup = "leighzermorphite-leighzerscienceores", 
                order = "e"
            },
            nil, 
            leighzermods.leighzerscienceores.productionEnabled, 
            true 
        )
    end

    if leighzermods.leighzerscienceores.utilityEnabled then
        AddRecipeDataBundle(
            {
                type = "recipe",
                name = "morphite-to-utility-science-ore",
                energy_required = data.raw["recipe"]["utility-science-pack"].energy_required, 
                enabled = true,
                category = "crafting",
                ingredients = {{"morphite-ore", 1}},
                result = "utility-science-ore",
                result_count = 1,
                subgroup = "leighzermorphite-leighzerscienceores",
                order = "f"
            },
            nil, 
            leighzermods.leighzerscienceores.utilityEnabled,
            true 
        )
    end

    if leighzermods.leighzerscienceores.spaceEnabled then
        AddRecipeDataBundle(
            {
                type = "recipe",
                name = "morphite-to-space-science-ore",
                energy_required = data.raw["recipe"]["space-science-ore-to-science"].energy_required, 
                enabled = true,
                category = "crafting",
                ingredients = {{"morphite-ore", 1}},
                result = "space-science-ore",
                result_count = 1,
                subgroup = "leighzermorphite-leighzerscienceores", 
                order = "g"
            },
            nil, 
            leighzermods.leighzerscienceores.spaceEnabled,
            true
        )
    end
end