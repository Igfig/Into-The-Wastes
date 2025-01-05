import crafttweaker.item.IItemStack;

recipes.remove(<cuisine:fire_pit:0>);
recipes.remove(<cuisine:fire_pit:2>);

recipes.addShapeless("fire_pit", <cuisine:fire_pit:0>, [<ore:coal>|<ore:charcoal>,<ore:cobblestone>,<ore:cobblestone>,<ore:cobblestone>]);
recipes.addShapeless("fire_pit_rack", <cuisine:fire_pit:2>, [<cuisine:fire_pit:0>,<ore:stickWood>,<ore:stickWood>,<ore:stickWood>]);


// distinguish mortar from Roots mortar

<cuisine:mortar>.displayName = "Kitchen Mortar";


// harder drinkro recipe

val silver = <ore:ingotSilver>;

recipes.remove(<cuisine:drinkro>);
recipes.addShaped("drinkro", <cuisine:drinkro>, [
	[silver,<crossroads:fluid_injector>,silver],
	[silver,<ore:dustRedstone>,silver],
	[silver,<minecraft:glass_bottle>,silver]]);
	

// descriptions

<cuisine:jar>.addTooltip("Can hold items and/or liquids.");
<cuisine:jar>.addTooltip("Max capacity: 10000 mB");

val clayBasins = [<cuisine:earthen_basin>, <cuisine:earthen_basin_colored:*>] as IItemStack[];
val basins = [<cuisine:wooden_basin>, <cuisine:earthen_basin>, <cuisine:earthen_basin_colored:*>] as IItemStack[];

for clayBasin in clayBasins {
	mods.jei.JEI.addDescription(clayBasin, "Heats contents when on a lit furnace, over lava or fire, or in sunlight.");
}
for basin in basins {
	mods.jei.JEI.addDescription(basin, "Squeeze contents by jumping up and down on top of this, or by activating a down-facing piston above.");
	basin.addTooltip("Max capacity: 8000 mB");
}

<cuisine:fire_pit:0>.addTooltip("A fire for cooking");
<cuisine:fire_pit:0>.addTooltip("If you want heat, use a campfire");

<toughasnails:campfire>.addTooltip("A fire for heat");
<toughasnails:campfire>.addTooltip("If you want to cook, use a fire pit");

mods.jei.JEI.addDescription(<cuisine:fire_pit:1>, "Right-click to add (almost) any raw food, up to four. Season with oil, salt, or other seasonings, in spice bottles. Add any furnace fuel to start cooking.", "While cooking, right-click with a spatula to shuffle ingredients and ensure they cook evenly.", "Dish is ready when the ingredients start to darken and all the circles are full (circles may not appear properly if you have a shader active, but the ingredients will still darken).", "Right-click with a plate to finalize the dish.", "Dishes will be better if you prep the ingredients on a chopping board or in a mortar; if you season them well; and if you use a variety of different ingredient types (e.g. not all meat or all vegetables).", "Unprepped and unseasoned ingredients can come out undercooked even if you cook them log enough.");

mods.jei.JEI.addDescription(<cuisine:fire_pit:2>, "Right-click with meat (or other furnace-cookable foods) to put it on the spit, then right-click with fuel to start cooking.", "Remove the meat when it's browned.", "Can hold up to three items at a time.");

mods.jei.JEI.addDescription(<cuisine:mortar>, "Right-click to insert items.", "Right-click with an empty hand to pound items to paste. Pounding costs stamina.", "Shift-right-click with an empty hand to remove items.", "Can be automated with a Wooden Arm.");

mods.jei.JEI.addDescription(<cuisine:mill>, "Right-click to insert items.", "Right-click with an empty hand to grind food items into dusts or fluids. Grinding costs stamina.", "Shift-right-click with an empty hand to remove items.", "Outputs produced items to adjacent inventories. Fluids produced can be removed with buckets, spice bottles, or faucets.", "Grinds one item per revolution, which takes roughly one second.", "Can be automated with a Wooden Arm.");

mods.jei.JEI.addDescription(<cuisine:drinkro>, "Put two or more juices in the top section. Optionally add some spices. Put an empty bottle in the lower section, and apply a redstone current. After some seconds, a blended, multi-serving drink is produced.");


// fix a typo

<cuisine:kitchen_knife>.removeTooltip("Left ot");
<cuisine:kitchen_knife>.removeTooltip("chopping board to");
<cuisine:kitchen_knife>.removeTooltip("chop things");
<cuisine:kitchen_knife>.removeTooltip("various");
<cuisine:kitchen_knife>.addTooltip("Left and/or right click repeatedly on chopping");
<cuisine:kitchen_knife>.addTooltip("board to chop food into various forms");