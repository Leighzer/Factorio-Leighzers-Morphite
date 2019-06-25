

data:extend(
{   
   {--prototype for the actual ore object that is in the ground
   type = "resource",
   name = "morphite-ore",
   icon = "__leighzermorphite__/graphics/icons/morphite-ore.png",
   icon_size = 32,
   flags = {"placeable-neutral"},
   order="h",
   map_color = {r=1, g=0, b=1},--color used for ore patch when viewed from mini map
   minable =
   {     
     mining_particle = "morphite-ore-particle",
     mining_time = 1,
     result = "morphite-ore"
   },
   collision_box = {{ -0.1, -0.1}, {0.1, 0.1}},
   selection_box = {{ -0.5, -0.5}, {0.5, 0.5}},
   autoplace = resource_autoplace.resource_autoplace_settings{
    name = "morphite-ore",
    order = "z",
    base_density = 10,
    has_starting_area_placement = true,    
    regular_rq_factor_multiplier = 1.10,
    starting_rq_factor_multiplier = 1.5
  },

   stage_counts = {15000, 8000, 4000, 2000, 1000, 500, 200, 80},
   stages =
    {
      sheet =
      {
        filename = "__leighzermorphite__/graphics/entity/morphite-ore/morphite-ore.png",
        tint = {r=1, g=0, b=1, a = 1},--the graphic is actually gray scaled, so we use a tint to make it the color we want
        priority = "extra-high",
        width = 64,
        height = 64,
        frame_count = 8,
        variation_count = 8,        
      }
    },
  }
}
) 