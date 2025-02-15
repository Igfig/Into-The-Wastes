import mods.jei.JEI;
import mods.inspirations.Cauldron;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

val potion = <minecraft:potion>;
val splash = <minecraft:splash_potion>;
val linger = <minecraft:lingering_potion>;

val shulker = <minecraft:shulker_shell>;
val obsidianDust = <thermalfoundation:material:770>;
val blitzPowder = <thermalfoundation:material:2051>;
val magmaShard = <toughasnails:magma_shard>;
val iceCube = <toughasnails:ice_cube>;
val redstone = <minecraft:redstone>;
val glowstone = <minecraft:glowstone>;
val gunpowder = <minecraft:gunpowder>;
val dragonBreath = <minecraft:dragon_breath>;
val prismarine = <minecraft:prismarine_crystals>;
val fermentedEye = <minecraft:fermented_spider_eye>;


// helper functions

function removePotion(potionName as string) {
	JEI.removeAndHide(<minecraft:potion>.withTag({Potion: potionName}));
	JEI.removeAndHide(<minecraft:splash_potion>.withTag({Potion: potionName}));
	JEI.removeAndHide(<minecraft:lingering_potion>.withTag({Potion: potionName}));
	JEI.removeAndHide(<minecraft:tipped_arrow>.withTag({Potion: potionName}));
	
	// I'd like to remove the potion catalysts as well, but for some reason removing one of them removes all of them, even filtering on a particular potion name.
}

function removePotionRecipes(inputPotionName as string, ingredient as IItemStack) {
	brewing.removeRecipe(<minecraft:potion>.withTag({Potion: inputPotionName}), ingredient);
	brewing.removeRecipe(<minecraft:splash_potion>.withTag({Potion: inputPotionName}), ingredient);
	brewing.removeRecipe(<minecraft:lingering_potion>.withTag({Potion: inputPotionName}), ingredient);
}

function removePotionVariantRecipes(inputPotionName as string) {
	brewing.removeRecipe(<minecraft:potion>.withTag({Potion: inputPotionName}), <minecraft:gunpowder>);
	brewing.removeRecipe(<minecraft:splash_potion>.withTag({Potion: inputPotionName}), <minecraft:dragon_breath>);
	
	Cauldron.removeBrewingRecipe(inputPotionName);
}

function addPotionRecipes(inputPotionName as string, ingredient as IIngredient, outputPotionName as string) {
	brewing.addBrew(<minecraft:potion>.withTag({Potion: inputPotionName}), ingredient, <minecraft:potion>.withTag({Potion: outputPotionName}));
	brewing.addBrew(<minecraft:splash_potion>.withTag({Potion: inputPotionName}), ingredient, <minecraft:splash_potion>.withTag({Potion: outputPotionName}));
	brewing.addBrew(<minecraft:lingering_potion>.withTag({Potion: inputPotionName}), ingredient, <minecraft:lingering_potion>.withTag({Potion: outputPotionName}));
	
	Cauldron.addBrewingRecipe(outputPotionName, inputPotionName, ingredient);
}

function addCauldronUpgrades(basePotionName as string, longPotionName as string, strongPotionName as string) {
	Cauldron.addBrewingRecipe(longPotionName, basePotionName, <minecraft:redstone>);
	Cauldron.addBrewingRecipe(strongPotionName, basePotionName, <minecraft:glowstone>);
}


// Some basic potion upgrades are missing a cauldron recipe

addCauldronUpgrades("minecraft:leaping", "minecraft:long_leaping", "minecraft:strong_leaping");
addCauldronUpgrades("quark:resistance", "quark:long_resistance", "quark:strong_resistance");
addCauldronUpgrades("cofhcore:luck", "cofhcore:luck+", "cofhcore:luck2");


// remove vanilla luck potion
// it's uncraftable, and we have a better one from COFH

removePotion("minecraft:luck");


// remove Railcraft Creosote potion; it's craftable, but the creosote bottle it's made from isn't

removePotion("railcraft:creosote");


// remove COFH and Inspirations Resistance potions
// we already have a better one from Quark

