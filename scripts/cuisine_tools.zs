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

// todo description for pan on fire pit

mods.jei.JEI.addDescription(<cuisine:fire_pit:2>, "Right-click with meat (or other furnace-cookable foods) to put it on the spit, then right-click with fuel to start cooking.", "Remove the meat when it's browned.", "Can hold up to three items at a time.");

mods.jei.JEI.addDescription(<cuisine:mill>, "Right-click to insert items.", "Right-click with an empty hand to grind. Grinding costs stamina.", "Grinds roughly one item per second.");

mods.jei.JEI.addDescription(<cuisine:drinkro>, "Put two or more juices in the top section. Optionally add some spices. Put an empty bottle in the lower section, and apply a redstone current. After some seconds, a blended, multi-serving drink is produced.");