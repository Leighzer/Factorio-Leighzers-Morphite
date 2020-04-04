if angelsmods and angelsmods.refining then
    
    --add item sub group so we can keep all of the morphite to angels ores recipes in the same section
    data:extend({
        {
            type = "item-subgroup",
            name = "leighzermorphite-angelsrefining",
            group = "leighzermorphite",
            order = "ab",
          }
    })

    --Disable these recipes since Angels provides a way to get them/they would be OP if enabled
    DisableDataInsert("morphite-to-iron")
    DisableDataInsert("morphite-to-copper")    
    DisableDataInsert("morphite-to-wildcard")   
    DisableDataInsert("morphite-to-uranium-ore")
        
    AddRecipeDataBundle(    
        {--recipe prototype
            type = "recipe",
            name = "morphite-to-angels-ore1",
            energy_required = 1, 
            enabled = true,
            category = "advanced-crafting",
            ingredients = {{"morphite-ore", 1}},
            result = "angels-ore1",
            result_count = 1,
            subgroup = "leighzermorphite-angelsrefining", 
            order = "a"
        },
        nil,--prototype for technology to unlock recipe
        true,--bool to indicate this bundle should be added to data.raw
        true--bool to indicate that this recipe permits productivity modules
    )    

    AddRecipeDataBundle(    
        {
            type = "recipe",
            name = "morphite-to-angels-ore2",
            energy_required = 1, 
            enabled = true,
            category = "advanced-crafting",
            ingredients = {{"morphite-ore", 1}},
            result = "angels-ore2",
            result_count = 1,
            subgroup = "leighzermorphite-angelsrefining", 
            order = "b"
        },
        nil,
        true,
        true
    )   

    AddRecipeDataBundle(    
        {
            type = "recipe",
            name = "morphite-to-angels-ore3",
            energy_required = 1, 
            enabled = true,
            category = "advanced-crafting",
            ingredients = {{"morphite-ore", 1}},
            result = "angels-ore3",
            result_count = 1,
            subgroup = "leighzermorphite-angelsrefining", 
            order = "c"
        },
        nil,
        true,
        true
    )   

    AddRecipeDataBundle(    
        {
            type = "recipe",
            name = "morphite-to-angels-ore4",
            energy_required = 1, 
            enabled = true,
            category = "advanced-crafting",
            ingredients = {{"morphite-ore", 1}},
            result = "angels-ore4",
            result_count = 1,
            subgroup = "leighzermorphite-angelsrefining", 
            order = "d"
        },
        nil,
        true,
        true
    )    
    
    if bobmods and bobmods.plates then

        AddRecipeDataBundle(    
            {
                type = "recipe",
                name = "morphite-to-angels-ore5",
                energy_required = 1, 
                enabled = true,
                category = "advanced-crafting",
                ingredients = {{"morphite-ore", 1}},
                result = "angels-ore5",
                result_count = 1,
                subgroup = "leighzermorphite-angelsrefining", 
                order = "e"
            },
            nil,
            true,
            true
        )        

        AddRecipeDataBundle(    
            {
                type = "recipe",
                name = "morphite-to-angels-ore6",
                energy_required = 1, 
                enabled = true,
                category = "advanced-crafting",
                ingredients = {{"morphite-ore", 1}},
                result = "angels-ore6",
                result_count = 1,
                subgroup = "leighzermorphite-angelsrefining", 
                order = "f"
            },
            nil,
            true,
            true
        )
    end

    AddRecipeDataBundle(    
        {
            type = "recipe",
            name = "morphite-to-thermal-water",
            energy_required = 7.5, 
            enabled = true,
            category = "chemistry",
            ingredients = {{type="item",name="morphite-ore", amount=1},{type="fluid", name="water", amount=500}},
            results = {{type="fluid",name="thermal-water",amount=500}},
            result_count = 50,            
            subgroup = "leighzermorphite-angelsrefining",             
            order = "g"
        },
        nil,
        true,
        true    
    )    
    
end
