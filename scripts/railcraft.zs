import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

val iron = <ore:ingotIron>;
val steel = <ore:ingotSteel>;
val tank = <railcraft:tank_iron_wall>;
val gravel = <minecraft:gravel>;
val sand = <ore:sand>;
val waterBottle = <minecraft:potion>.withTag({Potion: "minecraft:water"}).giveBack(<minecraft:glass_bottle>);


// fix display of red coke oven

<railcraft:coke_oven_red>.displayName = "Red Coke Oven Brick";
<railcraft:coke_oven_red>.addTooltip("Multi-Block: 3x3x3 (Hollow)");


// remove all plates; we'll use Thermal Expansion ones

for tr in 0 to 12 {
	val plate = <railcraft:plate>.definition.makeStack(tr);
	mods.jei.JEI.removeAndHide(plate);
}


// remove some track recipes

val rails = {
	<railcraft:rail:0>: <minecraft:rail>,
	<railcraft:rail:3>: <railcraft:track_flex_high_speed>,
	<railcraft:rail:4>: <railcraft:track_flex_reinforced>,
} as IIngredient[IItemStack];

for rail, track in rails {
	recipes.remove(rail);
	recipes.addShapeless(rail, [track, track, track, track, track, track]);
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


// simpler recipes for cement
recipes.remove(<railcraft:concrete>);
recipes.addShaped(<railcraft:concrete>, [
	[sand, gravel, sand],
	[gravel, sand, gravel],
	[sand, gravel, sand]]);
recipes.addShapeless(<railcraft:concrete>, [sand, gravel, <railcraft:dust:4>]); // blast furnace slag


// recipes that shouldn't need diamond tools

recipes.replaceAllOccurences(<minecraft:diamond_pickaxe>,<thermalfoundation:tool.pickaxe_steel>,<railcraft:mow_track_relayer>);
recipes.replaceAllOccurences(<minecraft:diamond_shovel>,<thermalfoundation:tool.shovel_steel>,<railcraft:mow_undercutter>);


// less expensive cut firestone recipe

recipes.remove(<railcraft:firestone_cut>);
recipes.addShapeless(<railcraft:firestone_cut>, [<chisel:chisel_diamond>, <railcraft:firestone_raw>, <chisel:chisel_diamond>]);


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
recipes.removeByRecipeName("crafttweaker:railcraft_glass#0$4_modified");
recipes.removeByRecipeName("crafttweaker:railcraft_glass#0$5_modified");
recipes.removeByRecipeName("crafttweaker:railcraft_glass#0$6_modified");


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
	[tank, tank, <essentials:item_chute>],
	[tank, tank, <crossroads:coal_heater>],
	[<minecraft:iron_bars>, <minecraft:minecart>, <minecraft:minecart>]]);


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