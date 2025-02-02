import crafttweaker.item.IItemStack;


// remove long-distance transport

mods.jei.JEI.removeAndHide(<naturesaura:ender_crate>);
mods.jei.JEI.removeAndHide(<naturesaura:ender_access>);


// remove altar of birthing and all animal creation recipes

mods.jei.JEI.removeAndHide(<naturesaura:animal_spawner>);
mods.jei.JEI.hideCategory("naturesaura.animal_spawner");


// alternate use for Spirits of Birthing
// TODO find a way to prevent them spawning entirely
recipes.addShapeless(<minecraft:experience_bottle>, [<naturesaura:birth_spirit>]);


// remove Botanist's Hoe, because it gives you free seeds of many varieties
mods.jei.JEI.removeAndHide(<naturesaura:infused_iron_hoe>);

// and replace it in recipes
recipes.replaceAllOccurences(<naturesaura:infused_iron_hoe>, <naturesaura:infused_iron_shovel>);


// remove water bottle altar recipe
mods.naturesaura.Altar.removeRecipe(<minecraft:potion>.withTag({Potion: "minecraft:water"}));


// tooltips

<naturesaura:aura_cache>.addTooltip("Place on a Natural Altar to fill with Aura");
<naturesaura:aura_trove>.addTooltip("Place on a Natural Altar to fill with Aura");

val infused_gear = {
	<naturesaura:infused_iron_pickaxe>: "Right-click to turn a block mossy",
	<naturesaura:infused_iron_axe>: "Breaks leaves quickly",
	<naturesaura:infused_iron_shovel>: "Makes 3x3 paths on grass",
	<naturesaura:infused_iron_sword>: "Slows targets on hit",
	<naturesaura:infused_iron_hoe>: "REMOVED",
	<naturesaura:infused_iron_helmet>: "Full set inflicts Wither when attacked",
	<naturesaura:infused_iron_chest>: "Full set inflicts Wither when attacked",
	<naturesaura:infused_iron_pants>: "Full set inflicts Wither when attacked",
	<naturesaura:infused_iron_shoes>: "Full set inflicts Wither when attacked"
} as string[IItemStack];

for item, tooltip in infused_gear {
	item.addTooltip(tooltip);
	mods.jei.JEI.addDescription(item, "Stand still and crouch to repair this item, using Aura from a carried Aura Cache.");
}


// TEMP recipe for Bottled Ghosts because there's a weird compatibility issue between Nature's Aura and JED

recipes.addShapeless(<naturesaura:aura_bottle>.withTag({stored_type: "naturesaura:nether"}), 
	[<naturesaura:bottle_two_the_rebottling>, <minecraft:soul_sand>]);