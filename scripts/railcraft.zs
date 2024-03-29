// fix display of red coke oven
<railcraft:coke_oven_red>.displayName = "Red Coke Oven Brick";
<railcraft:coke_oven_red>.addTooltip("Multi-Block: 3x3x3 (Hollow)");


// hide unwanted metal plates

val toRemove = [
	6, // nickel
	7, // invar
	8, // zinc
	9, // brass
] as int[];

for tr in toRemove {
	val plate = <railcraft:plate>.definition.makeStack(tr + 2); // yeah, id is off by 2... weird, eh?
	mods.jei.JEI.removeAndHide(plate);
	mods.railcraft.RollingMachine.remove(plate);
}


// remove electric rails
mods.jei.JEI.removeAndHide(<railcraft:rail:5>);
mods.railcraft.RollingMachine.remove(<railcraft:rail:5>);


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
	

// engineer's overalls (original recipe clashes with wool leggings)

val blueWool = <minecraft:wool:3>;

recipes.remove(<railcraft:armor_overalls>);
recipes.addShaped("armor_overalls", <railcraft:armor_overalls>, [
	[blueWool,<ore:ingotIron>,blueWool],
	[blueWool,      null,     blueWool],
	[blueWool,      null,     blueWool]]);