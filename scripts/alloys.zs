// remove too-easy alloy recipes (mostly bronze)

recipes.removeByRecipeName("crossroads:ingot_bronze_1");
recipes.removeByRecipeName("crossroads:block_bronze_0");
recipes.removeByRecipeName("crossroads:block_bronze_1");

recipes.removeByRecipeName("thermalfoundation:material"); // electrum dust
recipes.removeByRecipeName("thermalfoundation:material_2"); // bronze dust


// alloy molten ender from refined fuel and molten silver

mods.foundry.AlloyingCrucible.addRecipe(<liquid:ender> * 1, <liquid:refined_fuel> * 8, <liquid:silver> * 16);


// purify water using steam

mods.foundry.AlloyingCrucible.addRecipe(<liquid:purified_water> * 4, <liquid:water> * 3, <liquid:steam> * 1);


// convert distilled water to purified water

mods.foundry.AlloyingCrucible.addRecipe(<liquid:purified_water> * 10, <liquid:distilledwater> * 9, <liquid:purified_water> * 1);


// these don't use the alloying crucible but they're still water purification

recipes.addShapeless(
	"distilled_water_to_purified__iron", 
	<forge:bucketfilled>.withTag({FluidName: "purified_water", Amount: 1000}),
	[<forge:bucketfilled>.withTag({FluidName: "distilledwater", Amount: 1000}).noReturn()]);
recipes.addShapeless(
	"distilled_water_to_purified__clay", 
	<ceramics:clay_bucket>.withTag({fluids: {FluidName: "purified_water", Amount: 1000}}),
	[<ceramics:clay_bucket>.withTag({fluids: {FluidName: "distilledwater", Amount: 1000}}).noReturn()]);