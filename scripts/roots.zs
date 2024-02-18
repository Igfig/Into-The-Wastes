import mods.roots.Fey;
import mods.roots.Mortar;
import mods.roots.SummonCreatures;
import mods.roots.RunicShears;
import mods.cuisine.Mill;

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
mods.jei.JEI.addDescription(<roots:terra_spores>, "Use on cobblestone adjacent to water to turn it into mossy cobblestone.");


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
Mortar.removeRecipe(<roots:flour>);


// Rename Roots flour to potato flour, and add a Cuisine mill recipe for it
<roots:flour>.displayName = "Potato Flour";
Mill.add(<ore:cropPotato> * 2, null, <roots:flour>, null);


// remove disabled rituals from JEI

mods.jei.JEI.removeAndHide(<roots:ritual_frost_lands>);
mods.jei.JEI.removeAndHide(<roots:ritual_summon_creatures>);

// remove all Life Essence recipes for creature summons
SummonCreatures.clearLifeEssence();

// and also remove all summoning recipes individually, so they won't show up in JEI
SummonCreatures.removeEntity(<entity:minecraft:bat>);
SummonCreatures.removeEntity(<entity:minecraft:chicken>);
SummonCreatures.removeEntity(<entity:minecraft:cow>);
SummonCreatures.removeEntity(<entity:minecraft:creeper>);
SummonCreatures.removeEntity(<entity:minecraft:donkey>);
SummonCreatures.removeEntity(<entity:minecraft:horse>);
SummonCreatures.removeEntity(<entity:minecraft:husk>);
SummonCreatures.removeEntity(<entity:minecraft:llama>);
SummonCreatures.removeEntity(<entity:minecraft:mooshroom>);
SummonCreatures.removeEntity(<entity:minecraft:mule>);
SummonCreatures.removeEntity(<entity:minecraft:ocelot>);
SummonCreatures.removeEntity(<entity:minecraft:parrot>);
SummonCreatures.removeEntity(<entity:minecraft:pig>);
SummonCreatures.removeEntity(<entity:minecraft:polar_bear>);
SummonCreatures.removeEntity(<entity:minecraft:rabbit>);
SummonCreatures.removeEntity(<entity:minecraft:sheep>);
SummonCreatures.removeEntity(<entity:minecraft:skeleton>);
SummonCreatures.removeEntity(<entity:minecraft:spider>);
SummonCreatures.removeEntity(<entity:minecraft:squid>);
SummonCreatures.removeEntity(<entity:minecraft:stray>);
SummonCreatures.removeEntity(<entity:minecraft:witch>);
SummonCreatures.removeEntity(<entity:minecraft:wolf>);
SummonCreatures.removeEntity(<entity:minecraft:zombie>);
SummonCreatures.removeEntity(<entity:minecraft:zombie_pigman>);
SummonCreatures.removeEntity(<entity:mysticalworld:entity_beetle>);
SummonCreatures.removeEntity(<entity:mysticalworld:entity_deer>);
SummonCreatures.removeEntity(<entity:mysticalworld:entity_fox>);
SummonCreatures.removeEntity(<entity:mysticalworld:entity_frog>);
SummonCreatures.removeEntity(<entity:mysticalworld:entity_owl>);
SummonCreatures.removeEntity(<entity:mysticalworld:entity_sprout>);



// new recipe for firestarter that doesn't conflict with Cuisine wooden handle

recipes.remove(<roots:fire_starter>);
recipes.addShapeless("fire_starter", <roots:fire_starter>, [<ore:stickWood>,<ore:stickWood>]);


// remove runic shearing recipes for vanilla farm animals, since they shouldn't exist

RunicShears.removeEntityRecipe(<entity:minecraft:chicken>);
RunicShears.removeEntityRecipe(<entity:minecraft:cow>); 
RunicShears.removeEntityRecipe(<entity:minecraft:pig>);
RunicShears.removeEntityRecipe(<entity:minecraft:rabbit>);


// animania runic shearing recipes

