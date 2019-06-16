if mods["bobores"] then
    data:extend(
        {
            {
                type = "bool-setting",
                name = "isMorphiteToboboresEnabled",
                setting_type = "startup",
                default_value = true,
                order = "zd"
            },
    })     
end
