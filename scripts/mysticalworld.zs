import crafttweaker.item.IItemStack;

// tweak recipe for beetle mask

recipes.replaceAllOccurences(<ore:plankWood>,<roots:wildwood_planks>,<mysticalworld:beetle_mask>);
// TODO recipes.replaceAllOccurences(<ore:blockWool>,SOME COOL ANIMAL HIDES,<mysticalworld:antler_hat>);


// missing knife recipes

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


// info about silkworms
mods.jei.JEI.addDescription(<mysticalworld:silkworm_egg>, "Dropped rarely from birch leaves.", "Silkworm eggs hatch into silkwoms, which grow over time and eventually drop cocoons. Cocoons can be crafted into silk thread, and then into string or silk cloth.", "Feed your silkworms leaves to speed up their growth.");


// hide removed items

var removeItems = [
	<mysticalworld:copper_nugget>,
	<mysticalworld:copper_dust>,
	<mysticalworld:copper_dust_tiny>,
	<mysticalworld:copper_ore>,
	<mysticalworld:copper_axe>,
	<mysticalworld:copper_hoe>,
	<mysticalworld:copper_pickaxe>,
	<mysticalworld:copper_shovel>,
	<mysticalworld:copper_axe>,
	<mysticalworld:copper_sword>,
	<mysticalworld:silver_nugget>,
	<mysticalworld:silver_dust>,
	<mysticalworld:silver_dust_tiny>,
	<mysticalworld:silver_ore>,
	<mysticalworld:silver_axe>,
	<mysticalworld:silver_hoe>,
	<mysticalworld:silver_pickaxe>,
	<mysticalworld:silver_shovel>,
	<mysticalworld:silver_axe>,
	<mysticalworld:silver_sword>
] as IItemStack[];

for r in removeItems {
	mods.jei.JEI.removeAndHide(r);
}