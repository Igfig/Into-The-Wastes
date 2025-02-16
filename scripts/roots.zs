import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.roots.Fey;
import mods.roots.Mortar;
import mods.roots.Pyre;
import mods.cuisine.Mill;
import scripts.functions.unfunk;

val bedrock = <minecraft:bedrock>;
val DISABLED = "DISABLED. DO NOT USE";


// new tooltip for wildroot

<roots:wildroot>.addTooltip("Drops from hanging roots in dirt caves");
<roots:wildroot>.addTooltip("(NOT \"cave roots\")");


// terra moss and spores

recipes.addShapeless("terra_spores", <roots:terra_spores>, [<roots:terra_moss>]);

<roots:terra_moss>.addTooltip("Drops from scraping mossy stone with a knife");
mods.jei.JEI.addDescription(<roots:terra_spores>, "Use on cobblestone adjacent to water to turn it into mossy cobblestone.");


// redo sure-footed stone recipe

recipes.replaceAllOccurences(<roots:unending_bowl>, <roots:elemental_soil>, <roots:runestone_trample>);


// recipe for BOP Earth, which is used in an endgame ritual

Fey.addRecipe("tiny_planet", <biomesoplenty:earth>, [<roots:terra_spores>, <futuremc:blue_ice>, <roots:elemental_soil_earth>, <roots:infernal_bulb>, <roots:runed_obsidian>]);


// new recipe for fey leather pouch

Fey.removeRecipe(<roots:fey_pouch>);
Fey.addRecipe("fey_pouch", <roots:fey_pouch>, [<roots:herb_pouch>, <roots:fey_leather>, <roots:fey_leather>, <ore:ingotSilver>, <roots:mystic_feather>]);


// remove unwanted items

mods.jei.JEI.removeAndHide(<roots:wood_knife>);
mods.jei.JEI.removeAndHide(<roots:stone_knife>);
mods.jei.JEI.removeAndHide(<roots:diamond_knife>);

<roots:component_pouch>.addTooltip(DISABLED);
Fey.removeRecipe(<roots:component_pouch>);
mods.jei.JEI.removeAndHide(<roots:component_pouch>);

<roots:apothecary_pouch>.addTooltip(DISABLED);
Fey.removeRecipe(<roots:apothecary_pouch>);
mods.jei.JEI.removeAndHide(<roots:apothecary_pouch>);

<roots:unending_bowl>.addTooltip(DISABLED);
Fey.removeRecipe(<roots:unending_bowl>);
mods.jei.JEI.removeAndHide(<roots:unending_bowl>);


// remove block-breaking recipes, since theyve all been replaced

mods.jei.JEI.hideCategory("roots.block_break");


// remove OP mortar and pestle recipes

Mortar.removeRecipe(<minecraft:blaze_powder>);
Mortar.removeRecipe(<minecraft:magma_cream>);
Mortar.removeRecipe(<minecraft:string>);
Mortar.removeRecipe(<mysticalworld:silk_thread>);
Mortar.removeRecipe(<roots:flour>);


// Rename Roots flour to potato flour, and add a Cuisine mill recipe for it

<roots:flour>.displayName = "Potato Flour";
<roots:flour>.withEmptyTag().addTooltip("It takes two potatoes to make one potato flour");
Mill.add(<ore:cropPotato> * 2, null, <roots:flour>, null);


// Replace Wildewheet Bread recipe

recipes.remove(<roots:wildewheet_bread>);
val dough = unfunk(<cuisine:food:2>);
recipes.addShapeless("wildewheet_dough", <contenttweaker:wildewheet_dough>, [<roots:wildewheet>, dough, <ore:dustSalt>]);
furnace.addRecipe(<roots:wildewheet_bread>, <contenttweaker:wildewheet_dough>, 0.1);


// Update living tool and terrastone recipes to use gold and iron tools respectively, instead of wood and stone

val woodToolReplacements = {
	<roots:living_sword>: <minecraft:golden_sword>.anyDamage(),
	<roots:living_shovel>: <minecraft:golden_shovel>.anyDamage(),
	<roots:living_pickaxe>: <minecraft:golden_pickaxe>.anyDamage(),
	<roots:living_axe>: <minecraft:golden_axe>.anyDamage(),
	<roots:living_hoe>: <minecraft:golden_hoe>.anyDamage()
} as IIngredient[IItemStack];
val stoneToolReplacements = {
	<roots:terrastone_sword>: <thermalfoundation:tool.sword_steel>.anyDamage(),
	<roots:terrastone_shovel>: <thermalfoundation:tool.shovel_steel>.anyDamage(),
	<roots:terrastone_pickaxe>: <thermalfoundation:tool.pickaxe_steel>.anyDamage(),
	<roots:terrastone_axe>: <thermalfoundation:tool.axe_steel>.anyDamage(),
	<roots:terrastone_hoe>: <thermalfoundation:tool.hoe_steel>.anyDamage()
} as IIngredient[IItemStack];
val runedToolReplacements = {
	<roots:runed_sword>: [<minecraft:diamond_sword>.anyDamage(), <roots:infernal_bulb>],
	<roots:runed_shovel>: [<minecraft:diamond_shovel>.anyDamage(), <roots:dewgonia>],
	<roots:runed_pickaxe>: [<minecraft:diamond_pickaxe>.anyDamage(), <roots:stalicripe>],
	<roots:runed_axe>: [<minecraft:diamond_axe>.anyDamage(), <roots:cloud_berry>],
	<roots:runed_hoe>: [<minecraft:diamond_hoe>.anyDamage(), <roots:wildewheet>]
} as IIngredient[][IItemStack];

