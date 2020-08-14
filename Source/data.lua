if not leighzermods then --generic mod variable to store information that may be needed later
    leighzermods = {}
end

if not leighzermods.leighzermorphite then
    leighzermods.leighzermorphite = {}

    leighzermods.leighzermorphite.tintColorName = "medium_orchid"
end

-- too lazy to get all external recipe code migrated
-- so keeping semi updated insert function
function AddRecipeDataBundle(recipe,fillerParam1,fillerParam2,enableProd)

    data:extend({recipe})
    if enableProd then
        table.insert(leighzermods.productivityEnabledRecipes,recipe.name)
    end

end

-- item groups/ sub groups
leighzermods.utils.createItemGroup("leighzermorphite","z","z","__leighzermorphite__/graphics/item-group/morphite-processing-category.png", 128, "Morphite Processing")
leighzermods.utils.createItemSubgroup("leighzermorphite-vanilla","leighzermorphite","aa")

-- morphite itself
local autoplaceSettings = {    
    order = "z",
    base_density = 10,
    has_starting_area_placement = true,    
    regular_rq_factor_multiplier = 1.10,
    starting_rq_factor_multiplier = 1.5
}

leighzermods.utils.createOreFromGeneric("morphite", leighzermods.leighzermorphite.tintColorName, "z", 1, autoplaceSettings, "x-a")
leighzermods.utils.createOreAutoplaceFromGeneric("morphite",leighzermods.leighzermorphite.tintColorName,"x-a")
leighzermods.utils.createOreNoiseLayerFromGeneric("morphite",leighzermods.leighzermorphite.tintColorName)
leighzermods.utils.createOreParticleFromGeneric("morphite", leighzermods.leighzermorphite.tintColorName)
leighzermods.utils.createItemFromGeneric("morphite", leighzermods.leighzermorphite.tintColorName, "ore","raw-resource","x-a",50)

-- morphite to vanilla
if settings.startup["isMorphiteToIronEnabled"].value then
    leighzermods.utils.createRecipe("morphite-to-iron",1,true,"crafting",{{"morphite-ore",1}},"iron-ore",1,"leighzermorphite-vanilla","a",true)
end
if settings.startup["isMorphiteToCopperEnabled"].value then
    leighzermods.utils.createRecipe("morphite-to-copper",1,true,"crafting",{{"morphite-ore",1}},"copper-ore",1,"leighzermorphite-vanilla","b",true)
end
if settings.startup["isMorphiteToStoneEnabled"].value then
    leighzermods.utils.createRecipe("morphite-to-stone",1,true,"crafting",{{"morphite-ore",1}},"stone",1,"leighzermorphite-vanilla","c",true)
end
if settings.startup["isMorphiteToCoalEnabled"].value then
    leighzermods.utils.createRecipe("morphite-to-coal",1,true,"crafting",{{"morphite-ore",1}},"coal",1,"leighzermorphite-vanilla","d",true)
end

-- uranium
if settings.startup["isMorphiteToUraniumOreEnabled"].value then
    local morphiteToUraniumOreIngredients = {{type="item",name="morphite-ore",amount=1},{type="fluid", name="steam", amount=25},{type="fluid", name="sulfuric-acid", amount=2}}
    local morphiteToUraniumOreResults = {{type="item",name="uranium-ore",amount=1}}
    leighzermods.utils.createRecipeComplex("morphite-to-uranium-ore",4,false,"chemistry",morphiteToUraniumOreIngredients,nil,morphiteToUraniumOreResults,"leighzermorphite-vanilla","e",nil,true, "Morphite to uranium processing")
    local morphiteToUraniumProcessingIcons = {{icon="__leighzermorphite__/graphics/technology/morphite-to-uranium-processing.png",icon_size=128}}
    local morphiteToUraniumProcessingEffects = {{type="unlock-recipe",recipe="morphite-to-uranium-ore"}}
    local morphiteToUraniumProcessingUnit = {
        ingredients =
        {
            {"automation-science-pack", 1},
            {"logistic-science-pack", 1},
            {"chemical-science-pack", 1}
        },
        time = 30,
        count = 500
    }
    local morphiteToUraniumLocalisedDesc = "Unlocks a processing technique to turn morphite into uranium ore with the use of steam and sulfuric acid."
    leighzermods.utils.createTechnology("morphite-to-uranium-processing",morphiteToUraniumProcessingIcons,true,morphiteToUraniumProcessingEffects,morphiteToUraniumProcessingUnit,{"uranium-processing"},"e-p-b-c", "Morphite to uranium conversion", morphiteToUraniumLocalisedDesc)
