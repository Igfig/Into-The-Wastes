val sand = <ore:sand>;
val sandLayer = <weather2:sand_layer_placeable>;
val redstone = <ore:dustRedstone>;
val weather = <weather2:weather_item>;
val tinplate = <ore:plateTin>;
val silver = <ore:plateSilver>;
val platinum = <ore:ingotPlatinum>;
val gold = <ore:ingotGold>;

furnace.addRecipe(weather, <crossroads:thermometer>);

recipes.addShaped(sandLayer * 24, [[sand, sand, sand]]);
recipes.addShapeless(<earthworks:item_sand>, 
	[sandLayer, sandLayer]);
recipes.addShapeless(<weather2:pocket_sand> * 4, 
	[sandLayer, sandLayer, sandLayer, sandLayer]);
recipes.addShapeless(<minecraft:sand>, 
	[sandLayer, sandLayer, sandLayer, sandLayer, sandLayer, sandLayer, sandLayer, sandLayer]);


// tier 1 weather machines
recipes.addShaped(<weather2:wind_vane>, [
	[null, <ore:feather>, null], 
	[<minecraft:iron_bars>,<crossroads:axle>,<minecraft:iron_bars>], 
	[null, <railcraft:post_metal:*>, null]]);
recipes.addShaped(<weather2:anemometer>, [
	[<ore:plate_iron>,<crossroads:axle>,<ore:plate_iron>], 
	[null, <railcraft:post_metal:*>, null]]);

// tier 2
recipes.addShaped(<weather2:tornado_sensor>, [
	[tinplate, gold,  tinplate],
	[redstone,weather,redstone],
	[tinplate, gold,  tinplate]]);
recipes.addShaped(<weather2:tornado_siren_manual>, [
	[tinplate, gold,  tinplate],
	[redstone,<minecraft:noteblock>,redstone],
	[tinplate, gold,  tinplate]]);
recipes.addShaped(<weather2:tornado_siren>,
	[[<weather2:tornado_sensor>, redstone, <weather2:tornado_siren_manual>]]);

// tier 3
recipes.addShaped(<weather2:weather_deflector>, [
	[silver, weather,  silver],
	[weather,<ore:dustPrismarine>,weather],
	[silver, weather,  silver]]);
// weather radar doesn't seem to work right, so remove it
mods.jei.JEI.removeAndHide(<weather2:weather_forecast>);

// tier 4
recipes.addShaped(<weather2:weather_machine>, [
	[<ore:dustPrismarine>, weather,  <ore:dustPrismarine>],
	[weather,<ore:blockMalachite>,weather],
	[platinum, weather,  platinum]]);