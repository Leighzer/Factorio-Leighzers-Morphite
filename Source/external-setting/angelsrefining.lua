if mods["angelsrefining"] then
    data:extend(
        {
            {
                type = "bool-setting",
                name = "isMorphiteToangelsrefiningEnabled",
                setting_type = "startup",
                default_value = true,
                order = "zd"
            },
    }) 
end
