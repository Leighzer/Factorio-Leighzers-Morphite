Here is a small guide if you want to add [Morphite to YOUR MOD RESOURCE] recipes.

--Create a file
Inside of the external-recipe folder add your recipe file.

Naming convention of your recipe file: YOURMODNAME.lua

Inside of external-recipes.lua add a line: require('YOURMODNAME')

Please view bobores.lua for example mod detection, ore detection, and recipe templates.

--Mod + Recipe Detection
If you don't create your own mod prototype (variables like bobmods, angelsmods, etc.) then I believe you can also use mods["YOURMODNAME"] to detect if your mod exists.

--external-setting.lua
To give players the option to toggle morphite to your mod recipes, create a settings file in the external-setting folder in the mod and follow a similar methodology as this guide. Below is an example.
if mods["YOURMODNAME"] and settings.startup["isMorphiteToYOURMODNAMEEnabled"].value then

add boolean setting that will get used at the start of the external-recipe file you created that can allow or deny recipes getting added.

--Detect your resource before hand
To detect your resource you probably want to go check data.raw.resource["example-ore"].

--Add an item sub group
Immediately inside your mod detection if statement, create an item subgroup. Use a previously existing item subgroup as a template. All that needs to be changed is the name field and order field.
Naming convention for name field: leighzermorphite-YOURMODNAME
Order - for this you are going to have to look through all the other external mod recipe files, find the one with greatest alphabetical ordering, then "add one" to that ordering. So if last ordered leighzer-MODNAME subgroup order value is "BB" your next ordering will be "BC". If there are really that many mod files I'll probably add in code down the road to automatically do this.

Now add if statement blocks that follow this logic: if YOUR MOD RESOURCE exists then {Add recipe bundle} end

Inside of that Add recipe block, define the recipe prototype that you want added.
Recipe name Naming Convention: morphite-to-YOURORE
Make sure enabled is set to true, technology for external mods is presently not supported. This may change down the road.
Make sure to set the recipe subgroup equal to the item subgroup you are creating above for the recipe.
Finally, the last bool to supply indicates if you want this recipe to have productivity enabled

--Last Notes
If your mod has more complex logic behind it than just needing to exist to add recipes make sure to incorporate that in your recipe files detection logic for your mod. For example, (I believe), Bob's ores get replaced when used with Angel's Refining. The detection logic for Bob's Ores recipe should be something like if exists AND NOT (Angel's Refining exists). Let me know if this is the case for your mod, we can discuss what recipes should be getting adding if other mods are also being used.

With all of that you should be able to add in your own recipes and deliver them to me to add to the mod. If you have any questions open a discussion board question under the mod portal page, or PM me on the factorio forums. I'll do my best to help out!













