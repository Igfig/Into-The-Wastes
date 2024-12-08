val silkCloth = <silkarmor:silk_cloth>;
val silkThread = <mysticalworld:silk_thread>;


// silk shouldn't be just a string replacement

<ore:string>.remove(silkThread);


// make spindle less effective with silk

recipes.remove(silkThread);
recipes.addShapeless("silk_thread", silkThread, [<mysticalworld:silk_cocoon>]);
recipes.addShapeless("silk_thread_spindle", silkThread * 2, [<mysticalworld:silk_cocoon>, <mysticalworld:spindle>.transformDamage()]);


// silk cloth uses actual silk

recipes.replaceAllOccurences(<minecraft:string>, silkThread, silkCloth);