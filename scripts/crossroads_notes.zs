import crafttweaker.item.IItemStack;

<crossroads:fluid_tank>.addTooltip("Holds up to 20 buckets of liquid.");
<crossroads:fluid_tank>.addTooltip("Use an OmniMeter to see contents.");

<crossroads:heating_crucible>.addTooltip("Melts solids into liquids.");
mods.jei.JEI.addDescription(<crossroads:heating_crucible>, "Insert heat from the bottom; insert ore or other meltables with a hopper on the top; extract liquid with a faucet or fluid tube on the side.");

mods.jei.JEI.addDescription(<liquid:copshowium>, "Put liquid copper in a Copshowium Creation Chamber and hit it with a Time beam to get liquid copshowium.", "Every 5 mB of copper becomes 9 mB of copshowium.", "The creation chamber can only hold 1296 mB at a time; don't insert more than 720 mB of liquid copper at once, or it'll break the chamber when it converts!");

mods.jei.JEI.addDescription(<crossroads:coal_heater>, "Burns fuel to create heat. Insert fuel from the sides; outputs heat from the top.");

mods.jei.JEI.addDescription(<crossroads:heat_exchanger>, "Acts as a heat sink, slowly losing heat over time.","Reduces heat faster when placed over ice or snow, melting it to water.", "When placed over fire, lava, or magma, instead extracts heat from the block, cooling it to stone or netherrack.", "Inputs and outputs heat from any other side.");
mods.jei.JEI.addDescription(<crossroads:insulated_heat_exchanger>, "Accepts heat into the system without any loss.", "When placed over fire, lava, or magma, extracts heat from the block, cooling it to stone or netherrack.", "Inputs and outputs heat from any other side.");

<crossroads:heating_chamber>.addTooltip("Like a furnace, but powered by heat instead of by fuel.");
mods.jei.JEI.addDescription(<crossroads:heating_chamber>, "Input heat from the top and ore from the sides, and extract ingots from the bottom.");

mods.jei.JEI.addDescription(<crossroads:master_axis>, "Each rotary system must have exactly one master axis, or the gears won't turn.");

<crossroads:grindstone>.addTooltip("Breaks down ores into dust, increasing your yield of metal.");
mods.jei.JEI.addDescription(<crossroads:grindstone>, "Needs rotary power to function, via a gear placed on top.", "Extract products from bottom with a hopper.");

<crossroads:fluid_cooling_chamber>.addTooltip("Cools liquids back into solids.");
mods.jei.JEI.addDescription(<crossroads:fluid_cooling_chamber>, "Insert liquids from sides; outputs items from bottom.", "Cooling liquids produces heat, which must be extracted via the top. Will stop working when internal heat gets too high.", "Freezes water into ice, if you can reduce heat below zero with a Heat Exchanger or Salt Reactor.");

<crossroads:rotary_pump>.addTooltip("Pumps fluid blocks into pipes.");
mods.jei.JEI.addDescription(<crossroads:rotary_pump>, "Collects fluid blocks at the bottom, and outputs them to pipes or channels from the sides.", "Needs rotary power to function, via a gear placed on top.");

<crossroads:steam_turbine>.addTooltip("Produces rotary power.");
mods.jei.JEI.addDescription(<crossroads:steam_turbine>, "Outputs rotary power to a gear on top.", "Insert steam at the bottom; extract distilled water from the sides.", "Stops working if the water tank fills up.");

mods.jei.JEI.addDescription(<crossroads:steam_boiler>, "Insert heat into the bottom, and water or distilled water into the side.", "Produces steam from the top and salt from the bottom (if using regular water).", "Stops working if it fills up with salt.");

<crossroads:omnimeter>.addTooltip("Right-click on many blocks to see additional information");
<crossroads:omnimeter>.addTooltip("e.g. the contents of GUI-less containers");

<crossroads:hand_crank>.addTooltip("Starts gears turning.");
<crossroads:hand_crank>.addTooltip("Right-click: counterclockwise.");
<crossroads:hand_crank>.addTooltip("Shift-right-click: clockwise.");


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



// TODO add more notes
