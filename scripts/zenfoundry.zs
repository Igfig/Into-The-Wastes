#priority 5

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.liquid.ILiquidStack;

// remove unwanted blocks

val toRemove = [
	<foundry:componentblock:0>,<foundry:componentblock:1>,<foundry:componentblock:2>,
	<foundry:machine:0>,<foundry:machine:2>,<foundry:machine:3>,<foundry:machine:4>,<foundry:machine:5>,<foundry:machine:6>,<foundry:machine:7>,<foundry:machine:9>,
	<foundry:mold_station>,<foundry:burner_heater>,
	<foundry:mold:5>,<foundry:mold:6>
] as IItemStack[];


for tr in toRemove {
	recipes.remove(tr);
	mods.jei.JEI.removeAndHide(tr);
}


//remove recipes from removed blocks

mods.foundry.AlloyMixer.clear();
mods.foundry.BurnerHeater.clear();
mods.foundry.FluidHeater.clear();
mods.foundry.Infuser.clear();
mods.foundry.Melting.clear();
mods.foundry.MoldStation.clear();


// new recipe for metal caster

recipes.remove(<foundry:machine:1>);
recipes.addShaped("metal_caster", <foundry:machine:1>, [
	[null, <minecraft:bucket>, null],
	[<minecraft:piston>, <ore:plateCopper>, <minecraft:piston>],
	[<crossroads:gear_bronze>,<ore:dustRedstone>,<crossroads:gear_bronze>]]);

	
// tweaked recipe for alloying crucible

recipes.replaceAllOccurences(<foundry:componentblock>, <ore:gearCopper>, <foundry:machine:8>);
	
	
// fix a typo

<foundry:machine:1>.removeTooltip("Casts");
<foundry:machine:1>.addTooltip("Casts items from molten metal using molds.");


// explanatory toolip
<foundry:bronze_cauldron>.addTooltip("Only holds water.");