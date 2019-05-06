if not leighzermods then --generic mod variable to store information that may be needed later
    leighzermods = {}
end

if not leighzermods.leighzermorphite then
    leighzermods.leighzermorphite = {}
end

if not leighzermods.leighzermorphite.productivityEnabledRecipes then --list of recipe names that are going to get productivity modules enabled
    leighzermods.leighzermorphite.productivityEnabledRecipes = {}
end

if not leighzermods.recipeDataBundles then --list of recipes+technology+more prototypes to be inserted to data.raw (we keep this list so mods may at first add recipes, then down the road other mods can stop the insertion of the recipe, trying to keep data as clean as possible)
    leighzermods.recipeDataBundles = {}
end

require("prototypes.functions.functions")

if settings.startup["isMorphitePlacementEnabled"].value then --if enabled in the mod menu we will generate morphite ore patches on the map
    require("prototypes.particle")--protoypes for particles that fly when you hand mine morphite
    require("prototypes.mapgen")--autoplace control and noise layer
    require("prototypes.resource")--the actual entity that is in the ground
end
require("prototypes.categories")--prototypes for adding separate tab for morphite processing recipes
require("prototypes.item")--prototypes for objects that exist in inventory
require("prototypes.recipe+technology")--prototypes for recipe/technology definitions




