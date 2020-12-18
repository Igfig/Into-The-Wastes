val silkCloth = <materialpart:silk:cloth>;
val silkThread = <mysticalworld:silk_thread>;


// silk shouldn't be just a string replacement

<ore:string>.remove(silkThread);


// make spindle less effective with silk

recipes.remove(silkThread);
recipes.addShapeless("silk_thread", silkThread, [<mysticalworld:silk_cocoon>]);
recipes.addShapeless("silk_thread_spindle", silkThread * 2, [<mysticalworld:silk_cocoon>, <mysticalworld:spindle>]);


// silk cloth

recipes.addShaped("silk_cloth", silkCloth, [
	[silkThread, silkThread, silkThread],
	[silkThread, silkThread, silkThread], 
	[silkThread, silkThread, silkThread]]);


// silk armor
	
recipes.addShaped("silk_helmet", <contenttweaker:silk_head>, [
	[silkCloth, silkCloth, silkCloth],
	[silkCloth, null, silkCloth]]); 
recipes.addShaped("silk_chestplate", <contenttweaker:silk_chest>, [
	[silkCloth, null, silkCloth],
	[silkCloth, silkCloth, silkCloth],
	[silkCloth, silkCloth, silkCloth]]);
recipes.addShaped("silk_leggings", <contenttweaker:silk_legs>, [
	[silkCloth, silkCloth, silkCloth],
	[silkCloth, null, silkCloth], 
	[silkCloth, null, silkCloth]]);
recipes.addShaped("silk_boots", <contenttweaker:silk_feet>, [
	[silkCloth, null, silkCloth], 
	[silkCloth, null, silkCloth]]);