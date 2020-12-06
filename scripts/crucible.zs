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
	[<ore:ingotIron>,<ore:dustIron>],
	[<ore:ingotGold>,<ore:dustGold>],
	[<ore:ingotCopper>,<ore:dustCopper>],
	[<ore:ingotTin>,<ore:dustTin>],
	[<ore:ingotSilver>,<ore:dustSilver>],
	[<ore:ingotLead>,<ore:dustLead>],
	[<ore:ingotPlatinum>,<ore:dustPlatinum>],
	[<ore:ingotBronze>,<ore:dustBronze>],
	[<ore:ingotSteel>,<ore:dustSteel>],
	[<ore:ingotElectrum>,<ore:dustElectrum>] 
] as IOreDictEntry[][];


for i, ore in ores {
	mods.crossroads.HeatingCrucible.addRecipe(ore, liquids[i] * 144, oreTextures[i]);
}
for i, items in metals {
	mods.crossroads.HeatingCrucible.addRecipe(items[0], liquids[i] * 144, metalTextures[i]);
	mods.crossroads.HeatingCrucible.addRecipe(items[1], liquids[i] * 144, metalTextures[i]);
}

// TODO melt oil sand in crucible
// TODO glowstone, redstone, ender pearls?