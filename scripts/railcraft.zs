// TODO:
// remove invar and brass from recipes from the rolling machine. Will be difficult; I think it needs an extra mod?
// remove electric rails
// maybe recipe for concrete that doesn't need quartz? maybe
// maybe put some dark diamond and/or emeralds in volcanoes under the lava?


// fix display of red coke oven
<railcraft:coke_oven_red>.displayName = "Red Coke Oven Brick";
<railcraft:coke_oven_red>.addTooltip("Multi-Block: 3x3x3 (Hollow)");


// mark electric rails as unused (temporary measure)
<railcraft:rail:5>.addTooltip("Useless item, DO NOT CRAFT");


// hide unwanted metals

val toRemove = [
	6, // nickel
	7, // invar
	8, // zinc
	9, // brass
] as int[];

for tr in toRemove {
	val ingot = <railcraft:ingot>.definition.makeStack(tr);
	val nugget = <railcraft:nugget>.definition.makeStack(tr);
	val block = <railcraft:metal>.definition.makeStack(tr);
	val plate = <railcraft:plate>.definition.makeStack(tr + 2); // yeah, id is off by 2... weird, eh?
	
	furnace.remove(ingot);
	
	mods.jei.JEI.removeAndHide(ingot);
	mods.jei.JEI.removeAndHide(nugget);
	mods.jei.JEI.removeAndHide(block);
	mods.jei.JEI.removeAndHide(plate);
}


// non-creosote recipe for wooden rail ties

recipes.remove(<railcraft:tie:0>);
recipes.addShaped("rail_tie", <railcraft:tie:0>, [
	[<ore:slabWood>,<ore:slabWood>,<ore:slabWood>]]);


// cheaper rolling machine

recipes.remove(<railcraft:equipment:0>);
recipes.addShaped("manual_rolling_machine", <railcraft:equipment:0>, [
	[<ore:ingotCopper>,<ore:plankWood>,<ore:ingotCopper>],
	[<ore:plankWood>,<ore:workbench>,<ore:plankWood>],
	[<ore:ingotCopper>,<ore:plankWood>,<ore:ingotCopper>]]);


// recipes that shouldn't need diamond tools

recipes.replaceAllOccurences(<minecraft:diamond_pickaxe>,<thermalfoundation:tool.pickaxe_steel>,<railcraft:mow_track_relayer>);
recipes.replaceAllOccurences(<minecraft:diamond_pickaxe>,<thermalfoundation:tool.pickaxe_steel>,<railcraft:firestone_cut>);
recipes.replaceAllOccurences(<minecraft:diamond_shovel>,<thermalfoundation:tool.shovel_steel>,<railcraft:mow_undercutter>);


// crushed obsidian

recipes.addShaped("crushed_obsidian", <railcraft:generic:7> * 4, [
	[<ore:dustObsidian>,<ore:dustObsidian>],
	[<ore:dustObsidian>,<ore:dustObsidian>]]);