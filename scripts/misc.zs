// rationale for why potions make you thirsty
<minecraft:nether_wart>.addTooltip("Unexpectedly salty.");

// undocumented item sources
<toughasnails:ice_cube>.addTooltip("Drops from ice blocks.");
<toughasnails:magma_shard>.addTooltip("Drops from magma blocks.");

// hopper pipes
<inspirations:pipe>.displayName = "Hopper Pipe";
<inspirations:pipe>.addTooltip("Input with a hopper. Output to a container, crucible, or chute.");

// cheese blocks
<rats:block_of_cheese>.addTooltip("Aged to inedibility.");

// Animania mud
<animania:block_mud>.displayName = "Wallowing Mud";

// prospects tool usage notes
<prospects:pan>.addTooltip("Right-click on any underwater block to search for nuggets.");
<prospects:pan>.addTooltip("Results indicate larger deposits below.");
<prospects:pick>.addTooltip("Right-click on stone blocks to search for nuggets.");
<prospects:pick>.addTooltip("Results indicate larger deposits below.");
<prospects:sifter>.addTooltip("Right-click on dirt blocks to search for nuggets.");
<prospects:sifter>.addTooltip("Results indicate larger deposits below.");


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