for rootsTool, goldTool in woodToolReplacements {
	Fey.removeRecipe(rootsTool);
	val name = rootsTool.name.substring(5);
	Fey.addRecipe(name, rootsTool, [<ore:ingotGold>, goldTool, <ore:wildroot>, <ore:rootsBark>, <ore:rootsBark>]);
}

for rootsTool, ironTool in stoneToolReplacements {
	Fey.removeRecipe(rootsTool);
	val name = rootsTool.name.substring(5);
	Fey.addRecipe(name, rootsTool, [<ore:runestone>, ironTool, <roots:terra_moss>, <ore:gemDiamond> | <ore:gemAmethyst> | <ore:gemPeridot> | <ore:gemTopaz>, <minecraft:mossy_cobblestone>]);
}

for rootsTool, ingredients in runedToolReplacements {
	Fey.removeRecipe(rootsTool);
	val name = rootsTool.name.substring(5);
	Fey.addRecipe(name, rootsTool, [<ore:runedObsidian>, <ore:runedObsidian>, ingredients[0], <roots:fey_leather>, ingredients[1]]);
}


// and same for various spells

Mortar.changeSpell("spell_natures_scythe", [<roots:wildroot>, <roots:wildroot>, <mysticalworld:aubergine>, <minecraft:golden_hoe>.anyDamage(), <ore:tallgrass>]);
Mortar.changeSpell("spell_shatter", [<minecraft:flint>, <minecraft:golden_pickaxe>.anyDamage(), <roots:stalicripe>, <minecraft:tnt>, <ore:cobblestone>]);
Mortar.changeSpell("spell_life_drain", [<roots:baffle_cap_mushroom>, <roots:moonglow_leaf>, <roots:moonglow_seed>, <minecraft:golden_sword>.anyDamage(), <minecraft:iron_bars>]);
Mortar.changeSpell("spell_extension", [<ore:chestWood>, <minecraft:golden_pickaxe>.anyDamage(), <ore:eye>, <minecraft:compass>, <minecraft:golden_carrot>]);
Mortar.changeSpell("spell_harvest", [<minecraft:golden_hoe>.anyDamage(), <mysticalworld:aubergine_seed>, <roots:wildewheet>, <roots:wildewheet_seed>, <minecraft:wheat_seeds>]);


// remove disabled rituals from JEI

mods.jei.JEI.removeAndHide(<roots:ritual_frost_lands>);
mods.jei.JEI.removeAndHide(<roots:ritual_summon_creatures>);


// new recipe for firestarter that doesn't conflict with Cuisine wooden handle

recipes.remove(<roots:fire_starter>);
recipes.addShapeless("fire_starter", <roots:fire_starter>, [<ore:stickWood>,<ore:stickWood>]);


// more tooltips

<roots:sylvan_helmet>.addTooltip("Reduces herb costs by 2%");
<roots:sylvan_chestplate>.addTooltip("Reduces herb costs by 2%");
<roots:sylvan_leggings>.addTooltip("Reduces herb costs by 2%");
<roots:sylvan_boots>.addTooltip("Reduces herb costs by 2%");

<roots:wildwood_helmet>.addTooltip("Slowly heals wearer");
<roots:wildwood_chestplate>.addTooltip("Slowly heals wearer");
<roots:wildwood_leggings>.addTooltip("Slowly heals wearer");
<roots:wildwood_boots>.addTooltip("Slowly heals wearer");

<roots:living_arrow>.addTooltip("Slightly more damaging than normal arrows");
<roots:wildwood_quiver>.addTooltip("Holds 6 stacks of arrows");
<roots:wildwood_quiver>.addTooltip("Grows new arrows when empty, at the cost of durability");

<roots:terrastone_axe>.addTooltip("Breaks leaves instantly");
<roots:terrastone_hoe>.addTooltip("Silk Touch on plants");
<roots:terrastone_hoe>.addTooltip("Auto-hydrates new farmland");
<roots:terrastone_pickaxe>.addTooltip("More efficient on harder blocks, less on softer ones");
<roots:terrastone_shovel>.addTooltip("Silk Touch on grass blocks");
<roots:terrastone_sword>.addTooltip("Breaks cobwebs instantly and with Silk Touch");

<roots:runed_shovel>.addTooltip("Digs dirt in a 3x3 area");
<roots:runed_axe>.addTooltip("Chops wood in a 3x3 area");
<roots:runed_pickaxe>.addTooltip("Breaks stone in a 3x3 area");
<roots:runed_hoe>.addTooltip("Hoes and hydrates in a 3x3 area");

val livingTools = [
	<roots:wildwood_bow>,
	<roots:living_pickaxe>,
	<roots:living_axe>,
	<roots:living_shovel>,
	<roots:living_hoe>,
	<roots:living_sword>,
	<roots:terrastone_pickaxe>,
	<roots:terrastone_axe>,
	<roots:terrastone_shovel>,
	<roots:terrastone_hoe>,
	<roots:terrastone_sword>,
	<roots:runed_dagger>,
	<roots:runed_pickaxe>,
	<roots:runed_axe>,
	<roots:runed_shovel>,
	<roots:runed_hoe>,
	<roots:runed_sword>
] as IItemStack[];

for tool in livingTools {
	tool.anyDamage().addTooltip("Repairs itself over time");
}