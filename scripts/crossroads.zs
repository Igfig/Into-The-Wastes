// make the Technician's Manual the default guide book

recipes.remove(<guideapi:crossroads-crossroadsmainguide>); // FIXME the recipe doesn't actually seem to remove... but the other one overwrites it, at least
recipes.removeByRecipeName("guideapi:guide_journal"); // and this doesn't work either

recipes.addShapeless("guide_journal", <guideapi:crossroads-info_guide>, [<minecraft:book>, <ore:ingotIron>]);


// TODO and then melt everything in the crucible... there's something weird there though
// also make sure we can cast everything to blocks and ingots in the casts

// TODO melt oil sand (and oil shale?) to crude oil in crucible
// 	ore_fluid:0,1?,5
// one block to 750mB oil
// melt 1 bitumen to 250mB
// TODO grind them to tar

// ingot ids are: TODO
// dust ids are: TODO


// TODO use the Heat Exchanger to turn crude oil into naphtha (and refined fuel?)

// TODO make the omnimeter a little cheaper. maybe copper instead of bronze?