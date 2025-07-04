import crafttweaker.item.IItemStack;

// Essentials blocks

<essentials:item_chute>.addTooltip("Moves items upwards");
<essentials:item_chute>.addTooltip("Insert and extract with Item Chute Port");

<essentials:item_chute_port>.addTooltip("Insert items on square side");
<essentials:item_chute_port>.addTooltip("Moves items upwards through an Item Chute to another Item Chute Port above");
<essentials:item_chute_port>.addTooltip("Outputs from square side to any inventory");

<essentials:sorting_hopper>.removeTooltip("Prioritizes");
<essentials:sorting_hopper>.removeTooltip("Exactly");
<essentials:sorting_hopper>.addTooltip("Prioritizes sideways movement");

<essentials:port_extender>.addTooltip("Point square side at a block");
<essentials:port_extender>.addTooltip("Inputs and outputs items as if it was that block");
mods.jei.JEI.addDescription(<essentials:port_extender>, "Place with the one-square side facing an adjacent block with an inventory.", "Other blocks can insert into and extract from this block as if it were the faced block.", "Only works with items.", "Cannot be chained.");


// Tools

<essentials:obsidian_cutting_kit>.removeTooltip("Insta");
<essentials:obsidian_cutting_kit>.addTooltip("Insta-breaks obsidian on right-click.");
<essentials:obsidian_cutting_kit>.addTooltip("Single use.");

<essentials:wrench>.displayName = "Precision Wrench";
<essentials:wrench>.addTooltip("Only rotates Crossroads blocks");
<essentials:wrench>.addTooltip("Has special shift-right-click behaviour on a few blocks");

<crossroads:omnimeter>.addTooltip("Shift-right-click on many blocks to see additional information");
<crossroads:omnimeter>.addTooltip("e.g. the contents of GUI-less containers");


// Resources

<crossroads:luminescent_quartz>.addTooltip("Created by passing a beam of LIGHT element through a lens holder containing Pure Quartz");


// Redstone

<crossroads:multi_piston>.addTooltip("Extends a number of blocks equal to redstone signal strength");
<crossroads:multi_piston>.addTooltip("Can push up to 64 blocks at once");

<crossroads:multi_piston_sticky>.addTooltip("Extends a number of blocks equal to redstone signal strength");
<crossroads:multi_piston_sticky>.addTooltip("Can push up to 64 blocks at once");

<crossroads:redstone_keyboard>.addTooltip("Outputs arbitrary redstone signals.");
<crossroads:redstone_keyboard>.addTooltip("Use Comparator or Ratiator to read.");

<crossroads:ratiator>.addTooltip("Multiplies or divides redstone signals.");
<crossroads:ratiator>.addTooltip("Right-click to change mode.");

// Fluid storage and transport

<crossroads:fluid_tank>.addTooltip("Holds up to 20 buckets of liquid.");
<crossroads:fluid_tank>.addTooltip("Maintains contents when broken.");
<crossroads:fluid_tank>.addTooltip("Use an OmniMeter to see contents.");

<crossroads:fluid_tube>.addTooltip("Automatically extracts and inserts fluids");
<crossroads:fluid_tube>.addTooltip("Right-click connections with wrench to cycle modes");
mods.jei.JEI.addDescription(<crossroads:fluid_tube>, "By default, averages pressure between containers.", "Other modes are:", "- Input only", "- Output only", "- No connection");

<crossroads:redstone_fluid_tube>.addTooltip("Only allows fluid to flow while it has a redstone signal");
<crossroads:redstone_fluid_tube>.addTooltip("Right-click connections with wrench to cycle modes");
mods.jei.JEI.addDescription(<crossroads:redstone_fluid_tube>, "By default, averages pressure between containers.", "Other modes are:", "- Input only", "- Output only", "- No connection");


// Rotary power

