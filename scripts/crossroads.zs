// make the Technician's Manual the default guide book

recipes.remove(<guideapi:crossroads-crossroadsmainguide>); // FIXME the recipe doesn't actually seem to remove... but the other one overwrites it, at least
recipes.addShapeless(<guideapi:crossroads-info_guide>, [<minecraft:book>,<ore:ingotIron>]);