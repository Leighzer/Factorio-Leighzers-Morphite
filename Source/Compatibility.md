# README
This is a small doc to help other modders add compatibility with Leighzer's Morphite.

# Quick Guide
This mod examines the data.raw.resource table and creates recipes in the data-updates stage for morphite to the resource recipe.

Nothing is required on your part. There is a default recipe template in place if you are fine with that.

# Customization
Here are a set of optional fields that can be set on the data.raw.resource[resourceName].leighzermorphite table to override the resource creator:
disabled - Set to true to have the recipe creator skip this resource entirely.
morphiteAmountRequired - Set this to change required morphite ingredient amount.
energyRequired - Set this to override the energy required (crafting time/effort essentially) of the recipe. (If nothing is set the mining time of the resource is used)
resultCounts - Set this to an array of result amounts to override what is returned. Make sure the ordering matches the resource results ordering!
additionalIngredients - Set this to an array of ingredients you want in addition to the morphite requirement.
dependentTechName - Set this to the name of the technology that must be researched before the morphite recipe can be used.
craftingCategory - Set this to override what kinds of machines can run the morphite recipe.

# Defaults
If no values are found, the following defaults will be resorted to (lua pseudocode):
disabled : false
morphiteAmountRequired : 1
energyRequired : resource.minable.mining_time or 1
resultCounts : 1
additionalIngredients : nil
dependentTechName : nil
craftingCategory : resource.category == "basic-fluid" or resultsContainFluid then "chemistry" else "crafting"

# Non-resource Recipes
There are also a few non-resource related recipes added (wood, water, morphite fuel). They reside in leighzermods.leighzermorphite.extras. I essentially created 'fake' resources, and fed them into the morphite recipe generator. I mention this as they have the same fields defined in the customization section and can be customized just the the raw resources (say if your mod adds water and the morphite to water recipe is not needed, it can still be disabled).

# Thank You
If you have any questions or issues please open a discussion on the mod portal!