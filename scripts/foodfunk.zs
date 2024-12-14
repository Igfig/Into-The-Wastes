// make food storage recipes harder

recipes.replaceAllOccurences(<ore:listAllmetalingots>, <ore:ingotGold>, <foodfunk:larder>);

val ice1 = <minecraft:ice>;
val ice2 = <minecraft:packed_ice>;
val ice3 = <futuremc:blue_ice>;

val cPlate = <ore:plateCopper>;
val lPlate = <ore:plateLead>;
val dSteel = <iceandfire:dragonsteel_ice_ingot>;

recipes.remove(<foodfunk:esky>);
recipes.addShaped("esky", <foodfunk:esky>, [
	[cPlate,      ice1,      cPlate],
	[ ice1, <foodfunk:larder>, ice1],
	[cPlate,      ice1,      cPlate]]);

recipes.remove(<foodfunk:icebox>);
recipes.addShaped("icebox", <foodfunk:icebox>, [
	[lPlate,     ice2,    lPlate],
	[ice2, <foodfunk:esky>, ice2],
	[lPlate,     ice2,    lPlate]]);
	
recipes.remove(<foodfunk:freezer>);
recipes.addShaped("freezer", <foodfunk:freezer>, [
	[dSteel,      ice3,     dSteel],
	[ice3, <foodfunk:icebox>, ice3],
	[dSteel,      ice3,     dSteel]]);