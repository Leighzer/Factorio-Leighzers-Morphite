if mods["dark-matter-replicators-0_17-port"] then
    data:extend(
        {
            {
                type = "bool-setting",
                name = "isMorphiteTodark-matter-replicators-0_17-portEnabled",
                setting_type = "startup",
                default_value = true,
                order = "zi"
            },
    }) 
end