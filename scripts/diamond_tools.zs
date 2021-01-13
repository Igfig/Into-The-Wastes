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
recipes.remove(<tinkersforging:hammer/diamond>);
recipes.remove(<thermalfoundation:tool.bow_diamond>);
recipes.remove(<thermalfoundation:tool.sickle_diamond>);
recipes.remove(<thermalfoundation:tool.hammer_diamond>);
recipes.remove(<thermalfoundation:tool.excavator_diamond>);

val diamond = <ore:gemDiamond>;
val stick = <ore:stickWood>;
val strng = <ore:string>;


// vanilla tools

recipes.addShaped(<minecraft:diamond_pickaxe>, [
	[diamond,diamond,diamond],
	[null,<thermalfoundation:tool.pickaxe_lead>,null],
	[null,stick,null]
]);
recipes.addShaped(<minecraft:diamond_shovel>, [
	[diamond],
	[<thermalfoundation:tool.shovel_lead>],
	[stick]
]);
recipes.addShapedMirrored(<minecraft:diamond_axe>, [
	[diamond,diamond],
	[diamond,<thermalfoundation:tool.axe_lead>],
	[null,stick]
]);
recipes.addShapedMirrored(<minecraft:diamond_hoe>, [
	[diamond,diamond],
	[null,<thermalfoundation:tool.hoe_lead>],
	[null,stick]
]);
recipes.addShaped(<minecraft:diamond_sword>, [
	[diamond],
	[diamond],
	[<thermalfoundation:tool.sword_lead>]
]);


// armour

recipes.addShaped(<minecraft:diamond_helmet>, [
	[diamond,diamond,diamond],
	[diamond,<thermalfoundation:armor.helmet_lead>,diamond]
]);
recipes.addShaped(<minecraft:diamond_chestplate>, [
	[diamond,<thermalfoundation:armor.plate_lead>,diamond],
	[diamond,diamond,diamond],
	[diamond,diamond,diamond]
]);
recipes.addShaped(<minecraft:diamond_leggings>, [
	[diamond,diamond,diamond],
	[diamond,<thermalfoundation:armor.legs_lead>,diamond],
	[diamond,null,diamond]
]);
recipes.addShaped(<minecraft:diamond_boots>, [
	[diamond,<thermalfoundation:armor.boots_lead>,diamond],
	[diamond,null,diamond],
]);


// modded tools

recipes.addShaped(<tinkersforging:hammer/diamond>, [
	[diamond,diamond,diamond],
	[diamond,<tinkersforging:hammer/lead>,diamond],
	[null,stick,null]
]);

recipes.addShapedMirrored("bow_diamond", <thermalfoundation:tool.bow_diamond>,[
	[null,diamond,strng],
	[<thermalfoundation:tool.bow_lead>,null,strng],
	[null,diamond,strng]]);
recipes.addShapedMirrored("sickle_diamond", <thermalfoundation:tool.sickle_diamond>,[
	[null,diamond,null],
	[null,<thermalfoundation:tool.sickle_lead>,diamond],
	[stick,diamond,null]]);
recipes.addShaped("hammer_diamond", <thermalfoundation:tool.hammer_diamond>,[
	[diamond,diamond,diamond],
	[diamond,<thermalfoundation:tool.hammer_lead>,diamond],
	[null,stick,null]]);
recipes.addShaped("excavator_diamond", <thermalfoundation:tool.excavator_diamond>,[
	[null,diamond,null],
	[diamond,<thermalfoundation:tool.excavator_lead>,diamond],
	[null,stick,null]]);