val gears = [
	<crossroads:gear_iron>,
	<crossroads:gear_gold>,
	<crossroads:gear_copper>,
	<crossroads:gear_tin>,
	<crossroads:gear_bronze>,
	<crossroads:gear_copshowium>,
	<crossroads:gear_lead>,
	<crossroads:gear_silver>,
	<crossroads:gear_platinum>,
	<crossroads:gear_electrum>
] as IItemStack[]; // TODO maybe the other gears too?

for gear in gears {
	mods.jei.JEI.addDescription(gear, "Place on any solid block face.", "Transmits rotary power.", "Connects to any adjacent gear, even around corners, as long as exactly one gear in the system is placed on the front of a Master Axis block.");
}

<crossroads:hand_crank>.addTooltip("Starts gears turning.");
<crossroads:hand_crank>.addTooltip("Right-click: counterclockwise.");
<crossroads:hand_crank>.addTooltip("Shift-right-click: clockwise.");

<crossroads:master_axis>.addTooltip("The core of any rotary system");
mods.jei.JEI.addDescription(<crossroads:master_axis>, "Each rotary system must have exactly one master axis, or the gears won't turn.", "Place a gear on the side with the hole.");


// Heat transport

val heatCables = [
	<crossroads:heat_cable_copper_dirt>,
	<crossroads:heat_cable_copper_wool>,
	<crossroads:heat_cable_copper_slime>,
	<crossroads:heat_cable_copper_ice>,
	<crossroads:heat_cable_copper_obsidian>,
	<crossroads:heat_cable_copper_densus>
] as IItemStack[];

for cable in heatCables {
	mods.jei.JEI.addDescription(cable, "Transmits heat.", "If temperature exceeds its melting point, it will indeed melt.", "You can use Redstone versions of heat cables to track and control the system's heat.");
}

val redstoneHeatCables = [
	<crossroads:redstone_heat_cable_copper_dirt>,
	<crossroads:redstone_heat_cable_copper_wool>,
	<crossroads:redstone_heat_cable_copper_slime>,
	<crossroads:redstone_heat_cable_copper_ice>,
	<crossroads:redstone_heat_cable_copper_obsidian>,
	<crossroads:redstone_heat_cable_copper_densus>
] as IItemStack[];

for rcable in redstoneHeatCables {
	mods.jei.JEI.addDescription(rcable, "Transmits heat, but can also be used to track and control the system's heat.", "Only connects to other blocks when powered by redstone.", "Comparators read the cable's temperature, with a level of 15 representing the cable's melting point.");
}


// Heat I/O

<crossroads:coal_heater>.addTooltip("Burns fuel to create heat");
mods.jei.JEI.addDescription(<crossroads:coal_heater>, "Burns fuel to create heat. Insert fuel from the sides; outputs heat from the top.");

<crossroads:heat_exchanger>.addTooltip("Collects heat from certain hot blocks, or releases it");
mods.jei.JEI.addDescription(<crossroads:heat_exchanger>, "Acts as a heat sink, slowly losing heat over time.","Reduces heat faster when placed over ice or snow, melting it to water.", "When placed over fire, lava, or magma, instead extracts heat from the block below, cooling it to stone or netherrack.", "Inputs and outputs heat from any other side.");

<crossroads:insulated_heat_exchanger>.addTooltip("Collects heat from certain hot blocks");
mods.jei.JEI.addDescription(<crossroads:insulated_heat_exchanger>, "Accepts heat into the system without any loss.", "When placed over fire, lava, or magma, extracts heat from the block below, cooling it to stone or netherrack.", "Inputs and outputs heat from any other side.");

<crossroads:salt_reactor>.addTooltip("Uses salt and distilled water to create cooling");
mods.jei.JEI.addDescription(<crossroads:salt_reactor>, "Insert distilled water into the top, and salt into the side.", "Outputs regular water from the side (only to a fluid tube), and cold from the bottom (only to a heat cable).", "Can eventually produce temperatures of 0, cold enough to freeze water.");


// Ore processing

