var iron = <ore:ingotIron>;

var crudeOil = <liquid:crude_oil>;
var refinedOil = <liquid:refined_oil>;
var refinedFuel = <liquid:refined_fuel>;

var emptyTank = <contenttweaker:empty_tank>;
var crudeOilTank = <contenttweaker:crude_oil_tank>;
var refinedOilTank = <contenttweaker:refined_oil_tank>;
var refinedFuelTank = <contenttweaker:refined_fuel_tank>;


// recipes for oil and fuel fluids

mods.foundry.AlloyingCrucible.addRecipe(refinedOil * 4, crudeOil * 4, <liquid:steam> * 16);
mods.foundry.AlloyingCrucible.addRecipe(refinedFuel * 4, refinedOil * 4, <liquid:aerotheum> * 4);


// recipes for fuel tanks

recipes.addShaped(emptyTank * 8, [
	[null, iron, null],
	[iron, null, iron],
	[null, iron, null]]);
mods.foundry.Casting.addRecipe(crudeOilTank, crudeOil * 1000, emptyTank); 
mods.foundry.Casting.addRecipe(refinedOilTank, refinedOil * 1000, emptyTank); 
mods.foundry.Casting.addRecipe(refinedFuelTank, refinedFuel * 1000, emptyTank); 


// mark them as fuels

furnace.setFuel(<forge:bucketfilled>.withTag({FluidName:"crude_oil",Amount:1000}).onlyWithTag({FluidName:"crude_oil",Amount:1000}), 12800);
furnace.setFuel(<forge:bucketfilled>.withTag({FluidName:"refined_oil",Amount:1000}), 25600);
furnace.setFuel(<forge:bucketfilled>.withTag({FluidName:"refined_fuel",Amount:1000}), 64000);

furnace.setFuel(crudeOilTank, 12800);
furnace.setFuel(refinedOilTank, 25600);
furnace.setFuel(refinedFuelTank, 64000);


// add some tooltips
var tooltip_1 = "A stackable container of ";
var tooltip_2 = ", for when one bucket isn't enough.";

crudeOilTank.addTooltip(tooltip_1 ~ "crude oil" ~ tooltip_2);
refinedOilTank.addTooltip(tooltip_1 ~ "naphtha" ~ tooltip_2);
refinedFuelTank.addTooltip(tooltip_1 ~ "refined fuel" ~ tooltip_2);