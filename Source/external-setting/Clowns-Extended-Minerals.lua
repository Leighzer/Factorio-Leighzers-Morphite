if mods["Clowns-Extended-Minerals"] then    
    data:extend(
        {
            {
                type = "bool-setting",
                name = "isMorphiteToClowns-Extended-MineralsEnabled",
                setting_type = "startup",
                default_value = true,
                order = "zf"
            },
    })    
end
