--require('__debugadapter__/debugadapter.lua')
local function Process(resource)
    if ((not resource.leighzermorphiteDisabled) and resource.minable and (not(resource.name == "morphite-ore"))) then

        local minable = resource.minable
        local morphiteAmount = resource.leighzermorphiteMorphiteAmountRequired or leighzermods.leighzermorphite.defaultMorphiteRequired
        local energyRequired = resource.leighzermorphiteEnergyRequiredOverride or minable.mining_time or leighzermods.leighzermorphite.defaultEnergyRequired
        local dependentTechName = resource.leighzermorphiteDependentTechName

        local dependentTechFound = false
        local dependentTech = nil
        if (resource.leighzermorphiteDependentTechName) then
            for kk,vv in pairs(data.raw.technology) do
                if (kk == resource.leighzermorphiteDependentTechName and vv.effects) then
                    dependentTech = vv
                    dependentTechFound = true
                    break
                end
            end
        end        

        local results = nil
        local containsFluids = false
        local multipleResults = false
        if (minable.results) then
            results = minable.results
            multipleResults = #results > 1
            for i,result in pairs(results) do
                if (result.type and result.type == "fluid") then
                    containsFluids = true                    
                end
                if (resource.leighzermorphiteRecipeResultCountsOverride and resource.leighzermorphiteRecipeResultCountsOverride[i]) then
                    result.amount = resource.leighzermorphiteRecipeResultCountsOverride[i]
                end
            end            
        elseif (minable.result) then
            local amount = 1
            if (resource.leighzermorphiteRecipeResultCountsOverride and resource.leighzermorphiteRecipeResultCountsOverride[1]) then
                amount = resource.leighzermorphiteRecipeResultCountsOverride[1]
            elseif (minable.result_count) then
                amount = minable.result_count
            end
            results = {{name=minable.result,amount=amount,type="item"}}
        end

        local recipe = {
                    type = "recipe",
                    icons = resource.icons,
                    icon = resource.icon,
                    icon_size = resource.icon_size,
                    name = "morphite-to-"..resource.name,
                    energy_required = energyRequired,
                    enabled = not dependentTechFound,                    
                    ingredients = {{name="morphite-ore",amount=morphiteAmount,type="item"}}, -- other ingredients get inserted later
                    results = results,
                    subgroup = leighzermods.leighzermorphite.defaultSubgroup,
                    order = resource.order
                }
        if (multipleResults) then
            recipe.localised_name = leighzermods.utils.toNiceName(resource.name)
        end

        if (resource.leighzermorphiteAdditionalIngredients) then -- if there are extra ingredients spec'd for this resource
            for i,ingredient in ipairs(resource.leighzermorphiteAdditionalIngredients) do
                table.insert(recipe.ingredients,ingredient) -- add them to the recipe
            end
        end

        if (resource.leighzermorphiteCraftingCategoryOverride) then
            recipe.category = resource.leighzermorphiteCraftingCategoryOverride
        else
            if (resource.category == "basic-fluid" or containsFluids) then
                recipe.category = "chemistry"
            else
                recipe.category = "crafting"
            end
        end

        data:extend({recipe})

        if (dependentTechFound) then
            table.insert(dependentTech.effects,{type="unlock-recipe",recipe=recipe.name})
        end
    end
end

for k,v in pairs(data.raw.resource) do
     Process(v)
end
for k,v in pairs(leighzermods.leighzermorphite.extras) do
    Process(v)
end