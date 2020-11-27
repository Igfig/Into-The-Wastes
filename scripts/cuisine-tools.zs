recipes.remove(<cuisine:fire_pit:0>);
recipes.remove(<cuisine:fire_pit:2>);

recipes.addShapeless(<cuisine:fire_pit:0>, [<minecraft:torch>,<ore:cobblestone>,<ore:cobblestone>,<ore:cobblestone>]);
recipes.addShapeless(<cuisine:fire_pit:2>, [<cuisine:fire_pit:0>,<ore:stickWood>,<ore:stickWood>,<ore:stickWood>]);

recipes.remove(<cuisine:drinkro>);
recipes.addShaped(<cuisine:drinkro>, [
	[<ore:ingotIron>,<crossroads:fluid_injector>,<ore:ingotIron>],
	[<ore:ingotIron>,<ore:dustRedstone>,<ore:ingotIron>],
	[<ore:ingotIron>,<minecraft:glass_bottle>,<ore:ingotIron>]]);