removePotion("inspirations:resistance");
removePotion("inspirations:long_resistance");

removePotionRecipes("minecraft:awkward", shulker);
removePotionRecipes("minecraft:awkward", obsidianDust);
removePotionRecipes("cofhcore:resistance", redstone);
removePotionRecipes("cofhcore:resistance", glowstone);
removePotionRecipes("inspirations:resistance", redstone);

removePotionVariantRecipes("cofhcore:resistance");
removePotionVariantRecipes("cofhcore:resistance+");
removePotionVariantRecipes("cofhcore:resistance2");
removePotionVariantRecipes("inspirations:resistance");
removePotionVariantRecipes("inspirations:long_resistance");


// add shulker shell as an ingredient for the Quark version

addPotionRecipes("minecraft:awkward", shulker, "quark:resistance");


// remove COFH levitation potion
// we already have a better one from Inspirations

removePotion("cofhcore:levitation");
removePotion("cofhcore:levitation+");

removePotionRecipes("minecraft:awkward", blitzPowder);
removePotionRecipes("cofhcore:levitation", redstone);

removePotionVariantRecipes("cofhcore:levitation");
removePotionVariantRecipes("cofhcore:levitation+");


// add blitz powder as an ingredient for the Inspirations version

addPotionRecipes("minecraft:awkward", blitzPowder, "inspirations:levitation");


// remove Inspirations decay potion
// we already have a better one from COFH

removePotion("inspirations:decay");
removePotion("inspirations:long_decay");

removePotionRecipes("minecraft:awkward", <iceandfire:witherbone>);
removePotionRecipes("minecraft:awkward", <inspirations:materials:7>);
removePotionRecipes("inspirations:decay", glowstone);

removePotionVariantRecipes("inspirations:decay");
removePotionVariantRecipes("inspirations:long_decay");


// add witherbone as an ingredient for the COFH version

addPotionRecipes("minecraft:awkward", <ore:boneWithered>, "cofhcore:wither");


// remove Inspirations mining fatigue potion
// we already have a better one from Quark

removePotion("inspirations:fatigue");
removePotion("inspirations:strong_fatigue");

removePotionRecipes("inspirations:haste", fermentedEye);
removePotionRecipes("inspirations:strong_haste", fermentedEye);
removePotionRecipes("inspirations:fatigue", glowstone);

removePotionVariantRecipes("inspirations:fatigue");
removePotionVariantRecipes("inspirations:strong_fatigue");


// don't use prismarine for haste or mundane potions

removePotionRecipes("minecraft:water", prismarine);
removePotionRecipes("minecraft:awkward", prismarine);


// switch ingredients for potions of heat and cold resistance

removePotionRecipes("minecraft:awkward", magmaShard);
removePotionRecipes("minecraft:awkward", iceCube);

Cauldron.removeBrewingRecipe("toughasnails:heat_resistance_type");
Cauldron.removeBrewingRecipe("toughasnails:cold_resistance_type");

addPotionRecipes("minecraft:awkward", iceCube, "toughasnails:heat_resistance_type");
addPotionRecipes("minecraft:awkward", magmaShard, "toughasnails:cold_resistance_type");


// remove all COFH "long strong" potions

removePotion("cofhcore:leaping2+");
removePotion("cofhcore:leaping3+");
removePotion("cofhcore:switftness2+");
removePotion("cofhcore:switftness3+");
removePotion("cofhcore:poison2+");
removePotion("cofhcore:poison3+");
removePotion("cofhcore:regeneration2+");
removePotion("cofhcore:regeneration3+");
removePotion("cofhcore:strength2+");
removePotion("cofhcore:strength3+");
removePotion("cofhcore:haste2+");
removePotion("cofhcore:haste3+");
removePotion("cofhcore:resistance2+");
removePotion("cofhcore:resistance3+");
removePotion("cofhcore:luck2+");
removePotion("cofhcore:luck3+");
removePotion("cofhcore:unluck2+");
removePotion("cofhcore:unluck3+");
removePotion("cofhcore:wither2+");
removePotion("cofhcore:wither3+");


// TODO recipes for level III potions using mana dust 