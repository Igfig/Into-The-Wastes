import crafttweaker.item.IItemStack;


// tweak a few recipes

recipes.replaceAllOccurences(<ore:plankWood>, <roots:wildwood_planks>, <mysticalworld:beetle_mask>);
recipes.replaceAllOccurences(<ore:blockWool>, <ore:zawaFur>, <mysticalworld:antler_hat>);
recipes.replaceAllOccurences(<ore:gemAmethyst>, <ore:gemDiamond>, <mysticalworld:epic_squid>);


// missing knife recipes

recipes.addShapedMirrored("copper_knife", <mysticalworld:copper_knife>,[
	[null, null, <ore:ingotCopper>],
	[null, <ore:ingotCopper>, null],
	[<ore:stickWood>, null, null]]);
recipes.addShapedMirrored("silver_knife", <mysticalworld:silver_knife>,[
	[null, null, <ore:ingotSilver>],
	[null, <ore:ingotSilver>, null],
	[<ore:stickWood>, null, null]]);


// info about silkworms
mods.jei.JEI.addDescription(<mysticalworld:silkworm_egg>, "Dropped rarely from birch leaves.", "Silkworm eggs hatch into silkwoms, which grow over time and eventually drop cocoons. Cocoons can be crafted into silk thread, and then into string or silk cloth.", "Feed your silkworms leaves to speed up their growth.");


// hide removed items

var removeItems = [
	<mysticalworld:copper_dust>,
	<mysticalworld:copper_dust_tiny>,
	<mysticalworld:copper_ore>,
	<mysticalworld:copper_axe>,
	<mysticalworld:copper_hoe>,
	<mysticalworld:copper_pickaxe>,
	<mysticalworld:copper_shovel>,
	<mysticalworld:copper_axe>,
	<mysticalworld:copper_sword>,
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


// some items need to show up in oredicts because they appear in Spirit Bags
<ore:nuggetCopper>.add(<mysticalworld:copper_nugget>);
<ore:nuggetSilver>.add(<mysticalworld:silver_nugget>);
<ore:ingotCopper>.add(<mysticalworld:copper_ingot>);
<ore:ingotSilver>.add(<mysticalworld:silver_ingot>);
<ore:blockCopper>.add(<mysticalworld:copper_block>);
<ore:blockSilver>.add(<mysticalworld:silver_block>);