var iron = <ore:ingotIron>;

var creosote = <liquid:creosote>;
var oldCrudeOil = <liquid:crude_oil>; // still need to have recipes for this in case someone finds some of the old stuff
var crudeOil = <liquid:crude_oil_2>;
var refinedOil = <liquid:refined_oil>;
var refinedFuel = <liquid:refined_fuel>;

var emptyTank = <contenttweaker:empty_tank>;
var creosoteTank = <contenttweaker:creosote_tank>;
var crudeOilTank = <contenttweaker:crude_oil_tank>;
var refinedOilTank = <contenttweaker:refined_oil_tank>;
var refinedFuelTank = <contenttweaker:refined_fuel_tank>;


// hide recipes using the old crude oil from Thermal Foundation
// (we don't want to use it because it's got zero density for some reason)

mods.jei.JEI.hide(oldCrudeOil);
mods.jei.JEI.removeAndHide(<forge:bucketfilled>.withTag({FluidName:"crude_oil",Amount:1000}));
mods.jei.JEI.removeAndHide(<ceramics:clay_bucket>.withTag({fluids: {FluidName:"crude_oil",Amount:1000}}));


// recipes for oil and fuel fluids

mods.foundry.AlloyingCrucible.addRecipe(refinedOil * 1, oldCrudeOil * 1, <liquid:steam> * 1);
mods.foundry.AlloyingCrucible.addRecipe(refinedOil * 1, crudeOil * 1, <liquid:steam> * 1);
mods.foundry.AlloyingCrucible.addRecipe(refinedFuel * 1, refinedOil * 1, <liquid:glowstone> * 1);


// recipes for fuel tanks

recipes.addShaped(emptyTank * 8, [
	[null, iron, null],
	[iron, null, iron],
	[null, iron, null]]);
mods.foundry.Casting.addRecipe(creosoteTank, creosote * 1000, emptyTank, null, 0, true); 
mods.foundry.Casting.addRecipe(crudeOilTank, oldCrudeOil * 1000, emptyTank, null, 0, true); 
mods.foundry.Casting.addRecipe(crudeOilTank, crudeOil * 1000, emptyTank, null, 0, true); 
mods.foundry.Casting.addRecipe(refinedOilTank, refinedOil * 1000, emptyTank, null, 0, true); 
mods.foundry.Casting.addRecipe(refinedFuelTank, refinedFuel * 1000, emptyTank, null, 0, true); 


// mark them as fuels

furnace.setFuel(<forge:bucketfilled>.withTag({FluidName:"creosote",Amount:1000}), 1600);
furnace.setFuel(<forge:bucketfilled>.withTag({FluidName:"crude_oil",Amount:1000}), 12800);
furnace.setFuel(<forge:bucketfilled>.withTag({FluidName:"crude_oil_2",Amount:1000}), 12800);
furnace.setFuel(<forge:bucketfilled>.withTag({FluidName:"refined_oil",Amount:1000}), 25600);
furnace.setFuel(<forge:bucketfilled>.withTag({FluidName:"refined_fuel",Amount:1000}), 64000);

furnace.setFuel(<ceramics:clay_bucket>.withTag({fluids: {FluidName:"creosote",Amount:1000}}), 1600);
furnace.setFuel(<ceramics:clay_bucket>.withTag({fluids: {FluidName:"crude_oil",Amount:1000}}), 12800);
furnace.setFuel(<ceramics:clay_bucket>.withTag({fluids: {FluidName:"crude_oil_2",Amount:1000}}), 12800);
furnace.setFuel(<ceramics:clay_bucket>.withTag({fluids: {FluidName:"refined_oil",Amount:1000}}), 25600);
furnace.setFuel(<ceramics:clay_bucket>.withTag({fluids: {FluidName:"refined_fuel",Amount:1000}}), 64000);

furnace.setFuel(creosoteTank, 1600);
furnace.setFuel(crudeOilTank, 12800);
furnace.setFuel(refinedOilTank, 25600);
furnace.setFuel(refinedFuelTank, 64000);


// add some tooltips
emptyTank.addTooltip("Fill with the Metal Caster");

var tooltip_1 = "A stackable container of ";
var tooltip_2 = ", for when one bucket isn't enough.";

creosoteTank.addTooltip(tooltip_1 ~ "creosote oil" ~ tooltip_2);
crudeOilTank.addTooltip(tooltip_1 ~ "crude oil" ~ tooltip_2);
refinedOilTank.addTooltip(tooltip_1 ~ "naphtha" ~ tooltip_2);
refinedFuelTank.addTooltip(tooltip_1 ~ "refined fuel" ~ tooltip_2);