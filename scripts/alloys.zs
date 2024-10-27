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

mods.foundry.AlloyingCrucible.addRecipe(<liquid:purified_water> * 11, <liquid:distilledwater> * 10, <liquid:purified_water> * 1);