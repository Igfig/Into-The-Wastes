import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.railcraft.BlastFurnace;

val iron = <ore:ingotIron>;
val steel = <ore:ingotSteel>;
val tank = <railcraft:tank_iron_wall>;


// fix display of red coke oven

<railcraft:coke_oven_red>.displayName = "Red Coke Oven Brick";
<railcraft:coke_oven_red>.addTooltip("Multi-Block: 3x3x3 (Hollow)");


// remove all plates and ingots (that we couldn't remove otherwise without breaking stuff)
// we'll use Thermal Expansion ones instead

for tr in 0 to 12 {
	val plate = <railcraft:plate>.definition.makeStack(tr);
	mods.jei.JEI.removeAndHide(plate);
}
for id in 7 to 10 {
	val ingot = <railcraft:ingot>.definition.makeStack(id);
	recipes.remove(ingot);
	recipes.removeByInput(ingot);
	mods.jei.JEI.removeAndHide(ingot);
}


// remove some rail recipes

val rails = {
	<railcraft:rail:0>: <minecraft:rail>,
	<railcraft:rail:3>: <railcraft:track_flex_high_speed>,
	<railcraft:rail:4>: <railcraft:track_flex_reinforced>,
} as IIngredient[IItemStack];

for rail, track in rails {
	recipes.remove(rail);
	
	// but we still want these to be craftable from tracks
	recipes.addShapeless(rail, [track, track, track, track, track, track]);
}


// electric rails should have been fully removed, but instead just got different recipes?
// Remove those.

val electricTracks = [
	<railcraft:track_outfitted>.withTag({railcraft: {rail: "railcraft_electric", kit:"railcraft_activator"}}),
	<railcraft:track_outfitted>.withTag({railcraft: {rail: "railcraft_electric", kit:"railcraft_booster"}}),
	<railcraft:track_outfitted>.withTag({railcraft: {rail: "railcraft_electric", kit:"railcraft_detector"}}),
	<railcraft:track_outfitted>.withTag({railcraft: {rail: "railcraft_electric", kit:"railcraft_locking"}}),
	<railcraft:track_outfitted>.withTag({railcraft: {rail: "railcraft_electric", kit:"railcraft_messenger"}}),
	<railcraft:track_outfitted>.withTag({railcraft: {rail: "railcraft_electric", kit:"railcraft_delayed"}}),
	<railcraft:track_outfitted>.withTag({railcraft: {rail: "railcraft_electric", kit:"railcraft_priming"}}),
	<railcraft:track_outfitted>.withTag({railcraft: {rail: "railcraft_electric", kit:"railcraft_whistle"}}),
	<railcraft:track_outfitted>.withTag({railcraft: {rail: "railcraft_electric", kit:"railcraft_locomotive"}}),
	<railcraft:track_outfitted>.withTag({railcraft: {rail: "railcraft_electric", kit:"railcraft_throttle"}}),
	<railcraft:track_outfitted>.withTag({railcraft: {rail: "railcraft_electric", kit:"railcraft_transition"}}),
	<railcraft:track_outfitted>.withTag({railcraft: {rail: "railcraft_electric", kit:"railcraft_buffer"}}),
	<railcraft:track_outfitted>.withTag({railcraft: {rail: "railcraft_electric", kit:"railcraft_control"}}),
	<railcraft:track_outfitted>.withTag({railcraft: {rail: "railcraft_electric", kit:"railcraft_disembarking"}}),
	<railcraft:track_outfitted>.withTag({railcraft: {rail: "railcraft_electric", kit:"railcraft_dumping"}}),
	<railcraft:track_outfitted>.withTag({railcraft: {rail: "railcraft_electric", kit:"railcraft_embarking"}}),
	<railcraft:track_outfitted>.withTag({railcraft: {rail: "railcraft_electric", kit:"railcraft_gated"}}),
	<railcraft:track_outfitted>.withTag({railcraft: {rail: "railcraft_electric", kit:"railcraft_one_way"}}),
	<railcraft:track_outfitted>.withTag({railcraft: {rail: "railcraft_electric", kit:"railcraft_launcher"}}),
	<railcraft:track_outfitted>.withTag({railcraft: {rail: "railcraft_electric", kit:"railcraft_routing"}}),
	<railcraft:track_outfitted>.withTag({railcraft: {rail: "railcraft_electric", kit:"railcraft_coupler"}}),
	<railcraft:track_outfitted>.withTag({railcraft: {rail: "railcraft_high_speed_electric", kit:"railcraft_activator"}}),
	<railcraft:track_outfitted>.withTag({railcraft: {rail: "railcraft_high_speed_electric", kit:"railcraft_booster"}}),
	<railcraft:track_outfitted>.withTag({railcraft: {rail: "railcraft_high_speed_electric", kit:"railcraft_detector"}}),
	<railcraft:track_outfitted>.withTag({railcraft: {rail: "railcraft_high_speed_electric", kit:"railcraft_locking"}}),
	<railcraft:track_outfitted>.withTag({railcraft: {rail: "railcraft_high_speed_electric", kit:"railcraft_messenger"}}),
	<railcraft:track_outfitted>.withTag({railcraft: {rail: "railcraft_high_speed_electric", kit:"railcraft_delayed"}}),
	<railcraft:track_outfitted>.withTag({railcraft: {rail: "railcraft_high_speed_electric", kit:"railcraft_priming"}}),
	<railcraft:track_outfitted>.withTag({railcraft: {rail: "railcraft_high_speed_electric", kit:"railcraft_whistle"}}),
	<railcraft:track_outfitted>.withTag({railcraft: {rail: "railcraft_high_speed_electric", kit:"railcraft_locomotive"}}),
	<railcraft:track_outfitted>.withTag({railcraft: {rail: "railcraft_high_speed_electric", kit:"railcraft_throttle"}}),
	<railcraft:track_outfitted>.withTag({railcraft: {rail: "railcraft_high_speed_electric", kit:"railcraft_transition"}}),
	<railcraft:track_outfitted>.withTag({railcraft: {rail: "railcraft_high_speed_electric", kit:"railcraft_buffer"}}),
	<railcraft:track_outfitted>.withTag({railcraft: {rail: "railcraft_high_speed_electric", kit:"railcraft_control"}}),
	<railcraft:track_outfitted>.withTag({railcraft: {rail: "railcraft_high_speed_electric", kit:"railcraft_disembarking"}}),
	<railcraft:track_outfitted>.withTag({railcraft: {rail: "railcraft_high_speed_electric", kit:"railcraft_dumping"}}),
	<railcraft:track_outfitted>.withTag({railcraft: {rail: "railcraft_high_speed_electric", kit:"railcraft_embarking"}}),
	<railcraft:track_outfitted>.withTag({railcraft: {rail: "railcraft_high_speed_electric", kit:"railcraft_gated"}}),
	<railcraft:track_outfitted>.withTag({railcraft: {rail: "railcraft_high_speed_electric", kit:"railcraft_one_way"}}),
	<railcraft:track_outfitted>.withTag({railcraft: {rail: "railcraft_high_speed_electric", kit:"railcraft_launcher"}}),
	<railcraft:track_outfitted>.withTag({railcraft: {rail: "railcraft_high_speed_electric", kit:"railcraft_routing"}}),
	<railcraft:track_outfitted>.withTag({railcraft: {rail: "railcraft_high_speed_electric", kit:"railcraft_coupler"}})
] as IItemStack[];

