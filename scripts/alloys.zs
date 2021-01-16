// remove too-easy alloy recipes (mostly bronze)

recipes.removeByRecipeName("crossroads:ingot_bronze_1");
recipes.removeByRecipeName("crossroads:block_bronze_0");
recipes.removeByRecipeName("crossroads:block_bronze_1");

recipes.removeByRecipeName("thermalfoundation:material"); // electrum dust
recipes.removeByRecipeName("thermalfoundation:material_2"); // bronze dust


// add some new recipes

mods.foundry.AlloyingCrucible.addRecipe(<liquid:refined_oil> * 3, <liquid:crude_oil> * 3, <liquid:steam> * 12);
mods.foundry.AlloyingCrucible.addRecipe(<liquid:refined_fuel> * 3, <liquid:refined_oil> * 3, <liquid:aerotheum> * 3);