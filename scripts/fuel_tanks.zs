#loader contenttweaker
#priority 20

import mods.contenttweaker.Item;


// add fuel tanks: solid versions of those fuels, for use in trains.
// We'll add their actual recipes and behaviour in fuel.zs

var emptyTankItem = mods.contenttweaker.VanillaFactory.createItem("empty_tank");
emptyTankItem.register();
var creosoteTankItem = mods.contenttweaker.VanillaFactory.createItem("creosote_tank");
creosoteTankItem.register();
var crudeOilTankItem = mods.contenttweaker.VanillaFactory.createItem("crude_oil_tank");
crudeOilTankItem.register();
var refinedOilTankItem = mods.contenttweaker.VanillaFactory.createItem("refined_oil_tank");
refinedOilTankItem.register();
var refinedFuelTankItem = mods.contenttweaker.VanillaFactory.createItem("refined_fuel_tank");
refinedFuelTankItem.register();