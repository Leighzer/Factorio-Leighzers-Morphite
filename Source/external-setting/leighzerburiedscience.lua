if mods["leighzerburiedscience"] then        
    data:extend(
        {
            {
                type = "bool-setting",
                name = "isMorphiteToleighzerburiedscienceEnabled",
                setting_type = "startup",
                default_value = false,
                order = "zc"
            },
            {
                type = "int-setting",
                name = "MorphitetoleighzerburiedscienceMultiplier",
                setting_type = "startup",
                default_value = 5,
                minimum_value = 1,
                maximum_value = 100000,
                order = "zd"
            }
    })    
end