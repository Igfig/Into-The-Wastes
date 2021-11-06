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


// allow woods with special trapdoors and chests to craft those

val genericPlank = <ore:plankWood>;
genericPlank.remove(<minecraft:planks:1>,<minecraft:planks:2>,<minecraft:planks:3>,<minecraft:planks:4>,<minecraft:planks:5>); // all vanilla woods except oak
// TODO actually that may not be the ideal approach... some recipes only have one version, rather than separate ones for each wood type. But now we can't make them with misc woods

recipes.removeByRecipeName("environs:trapdoor");
recipes.addShaped("generic_trapdoor", <minecraft:trapdoor> * 2, [
	[genericPlank, genericPlank, genericPlank],
	[genericPlank, genericPlank, genericPlank]]);
	
recipes.removeByRecipeName("environs:chests");
recipes.addShaped("generic_chest", <minecraft:chest>, [
	[genericPlank, genericPlank, genericPlank],
	[genericPlank,     null,     genericPlank],
	[genericPlank, genericPlank, genericPlank]]);
	
	
// flour cooks directly to bread, and crafts to two dough

recipes.removeByRecipeName("cuisine:dough");
recipes.addShapeless(<cuisine:food:2> * 2, [<ore:foodFlour>, <ore:listAllwater>]); // dough
furnace.addRecipe(<minecraft:bread>, <cuisine:food:1>); // flour


// melt down excess thermometers

furnace.addRecipe(<minecraft:glass>, <crossroads:thermometer>);