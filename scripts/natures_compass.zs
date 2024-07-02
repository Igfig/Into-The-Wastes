val platinum = <ore:ingotPlatinum>;
val peridot = <ore:gemPeridot>;
val sapling = <ore:treeSaplingMagical>;

recipes.remove(<naturescompass:naturescompass>);
recipes.addShaped("naturescompass", <naturescompass:naturescompass>, [
	[sapling, peridot, sapling],
	[platinum, <minecraft:compass>, platinum],
	[sapling, peridot, sapling]]);