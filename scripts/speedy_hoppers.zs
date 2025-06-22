recipes.remove(<speedyhoppers:speedyhopper_mk1>);
recipes.remove(<speedyhoppers:speedyhopper_mk2>);
recipes.remove(<speedyhoppers:speedyhopper_mk3>);

// remove the mk 1 hopper. Not enough of a speed increase to be worth it
mods.jei.JEI.removeAndHide(<speedyhoppers:speedyhopper_mk1>);

// cheaper recipes for the other two
recipes.addShaped("hopper_x2", <speedyhoppers:speedyhopper_mk2>, [
	[<ore:ingotGold>,<ore:ingotGold>,<ore:ingotGold>],
	[null, <minecraft:hopper>, null]]);
recipes.addShaped("hopper_x4", <speedyhoppers:speedyhopper_mk3>, [
	[<ore:gemDiamond>,<ore:gemDiamond>,<ore:gemDiamond>],
	[null, <minecraft:hopper>, null]]);
	
// new names
<speedyhoppers:speedyhopper_mk2>.displayName = "2x Speed Hopper";
<speedyhoppers:speedyhopper_mk3>.displayName = "4x Speed Hopper";