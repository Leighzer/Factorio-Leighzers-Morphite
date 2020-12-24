if not leighzermods then --generic mod variable to store information that may be needed later
    leighzermods = {}
end

if not leighzermods.leighzermorphite then
    leighzermods.leighzermorphite = {}
    leighzermods.leighzermorphite.tintColorName = "medium_orchid"    
    leighzermods.leighzermorphite.defaultSubgroup = "leighzermorphite"

    -- 'extras' is a table of fake resources that will also be examined for inserting recipes in addition to data.raw.resource
    leighzermods.leighzermorphite.extras = {}    

    leighzermods.leighzermorphite.extras["wood"] = {        
        name = "wood",
        category = "basic-solid",
        order = "a",
        subgroup = "leighzermorphite",
        minable = {
            result = "wood",
        },
        leighzermorphite = {
            disabled = false,
            morphiteAmountRequired = nil,
            energyRequired = nil,
            resultCounts = nil,
            additionalIngredients = nil,
            dependentTechName = nil,
            craftingCategory = nil,
        },
    }    
    
    leighzermods.leighzermorphite.extras["water"] = {        
        craftingCategory = "chemistry",
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
        leighzermorphite = {
            disabled = false,
            morphiteAmountRequired = nil,
            energyRequired = nil,
            resultCounts = {100},
            additionalIngredients = nil,
            dependentTechName = nil,
        }
    }

    leighzermods.leighzermorphite.extras["morphite-fuel"] = {        
        name = "morphite-fuel",
        category = "basic-solid",
        order = "z",
        subgroup = "leighzermorphite",
        minable = {
            result = "morphite-fuel",
        },
        leighzermorphite = {
            disabled = false,
            morphiteAmountRequired = nil,
            energyRequired = 0.5,
            resultCounts = nil,
            additionalIngredients = nil,
            dependentTechName = nil,
            craftingCategory = nil,
        }
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

-- define morphite recipe data for vanilla resources
local vanillaRawResouceData = {}
vanillaRawResouceData["uranium-ore"] = {
    disabled = false,
    morphiteAmountRequired = 1,
    energyRequired = 4,
    resultCounts = nil,
    additionalIngredients = {{name="steam",amount=25,type="fluid"},{name="sulfuric-acid",amount=2,type="fluid"}},
    dependentTechName = "uranium-processing",
    craftingCategory = "chemistry"
}
vanillaRawResouceData["crude-oil"] = {
    disabled = false,
    morphiteAmountRequired = 5,
    energyRequired = 7.5,
    resultCounts = {30},
    additionalIngredients = {{name="water",amount=50,type="fluid"}},
    dependentTechName = "oil-processing",
    craftingCategory = "chemistry"
}

-- set leighzermorphite customization data on the resource
for k,v in pairs(data.raw.resource) do -- for each science pack item
    if (vanillaRawResouceData[k]) then -- if we have data for it
        v.leighzermorphite = vanillaRawResouceData[k] -- load morphite recipe data into the resource
    end
end