if leighzermods and leighzermods.leighzersciencebottling and settings.startup["isMorphiteToleighzersciencebottlingEnabled"].value then
      
    if leighzermods.leighzersciencebottling.isPrecursoreEnabled then
        leighzermods.utils.createItemSubgroup("leighzermorphite-leighzersciencebottling","leighzermorphite","ac")    
        leighzermods.utils.createRecipe("morphite-to-precursore-ore",1,true,"crafting",{{"morphite-ore", 1}},"precursore-ore",1,"leighzermorphite-leighzersciencebottling","a",true)    
    end
    
end