recipes.addShaped("soul_fire_torch", <futuremc:soul_fire_torch>, [
	[<ore:coal> | <ore:charcoal>],
	[<ore:stick>],
	[<minecraft:soul_sand>]]);

// recipe for trident
recipes.addShaped("trident", <futuremc:trident>, [
	[null,<ore:ingotPlatinum>,<tinkersforging:sword_blade/iron>],
	[null,<ore:gemDiamond>,<ore:ingotPlatinum>],
	[<ore:ingotPlatinum>,null,null]]);
	
// make bamboo work just like a stick
<ore:stickWood>.add(<futuremc:bamboo>);
recipes.removeByRecipeName("futuremc:else/stick_from_bamboo");
recipes.replaceAllOccurences(<futuremc:bamboo>, <ore:stickWood>, <futuremc:scaffolding>);
