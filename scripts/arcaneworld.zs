import mods.ArcaneWorld;


// remove all rituals
ArcaneWorld.removeAll();


// Reduce durability on consumables

<arcaneworld:recaller>.maxDamage = 1;
<arcaneworld:biome_crystal>.maxDamage = 1;


// hide Growth Powder because it causes errors if you use it on Animania animals
mods.jei.JEI.removeAndHide(<arcaneworld:growth_powder>);


// tooltips

<arcaneworld:molten_pickaxe>.addTooltip("Automatically smelts broken blocks");
<arcaneworld:molten_shovel>.addTooltip("Automatically smelts broken blocks");
<arcaneworld:molten_axe>.addTooltip("Automatically smelts broken blocks");
<arcaneworld:fang_wand>.addTooltip("Summons a line of fangs, like an evoker");
<arcaneworld:arcane_hoe>.addTooltip("Tills and hydrates all farmland in a line");
<arcaneworld:ethereal_sword>.addTooltip("Causes struck enemies to become invisible and glow");
<arcaneworld:recaller>.addTooltip("Right click to set a location");
<arcaneworld:recaller>.addTooltip("Right click again to teleport");
<arcaneworld:recaller>.addTooltip("back to that location");
<arcaneworld:biome_crystal>.addTooltip("Right click to suck the biome out of an area");
<arcaneworld:biome_crystal>.addTooltip("Right click again to write the stored biome");
<arcaneworld:biome_crystal>.addTooltip("back into the world");
<arcaneworld:glowing_chorus>.addTooltip("Sends you straight to The End");


// new recipe for ritual table

val xpTome = <thermalfoundation:tome_experience>.withTag({Experience:10000});

recipes.remove(<arcaneworld:ritual_table>);
recipes.addShaped("ritual_table", <arcaneworld:ritual_table>, [
	[<roots:fey_leather>,xpTome,<roots:fey_leather>],
	[<naturesaura:sky_ingot>,<ore:blockMithril>,<naturesaura:sky_ingot>],
	[<ore:ingotIvoryPsi>,<ore:ingotPlatinum>,<ore:ingotEbonyPsi>]]);


// other new recipes

recipes.replaceAllOccurences(<ore:gemAmethyst>, <ore:gemTopaz>, <arcaneworld:molten_core>);
recipes.addShapedMirrored("evocation_wand", <arcaneworld:fang_wand>, [
	[null,<ore:ingotGold>,<ore:ingotMithril>],
	[null,<ore:gemAmber>,<ore:ingotGold>],
	[<naturesaura:ancient_stick>,null,null]]);
recipes.addShapedMirrored("arcane_hoe", <arcaneworld:arcane_hoe>, [
	[<ore:gemAmber>,<ore:gemAmber>],
	[null,<ore:ingotMithril>],
	[null,<naturesaura:ancient_stick>]]);


// new ritual for Chunky Cheese Token

val token = <rats:chunky_cheese_token>;
recipes.remove(token); // new recipe added 

ArcaneWorld.createRitualCreateItem("departure", "Ritual of Departure", <rats:chunky_cheese_token>, [	
	<biomesoplenty:sapling_1:7>, // sacred oak sapling
	<ore:dragonScaleBlock>,
	<minecraft:dragon_egg>,
	<futuremc:netherite_ingot>,
	<biomesoplenty:terrestrial_artifact>]);


// new ritual to turn desert into grass in a 64-block radius
// TODO figure out how to make it do a graphical reload so it doesn't keep looking like the biome is desert

ArcaneWorld.createRitualCommand("sand_to_grass", "Ritual of Regrowth", [
	"/title @p actionbar \"You may need to relog to see the biome colors change\" ",
	"/title @p subtitle \"The desert shall bloom\" ",
	"/title @p title {\"text\":\"Ritual of Regrowth\",\"color\":\"dark_green\"}",
	"/weather thunder 10",
	"/playsound minecraft:record.far record @a ~ ~ ~ 6",
	"/particle happyVillager ~-4 ~-1 ~-4 8 2 8 1 4000",
	"/cofh replaceblocks @s 64 255 64 minecraft:grass minecraft:sand",
	"/cofh replaceblocks @s 64 255 64 minecraft:stone minecraft:sandstone#0",
	"/cofh replaceblocks @s 64 255 64 minecraft:water biomesoplenty:sand",
	"/btsetbiome 4 64" // Forest biome
], [<ore:ingotPlatinum>,<ore:grass>,<naturesaura:aura_trove>.withTag({aura:1200000}),<roots:spirit_herb>,<naturesaura:sky_ingot>]);


// ritual to summon a bunch of elementals

