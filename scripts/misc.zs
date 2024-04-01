// remove rain collectors (they're strictly worse than barrels or basins)
mods.jei.JEI.removeAndHide(<toughasnails:rain_collector>);


// recipe for sponges

val cellulose = <thermalfoundation:material:801>;
val yellowool = <minecraft:wool:4>;
val sulfurdst = <ore:dustSulfur>;

recipes.addShaped(<minecraft:sponge>, [
	[cellulose,yellowool,cellulose],
	[yellowool,sulfurdst,yellowool],
	[cellulose,yellowool,cellulose]]);


// change wrench recipe
recipes.remove(<base:wrench>, false);
recipes.addShaped("wrench", <base:wrench>, [
	[<ore:ingotIron>,null,<ore:ingotIron>],
	[     null, <ore:ingotIron>, null    ],
	[     null, <ore:ingotIron>, null    ]]);


// erase written books

recipes.addShapeless(<minecraft:book>, [<minecraft:written_book>, <minecraft:sponge>.reuse()]);
recipes.addShapeless(<minecraft:book>, [<minecraft:written_book>, <minecraft:bread>]);


// melt down excess thermometers

furnace.addRecipe(<minecraft:glass>, <crossroads:thermometer>);


// easier slag-to-clay recipe

val waterBottle = <minecraft:potion>.withTag({Potion: "minecraft:water"}).giveBack(<minecraft:glass_bottle>);
val slag = <thermalfoundation:material:864>;

recipes.removeByRecipeName("thermalfoundation:clay_ball");
recipes.addShapeless(<minecraft:clay_ball> * 4, [slag, slag, <ore:dirt>, waterBottle]);


// replace all instances of water buckets in recipes with a more general solution.

val realAllWater = <minecraft:water_bucket>.giveBack(<minecraft:bucket>) | <ceramics:clay_bucket>.withTag({fluids: {FluidName: "water", Amount: 1000}}).giveBack(<ceramics:clay_bucket>) | <cuisine:mortar:1>.giveBack(<cuisine:mortar:0>) | <liquid:water>*1000;

recipes.replaceAllOccurences(<minecraft:water_bucket>, realAllWater);
recipes.replaceAllOccurences(<ore:listAllwater>, realAllWater);


// flour cooks directly to bread, and crafts to two dough

recipes.removeByRecipeName("cuisine:dough");
recipes.addShapeless(<cuisine:food:2> * 2, [<ore:foodFlour>, realAllWater]); // dough
furnace.addRecipe(<minecraft:bread>, <cuisine:food:1>); // flour


// replace redundant gunpowder recipes

recipes.removeByRecipeName("valoegheses_be:gunpowder_vbe");
recipes.removeByRecipeName("thermalfoundation:gunpowder");
recipes.removeByRecipeName("thermalfoundation:gunpowder_1");
recipes.removeByRecipeName("railcraft:minecraft_gunpowder$1");
recipes.addShapeless(<minecraft:gunpowder>, [<ore:dustCoal> | <ore:dustCharcoal>, <ore:dustSulfur>, <ore:dustSaltpeter>, <ore:dustSaltpeter>]);


// replace redundant nametag recipes

recipes.removeByRecipeName("animania:name_tag");
recipes.removeByRecipeName("essentials:name_tag");
recipes.addShapeless(<minecraft:name_tag>, [<ore:string>, <ore:paper>, <ore:nuggetGold>]);

// remove redundant lead recipe

recipes.removeByRecipeName("animania:lead");