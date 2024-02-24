// make the Technician's Manual the default guide book

recipes.remove(<guideapi:crossroads-crossroadsmainguide>); // FIXME the recipe doesn't actually seem to remove... but the other one overwrites it, at least
recipes.removeByRecipeName("guideapi:guide_journal"); // and this doesn't work either

recipes.addShapeless("guide_journal", <guideapi:crossroads-info_guide>, [<minecraft:book>, <ore:ingotIron>]);


// remove unwanted ore

mods.jei.JEI.removeAndHide(<crossroads:ore_native_copper>);


// remove some gears we don't want

mods.jei.JEI.removeAndHide(<crossroads:gear_nickel>);
mods.jei.JEI.removeAndHide(<crossroads:gear_invar>);
mods.jei.JEI.removeAndHide(<crossroads:large_gear_nickel>);
mods.jei.JEI.removeAndHide(<crossroads:large_gear_invar>);
mods.jei.JEI.removeAndHide(<crossroads:toggle_gear_nickel>);
mods.jei.JEI.removeAndHide(<crossroads:toggle_gear_invar>);


//remove unused meters

mods.jei.JEI.removeAndHide(<crossroads:thermometer>);
mods.jei.JEI.removeAndHide(<crossroads:speedometer>);
mods.jei.JEI.removeAndHide(<crossroads:fluid_gauge>);


// cheaper omnimeter

recipes.remove(<crossroads:omnimeter>);
recipes.addShaped(<crossroads:omnimeter>, [
	[null,<ore:ingotCopper>,null],
	[<ore:ingotCopper>,<ore:dustRedstone>,<ore:ingotCopper>],
	[null,<ore:ingotCopper>,null]]);


// make slotted chest recipe harder
recipes.replaceAllOccurences(<minecraft:trapdoor>, <ore:plateTin>, <essentials:slotted_chest>);

// and make fuel heater easier (needing copper to bootstrap it is annoying)
recipes.replaceAllOccurences(<ore:ingotCopper>, <ore:ingotIron>, <crossroads:coal_heater>);

// make fluid tank recipe harder
recipes.replaceAllOccurences(<ore:ingotCopper>, <ore:ingotCopshowium>, <crossroads:fluid_tank>);

// change lens holder recipe to not conflict with holystone
recipes.replaceAllOccurences(<ore:stone>, <minecraft:stone_slab>, <crossroads:lens_holder>);