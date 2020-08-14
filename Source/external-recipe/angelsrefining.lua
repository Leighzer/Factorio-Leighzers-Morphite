if angelsmods and angelsmods.refining and settings.startup["isMorphiteToangelsrefiningEnabled"].value then
    
    --add item sub group so we can keep all of the morphite to angels ores recipes in the same section
    leighzermods.utils.createItemSubgroup("leighzermorphite-angelsrefining","leighzermorphite","ag")   

    leighzermods.utils.disableRecipe("morphite-to-iron")
    
    leighzermods.utils.disableRecipe("morphite-to-copper")
    
    leighzermods.utils.disableRecipe("morphite-to-wildcard")
    leighzermods.utils.disableTechnology("morphite-centrifugation")
    leighzermods.utils.disableRecipe("morphite-to-uranium-ore")
    leighzermods.utils.disableTechnology("morphite-to-uranium-processing")

    for i=1,4 do
        leighzermods.utils.createRecipe("morphite-to-angels-ore"..i,1,true,"crafting",{{"morphite-ore", 1}},"angels-ore"..i,1,"leighzermorphite-angelsrefining",i,true)
    end
    if bobmods and bobmods.plates then
        for i=5,6 do
            leighzermods.utils.createRecipe("morphite-to-angels-ore"..i,1,true,"crafting",{{"morphite-ore", 1}},"angels-ore"..i,1,"leighzermorphite-angelsrefining",i,true) 
        end
    end

    -- thermal water
    local morphiteToThermalWaterIngredients = {{type="item",name="morphite-ore", amount=1},{type="fluid", name="water", amount=500}}    
    leighzermods.utils.createRecipeComplex("morphite-to-thermal-water",7.5,true,"chemistry",morphiteToThermalWaterIngredients,nil,{{type="fluid",name="thermal-water",amount=500}},"leighzermorphite-angelsrefining","g",nil,true,nil)
    
end