for track in electricTracks {
	recipes.remove(track);
	mods.jei.JEI.removeAndHide(track);
}


// remove some more recipes

recipes.remove(<railcraft:rebar>);
recipes.remove(<railcraft:rail:1>); // advanced rails
recipes.remove(<railcraft:rail:5>); // electric rails
mods.jei.JEI.removeAndHide(<railcraft:rail:5>); // electric rails shouldn't even be shown
recipes.remove(<railcraft:tie:1>); // stone rail ties. Recipe is put in the metal caster instead


// non-creosote recipe for wooden rail ties

recipes.remove(<railcraft:tie:0>);
recipes.addShaped("rail_tie", <railcraft:tie:0>, [
	[<ore:slabWood>,<ore:slabWood>,<ore:slabWood>]]);


// smaller recipe for concrete powder

recipes.addShapeless(<minecraft:concrete_powder:8>, [<ore:sand>, <minecraft:gravel>, <railcraft:dust:4>]); // blast furnace slag


// new recipes for reinforced concrete

for i in 0 to 16 {
	val dust = <minecraft:concrete_powder>.definition.makeStack(i);
	val concrete = <railcraft:reinforced_concrete>.definition.makeStack(i);
	recipes.addShaped(concrete, [
		[dust, <railcraft:rebar>, dust],
		[<railcraft:rebar>, <minecraft:potion>.withTag({Potion: "minecraft:water"}), <railcraft:rebar>],
		[dust, <railcraft:rebar>, dust],
	]);
}


// recipes that shouldn't need diamond tools

