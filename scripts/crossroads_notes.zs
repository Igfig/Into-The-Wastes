import crafttweaker.item.IItemStack;

mods.jei.JEI.addDescription(<crossroads:heating_crucible>, "Heat from the bottom; insert ore or other meltables with a hopper on the top; extract liquid with a faucet or fluid tube on the side.");

mods.jei.JEI.addDescription(<liquid:copshowium>, "Put liquid copper in a Copshowium Creation Chamber and hit it with a Time beam to get liquid copshowium.", "Every 5 mB of copper becomes 9 mB of copshowium.", "The creation chamber can only hold 1296 mB at a time; don't insert more than 720 mB of liquid copper at once, or it'll break the chamber when it converts!");

mods.jei.JEI.addDescription(<crossroads:coal_heater>, "Burns fuel to create heat. Insert fuel from the sides; outputs heat from the top.");

mods.jei.JEI.addDescription(<crossroads:heat_exchanger>, "Acts as a heat sink, slowly losing heat over time.","Reduces heat faster when placed over ice or snow, melting it to water.", "When placed over fire, lava, or magma, instead extracts heat from the block, cooling it to stone or netherrack.", "Inputs and outputs heat from any other side.");
mods.jei.JEI.addDescription(<crossroads:insulated_heat_exchanger>, "Accepts heat into the system without any loss.", "When placed over fire, lava, or magma, extracts heat from the block, cooling it to stone or netherrack.", "Inputs and outputs heat from any other side.");

mods.jei.JEI.addDescription(<crossroads:heating_chamber>, "Like a furnace, but powered by heat instead of by fuel.", "Input heat from the top and ore from the sides, and extract ingots from the bottom.");

mods.jei.JEI.addDescription(<crossroads:master_axis>, "Each rotary system must have exactly one master axis, or the gears won't turn.");

mods.jei.JEI.addDescription(<crossroads:grindstone>, "Breaks down ores into dust, increasing your yield of metal.", "Needs rotary power to function, via a gear placed on top.");


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


// TODO add more notes
