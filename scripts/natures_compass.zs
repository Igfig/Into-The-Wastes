val platinum = <ore:ingotPlatinum>;
val sapling = <ore:treeSaplingMagical>;

recipes.remove(<naturescompass:naturescompass>);
recipes.addShaped("naturescompass", <naturescompass:naturescompass>, [
	[sapling, platinum, sapling],
	[platinum, <minecraft:compass>, platinum],
	[sapling, platinum, sapling]]);