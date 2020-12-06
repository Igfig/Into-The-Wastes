import crafttweaker.item.IItemStack;


// recipes for basic molds

val porcelain = <ceramics:clay_soft>;

recipes.remove(<foundry:mold:0>);
recipes.addShapeless("mold_ingot_i", <foundry:mold:0>, [porcelain,<ore:ingotIron>]);
recipes.addShapeless("mold_ingot_g", <foundry:mold:0>, [porcelain,<ore:ingotGold>]);
recipes.addShapeless("mold_ingot_c", <foundry:mold:0>, [porcelain,<ore:ingotCopper>]);

recipes.remove(<foundry:mold:4>);
recipes.addShapeless("mold_block_i", <foundry:mold:4>, [porcelain,<ore:blockIron>]);
recipes.addShapeless("mold_block_g", <foundry:mold:4>, [porcelain,<ore:blockGold>]);
recipes.addShapeless("mold_block_c", <foundry:mold:4>, [porcelain,<ore:blockCopper>]);

recipes.remove(<foundry:mold:7>);
recipes.addShapeless("mold_nugget_i", <foundry:mold:7>, [porcelain,<ore:nuggetIron>]);
recipes.addShapeless("mold_nugget_g", <foundry:mold:7>, [porcelain,<ore:nuggetGold>]);
recipes.addShapeless("mold_nugget_c", <foundry:mold:7>, [porcelain,<ore:nuggetCopper>]);


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
	mods.foundry.Casting.addRecipe(mold, <liquid:lead> * 1296, porcelain, moldItems[moldId]);
}
