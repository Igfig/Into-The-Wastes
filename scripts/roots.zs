import mods.roots.Fey;
import mods.roots.Mortar;

val goldOrSilver = <ore:ingotGold> | <ore:ingotSilver>;
val wildroot = <roots:wildroot>;
val bark = <ore:rootsBark>;
val bedrock = <minecraft:bedrock>;
val DISABLED = "DISABLED. DO NOT USE";


// new info page for wildroot

mods.jei.JEI.addDescription(wildroot, "Dropped occasionally from breaking hanging roots in shallow caves, and from the extremely rare leaves of the wildwood tree.");


// terra moss and spores

recipes.addShapeless("terra_spores", <roots:terra_spores>, [<roots:terra_moss>]);
mods.jei.JEI.addDescription(<roots:terra_spores>, "When used on cobblestone adjacent to water, turns it into mossy cobblestone.");


// redo living tool recipes to account for there being no wood tools

Fey.removeRecipe(<roots:living_pickaxe>);
Fey.removeRecipe(<roots:living_axe>);
Fey.removeRecipe(<roots:living_shovel>);
Fey.removeRecipe(<roots:living_hoe>);
Fey.removeRecipe(<roots:living_sword>);

Fey.addRecipe("living_pickaxe", <roots:living_pickaxe>, [<minecraft:golden_pickaxe>, bark, bark, goldOrSilver, wildroot]);
Fey.addRecipe("living_axe", <roots:living_axe>, [<minecraft:golden_axe>, bark, bark, goldOrSilver, wildroot]);
Fey.addRecipe("living_shovel", <roots:living_shovel>, [<minecraft:golden_shovel>, bark, bark, goldOrSilver, wildroot]);
Fey.addRecipe("living_hoe", <roots:living_hoe>, [<minecraft:golden_hoe>, bark, bark, goldOrSilver, wildroot]);
Fey.addRecipe("living_sword", <roots:living_sword>, [<minecraft:golden_sword>, bark, bark, goldOrSilver, wildroot]);


// redo sure-footed stone recipe

recipes.replaceAllOccurences(<roots:unending_bowl>, <roots:elemental_soil>, <roots:runestone_trample>);


// remove unwanted items

mods.jei.JEI.removeAndHide(<roots:wood_knife>);
mods.jei.JEI.removeAndHide(<roots:stone_knife>);
mods.jei.JEI.removeAndHide(<roots:diamond_knife>);

<roots:component_pouch>.addTooltip(DISABLED);
mods.jei.JEI.removeAndHide(<roots:component_pouch>);

<roots:apothecary_pouch>.addTooltip(DISABLED);
Fey.removeRecipe(<roots:apothecary_pouch>);
Fey.addRecipe("apothecary_pouch", <roots:apothecary_pouch>, [<minecraft:leather>, bedrock, bedrock, bedrock, bedrock]);
mods.jei.JEI.removeAndHide(<roots:apothecary_pouch>);

<roots:unending_bowl>.addTooltip(DISABLED);
Fey.removeRecipe(<roots:unending_bowl>);
Fey.addRecipe("unending_bowl", <roots:unending_bowl>, [<minecraft:clay>, bedrock, bedrock, bedrock, bedrock]);
mods.jei.JEI.removeAndHide(<roots:unending_bowl>);


// remove OP mortar and pestle recipes

Mortar.removeRecipe(<minecraft:blaze_powder>);
Mortar.removeRecipe(<minecraft:magma_cream>);
Mortar.removeRecipe(<minecraft:string>);
Mortar.removeRecipe(<mysticalworld:silk_thread>);