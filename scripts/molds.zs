import crafttweaker.item.IIngredient;

val porcelain = <ceramics:clay_soft>;


// a couple name changes

<foundry:mold:3>.displayName = "Rail/Rod Mold";
<foundry:casting_table:2>.displayName = "Rail/Rod Casting Table";

<foundry:mold:21>.displayName = "Orb Mold";


// recipes for molds

val moldItems = {
	0: <ore:ingotIron> | <ore:ingotGold> | <ore:ingotCopper> | <ore:ingotTin> | <ore:ingotBronze> | <ore:ingotSilver> | <ore:ingotLead> | <ore:ingotSteel>,
	1: <ore:plateIron> | <ore:plateGold> | <ore:plateCopper> | <ore:plateTin> | <ore:plateBronze> | <ore:plateSilver> | <ore:plateLead> | <ore:plateSteel>,
	2: <ore:gearIron> | <ore:gearGold> | <ore:gearCopper> | <ore:gearTin> | <ore:gearBronze> | <ore:gearSilver> | <ore:gearLead>,
	3: <railcraft:rail:*>,
	4: <ore:blockIron> | <ore:blockGold> | <ore:blockCopper> | <ore:blockTin> | <ore:blockBronze> | <ore:blockSilver> | <ore:blockLead> | <ore:blockSteel>,
	// molds 5 and 6 are for slabs and stairs respectively, and have already been removed in zenfoundry.zs
	7: <ore:nuggetIron> | <ore:nuggetGold> | <ore:nuggetCopper> | <ore:nuggetTin> | <ore:nuggetBronze> | <ore:nuggetSilver> | <ore:nuggetLead> | <ore:nuggetSteel>,
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
	20: <thermalfoundation:tool.excavator_lead>,
	21: <wildnature:pebble> | <ore:enderpearl> | <ore:gemPearl>
} as IIngredient[int];

for moldId, ingredient in moldItems {
	val mold = <foundry:mold>.definition.makeStack(moldId);

	recipes.remove(mold);
	recipes.addShapeless("mold_" ~ moldId, mold, [porcelain, ingredient]);
}


// and a couple of extra recipes using glass

recipes.addShapeless("mold_plate_glass", <foundry:mold:1>, [porcelain, <ore:paneGlass>]);
recipes.addShapeless("mold_block_glass", <foundry:mold:4>, [porcelain, <ore:blockGlass>]);