RunicShears.addEntityRecipe("feather_from_hen_leghorn", <roots:mystic_feather>, <entity:animania:hen_leghorn>, 45*20);
RunicShears.addEntityRecipe("feather_from_rooster_leghorn", <roots:mystic_feather>, <entity:animania:rooster_leghorn>, 45*20);
RunicShears.addEntityRecipe("feather_from_hen_orpington", <roots:mystic_feather>, <entity:animania:hen_orpington>, 45*20);
RunicShears.addEntityRecipe("feather_from_rooster_orpington", <roots:mystic_feather>, <entity:animania:rooster_orpington>, 45*20);
RunicShears.addEntityRecipe("feather_from_hen_plymouth_rock", <roots:mystic_feather>, <entity:animania:hen_plymouth_rock>, 45*20);
RunicShears.addEntityRecipe("feather_from_rooster_plymouth_rock", <roots:mystic_feather>, <entity:animania:rooster_plymouth_rock>, 45*20);
RunicShears.addEntityRecipe("feather_from_hen_rhode_island_red", <roots:mystic_feather>, <entity:animania:hen_rhode_island_red>, 45*20);
RunicShears.addEntityRecipe("feather_from_rooster_rhode_island_red", <roots:mystic_feather>, <entity:animania:rooster_rhode_island_red>, 45*20);
RunicShears.addEntityRecipe("feather_from_hen_wyandotte", <roots:mystic_feather>, <entity:animania:hen_wyandotte>, 45*20);
RunicShears.addEntityRecipe("feather_from_rooster_wyandotte", <roots:mystic_feather>, <entity:animania:rooster_wyandotte>, 45*20);
RunicShears.addEntityRecipe("feather_from_peahen_charcoal", <roots:mystic_feather>, <entity:animania:peahen_charcoal>, 45*20);
RunicShears.addEntityRecipe("feather_from_peacock_charcoal", <roots:mystic_feather>, <entity:animania:peacock_charcoal>, 45*20);
RunicShears.addEntityRecipe("feather_from_peahen_opal", <roots:mystic_feather>, <entity:animania:peahen_opal>, 45*20);
RunicShears.addEntityRecipe("feather_from_peacock_opal", <roots:mystic_feather>, <entity:animania:peacock_opal>, 45*20);
RunicShears.addEntityRecipe("feather_from_peahen_peach", <roots:mystic_feather>, <entity:animania:peahen_peach>, 45*20);
RunicShears.addEntityRecipe("feather_from_peacock_peach", <roots:mystic_feather>, <entity:animania:peacock_peach>, 45*20);
RunicShears.addEntityRecipe("feather_from_peahen_purple", <roots:mystic_feather>, <entity:animania:peahen_purple>, 45*20);
RunicShears.addEntityRecipe("feather_from_peacock_purple", <roots:mystic_feather>, <entity:animania:peacock_purple>, 45*20);
RunicShears.addEntityRecipe("feather_from_peahen_taupe", <roots:mystic_feather>, <entity:animania:peahen_taupe>, 45*20);
RunicShears.addEntityRecipe("feather_from_peacock_taupe", <roots:mystic_feather>, <entity:animania:peacock_taupe>, 45*20);
RunicShears.addEntityRecipe("feather_from_peahen_blue", <roots:mystic_feather>, <entity:animania:peahen_blue>, 45*20);
RunicShears.addEntityRecipe("feather_from_peacock_blue", <roots:mystic_feather>, <entity:animania:peacock_blue>, 45*20);
RunicShears.addEntityRecipe("feather_from_peahen_white", <roots:mystic_feather>, <entity:animania:peahen_white>, 45*20);
RunicShears.addEntityRecipe("feather_from_peacock_white", <roots:mystic_feather>, <entity:animania:peacock_white>, 45*20);

