import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;

val sand = <minecraft:sand>;
val dustDef = <thermalfoundation:material>.definition;

val ores = {
	0: <ore:oreIron>,
	1: <ore:oreGold>,
	65: <ore:oreTin>,
	66: <ore:oreSilver>,
	67: <ore:oreLead>,
	70: <ore:orePlatinum>,
	72: <ore:oreMithril>
} as IOreDictEntry[int];

val ingots = {
	0: <ore:ingotIron>,
	1: <ore:ingotGold>,
	64: <ore:ingotCopper>,
	65: <ore:ingotTin>,
	66: <ore:ingotSilver>,
	67: <ore:ingotLead>,
	70: <ore:ingotPlatinum>,
	72: <ore:ingotMithril>,
	96: <ore:ingotSteel>,
	97: <ore:ingotElectrum>,
	99: <ore:ingotBronze>,
	768:<ore:coal>,
	769:<ore:charcoal>,
	770:<ore:obsidian>,
	772:<ore:sandstone>, // niter
	800:<ore:plankWood>, // sawdust
	833:<ore:oreClathrateOilSand> // tar
	
} as IOreDictEntry[int];


for id, ore in ores {
	mods.crossroads.Grindstone.addRecipe(ore, dustDef.makeStack(id) * 2, sand);
}
for id, ingot in ingots {
	mods.crossroads.Grindstone.addRecipe(ingot, dustDef.makeStack(id));
}


// additional grindstone recipes

mods.crossroads.Grindstone.addRecipe(<ore:logWood>, <thermalfoundation:material:800> * 4); // sawdust

// TODO salt
// TODO rods to dust, perhaps