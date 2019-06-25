function AddRecipeDataBundle(recipe, technology, allowDataInsert, allowProductivity)

    leighzermods.recipeDataBundles[recipe.name] = {recipe = recipe, technology = technology, allowDataInsert = allowDataInsert, allowProductivity = allowProductivity}

end

function DisableDataInsert(recipeName)
    if leighzermods.recipeDataBundles[recipeName] then
        leighzermods.recipeDataBundles[recipeName].allowDataInsert = false
    end
end

function EnableDataInsert(recipeName)
    if leighzermods.recipeDataBundles[recipeName] then
        leighzermods.recipeDataBundles[recipeName].allowDataInsert = true
    end
end

function InsertData()
    for recipeName,recipeDataBundle in pairs(leighzermods.recipeDataBundles) do

        if recipeDataBundle.allowDataInsert then

            if recipeDataBundle.recipe then
            data:extend({
                recipeDataBundle.recipe
            })
            end

            if recipeDataBundle.technology then
                data:extend({
                    recipeDataBundle.technology
                })
            end

            if recipeDataBundle.allowProductivity then
                table.insert(leighzermods.leighzermorphite.productivityEnabledRecipes, recipeDataBundle.recipe.name)
            end
        end
    end

    --update table add recipes we want to be able to PROD module
    --leighzermods.leighzermorphite.productivityEnabledRecipes is the list of recipe names we want to allow the use of productivity modules with
    for k, v in pairs(data.raw.module) do
        if v.name:find("productivity%-module") and v.limitation then
        for _, recipe in ipairs(leighzermods.leighzermorphite.productivityEnabledRecipes) do
            if data.raw["recipe"][recipe] then
            table.insert(v.limitation, recipe)
            end
        end
        end
    end

end