RunicShears.addEntityRecipe("leather_from_mare_draft", <roots:fey_leather>, <entity:animania:mare_draft>, 30*20);
RunicShears.addEntityRecipe("leather_from_stallion_draft", <roots:fey_leather>, <entity:animania:stallion_draft>, 30*20);
RunicShears.addEntityRecipe("leather_from_sow_yorkshire", <roots:fey_leather>, <entity:animania:sow_yorkshire>, 30*20);
RunicShears.addEntityRecipe("leather_from_hog_yorkshire", <roots:fey_leather>, <entity:animania:hog_yorkshire>, 30*20);
RunicShears.addEntityRecipe("leather_from_sow_old_spot", <roots:fey_leather>, <entity:animania:sow_old_spot>, 30*20);
RunicShears.addEntityRecipe("leather_from_hog_old_spot", <roots:fey_leather>, <entity:animania:hog_old_spot>, 30*20);
RunicShears.addEntityRecipe("leather_from_sow_large_black", <roots:fey_leather>, <entity:animania:sow_large_black>, 30*20);
RunicShears.addEntityRecipe("leather_from_hog_large_black", <roots:fey_leather>, <entity:animania:hog_large_black>, 30*20);
RunicShears.addEntityRecipe("leather_from_sow_large_white", <roots:fey_leather>, <entity:animania:sow_large_white>, 30*20);
RunicShears.addEntityRecipe("leather_from_hog_large_white", <roots:fey_leather>, <entity:animania:hog_large_white>, 30*20);
RunicShears.addEntityRecipe("leather_from_sow_hampshire", <roots:fey_leather>, <entity:animania:sow_hampshire>, 30*20);
RunicShears.addEntityRecipe("leather_from_hog_hampshire", <roots:fey_leather>, <entity:animania:hog_hampshire>, 30*20);
RunicShears.addEntityRecipe("leather_from_sow_duroc", <roots:fey_leather>, <entity:animania:sow_duroc>, 30*20);
RunicShears.addEntityRecipe("leather_from_hog_duroc", <roots:fey_leather>, <entity:animania:hog_duroc>, 30*20);
RunicShears.addEntityRecipe("leather_from_cow_angus", <roots:fey_leather>, <entity:animania:cow_angus>, 30*20);
RunicShears.addEntityRecipe("leather_from_bull_angus", <roots:fey_leather>, <entity:animania:bull_angus>, 30*20);
RunicShears.addEntityRecipe("leather_from_cow_friesian", <roots:fey_leather>, <entity:animania:cow_friesian>, 30*20);
RunicShears.addEntityRecipe("leather_from_bull_friesian", <roots:fey_leather>, <entity:animania:bull_friesian>, 30*20);
RunicShears.addEntityRecipe("leather_from_cow_hereford", <roots:fey_leather>, <entity:animania:cow_hereford>, 30*20);
RunicShears.addEntityRecipe("leather_from_bull_hereford", <roots:fey_leather>, <entity:animania:bull_hereford>, 30*20);
RunicShears.addEntityRecipe("leather_from_cow_holstein", <roots:fey_leather>, <entity:animania:cow_holstein>, 30*20);
RunicShears.addEntityRecipe("leather_from_bull_holstein", <roots:fey_leather>, <entity:animania:bull_holstein>, 30*20);
RunicShears.addEntityRecipe("leather_from_cow_longhorn", <roots:fey_leather>, <entity:animania:cow_longhorn>, 30*20);
RunicShears.addEntityRecipe("leather_from_bull_longhorn", <roots:fey_leather>, <entity:animania:bull_longhorn>, 30*20);
RunicShears.addEntityRecipe("leather_from_cow_highland", <roots:fey_leather>, <entity:animania:cow_highland>, 30*20);
RunicShears.addEntityRecipe("leather_from_bull_highland", <roots:fey_leather>, <entity:animania:bull_highland>, 30*20);
RunicShears.addEntityRecipe("leather_from_cow_jersey", <roots:fey_leather>, <entity:animania:cow_jersey>, 30*20);
RunicShears.addEntityRecipe("leather_from_bull_jersey", <roots:fey_leather>, <entity:animania:bull_jersey>, 30*20);
RunicShears.addEntityRecipe("leather_from_buck_alpine", <roots:fey_leather>, <entity:animania:buck_alpine>, 30*20);
RunicShears.addEntityRecipe("leather_from_doe_alpine", <roots:fey_leather>, <entity:animania:doe_alpine>, 30*20);
RunicShears.addEntityRecipe("leather_from_buck_angora", <roots:fey_leather>, <entity:animania:buck_angora>, 30*20);
RunicShears.addEntityRecipe("leather_from_doe_angora", <roots:fey_leather>, <entity:animania:doe_angora>, 30*20);
RunicShears.addEntityRecipe("leather_from_buck_fainting", <roots:fey_leather>, <entity:animania:buck_fainting>, 30*20);
RunicShears.addEntityRecipe("leather_from_doe_fainting", <roots:fey_leather>, <entity:animania:doe_fainting>, 30*20);
RunicShears.addEntityRecipe("leather_from_buck_kiko", <roots:fey_leather>, <entity:animania:buck_kiko>, 30*20);
RunicShears.addEntityRecipe("leather_from_doe_kiko", <roots:fey_leather>, <entity:animania:doe_kiko>, 30*20);
RunicShears.addEntityRecipe("leather_from_buck_kinder", <roots:fey_leather>, <entity:animania:buck_kinder>, 30*20);
RunicShears.addEntityRecipe("leather_from_doe_kinder", <roots:fey_leather>, <entity:animania:doe_kinder>, 30*20);
RunicShears.addEntityRecipe("leather_from_buck_nigerian_dwarf", <roots:fey_leather>, <entity:animania:buck_nigerian_dwarf>, 30*20);
RunicShears.addEntityRecipe("leather_from_doe_nigerian_dwarf", <roots:fey_leather>, <entity:animania:doe_nigerian_dwarf>, 30*20);
RunicShears.addEntityRecipe("leather_from_buck_pygmy", <roots:fey_leather>, <entity:animania:buck_pygmy>, 30*20);
RunicShears.addEntityRecipe("leather_from_doe_pygmy", <roots:fey_leather>, <entity:animania:doe_pygmy>, 30*20);
RunicShears.addEntityRecipe("leather_from_buck_cottontail", <roots:fey_leather>, <entity:animania:buck_cottontail>, 30*20);
RunicShears.addEntityRecipe("leather_from_doe_cottontail", <roots:fey_leather>, <entity:animania:doe_cottontail>, 30*20);
RunicShears.addEntityRecipe("leather_from_buck_chinchilla", <roots:fey_leather>, <entity:animania:buck_chinchilla>, 30*20);
RunicShears.addEntityRecipe("leather_from_doe_chinchilla", <roots:fey_leather>, <entity:animania:doe_chinchilla>, 30*20);
RunicShears.addEntityRecipe("leather_from_buck_dutch", <roots:fey_leather>, <entity:animania:buck_dutch>, 30*20);
RunicShears.addEntityRecipe("leather_from_doe_dutch", <roots:fey_leather>, <entity:animania:doe_dutch>, 30*20);
RunicShears.addEntityRecipe("leather_from_buck_havana", <roots:fey_leather>, <entity:animania:buck_havana>, 30*20);
RunicShears.addEntityRecipe("leather_from_doe_havana", <roots:fey_leather>, <entity:animania:doe_havana>, 30*20);
RunicShears.addEntityRecipe("leather_from_buck_jack", <roots:fey_leather>, <entity:animania:buck_jack>, 30*20);
RunicShears.addEntityRecipe("leather_from_doe_jack", <roots:fey_leather>, <entity:animania:doe_jack>, 30*20);
RunicShears.addEntityRecipe("leather_from_buck_new_zealand", <roots:fey_leather>, <entity:animania:buck_new_zealand>, 30*20);
RunicShears.addEntityRecipe("leather_from_doe_new_zealand", <roots:fey_leather>, <entity:animania:doe_new_zealand>, 30*20);
RunicShears.addEntityRecipe("leather_from_buck_rex", <roots:fey_leather>, <entity:animania:buck_rex>, 30*20);
RunicShears.addEntityRecipe("leather_from_doe_rex", <roots:fey_leather>, <entity:animania:doe_rex>, 30*20);
RunicShears.addEntityRecipe("leather_from_buck_lop", <roots:fey_leather>, <entity:animania:buck_lop>, 30*20);
RunicShears.addEntityRecipe("leather_from_doe_lop", <roots:fey_leather>, <entity:animania:doe_lop>, 30*20);

