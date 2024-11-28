import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.roots.Fey;
import mods.roots.Mortar;
import mods.cuisine.Mill;

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
Fey.addRecipe("apothecary_pouch", <roots:component_pouch>, [<roots:bark_oak>, bedrock, bedrock, bedrock, bedrock]);
mods.jei.JEI.removeAndHide(<roots:component_pouch>);

<roots:apothecary_pouch>.addTooltip(DISABLED);
Fey.removeRecipe(<roots:apothecary_pouch>);
Fey.addRecipe("apothecary_pouch", <roots:apothecary_pouch>, [<minecraft:leather>, bedrock, bedrock, bedrock, bedrock]);
mods.jei.JEI.removeAndHide(<roots:apothecary_pouch>);

<roots:unending_bowl>.addTooltip(DISABLED);
Fey.removeRecipe(<roots:unending_bowl>);
Fey.addRecipe("unending_bowl", <roots:unending_bowl>, [<minecraft:clay>, bedrock, bedrock, bedrock, bedrock]);
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
<roots:flour>.addTooltip("It takes two potatoes to make one potato flour");
Mill.add(<ore:cropPotato> * 2, null, <roots:flour>, null);


// Update living tool and terrastone recipes to use gold and iron tools respectively, instead of wood and iron

val woodToolReplacements = {
	<roots:living_sword>: <minecraft:golden_sword>.anyDamage(),
	<roots:living_shovel>: <minecraft:golden_shovel>.anyDamage(),
	<roots:living_pickaxe>: <minecraft:golden_pickaxe>.anyDamage(),
	<roots:living_axe>: <minecraft:golden_axe>.anyDamage(),
	<roots:living_hoe>: <minecraft:golden_hoe>.anyDamage()
} as IIngredient[IItemStack];
val stoneToolReplacements = {
	<roots:terrastone_sword>: <minecraft:iron_sword>.anyDamage(),
	<roots:terrastone_shovel>: <minecraft:iron_shovel>.anyDamage(),
	<roots:terrastone_pickaxe>: <minecraft:iron_pickaxe>.anyDamage(),
	<roots:terrastone_axe>: <minecraft:iron_axe>.anyDamage(),
	<roots:terrastone_hoe>: <minecraft:iron_hoe>.anyDamage()
} as IIngredient[IItemStack];

for rootsTool, goldTool in woodToolReplacements {
	Fey.removeRecipe(rootsTool);
	Fey.addRecipe(rootsTool.name, rootsTool, [<ore:ingotGold> | <ore:ingotSilver>, goldTool, <ore:wildroot>, <ore:rootsBark>, <ore:rootsBark>]);
}

for rootsTool, ironTool in stoneToolReplacements {
	Fey.removeRecipe(rootsTool);
	Fey.addRecipe(rootsTool.name, rootsTool, [<ore:runestone>, ironTool, <roots:terra_moss>, <ore:gemDiamond>, <minecraft:mossy_cobblestone>]);
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