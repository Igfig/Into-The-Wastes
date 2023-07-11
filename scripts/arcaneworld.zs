import mods.ArcaneWorld;


// remove all rituals
ArcaneWorld.removeAll();


// Reduce durability on consumables

<arcaneworld:recaller>.maxDamage = 1;
<arcaneworld:biome_crystal>.maxDamage = 1;


// hide Growth Powder because it causes errors if you use it on Animania animals
mods.jei.JEI.removeAndHide(<arcaneworld:growth_powder>);


// tooltips
<arcaneworld:molten_pickaxe>.addTooltip("Automatically smelts broken blocks.");
<arcaneworld:molten_shovel>.addTooltip("Automatically smelts broken blocks.");
<arcaneworld:molten_axe>.addTooltip("Automatically smelts broken blocks.");


// new recipe for ritual table

recipes.remove(<arcaneworld:ritual_table>);
recipes.addShaped("ritual_table", <arcaneworld:ritual_table>, [
	[<roots:fey_leather>,<thermalfoundation:tome_experience>,<roots:fey_leather>],
	[<naturesaura:sky_ingot>,<ore:blockMithril>,<naturesaura:sky_ingot>],
	[<ore:ingotIvoryPsi>,<ore:ingotPlatinum>,<ore:ingotIvoryPsi>]]);


// TODO new recipes for arcane hoe, wand of evocation, ethereal sword, levitator, molten core


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
	"/weather thunder 10",
	"/playsound minecraft:record.far record @a ~ ~ ~ 6",
	"/particle happyVillager ~-4 ~-1 ~-4 8 2 8 1 4000",
	"/cofh replaceblocks @s 64 255 64 minecraft:grass minecraft:sand",
	"/cofh replaceblocks @s 64 255 64 minecraft:stone minecraft:sandstone#0",
	"/cofh replaceblocks @s 64 255 64 minecraft:water biomesoplenty:sand",
	"/btsetbiome 4 64" // Forest biome
], [<ore:ingotPlatinum>,<ore:grass>,<naturesaura:aura_trove>.withTag({aura:1200000}),<roots:spirit_herb>,<naturesaura:sky_ingot>]);


// other ritual reworks
// TODO more command effects if you can think of any
// TODO maybe some additional special effects when you do them? They're a little underwhelming right now
	
ArcaneWorld.createRitualCreateItem("create_recaller", "Call of the Void", <arcaneworld:recaller>, [
	<ore:obsidian>,<ore:ingotPlatinum>,<minecraft:ender_eye>,<ore:gemAmethyst>,<ore:obsidian>]);
	
ArcaneWorld.createRitualCreateItem("create_biome_crystal", "Crystal Forge", <arcaneworld:biome_crystal>, [
	<minecraft:ender_eye>,<ore:ingotPlatinum>,<ore:gemPeridot>,<ore:grass>,<minecraft:dragon_breath>]);
	
ArcaneWorld.createRitualCreateItem("create_glowing_chorus", "Radiant Chorus", <arcaneworld:glowing_chorus>, [
	<minecraft:ender_eye>,<ore:ingotPlatinum>,<ore:cropChorusfruit>,<ore:dustGlowstone>,<minecraft:dragon_breath>]);
	
ArcaneWorld.createRitualDragonBreath("dragon_breath", "Breath of the Dragon", [
	<minecraft:ender_eye>,<ore:blockPrismarine>,<ore:ingotGold>,<ore:netherrack>,<minecraft:dragon_breath>]); // TODO different ingredients. Maybe something from overworld dragons?
	
ArcaneWorld.createRitualDungeon("dungeon", "Dungeon Raid", [
	<ore:blockSapphire>,<ore:ingotGold>]); // TODO different ingredients

ArcaneWorld.createRitualDungeon("wither_arena", "Wither Arena", [
	<ore:blockAmethyst>,<minecraft:skull:1>,<minecraft:skull:1>,<minecraft:skull:1>]); // TODO different ingredients
