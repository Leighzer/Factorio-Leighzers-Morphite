if not leighzermods then --generic mod variable to store information that may be needed later
    leighzermods = {}
end

if not leighzermods.leighzermorphite then
    leighzermods.leighzermorphite = {}

    leighzermods.leighzermorphite.tintColorName = "medium_orchid"

    leighzermods.leighzermorphite.defaultMorphiteRequired = 1
    leighzermods.leighzermorphite.defaultEnergyRequired = 1
    leighzermods.leighzermorphite.defaultResultCount = {item=1,fluid=10}
    leighzermods.leighzermorphite.defaultSubgroup = "leighzermorphite"

    -- duct tape table of 'fake' resources that will also be examined for inserting recipes in addition to data.raw.resource
    leighzermods.leighzermorphite.extras = {}
    leighzermods.leighzermorphite.extras = {}
    leighzermods.leighzermorphite.extras["wood"] = {
        leighzermorphiteDisabled = false,
        leighzermorphiteMorphiteAmountRequired = nil,
        leighzermorphiteEnergyRequiredOverride = nil,
        leighzermorphiteRecipeResultCountsOverride = nil,
        leighzermorphiteAdditionalIngredients = nil,
        leighzermorphiteDependentTechName = nil,
        leighzermorphiteCraftingCategoryOverride = nil,
        name = "wood",
        category = "basic-solid",
        order = "a",
        subgroup = "leighzermorphite",
        minable = {
            result = "wood",
        },
    }
    leighzermods.leighzermorphite.extras["water"] = {
        leighzermorphiteDisabled = false,
        leighzermorphiteMorphiteAmountRequired = nil,
        leighzermorphiteEnergyRequiredOverride = nil,
        leighzermorphiteRecipeResultCountsOverride = {100},
        leighzermorphiteAdditionalIngredients = nil,
        leighzermorphiteDependentTechName = nil,
        leighzermorphiteCraftingCategoryOverride = "chemistry",
        name = "water",
        category = "basic-fluid",
        order = "a[water]",
        subgroup = "leighzermorphite",
        minable = {
            results =
            {
                {
                name="water",
                amount=100,
                type="fluid",
                },
            },
        },
    }
    leighzermods.leighzermorphite.extras["morphite-fuel"] = {
        leighzermorphiteDisabled = false,
        leighzermorphiteMorphiteAmountRequired = nil,
        leighzermorphiteEnergyRequiredOverride = 0.5,
        leighzermorphiteRecipeResultCountsOverride = nil,
        leighzermorphiteAdditionalIngredients = nil,
        leighzermorphiteDependentTechName = nil,
        leighzermorphiteCraftingCategoryOverride = nil,
        name = "morphite-fuel",
        category = "basic-solid",
        order = "z",
        subgroup = "leighzermorphite",
        minable = {
            result = "morphite-fuel",
        },
        
    }
end

-- crafting tab
leighzermods.utils.createItemGroup("leighzermorphite","z","z","__leighzermorphite__/graphics/item-group/morphite-processing-category.png", 128, "Morphite Processing")
-- row in crafting tab
leighzermods.utils.createItemSubgroup("leighzermorphite","leighzermorphite","a")

-- morphite itself
local autoplaceSettings = {    
    order = "z",
    base_density = 10,
    has_starting_area_placement = true,    
    regular_rq_factor_multiplier = 1.10,
    starting_rq_factor_multiplier = 1.5
}
leighzermods.utils.createOreFromGeneric("morphite", leighzermods.leighzermorphite.tintColorName, 1, autoplaceSettings, "x-a")
leighzermods.utils.createOreAutoplaceFromGeneric("morphite",leighzermods.leighzermorphite.tintColorName,"x-a")
leighzermods.utils.createOreNoiseLayerFromGeneric("morphite",leighzermods.leighzermorphite.tintColorName)
leighzermods.utils.createOreParticleFromGeneric("morphite", leighzermods.leighzermorphite.tintColorName)
leighzermods.utils.createItemFromGeneric("morphite", leighzermods.leighzermorphite.tintColorName, "ore","raw-resource","x-a",50)

-- fuel
leighzermods.utils.createItem("morphite-fuel","__leighzermorphite__/graphics/icons/morphite-fuel.png",32,"intermediate-product","p[morphite-fuel]",50,nil,"Morphite fuel")
data.raw.item["morphite-fuel"].fuel_value = "8MJ"
data.raw.item["morphite-fuel"].fuel_category = "chemical"

-- define morphite data for vanilla resources
local vanillaRawResouceData = {}
vanillaRawResouceData["uranium-ore"] = {
    leighzermorphiteDisabled = false,
    leighzermorphiteMorphiteAmountRequired = 1,
    leighzermorphiteEnergyRequiredOverride = 4,
    leighzermorphiteRecipeResultCountsOverride = nil,
    leighzermorphiteAdditionalIngredients = {{name="steam",amount=25,type="fluid"},{name="sulfuric-acid",amount=2,type="fluid"}},
    leighzermorphiteDependentTechName = "uranium-processing",
    leighzermorphiteCraftingCategoryOverride = "chemistry"
}
vanillaRawResouceData["crude-oil"] = {
    leighzermorphiteDisabled = false,
    leighzermorphiteMorphiteAmountRequired = 5,
    leighzermorphiteEnergyRequiredOverride = 7.5,
    leighzermorphiteRecipeResultCountsOverride = {30},
    leighzermorphiteAdditionalIngredients = {{name="water",amount=50,type="fluid"}},
    leighzermorphiteDependentTechName = "oil-processing",
    leighzermorphiteCraftingCategoryOverride = "chemistry"
}

-- inject morphite data into vanilla resources
for k,v in pairs(data.raw.resource) do -- for each science pack item
    if (vanillaRawResouceData[k]) then -- if we have data for it
        for kk,vv in pairs(vanillaRawResouceData[k]) do
            if (v[kk] == nil) then -- if there already isn't a value there
                v[kk] = vv -- load each field into the item prototype
                -- our dynamic resource creator will examine these in data-updates.lua and use them to make decisions 
            end
        end
    end
end