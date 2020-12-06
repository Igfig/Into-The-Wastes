recipes.remove(<cuisine:fire_pit:0>);
recipes.remove(<cuisine:fire_pit:2>);

recipes.addShapeless("fire_pit", <cuisine:fire_pit:0>, [<minecraft:torch>,<ore:cobblestone>,<ore:cobblestone>,<ore:cobblestone>]);
recipes.addShapeless("fire_pit_rack", <cuisine:fire_pit:2>, [<cuisine:fire_pit:0>,<ore:stickWood>,<ore:stickWood>,<ore:stickWood>]);


// harder drinkro recipe

val silver = <ore:ingotSilver>;

recipes.remove(<cuisine:drinkro>);
recipes.addShaped("drinkro", <cuisine:drinkro>, [
	[silver,<crossroads:fluid_injector>,silver],
	[silver,<ore:dustRedstone>,silver],
	[silver,<minecraft:glass_bottle>,silver]]);