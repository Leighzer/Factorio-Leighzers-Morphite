
AddRecipeDataBundle(    
    {--recipe prototype that allows for crafting morphite into iron
        type = "recipe",
        name = "morphite-to-iron",
        energy_required = 1, --I believe this is seconds it takes to craft recipe when crafting speed = 1, twice as long as crafting a green circuit
        enabled = true,
        category = "crafting",--basic crafting category, this means tier one assembler and up can craft, or you can craft by hand
        ingredients = {{"morphite-ore", 1}},
        result = "iron-ore",
        result_count = 1,
        subgroup = "leighzermorphite-vanilla",
        order = "a"
    },
    nil, --optional technology prototype for recipe
    settings.startup["isMorphiteToIronEnabled"].value,--bool to signal if we are inserting into data.raw
    true --bool to signal if this recipe should allow productivity modules
)

AddRecipeDataBundle(
    {--recipe prototype that allows for crafting morphite into copper
        type = "recipe",
        name = "morphite-to-copper",
        energy_required = 1,
        enabled = true,
        category = "crafting",
        ingredients = {{"morphite-ore", 1}},
        result = "copper-ore",
        result_count = 1,
        subgroup = "leighzermorphite-vanilla",
        order = "b"
    },
    nil,
    settings.startup["isMorphiteToCopperEnabled"].value,
    true
)

AddRecipeDataBundle(
    {--recipe prototype that allows for crafting morphite into stone
        type = "recipe",
        name = "morphite-to-stone",
        energy_required = 1,
        enabled = true,
        category = "crafting",
        ingredients = {{"morphite-ore", 1}},
        result = "stone",
        result_count = 1,
        subgroup = "leighzermorphite-vanilla",
        order = "c"
    },
    nil,
    settings.startup["isMorphiteToStoneEnabled"].value,
    true
)

AddRecipeDataBundle(
    {--recipe prototype that allows for crafting morphite into coal
        type = "recipe",
        name = "morphite-to-coal",
        energy_required = 1,
        enabled = true,
        category = "crafting",
        ingredients = {{"morphite-ore", 1}},                       
        result = "coal",
        result_count = 1,
        subgroup = "leighzermorphite-vanilla",
        order = "d"
    },
    nil,
    settings.startup["isMorphiteToCoalEnabled"].value,
    true
)

AddRecipeDataBundle(
    {--recipe prototype that allows for crafting morphite into morphite fuel
        type = "recipe",
        name = "morphite-to-morphite-fuel",
        energy_required = 0.5,
        enabled = true,
        category = "crafting",
        ingredients = {{"morphite-ore", 2}},
        result = "morphite-fuel",
        result_count = 1,
        subgroup = "leighzermorphite-vanilla",
        order = "h"
    },
    nil,
    settings.startup["isMorphiteToMorphiteFuelEnabled"].value,
    true
)


AddRecipeDataBundle(
    {--recipe prototype that allows for crafting morphite into crude oil
        type = "recipe",
        name = "morphite-to-crude-oil",
        energy_required = 7.5,
        enabled = false,
        category = "chemistry",
        ingredients = {{type="item",name="morphite-ore", amount=5},{type="fluid", name="water", amount=50}},    
        icon = "__leighzermorphite__/graphics/icons/morphite-liquefaction.png",
        icon_size = 32,
        subgroup = "leighzermorphite-vanilla",
        results = {{type="fluid",name="crude-oil",amount=30}},
        main_product= "",
        order = "g"        
    },
    {        
        type = "technology",
        name = "morphite-liquefaction",
        icon_size = 128,
        icon = "__leighzermorphite__/graphics/technology/morphite-liquefaction.png",
        prerequisites = {"oil-processing"},
        effects = {
            {type="unlock-recipe",
            recipe="morphite-to-crude-oil"}
        },
        unit = 
        {
            count = 150,
            ingredients = {{"automation-science-pack", 1}, {"logistic-science-pack", 1}},
            time = 30
        },
        order = "d-b"
    },
    settings.startup["isMorphiteToCrudeOilEnabled"].value,
    true
)   

AddRecipeDataBundle(
    {--recipe prototype that allows for crafting morphite into uranium ore
        type = "recipe",
        name = "morphite-to-uranium-ore",
        energy_required = 4,
        enabled = false,
        category = "chemistry",
        ingredients = {{type="item",name="morphite-ore",amount=1},{type="fluid", name="steam", amount=25},{type="fluid", name="sulfuric-acid", amount=2}},
        result = "uranium-ore",
        result_count = 1,
        subgroup = "leighzermorphite-vanilla",
        order = "e"
    },
    {        
        type = "technology",
        name = "morphite-to-uranium-processing",
        icon_size = 128,
        icon = "__leighzermorphite__/graphics/technology/morphite-to-uranium-processing.png",
        prerequisites = {"uranium-processing"},
        effects = {
            {type="unlock-recipe",
            recipe="morphite-to-uranium-ore"}
        },
        unit =
        {
            ingredients =
            {
                {"automation-science-pack", 1},
                {"logistic-science-pack", 1},
                {"chemical-science-pack", 1}
            },
            time = 30,
            count = 500
        },
        order = "e-p-b-c"
    },
    settings.startup["isMorphiteToUraniumOreEnabled"].value,
    true
)

AddRecipeDataBundle(
    {--recipe prototype that allows for crafting morphite into all basic ores via centrifuge
        type = "recipe",
        name = "morphite-to-wildcard",
        energy_required = 9,
        enabled = false,
        category = "centrifuging",
        ingredients = {{type="item",name="morphite-ore",amount=6}},
        icon = "__leighzermorphite__/graphics/icons/morphite-to-wildcard.png",
        icon_size = 32,
        subgroup = "leighzermorphite-vanilla",
        order = "i",
        results = {{type="item", name="iron-ore",amount=2},{type="item", name="copper-ore",amount=2},{type="item", name="stone",amount=2},{type="item", name="coal",amount=2}},            
    },
    {        
        type = "technology",
        name = "morphite-centrifugation",
        icon_size = 128,
        icon = "__leighzermorphite__/graphics/technology/morphite-centrifugation.png",
        prerequisites = {"uranium-processing", "production-science-pack"},
        effects = {
            {type="unlock-recipe",
            recipe="morphite-to-wildcard"}
        },
        unit =
        {
            ingredients =
            {
                {"automation-science-pack", 1},
                {"logistic-science-pack", 1},
                {"chemical-science-pack", 1},
                {"production-science-pack", 1}
            },
            time = 30,
            count = 1500
        },
        order = "e-p-b-d"
    },
    settings.startup["isMorphiteToWildcardEnabled"].value,
    true
)

AddRecipeDataBundle(
    {--recipe prototype that allows for crafting morphite into raw wood
        type = "recipe",
        name = "morphite-to-wood",
        energy_required = 1,
        enabled = true,
        category = "crafting",
        ingredients = {{"morphite-ore", 1}},
        result = "wood",            
        result_count = 1,
        subgroup = "leighzermorphite-vanilla",
        order = "f"                    
    },
    nil,
    settings.startup["isMorphiteToRawWoodEnabled"].value,
    true
)