end

-- crude oil
if settings.startup["isMorphiteToCrudeOilEnabled"].value then
    local morphiteToCrudeOilIngredients = {{type="item",name="morphite-ore", amount=5},{type="fluid", name="water", amount=50}}
    local morphiteToCrudeOilIcons = {{icon="__leighzermorphite__/graphics/icons/morphite-liquefaction.png",icon_size=32}}
    leighzermods.utils.createRecipeComplex("morphite-to-crude-oil",7.5,false,"chemistry",morphiteToCrudeOilIngredients,morphiteToCrudeOilIcons,{{type="fluid",name="crude-oil",amount=30}},"leighzermorphite-vanilla","g","",true, "Morphite liquefaction")
    local morphiteLiquefactionIcons = {{icon="__leighzermorphite__/graphics/technology/morphite-liquefaction.png",icon_size=128}}
    local morphiteLiquefactionEffects = {{type="unlock-recipe",recipe="morphite-to-crude-oil"}}
    local morphiteLiquefactionUnit = {count = 150, ingredients = {{"automation-science-pack", 1}, {"logistic-science-pack", 1}},time = 30}
    local morphiteLiquefactionLocalisedDesc = "Unlocks a processing technique to turn morphite into crude oil with the use of water."
    leighzermods.utils.createTechnology("morphite-liquefaction",morphiteLiquefactionIcons,true,morphiteLiquefactionEffects,morphiteLiquefactionUnit,{"oil-processing"},"d-b", "Morphite liquefaction",morphiteLiquefactionLocalisedDesc)
end

-- fuel
if settings.startup["isMorphiteToMorphiteFuelEnabled"].value then
    leighzermods.utils.createItem("morphite-fuel","__leighzermorphite__/graphics/icons/morphite-fuel.png",32,"intermediate-product","p[morphite-fuel]",50,nil,"Morphite fuel")
    leighzermods.utils.createRecipe("morphite-to-morphite-fuel",0.5,true,"crafting",{{"morphite-ore",2}},"morphite-fuel",1,"leighzermorphite-vanilla","h",true)
    data.raw.item["morphite-fuel"].fuel_value = "8MJ"
    data.raw.item["morphite-fuel"].fuel_category = "chemical"
end

-- morphite to all 4 vanilla ores
if settings.startup["isMorphiteToWildcardEnabled"].value then
    local morphiteToWildCardIcons = {{icon="__leighzermorphite__/graphics/icons/morphite-to-wildcard.png",icon_size=32}}
    local morphiteToWildCardResults = {{type="item", name="iron-ore",amount=2},{type="item", name="copper-ore",amount=2},{type="item", name="stone",amount=2},{type="item", name="coal",amount=2}}
    leighzermods.utils.createRecipeComplex("morphite-to-wildcard",9,false,"centrifuging",{{type="item",name="morphite-ore",amount=6}},morphiteToWildCardIcons,morphiteToWildCardResults,"leighzermorphite-vanilla","i",nil,true, "Morphite centrifugation")
    local morphiteCentrifugationIcons = {{icon="__leighzermorphite__/graphics/technology/morphite-centrifugation.png",icon_size=128}}
    local morphiteCentrifugationEffects = {{type="unlock-recipe",recipe="morphite-to-wildcard"}}
    local morphiteCentrifugationUnit = {
        ingredients =
        {
            {"automation-science-pack", 1},
            {"logistic-science-pack", 1},
            {"chemical-science-pack", 1},
            {"production-science-pack", 1}
        },
        time = 30,
        count = 1500
    }
    local morphiteCentrifugationLocalisedDesc = "Unlocks a processing technique to turn morphite into all of the basic ores  at increased productivity via centrifuge."
    leighzermods.utils.createTechnology("morphite-centrifugation",morphiteCentrifugationIcons,true,morphiteCentrifugationEffects,morphiteCentrifugationUnit,{"uranium-processing", "production-science-pack"},"e-p-b-d", "Morphite centrifugation", morphiteCentrifugationLocalisedDesc)
end

if settings.startup["isMorphiteToRawWoodEnabled"].value then
    leighzermods.utils.createRecipe("morphite-to-wood",1,true,"crafting",{{"morphite-ore", 1}},"wood",1,"leighzermorphite-vanilla","f",true)
end

require("external-recipe.external-recipe") -- prototypes for morphite to x recipes for items introduced in other mods (bobs, angels, etc.)