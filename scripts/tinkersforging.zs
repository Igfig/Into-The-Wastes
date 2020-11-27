// replace recipes for diamond gear

recipes.remove(<minecraft:diamond_pickaxe>);
recipes.remove(<minecraft:diamond_shovel>);
recipes.remove(<minecraft:diamond_axe>);
recipes.remove(<minecraft:diamond_hoe>);
recipes.remove(<minecraft:diamond_sword>);
recipes.remove(<minecraft:diamond_helmet>);
recipes.remove(<minecraft:diamond_chestplate>);
recipes.remove(<minecraft:diamond_leggings>);
recipes.remove(<minecraft:diamond_boots>);

val diamond = <ore:gemDiamond>;

recipes.addShaped(<minecraft:diamond_pickaxe>, [
	[diamond,diamond,diamond],
	[null,<thermalfoundation:tool.pickaxe_bronze>,null],
	[null,<ore:stickWood>,null]
]);
recipes.addShaped(<minecraft:diamond_shovel>, [
	[diamond],
	[<thermalfoundation:tool.shovel_bronze>],
	[<ore:stickWood>]
]);
recipes.addShapedMirrored(<minecraft:diamond_axe>, [
	[diamond,diamond],
	[diamond,<thermalfoundation:tool.axe_bronze>],
	[null,<ore:stickWood>]
]);
recipes.addShapedMirrored(<minecraft:diamond_hoe>, [
	[diamond,diamond],
	[null,<thermalfoundation:tool.hoe_bronze>],
	[null,<ore:stickWood>]
]);
recipes.addShaped(<minecraft:diamond_sword>, [
	[diamond],
	[diamond],
	[<thermalfoundation:tool.sword_bronze>]
]);


recipes.addShaped(<minecraft:diamond_helmet>, [
	[diamond,diamond,diamond],
	[diamond,<thermalfoundation:armor.helmet_bronze>,diamond]
]);
recipes.addShaped(<minecraft:diamond_chestplate>, [
	[diamond,<thermalfoundation:armor.plate_bronze>,diamond],
	[diamond,diamond,diamond],
	[diamond,diamond,diamond]
]);
recipes.addShaped(<minecraft:diamond_leggings>, [
	[diamond,diamond,diamond],
	[diamond,<thermalfoundation:armor.legs_bronze>,diamond],
	[diamond,null,diamond]
]);
recipes.addShaped(<minecraft:diamond_boots>, [
	[diamond,<thermalfoundation:armor.boots_bronze>,diamond],
	[diamond,null,diamond],
]);