import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;

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
	800:<ore:plankWood>, // sawdust
	
} as IOreDictEntry[int];


for id, ore in ores {
	mods.crossroads.Grindstone.addRecipe(ore, dustDef.makeStack(id) * 2, <minecraft:gravel>);
}
for id, ingot in ingots {
	mods.crossroads.Grindstone.addRecipe(ingot, dustDef.makeStack(id));
}


// grind elemental rods to dust

mods.crossroads.Grindstone.addRecipe(<minecraft:blaze_rod>, <minecraft:blaze_powder> * 4);
mods.crossroads.Grindstone.addRecipe(<thermalfoundation:material:2048>, <thermalfoundation:material:2049> * 4); // blizz
mods.crossroads.Grindstone.addRecipe(<thermalfoundation:material:2050>, <thermalfoundation:material:2051> * 4); // blitz
mods.crossroads.Grindstone.addRecipe(<thermalfoundation:material:2052>, <thermalfoundation:material:2053> * 4); // basalz


// grind vanadium
// only the ingot, because I don't want people to think that you can smelt vanadium dust into vanadium ingots
mods.crossroads.Grindstone.addRecipe(<valoegheses_be:ingot_vanadium>, <crossroads:vanadium>);


// additional grindstone recipes

mods.crossroads.Grindstone.addRecipe(<ore:logWood>, <thermalfoundation:material:800> * 4); // sawdust
mods.crossroads.Grindstone.addRecipe(<ore:enderpearl>, <railcraft:dust:6>); // ender powder
mods.crossroads.Grindstone.addRecipe(<ore:netherrack>, <crossroads:sulfur>); // sulfur
mods.crossroads.Grindstone.addRecipe(<cuisine:material:3>, <crossroads:dust_salt>); // salt
mods.crossroads.Grindstone.addRecipe(<ore:oreClathrateOilSand>, <thermalfoundation:material:892> * 2); // bitumen
mods.crossroads.Grindstone.addRecipe(<earthworks:block_chalk>, <earthworks:item_chalk> * 4); // chalk dust
mods.crossroads.Grindstone.addRecipe(<railcraft:ore_magic>, <railcraft:firestone_raw>); // firestone