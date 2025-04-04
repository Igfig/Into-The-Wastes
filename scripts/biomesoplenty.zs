import scripts.functions.unfunk;

recipes.remove(<biomesoplenty:terrestrial_artifact>);
recipes.addShapeless("terrestrial_artifact", <biomesoplenty:terrestrial_artifact>, 
	[<ore:gemRuby>,<ore:gemTopaz>,<ore:gemAmber>,<ore:gemPeridot>,<ore:gemEmerald>,<ore:gemMalachite>,<ore:gemSapphire>,<ore:gemTanzanite>,<ore:gemAmethyst>]);

recipes.remove(<biomesoplenty:biome_finder>);
recipes.addShapedMirrored("biome_finder", <biomesoplenty:biome_finder>, [
	[null, <ore:gemAmethyst>, null],
	[<ore:ingotMithril>, <biomesoplenty:terrestrial_artifact>, <ore:gemPeridot>],
	[null, <ore:gemAmethyst>, null]]);
	
recipes.replaceAllOccurences(<biomesoplenty:mushroom>, <ore:toadstool>, <biomesoplenty:shroompowder>);


// rename the "Earth" item so we can use it as a ritual component

<biomesoplenty:earth>.displayName = "Tiny Planet";
<biomesoplenty:earth>.addTooltip("A fully functioning biosphere, but at a tiny scale...");


// add some uses for honey and wax

<ore:tallow>.add(<biomesoplenty:honeycomb>);
recipes.addShapeless(<animania:honey_bottle>.withTag({Fluid: {FluidName: "animania_honey", Amount: 1000}}), [
	unfunk(<biomesoplenty:filled_honeycomb>).giveBack(<biomesoplenty:honeycomb>),
	<minecraft:glass_bottle>]);
recipes.addShapeless(<futuremc:honey_block>, [<biomesoplenty:honey_block>]);


// ruby block disassembling recipe got removed, I think by UniDict

recipes.addShapeless(<crossroads:gem_ruby> * 9, [<biomesoplenty:gem_block:1>]);