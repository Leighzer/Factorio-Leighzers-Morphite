# README
This is a small doc to help other modders add compatibility with Leighzer's Morphite.

# Quick Guide
This mod dynamically examines the data.raw.resource table and creates recipes for morphite to the raw recipe.

Nothing is required on your part. There is a default recipe template in place if you are fine with that. If you want to tweak this recipe template look into setting the below fields on your data.raw.resource[resourceName] table.

# Customization
leighzermorphiteDisabled - Set to true to have the dynamic recipe creator skip this raw resource entirely.
leighzermorphiteMorphiteAmountRequired - Set this to change required morphite ingredient amount.
leighzermorphiteEnergyRequiredOverride - Set this to override the energy required (crafting time/effort essentially) of the recipe. (If nothing is set the mining time of the resource is used)
leighzermorphiteRecipeResultCountOverride - Set this to an array of result amounts to override what is returned. Make sure the ordering matches the resource ordering!
leighzermorphiteAdditionalIngredients - Set this to an array of ingredients you want in addition to the morphite requirement.
leighzermorphiteDependentTechName - Set this to the name of the technology that must be researched before the morphite recipe can be used.
leighzermorphiteCraftingCategoryOverride - Set this to override what kinds of machines can run the morphite recipe.

# Non-resource Recipes
There are also a few non-resource related recipes added (wood, water, morphite fuel). They reside in leighzermods.leighzermorphite.extras. I essentially created 'fake' resources, and fed them into the morphite recipe generator. I mention this as they have the same fields defined in the customization section and can be customized just the the raw resources (say if your mod adds water and the morphite to water recipe is not needed, it can still be disabled).

# Thank You
If you have any questions or issues please open a discussion on the mod portal!