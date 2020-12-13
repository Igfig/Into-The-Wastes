// tweak recipe for beetle mask

recipes.replaceAllOccurences(<ore:plankWood>,<roots:wildwood_planks>,<mysticalworld:beetle_mask>);
// TODO recipes.replaceAllOccurences(<ore:blockWool>,SOME COOL ANIMAL HIDES,<mysticalworld:antler_hat>);


// missing knife recipes
// TODO remove if forging works

recipes.addShapedMirrored("copper_knife", <mysticalworld:copper_knife>,[
	[null, null, <ore:ingotCopper>],
	[null, <ore:ingotCopper>, null],
	[<ore:stickWood>, null, null]]);
recipes.addShapedMirrored("silver_knife", <mysticalworld:silver_knife>,[
	[null, null, <ore:ingotSilver>],
	[null, <ore:ingotSilver>, null],
	[<ore:stickWood>, null, null]]);


// make spindle less effective with silk

recipes.remove(<mysticalworld:silk_thread>);
recipes.addShapeless("silk_thread", <mysticalworld:silk_thread>, [<mysticalworld:silk_cocoon>]);
recipes.addShapeless("silk_thread_spindle", <mysticalworld:silk_thread> * 2, [<mysticalworld:silk_cocoon>, <mysticalworld:spindle>]);



// TODO hide removed items (e.g. copper and silver tools)