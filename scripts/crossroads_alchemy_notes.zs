import crafttweaker.item.IItemStack;


// materials

<crossroads:vanadium_5_oxide>.addTooltip("A catalyst for making Oil of Vitriol");


// manual glassware

<crossroads:glassware_holder>.addTooltip("Holds phials and flasks (glassware) to perform reactions");
<crossroads:glassware_holder>.addTooltip("Right-click with items to insert into glassware");
<crossroads:glassware_holder>.addTooltip("Right-click with glassware to transfer contents");
<crossroads:glassware_holder>.addTooltip("Shift-right-click with empty hand to remove glassware");
<crossroads:glassware_holder>.addTooltip("Shift-right-click with Omnimeter to view contents");

mods.jei.JEI.addDescription(<crossroads:glassware_holder>, "Attach heat cables to bottom to heat/cool flasks (but not phials).","Attach conduits to top to extract gases.", "If powered by redstone, conduits will extract solid and liquid reagents too.");

<crossroads:phial:*>.addTooltip("Holds up to 25 reagents");
<crossroads:phial:*>.addTooltip("Right-click any reagent container block to transfer contents");
<crossroads:phial:*>.addTooltip(format.red("Right-click any other block to dump contents"));
<crossroads:phial:*>.addTooltip(format.gold("Cannot be heated or cooled"));

<crossroads:florence_flask:*>.addTooltip("Holds up to 500 reagents");
<crossroads:florence_flask:*>.addTooltip("Right-click any reagent container block to transfer contents");
<crossroads:florence_flask:*>.addTooltip(format.yellow("Can be heated or cooled in a stand for reactions"));

<crossroads:shell:*>.addTooltip("Holds up to 25 reagents");
<crossroads:shell:*>.addTooltip("Right-click any reagent container block to transfer contents");
<crossroads:shell:*>.addTooltip(format.red("Right-click to throw, releasing contents"));

<crossroads:alembic>.addTooltip("Boils off volatile gases");
mods.jei.JEI.addDescription(<crossroads:alembic>, "Heat from below with heat cables.", "Place a flask or phial in a stand below the spout.", "Products that are gaseous at room temperature are lost; other products are deposited in the flask.");


// automatic glassware

<crossroads:alch_tube:*>.addTooltip("Moves alchemical reagents");
<crossroads:alch_tube:*>.addTooltip("Right-click connections with wrench to cycle direction of flow");
<crossroads:alch_tube:*>.addTooltip("Gases won't go down; solids and liquids won't go up");

<crossroads:reds_alch_tube:*>.addTooltip("Moves alchemical reagents when it has a redstone signal");
<crossroads:reds_alch_tube:*>.addTooltip("Right-click connections with wrench to cycle direction of flow");
<crossroads:reds_alch_tube:*>.addTooltip("Gases won't go down; solids and liquids won't go up");

<crossroads:reagent_tank:*>.addTooltip("Holds up to 10,000 reagents");
<crossroads:reagent_tank:*>.addTooltip("Reactions will not occur inside");
<crossroads:reagent_tank:*>.addTooltip("Right-click with glassware to transfer contents");
mods.jei.JEI.addDescription(<crossroads:reagent_tank:*>, "Connects to conduits on all sides.");

<crossroads:reaction_chamber:*>.addTooltip("Holds up to 1,000 reagents to perform reactions");
<crossroads:reaction_chamber:*>.addTooltip("Right-click with glassware to transfer contents");

mods.jei.JEI.addDescription(<crossroads:reaction_chamber:*>, "Connects to conduits and heat cables on all sides.", "Solid reagents can be inserted and removed via hopper.", "Can hold Forge Energy to perform electrolysis reactions.");

<crossroads:chemical_vent>.removeTooltip("Don't use this");
<crossroads:chemical_vent>.addTooltip("Vents inserted reagents into the world");

<crossroads:cooling_coil:*>.addTooltip("Resets reagents to room temperature");

<crossroads:heated_tube:*>.addTooltip("Connect a heat cable to top or bottom");
<crossroads:heated_tube:*>.addTooltip("Sets reagents to the cable's temperature");

<crossroads:reagent_pump:*>.addTooltip("Forces reagents of any state to flow up or down");
<crossroads:reagent_pump:*>.addTooltip("Right-click with wrench to flip direction");

<crossroads:flow_limiter:*>.addTooltip("Stops inserting a reagent once it's above a configurable threshold");
<crossroads:flow_limiter:*>.addTooltip("Shift-right-click with a Precision Wrench to configure");

<crossroads:fluid_injector:*>.addTooltip("Insert fluids to convert them to reagents and back");
mods.jei.JEI.addDescription(<crossroads:fluid_injector:*>, "Insert fluids in the top to extract liquid reagents from the bottom.", "Insert liquid reagents in the top to extract fluids from the bottom.", "Insert gases in the bottom to extract gaseous reagents from the top.", "Insert gaseous reagents in the bottom to extract gases from the top.");


// notes on alchemical crystal equipment

val crystalItems = [
	<crossroads:phial:1>,
	<crossroads:florence_flask:1>,
	<crossroads:shell:1>,
	<crossroads:alch_tube:1>,
	<crossroads:reds_alch_tube:1>,
	<crossroads:reagent_tank:1>,
	<crossroads:reaction_chamber:1>,
	<crossroads:cooling_coil:1>,
	<crossroads:heated_tube:1>,
	<crossroads:reagent_pump:1>,
	<crossroads:flow_limiter:1>,
	<crossroads:fluid_injector:1>
] as IItemStack[];

for cItem in crystalItems {
	cItem.addTooltip(format.aqua("Can contain Philosopher's Stone without breaking"));
}


// electrical items

<crossroads:dynamo>.addTooltip("Requires rotational power from one side");
<crossroads:dynamo>.addTooltip("Outputs Forge Energy from the other");

<crossroads:tesla_coil>.addTooltip("Transmits Forge Energy short distances");
mods.jei.JEI.addDescription(<crossroads:tesla_coil>, "Input from orange sides; output to blue side.", "Right-click top with any wrench to start linking as a transmitter; right-click top of another coil within 8m to complete link as a receiver.", "Maximum 3 links per coil.", "Shift-right-click base with a Precision Wrench to enable 'Attack Mode'. (Redstone signal disables.)");

<crossroads:charging_stand>.addTooltip("Electrifies reagents to cause reactions");
<crossroads:charging_stand>.addTooltip("Right-click to insert a flask or phial");
<crossroads:charging_stand>.addTooltip("Shift-right-click with empty hand to remove");
mods.jei.JEI.addDescription(<crossroads:charging_stand>, "Accepts Forge Energy from any blue side");
