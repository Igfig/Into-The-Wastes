import crafttweaker.oredict.IOreDictEntry;


// fix display of red coke oven

<railcraft:coke_oven_red>.displayName = "Red Coke Oven Brick";
<railcraft:coke_oven_red>.addTooltip("Multi-Block: 3x3x3 (Hollow)");


// hide unwanted metal plates

val toRemove = [
	8, // nickel
	9, // invar
	10, // zinc
	11, // brass
] as int[];

for tr in toRemove {
	val plate = <railcraft:plate>.definition.makeStack(tr);
	mods.jei.JEI.removeAndHide(plate);
}

// and remove all plate recipes

for tr in 0 to 12 {
	val plate = <railcraft:plate>.definition.makeStack(tr);
	mods.railcraft.RollingMachine.remove(plate);
}

// add more expensive plates in rolling machine

val plateIngots = {
	32: <ore:ingotIron>,
	33: <ore:ingotGold>,
	320: <ore:ingotCopper>,
	321: <ore:ingotTin>,
	322: <ore:ingotSilver>,
	323: <ore:ingotLead>,
	326: <ore:ingotPlatinum>,
	352: <ore:ingotSteel>,
	353: <ore:ingotElectrum>,
	355: <ore:ingotBronze>
} as IOreDictEntry[int];

for id, ore in plateIngots {
	val plate = <thermalfoundation:material>.definition.makeStack(id);
	mods.railcraft.RollingMachine.addShaped("plate-" ~ id, plate * 2, [[ore,ore],[ore,ore]]);
}


// remove invar rolling recipes (the ones with names at least)

mods.railcraft.RollingMachine.remove("railcraft:rail_invar");


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


// remove invar and nickel glass recipes (and one other mysterious one)

recipes.removeByRecipeName("railcraft_glass#04");
recipes.removeByRecipeName("railcraft_glass#05");
recipes.removeByRecipeName("railcraft_glass#06");
recipes.removeByRecipeName("railcraft_glass#0$4");
recipes.removeByRecipeName("railcraft_glass#0$5");
recipes.removeByRecipeName("railcraft_glass#0$6");
recipes.removeByRecipeName("railcraft_glass#0$4_modified");
recipes.removeByRecipeName("railcraft_glass#0$5_modified");
recipes.removeByRecipeName("railcraft_glass#0$6_modified");


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


// re-add recipes for colored metal posts

val postDyes = [<ore:dyeWhite>,<ore:dyeOrange>,<ore:dyeMagenta>,<ore:dyeLightBlue>,<ore:dyeYellow>,<ore:dyeLime>,<ore:dyePink>,<ore:dyeGray>,<ore:dyeLightGray>,<ore:dyeCyan>,<ore:dyePurple>,<ore:dyeBlue>,<ore:dyeBrown>,<ore:dyeGreen>,<ore:dyeRed>,<ore:dyeBlack>] as IOreDictEntry[];
val anyPost = <railcraft:post_metal:*>;

for i, dye in postDyes {
	recipes.addShaped(<railcraft:post_metal>.definition.makeStack(i) * 8, [
		[anyPost,anyPost,anyPost],
		[anyPost,  dye,  anyPost],
		[anyPost,anyPost,anyPost]]);
}


// water tank recipe should be able to use tar

recipes.replaceAllOccurences(<minecraft:slime_ball>,<minecraft:slime_ball>|<thermalfoundation:material:833>,<railcraft:tank_water>);
<railcraft:tank_water>.addTooltip("Collects rainwater much faster than other containers");