RunicShears.addEntityRecipe("ooze_from_toad", <roots:strange_ooze>, <entity:animania:toad>, 120*20);
RunicShears.addEntityRecipe("ooze_from_frog", <roots:strange_ooze>, <entity:animania:frog>, 120*20);
RunicShears.addEntityRecipe("ooze_from_dartfrog", <roots:strange_ooze>, <entity:animania:dartfrog>, 120*20);


// TODO runic shear recipes for ZAWA mobs

//RunicShears.addEntityRecipe("_from_", <:>, <entity:zawa:>, 30*20);


// other mod runic shearing recipes

RunicShears.addEntityRecipe("ooze_from_quarkfrog", <roots:strange_ooze>, <entity:quark:frog>, 120*20);
RunicShears.addEntityRecipe("cobble_from_stoneling", <minecraft:cobblestone>, <entity:quark:stoneling>, 30*20);
RunicShears.addEntityRecipe("coal_from_foxhound", <minecraft:coal>, <entity:quark:foxhound>, 120*20);
RunicShears.addEntityRecipe("shell_from_quarkfrog", <quark:crab_shell>, <entity:quark:crab>, 180*20);

RunicShears.addEntityRecipe("camo_from_chameleon", <primitivemobs:camouflage_dye>, <entity:primitivemobs:chameleon>, 240*20);
RunicShears.addEntityRecipe("feather_from_dodo", <roots:mystic_feather>, <entity:primitivemobs:dodo>, 45*20);

RunicShears.addEntityRecipe("bamboo_from_panda", <futuremc:bamboo>, <entity:futuremc:panda>, 30*20);
