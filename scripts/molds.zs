import crafttweaker.item.IItemStack;


// recipes for basic molds

val porcelain = <ceramics:clay_soft>;

recipes.remove(<foundry:mold:0>);
recipes.addShapeless("mold_ingot", <foundry:mold:0>, [porcelain, <ore:ingotIron> | <ore:ingotGold> | <ore:ingotCopper>]);

recipes.remove(<foundry:mold:1>);
recipes.addShapeless("mold_plate", <foundry:mold:1>, [porcelain, <ore:plateIron> | <ore:plateGold> | <ore:plateCopper>]);
recipes.addShapeless("mold_plate_glass", <foundry:mold:1>, [porcelain, <ore:paneGlass>]);

recipes.remove(<foundry:mold:2>);
recipes.addShapeless("mold_gear", <foundry:mold:2>, [porcelain, <ore:gearIron> | <ore:gearGold> | <ore:gearCopper>]);

<foundry:mold:3>.displayName = "Rail Mold";
<foundry:casting_table:2>.displayName = "Rail Casting Table";
recipes.remove(<foundry:mold:3>);
recipes.addShapeless("mold_rod", <foundry:mold:3>, [porcelain, <railcraft:rail:*>]);

recipes.remove(<foundry:mold:4>);
recipes.addShapeless("mold_block", <foundry:mold:4>, [porcelain, <ore:blockIron> | <ore:blockGold> | <ore:blockCopper>]);
recipes.addShapeless("mold_block_glass", <foundry:mold:4>, [porcelain, <ore:blockGlass>]);

recipes.remove(<foundry:mold:7>);
recipes.addShapeless("mold_nugget", <foundry:mold:7>, [porcelain, <ore:nuggetIron> | <ore:nuggetGold> | <ore:nuggetCopper>]);

<foundry:mold:21>.displayName = "Orb Mold";
recipes.remove(<foundry:mold:21>);
recipes.addShapeless("mold_orb", <foundry:mold:21>, [porcelain, <wildnature:pebble> | <ore:enderpearl> | <ore:gemPearl>]);


// recipes for tool molds

val moldItems = {
	8: <thermalfoundation:tool.pickaxe_lead>,
	9: <thermalfoundation:tool.axe_lead>,
	10: <thermalfoundation:tool.sword_lead>,
	11: <thermalfoundation:tool.shovel_lead>,
	12: <thermalfoundation:tool.hoe_lead>,
	13: <thermalfoundation:tool.shears_lead>,
	14: <thermalfoundation:armor.helmet_lead>,
	15: <thermalfoundation:armor.plate_lead>,
	16: <thermalfoundation:armor.legs_lead>,
	17: <thermalfoundation:armor.boots_lead>,
	18: <thermalfoundation:tool.sickle_lead>,
	19: <thermalfoundation:tool.hammer_lead>,
	20: <thermalfoundation:tool.excavator_lead>
} as IItemStack[int];

for moldId in moldItems {
	val mold = <foundry:mold>.definition.makeStack(moldId);

	recipes.remove(mold);
	mods.foundry.Casting.addRecipe(mold, <liquid:pyrotheum> * 500, porcelain, moldItems[moldId], 360, true);
}