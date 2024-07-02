// make food storage recipes harder

recipes.replaceAllOccurences(<ore:listAllmetalingots>, <ore:ingotGold>, <foodfunk:larder>);

recipes.replaceAllOccurences(<ore:listAllmetalingots>, <ore:plateLead>, <foodfunk:icebox>);
recipes.replaceAllOccurences(<ore:listAllmetalblocks>, <ore:blockLead>, <foodfunk:icebox>);
recipes.replaceAllOccurences(<foodfunk:larder>, <foodfunk:esky>, <foodfunk:icebox>);

recipes.replaceAllOccurences(<ore:listAllmetalblocks>, <iceandfire:dragonsteel_ice_ingot>, <foodfunk:freezer>);
recipes.replaceAllOccurences(<foodfunk:esky>, <foodfunk:icebox>, <foodfunk:freezer>);

val snowOrIce = <minecraft:snow> | <minecraft:ice>  | <minecraft:packed_ice>;

recipes.remove(<foodfunk:esky>);
recipes.addShaped("esky", <foodfunk:esky>, [
	[snowOrIce,         snowOrIce,         snowOrIce],
	[<ore:plateCopper>, <foodfunk:larder>, <ore:plateCopper>],
	[<ore:dyeBlue>,     <ore:dyeBlue>,     <ore:dyeBlue>]]);