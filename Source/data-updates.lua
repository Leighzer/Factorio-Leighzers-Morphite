--require('__debugadapter__/debugadapter.lua')
local function Process(resource)

    local minable = resource.minable

    local disabled = false
    local morphiteAmountRequired = 1
    local energyRequired = minable.mining_time or 1
    local resultCounts = nil
    local additionalIngredients = nil
    local dependentTechName = nil
    local craftingCategory = nil

    if (resource.leighzermorphite) then
        if (resource.leighzermorphite.disabled ~= nil) then
            disabled = resource.leighzermorphite.disabled
        end
        if (resource.leighzermorphite.morphiteAmountRequired ~= nil) then
            morphiteAmountRequired = resource.leighzermorphite.morphiteAmountRequired
        end
        if (resource.leighzermorphite.energyRequired ~= nil) then
            energyRequired = resource.leighzermorphite.energyRequired
        end
        if (resource.leighzermorphite.resultCounts ~= nil) then
            resultCounts = resource.leighzermorphite.resultCounts
        end
        if (resource.leighzermorphite.additionalIngredients ~= nil) then
            additionalIngredients = resource.leighzermorphite.additionalIngredients
        end
        if (resource.leighzermorphite.dependentTechName ~= nil) then
            dependentTechName = resource.leighzermorphite.dependentTechName
        end
        if (resource.leighzermorphite.craftingCategory ~= nil) then
            craftingCategory = resource.leighzermorphite.craftingCategory
        end
    end

    if ((not disabled) and resource.minable and (not(resource.name == "morphite-ore"))) then

        local dependentTechFound = false
        local dependentTech = nil
        if (dependentTechName) then
            for kk,vv in pairs(data.raw.technology) do
                if (kk == dependentTechName and vv.effects) then
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
                if (resultCounts and resultCounts[i]) then
                    result.amount = resultCounts[i]
                end
            end            
        elseif (minable.result) then
            local amount = 1
            if (resultCounts and resultCounts[1]) then
                amount = resultCounts[1]
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
                    ingredients = {{name="morphite-ore",amount=morphiteAmountRequired,type="item"}}, -- other ingredients get inserted later
                    results = results,
                    subgroup = leighzermods.leighzermorphite.defaultSubgroup,
                    order = resource.order
                }
        if (multipleResults) then
            recipe.localised_name = leighzermods.utils.toNiceName(resource.name)
        end

        if (additionalIngredients) then -- if there are extra ingredients spec'd for this resource
            for i,ingredient in ipairs(additionalIngredients) do
                table.insert(recipe.ingredients,ingredient) -- add them to the recipe
            end
        end

        if (craftingCategory) then
            recipe.category = craftingCategory
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
    --log(k)
    Process(v)
end
for k,v in pairs(leighzermods.leighzermorphite.extras) do
    --log(k)
    Process(v)
end