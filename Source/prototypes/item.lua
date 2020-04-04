data:extend(
{    
          {--prototype for object that gets stored in inventory when ore is mined
            type = "item",
            name = "morphite-ore",
            icon = "__leighzermorphite__/graphics/icons/morphite-ore.png",
            icon_size = 64,
            icon_mipmaps = 4,
            pictures =
            {
              { size = 64, filename = "__leighzermorphite__/graphics/icons/morphite-ore.png",   scale = 0.25, mipmap_count = 4 },
              { size = 64, filename = "__leighzermorphite__/graphics/icons/morphite-ore-1.png", scale = 0.25, mipmap_count = 4 },
              { size = 64, filename = "__leighzermorphite__/graphics/icons/morphite-ore-2.png", scale = 0.25, mipmap_count = 4 },
              { size = 64, filename = "__leighzermorphite__/graphics/icons/morphite-ore-3.png", scale = 0.25, mipmap_count = 4 }
            },
            subgroup = "raw-resource",
            order = "x-a",
            stack_size = 50,
          }         
})

if settings.startup["isMorphiteToMorphiteFuelEnabled"].value then 
  data:extend({
    {--prototype for object that gets stored in inventory when fuel is created
    type = "item",
    name = "morphite-fuel",
    icon = "__leighzermorphite__/graphics/icons/morphite-fuel.png",           
    icon_size = 32,          
    fuel_category = "chemical",
    fuel_value = "8MJ",
    subgroup = "intermediate-product",
    order = "p[morphite-fuel]",
    stack_size = 50,
    }
  })
end