recipes.replaceAllOccurences(<minecraft:diamond_pickaxe>,<thermalfoundation:tool.pickaxe_steel>,<railcraft:mow_track_relayer>);
recipes.replaceAllOccurences(<minecraft:diamond_shovel>,<thermalfoundation:tool.shovel_steel>,<railcraft:mow_undercutter>);


// less expensive cut firestone recipe

recipes.remove(<railcraft:firestone_cut>);
recipes.addShapeless(<railcraft:firestone_cut>, [<chisel:chisel_diamond>, <railcraft:firestone_raw>, <chisel:chisel_diamond>]);


// crushed obsidian

recipes.addShaped("crushed_obsidian", <railcraft:generic:7> * 16, [
	[<ore:dustObsidian>,<ore:dustObsidian>],
	[<ore:dustObsidian>,<ore:dustObsidian>]]);
	

// engineer's overalls (original recipe clashes with wool leggings)

val blueWool = <minecraft:wool:3>;

recipes.remove(<railcraft:armor_overalls>);
recipes.addShaped("armor_overalls", <railcraft:armor_overalls>, [
	[blueWool,<ore:ingotIron>,blueWool],
	[blueWool,      null,     blueWool],
	[blueWool,      null,     blueWool]]);


// re-add recipes for track parts

recipes.addShapeless(<railcraft:track_parts>, [<ore:nuggetBronze>, <ore:nuggetBronze>, <ore:nuggetBronze>]);
recipes.addShapeless(<railcraft:track_parts>, [<ore:nuggetIron>, <ore:nuggetIron>]);
recipes.addShapeless(<railcraft:track_parts>, [<ore:nuggetSteel>]);


// re-add recipe for metal posts

recipes.addShaped(<railcraft:post_metal>, [
	[iron, iron, iron],
	[null, iron, null],
	[iron, iron, iron]]);


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


// new locomotive recipe

recipes.remove(<railcraft:locomotive_steam_solid>);
recipes.addShaped(<railcraft:locomotive_steam_solid>, [
	[null, null, <essentials:item_chute>],
	[tank, tank, <stevescarts:cartmodule:0>],
	[<minecraft:iron_bars>, <stevescarts:cartmodule:39>, <stevescarts:cartmodule:39>]]);


// and a new name and info

<railcraft:locomotive_steam_solid>.displayName = "High-Speed Steam Locomotive";
<railcraft:locomotive_steam_solid>.addTooltip("High top speed, but very temperamental");

mods.jei.JEI.addDescription(<railcraft:locomotive_steam_solid>, "Requires both fuel and water to create steam. Won't run until it's passed 100 degrees and built up a good supply of steam.", "This locomotive has a much higher top speed than the ones from Steve's Carts, but beware: it requires infrastructure to reach those speeds, and it can explode if not handled carefully.", "To reach top speed, the locomotive needs to be running on High Speed tracks, and to pass over a powered H.S. Booster or H.S. Transition track. Without boosters, it's only slightly faster than Steve's Carts.", "If the locomotive derails or runs into a wall, it will explode.", "The locomotive will also explode if 1. it runs out of water, 2. it's still burning fuel, and 3. you add more water to the hot boiler.", "If your locomotive runs out of water, you should stop it and let it cool down before adding more.", "Note that a locomotive can draw water from a Tank Cart directly attached to it.");


// new crowbar recipes

recipes.remove(<railcraft:tool_crowbar_iron>);
recipes.remove(<railcraft:tool_crowbar_steel>);
recipes.addShaped(<railcraft:tool_crowbar_iron>, [
	[null, iron, iron],
	[null, iron, null],
	[iron, null, null]]);
recipes.addShaped(<railcraft:tool_crowbar_steel>, [
	[null, steel, steel],
	[null, steel, null],
	[steel, null, null]]);

	
// crowbar tooltip

<ore:toolCrowbar>.removeTooltip("right click");
<ore:toolCrowbar>.addTooltip("Right-click to push a cart or flip a high-speed locomotive's direction");
<ore:toolCrowbar>.addTooltip("Right-click while sneaking to link carts");
<ore:toolCrowbar>.addTooltip("Left-click twice to break carts");
	
	
// mark worldspike fuel as such

val worldspikeFuels = {
	<thermalfoundation:material:770>: 2,
	<thermalfoundation:material:895>: 3,
	<minecraft:ender_pearl>: 4,
	<charm:ender_pearl_block>: 36,
	<railcraft:dust:6>: 8,
	<railcraft:dust:7>: 12
} as int[IItemStack];

<ore:fuelWorldspike>.addItems(worldspikeFuels.keys);

for fuel, duration in worldspikeFuels {
	fuel.addTooltip("Worldspike fuel (" ~ duration ~ " hours)");
}