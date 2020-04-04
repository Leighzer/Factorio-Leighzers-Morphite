if leighzermods and leighzermods.leighzerburiedscience and settings.startup["isMorphiteToleighzerburiedscienceEnabled"].value then
        
    data:extend({
        {
            type = "item-subgroup",
            name = "leighzermorphite-leighzerburiedscience",
            group = "leighzermorphite",
            order = "ae",
          }
    })
        
    local recipeOrder = 1
    for k, v in pairs(data.raw["resource"]) do
        if string.find(k,"%-science%-pack") then --if the name contains "science-pack"
            
            local energy_required_science_pack = 1 -- if recipe doesn't exist default to 1 to avoid crash
            if data.raw["recipe"][v.minable.result] then -- if recipe does exist, use that value
                energy_required_science_pack = data.raw["recipe"][v.minable.result].energy_required -- 
            end

            if v.minable.result == "space-science-pack" then -- if the recipe is for space science, something that doesn't directly exist, very special case, use what we use for science ores
                energy_required_science_pack = 50
            end

            AddRecipeDataBundle(
            {
                type = "recipe",
                name = "morphite-to-"..v.name,
                energy_required = energy_required_science_pack * settings.startup["MorphitetoleighzerburiedscienceMultiplier"].value, 
                enabled = true,
                category = "crafting",
                ingredients = {{"morphite-ore", 1}},
                result = v.minable.result,
                result_count = 1,
                subgroup = "leighzermorphite-leighzerburiedscience",
                order = recipeOrder
            },
            nil,
            true,
            true 
        )
        recipeOrder = recipeOrder + 1
        end
    end

end