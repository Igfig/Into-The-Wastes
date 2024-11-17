import mods.TinkersForging.Anvil;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

// remove wooden hammer
recipes.remove(<tinkersforging:hammer/wood>);
mods.jei.JEI.removeAndHide(<tinkersforging:hammer/wood>);


// add anvil recipes for metal plates

val ingotPlates = {
	<ore:ingotIron>: <thermalfoundation:material:32>, 
	<ore:ingotGold>: <thermalfoundation:material:33>, 
	<ore:ingotCopper>: <thermalfoundation:material:320>, 
	<ore:ingotTin>: <thermalfoundation:material:321>, 
	<ore:ingotBronze>: <thermalfoundation:material:355>, 
	<ore:ingotLead>: <thermalfoundation:material:323>, 
	<ore:ingotSilver>: <thermalfoundation:material:322>, 
	<ore:ingotPlatinum>: <thermalfoundation:material:326>, 
	<ore:ingotElectrum>: <thermalfoundation:material:353> 
} as IItemStack[IIngredient];

for ingot, plate in ingotPlates {
	Anvil.addRecipe(ingot, plate, 2, "draw_last", "hit_not_last", "draw_not_last");
}


// fix smithing of Mystical World armor
// for some reason we need to use the actual ingots instead of oredicts, or else the ingredients don't show up

Anvil.removeRecipe(<mysticalworld:copper_helmet>);
Anvil.removeRecipe(<mysticalworld:copper_chestplate>);
Anvil.removeRecipe(<mysticalworld:copper_leggings>);
Anvil.removeRecipe(<mysticalworld:copper_boots>);

Anvil.removeRecipe(<mysticalworld:silver_helmet>);
Anvil.removeRecipe(<mysticalworld:silver_chestplate>);
Anvil.removeRecipe(<mysticalworld:silver_leggings>);
Anvil.removeRecipe(<mysticalworld:silver_boots>);

Anvil.addRecipe(<crossroads:ingot_copper> * 5, <mysticalworld:copper_helmet>, 2, "bend_last", "bend_second_last", "hit_third_last");
Anvil.addRecipe(<crossroads:ingot_copper> * 8, <mysticalworld:copper_chestplate>, 2, "hit_last", "bend_any", "upset_any");
Anvil.addRecipe(<crossroads:ingot_copper> * 7, <mysticalworld:copper_leggings>, 2, "hit_any", "bend_any", "draw_any");
Anvil.addRecipe(<crossroads:ingot_copper> * 4, <mysticalworld:copper_boots>, 2, "bend_last", "bend_second_last", "shrink_third_last");

Anvil.addRecipe(<thermalfoundation:material:130> * 5, <mysticalworld:silver_helmet>, 2, "bend_last", "bend_second_last", "hit_third_last");
Anvil.addRecipe(<thermalfoundation:material:130> * 8, <mysticalworld:silver_chestplate>, 2, "hit_last", "bend_any", "upset_any");
Anvil.addRecipe(<thermalfoundation:material:130> * 7, <mysticalworld:silver_leggings>, 2, "hit_any", "bend_any", "draw_any");
Anvil.addRecipe(<thermalfoundation:material:130> * 4, <mysticalworld:silver_boots>, 2, "bend_last", "bend_second_last", "shrink_third_last");