<crossroads:grindstone>.addTooltip("Breaks down ores into dust, increasing your yield of metal.");
mods.jei.JEI.addDescription(<crossroads:grindstone>, "Needs rotary power to function, via a gear placed on top.", "Extract products from bottom with a hopper.");

<crossroads:heating_crucible>.addTooltip("Melts solids into liquids.");
<crossroads:heating_crucible>.addTooltip("WARNING: do not overfill!");
mods.jei.JEI.addDescription(<crossroads:heating_crucible>, "Insert heat from the bottom; insert ore or other meltables with a hopper on the top; extract liquid with a faucet or fluid tube on the side.", "Any fluid produced beyond its capacity of 3200 mB will be lost, so drain it quickly!");

<crossroads:heating_chamber>.addTooltip("Like a furnace, but powered by heat instead of by fuel.");
mods.jei.JEI.addDescription(<crossroads:heating_chamber>, "Input heat from the top and ore (or dust) from the sides, and extract ingots from the bottom.");

<crossroads:fluid_cooling_chamber>.addTooltip("Cools liquids back into solids.");
mods.jei.JEI.addDescription(<crossroads:fluid_cooling_chamber>, "Insert liquids from sides; outputs items from bottom.", "Cooling liquids produces heat, which must be extracted via the top. Will stop working when internal heat gets too high.", "Freezes water into ice, if you can reduce heat below zero with a Heat Exchanger or Salt Reactor.");


// Steam power

<crossroads:rotary_pump>.addTooltip("Pumps fluid blocks into pipes.");
mods.jei.JEI.addDescription(<crossroads:rotary_pump>, "Collects fluid blocks at the bottom, and outputs them to pipes or channels from the sides.", "Needs rotary power to function, via a gear placed on top.");

<crossroads:steam_turbine>.addTooltip("Produces rotary power.");
mods.jei.JEI.addDescription(<crossroads:steam_turbine>, "Outputs rotary power to a gear on top.", "Insert steam at the bottom; extract distilled water from the sides.", "Stops working if the water tank fills up.");

mods.jei.JEI.addDescription(<crossroads:steam_boiler>, "Insert heat into the bottom, and water or distilled water into the side.", "Produces steam from the top and salt from the bottom (if using regular water).", "Only outputs steam into fluid tubes.", "Stops working if it fills up with salt.");


// Other machines

<crossroads:rotary_drill>.addTooltip("Breaks blocks when rotating.");
<crossroads:rotary_drill>.addTooltip("WARNING: Do not stand near pointy end");
mods.jei.JEI.addDescription(<crossroads:rotary_drill>, "Breaks blocks placed in front of the pointy end.", "Requires rotary power to work, via a gear placed on the flat end.", "Mines faster the faster it rotates.", "Deals damage to creatures and players that touch the pointy end.", "Breaks blocks as well as an iron pickaxe, so it can't break obsidian or other really hard materials.");

mods.jei.JEI.addDescription(<liquid:copshowium>, "Put liquid copper in a Copshowium Creation Chamber and hit it with a Time beam to get liquid copshowium.", "Every 5 mB of copper becomes 9 mB of copshowium.", "The creation chamber can only hold 1296 mB at a time; don't insert more than 720 mB of liquid copper at once, or it'll break the chamber when it converts!");
mods.jei.JEI.addDescription(<crossroads:copshowium_creation_chamber>, "Insert liquid copper and hit it with a Time beam to get liquid copshowium.", "Every 5 mB of copper becomes 9 mB of copshowium.", "The creation chamber can only hold 1296 mB at a time; don't insert more than 720 mB of liquid copper at once, or it'll break the chamber when it converts!");

<crossroads:basic_fluid_splitter>.addTooltip("Sends half of all inputted fluids up, and half down");
<crossroads:fluid_splitter>.addTooltip("Sends inputted fluids up or down based on redstone signal");

<crossroads:water_centrifuge>.removeTooltip("Produces");
<crossroads:water_centrifuge>.addTooltip("Splits water into salt and distilled water");




// TODO add more notes
