if leighzermods and leighzermods.leighzerscienceores and settings.startup["isMorphiteToleighzerscienceoresEnabled"].value then       

    leighzermods.utils.createItemSubgroup("leighzermorphite-leighzerscienceores","leighzermorphite","ad")

    local sciences = {
        "automation-science",
        "logistic-science",
        "military-science",
        "chemical-science",
        "production-science",
        "utility-science",
        "space-science",
    }

    local scienceOreEnabledName = {
        "automationEnabled",
        "logisticEnabled",
        "militaryEnabled",
        "chemicalEnabled",
        "productionEnabled",
        "utilityEnabled",
        "spaceEnabled",
    }

    for i, science in ipairs(sciences) do        
        log(science)
        log(leighzermods.leighzerscienceores[scienceOreEnabledName[i]])        

        local energyRequired = 50
        if data.raw["recipe"][science.."-pack"] and data.raw["recipe"][science.."-pack"].energy_required then
            energyRequired = data.raw["recipe"][science.."-pack"].energy_required
        end

        if leighzermods.leighzerscienceores[scienceOreEnabledName[i]] then
            leighzermods.utils.createRecipe("morphite-to"..science.."-ore",energyRequired,true,"crafting",{{"morphite-ore", 1}},science.."-ore",1,"leighzermorphite-leighzerscienceores",i,true)    
        end
    end

    if mods["bobtech"] and leighzermods.leighzerscienceores.advancedLogisticEnabled then

        leighzermods.utils.createRecipe("morphite-to-advanced-logistic-science-ore",data.raw["recipe"]["advanced-logistic-science-pack"].energy_required,true,"crafting",{{"morphite-ore", 1}},advanced-logistic-science-ore,1,"leighzermorphite-leighzerscienceores","5a",true)
        
    end
end