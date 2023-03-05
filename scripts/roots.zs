import mods.roots.Fey;
import mods.roots.Mortar;

val goldOrSilver = <ore:ingotGold> | <ore:ingotSilver>;
val wildroot = <roots:wildroot>;
val bark = <ore:rootsBark>;
val bedrock = <minecraft:bedrock>;
val runestone = <ore:runestone>;
val moss = <roots:terra_moss>;
val mossyCobble = <ore:mossyCobblestone>;
val diamond = <ore:gemDiamond>;
val DISABLED = "DISABLED. DO NOT USE";


// new info page for wildroot

mods.jei.JEI.addDescription(wildroot, "Dropped occasionally from breaking hanging roots in shallow caves, and from the extremely rare leaves of the wildwood tree.");


// terra moss and spores

recipes.addShapeless("terra_spores", <roots:terra_spores>, [<roots:terra_moss>]);
mods.jei.JEI.addDescription(<roots:terra_spores>, "When used on cobblestone adjacent to water, turns it into mossy cobblestone.");


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


// remove disabled rituals from JEI

mods.jei.JEI.removeAndHide(<roots:ritual_frost_lands>);
mods.jei.JEI.removeAndHide(<roots:ritual_summon_creatures>);


// new recipe for firestarter that doesn't conflict with Cuisine wooden handle

recipes.remove(<roots:fire_starter>);
recipes.addShapeless("fire_starter", <roots:fire_starter>, [<ore:stickWood>,<ore:stickWood>]);