ArcaneWorld.createRitualCommand("summon_elementals", "Elemental Swarm", [
	"/particle flame ~1 ~2 ~ 1 1 1 0.1 100",
	"/particle cloud ~ ~2 ~1 1 1 1 0.1 100",
	"/particle splash ~-1 ~2 ~ 1 1 1 0.1 200",
	"/particle fallingdust ~ ~2 ~-1 1 1 1 0.1 100",
	"/summon minecraft:blaze ~1 ~2 ~",
	"/summon minecraft:blaze ~1 ~2 ~",
	"/summon minecraft:blaze ~1 ~2 ~",
	"/summon thermalfoundation:blitz ~ ~2 ~1",
	"/summon thermalfoundation:blitz ~ ~2 ~1",
	"/summon thermalfoundation:blitz ~ ~2 ~1",
	"/summon thermalfoundation:blizz ~-1 ~2 ~",
	"/summon thermalfoundation:blizz ~-1 ~2 ~",
	"/summon thermalfoundation:blizz ~-1 ~2 ~",
	"/summon thermalfoundation:basalz ~ ~2 ~-1",
	"/summon thermalfoundation:basalz ~ ~2 ~-1",
	"/summon thermalfoundation:basalz ~ ~2 ~-1",
], [<ore:dustBlaze>,<ore:dustBlitz>,<ore:blockAmethyst>,<ore:dustBlizz>,<ore:dustBasalz>]);


// time ritual reworks

ArcaneWorld.createRitualTime("time_forward", "Time Skip", 10000, [<ore:nuggetPlatinum>,<minecraft:double_plant:0>,<ore:dustGlowstone>,<roots:moonglow_leaf>,<ore:nuggetPlatinum>]);

ArcaneWorld.createRitualTime("time_back", "Time Rewind", -10000, [<ore:nuggetPlatinum>,<minecraft:double_plant:0>,<ore:dustRedstone>,<roots:moonglow_leaf>,<ore:nuggetPlatinum>]);


// weather ritual reworks

ArcaneWorld.createRitualCommand("weather_clear", "Clear Skies", [
	"/particle endRod ~-0.5 ~2 ~-0.5 1 1 1 0.1 100",
	"/weather clear",
], [<ore:nuggetPlatinum>,<ore:shardPrismarine>,<ore:dustGlowstone>,<ore:dustPrismarine>,<ore:nuggetPlatinum>]);

ArcaneWorld.createRitualCommand("weather_rain", "Grey Skies", [
	"/particle cloud ~-0.5 ~2 ~-0.5 1 1 1 0.1 100",
	"/weather rain",
], [<ore:nuggetPlatinum>,<ore:shardPrismarine>,<chisel:cloud>,<ore:dustPrismarine>,<ore:nuggetPlatinum>]);

ArcaneWorld.createRitualCommand("weather_thunder", "Stormy Skies", [
	"/summon minecraft:lightning_bolt ~ ~5 ~",
	"/weather thunder",
], [<ore:nuggetPlatinum>,<ore:shardPrismarine>,<ore:gunpowder>,<ore:dustPrismarine>,<ore:nuggetPlatinum>]);


// other ritual reworks
	
ArcaneWorld.createRitualCreateItem("create_recaller", "Call of the Void", <arcaneworld:recaller>, [
	<ore:obsidian>,<ore:ingotPlatinum>,<minecraft:ender_eye>,<ore:gemAmethyst>,<ore:obsidian>]);
	
ArcaneWorld.createRitualCreateItem("create_biome_crystal", "Crystal Forge", <arcaneworld:biome_crystal>, [
	<minecraft:ender_eye>,<ore:ingotPlatinum>,<ore:grass>,<ore:gemPeridot>,<minecraft:dragon_breath>]);
	
ArcaneWorld.createRitualCreateItem("create_glowing_chorus", "Radiant Chorus", <arcaneworld:glowing_chorus>, [
	<minecraft:ender_eye>,<ore:gemMalachite>,<ore:cropChorusfruit>,<ore:dustGlowstone>,<minecraft:dragon_breath>]);
	
ArcaneWorld.createRitualDragonBreath("dragon_breath", "Breath of the Dragon", [
	<minecraft:ender_eye>,<ore:blockPrismarine>,<minecraft:dragon_breath>,<ore:netherrack>,<ore:ingotSilver>]);
	
ArcaneWorld.createRitualDungeon("dungeon", "Dungeon Raid", [
	<ore:stonebrick>,<ore:ingotGold>,<ore:blockMalachite>,<ore:ingotGold>,<ore:stonebrick>]);

ArcaneWorld.createRitualDungeon("wither_arena", "Wither Arena", [
	<minecraft:soul_sand>,<minecraft:skull:1>,<minecraft:skull:1>,<minecraft:skull:1>,<ore:blockMalachite>]);
