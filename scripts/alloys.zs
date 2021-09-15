// remove too-easy alloy recipes (mostly bronze)

recipes.removeByRecipeName("crossroads:ingot_bronze_1");
recipes.removeByRecipeName("crossroads:block_bronze_0");
recipes.removeByRecipeName("crossroads:block_bronze_1");

recipes.removeByRecipeName("thermalfoundation:material"); // electrum dust
recipes.removeByRecipeName("thermalfoundation:material_2"); // bronze dust


// alloy molten ender from refined fuel and molten silver

mods.foundry.AlloyingCrucible.addRecipe(<liquid:ender> * 1, <liquid:refined_fuel> * 8, <liquid:silver> * 16);