import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.liquid.ILiquidStack;

val oreTextures = [
	"minecraft:blocks/iron_ore",
	"minecraft:blocks/gold_ore",
	"crossroads:blocks/ore_copper",
	"crossroads:blocks/ore_tin",
	"thermalfoundation:blocks/ore/ore_silver",
	"thermalfoundation:blocks/ore/ore_lead",
	"thermalfoundation:blocks/ore/ore_platinum",
	"thermalfoundation:blocks/ore/ore_mithril"
] as string[];
val metalTextures = [
	"minecraft:blocks/iron_block",
	"minecraft:blocks/gold_block",
	"crossroads:blocks/block_copper",
	"crossroads:blocks/block_tin",
	"thermalfoundation:blocks/storage/block_silver",
	"thermalfoundation:blocks/storage/block_lead",
	"thermalfoundation:blocks/storage/block_platinum",
	"crossroads:blocks/block_bronze",
	"thermalfoundation:blocks/storage/block_steel",
	"thermalfoundation:blocks/storage/block_electrum"
] as string[];

val liquids = [
	<liquid:iron>,
	<liquid:gold>,
	<liquid:copper>,
	<liquid:tin>,
	<liquid:silver>,
	<liquid:lead>,
	<liquid:platinum>,
	<liquid:bronze>,
	<liquid:steel>,
	<liquid:electrum> 
] as ILiquidStack[];
val ores = [
	<ore:oreIron>,
	<ore:oreGold>,
	<ore:oreCopper>,
	<ore:oreTin>,
	<ore:oreSilver>,
	<ore:oreLead>,
	<ore:orePlatinum>
] as IOreDictEntry[];
val metals = [
	[<ore:ingotIron>,<ore:dustIron>,<ore:plateIron>,<ore:gearIron>],
	[<ore:ingotGold>,<ore:dustGold>,<ore:plateGold>,<ore:gearGold>],
	[<ore:ingotCopper>,<ore:dustCopper>,<ore:plateCopper>,<ore:gearCopper>],
	[<ore:ingotTin>,<ore:dustTin>,<ore:plateTin>,<ore:gearTin>],
	[<ore:ingotSilver>,<ore:dustSilver>,<ore:plateSilver>,<ore:gearSilver>],
	[<ore:ingotLead>,<ore:dustLead>,<ore:plateLead>,<ore:gearLead>],
	[<ore:ingotPlatinum>,<ore:dustPlatinum>,<ore:platePlatinum>,<ore:gearPlatinum>],
	[<ore:ingotBronze>,<ore:dustBronze>,<ore:plateBronze>,<ore:gearBronze>],
	[<ore:ingotSteel>,<ore:dustSteel>,<ore:plateSteel>,<ore:gearSteel>],
	[<ore:ingotElectrum>,<ore:dustElectrum>,<ore:plateElectrum>,<ore:gearElectrum>] 
] as IOreDictEntry[][];


for i, ore in ores {
	mods.crossroads.HeatingCrucible.addRecipe(ore, liquids[i] * 144, oreTextures[i]);
}
for i, items in metals {
	mods.crossroads.HeatingCrucible.addRecipe(items[0], liquids[i] * 144, metalTextures[i]);
	mods.crossroads.HeatingCrucible.addRecipe(items[1], liquids[i] * 144, metalTextures[i]);
	mods.crossroads.HeatingCrucible.addRecipe(items[2], liquids[i] * 144, metalTextures[i]);
	mods.crossroads.HeatingCrucible.addRecipe(items[3], liquids[i] * 208, metalTextures[i]);
}


// melt oil sand to crude oil

mods.crossroads.HeatingCrucible.addRecipe(<thermalfoundation:ore_fluid:0>, <liquid:crude_oil> * 1000, "thermalfoundation:blocks/ore/ore_fluid_crude_oil_sand");
mods.crossroads.HeatingCrucible.addRecipe(<thermalfoundation:ore_fluid:5>, <liquid:crude_oil> * 1000, "thermalfoundation:blocks/ore/ore_fluid_crude_oil_red_sand");

// and tar
mods.crossroads.HeatingCrucible.addRecipe(<thermalfoundation:material:833>, <liquid:crude_oil> * 250, "minecraft/blocks/coal_block");

// and bitumen
mods.crossroads.HeatingCrucible.addRecipe(<thermalfoundation:material:892>, <liquid:crude_oil> * 250, "minecraft/blocks/coal_block");


// melt down elemental dusts

mods.crossroads.HeatingCrucible.addRecipe(<ore:dustPyrotheum>, <liquid:pyrotheum> * 250, "minecraft/blocks/magma");
mods.crossroads.HeatingCrucible.addRecipe(<ore:dustCryotheum>, <liquid:cryotheum> * 250, "minecraft/blocks/packed_ice");
mods.crossroads.HeatingCrucible.addRecipe(<ore:dustAerotheum>, <liquid:aerotheum> * 250, "minecraft/blocks/sandstone");
mods.crossroads.HeatingCrucible.addRecipe(<ore:dustPetrotheum>, <liquid:petrotheum> * 250, "minecraft/blocks/obsidian");
mods.crossroads.HeatingCrucible.addRecipe(<ore:dustMana>, <liquid:mana> * 250, "thermalfoundation:blocks/ore/ore_mithril");


// melt a few more things

mods.crossroads.HeatingCrucible.addRecipe(<ore:dustRedstone>, <liquid:redstone> * 100, "minecraft/blocks/redstone_block");
mods.crossroads.HeatingCrucible.addRecipe(<minecraft:glowstone_dust>, <liquid:glowstone> * 250, "minecraft/blocks/glowstone_block");
mods.crossroads.HeatingCrucible.addRecipe(<ore:enderpearl>, <liquid:ender> * 250, "railcraft/blocks/brick_pearlized_5"); // TODO if we ever get a "block of ender pearl", use that texture instead
mods.crossroads.HeatingCrucible.addRecipe(<railcraft:dust:6>, <liquid:ender> * 250, "railcraft/blocks/brick_pearlized_5"); // TODO ditto

mods.crossroads.HeatingCrucible.addRecipe(<thermalfoundation:material:893>, <liquid:redstone> * 250, "minecraft/blocks/redstone_block");
mods.crossroads.HeatingCrucible.addRecipe(<thermalfoundation:material:894>, <liquid:glowstone> * 250, "minecraft/blocks/glowstone_block");
mods.crossroads.HeatingCrucible.addRecipe(<thermalfoundation:material:895>, <liquid:ender> * 250, "railcraft/blocks/brick_pearlized_5"); // TODO ditto

mods.crossroads.HeatingCrucible.addRecipe(<minecraft:redstone_block>, <liquid:redstone> * 900, "minecraft/blocks/redstone_block");
mods.crossroads.HeatingCrucible.addRecipe(<minecraft:glowstone>, <liquid:glowstone> * 1000, "minecraft/blocks/glowstone_block");

mods.crossroads.HeatingCrucible.addRecipe(<thermalfoundation:ore_fluid:2>, <liquid:redstone> * 1000, "thermalfoundation:blocks/ore/ore_fluid_redstone");
mods.crossroads.HeatingCrucible.addRecipe(<thermalfoundation:ore_fluid:3>, <liquid:glowstone> * 1000, "thermalfoundation:blocks/ore/ore_fluid_glowstone");
mods.crossroads.HeatingCrucible.addRecipe(<thermalfoundation:ore_fluid:4>, <liquid:ender> * 1000, "thermalfoundation:blocks/ore/ore_fluid_ender");