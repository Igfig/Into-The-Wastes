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
	Anvil.addRecipe(ingot, plate, 2, "draw_any", "hit_second_last", "draw_any");
}