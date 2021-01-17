// remove unwanted items

mods.jei.JEI.removeAndHide(<zawa:atv>);
mods.jei.JEI.removeAndHide(<zawa:off_road_car>);
mods.jei.JEI.removeAndHide(<zawa:zoo_cart>);
mods.jei.JEI.removeAndHide(<zawa:tire>);


// replace some more recipes

recipes.remove(<zawa:swing_wheel>);
recipes.addShaped("tire_swing", <zawa:swing_wheel>, [
	[<zawa:thin_rope>,<ore:woolBlack>,<zawa:thin_rope>],
	[<ore:woolBlack>,null,<ore:woolBlack>],
	[null,<ore:woolBlack>,null]]);

recipes.remove(<zawa:kibble>);
recipes.addShapeless("kibble", <zawa:kibble>, [<ore:listAllgrain>, <ore:listAllfruit>, <ore:listAllveggie>, <ore:listAllseed>]);

recipes.remove(<zawa:hunting_knife>);
recipes.addShaped("hunting_knife", <zawa:hunting_knife>, [
	[<ore:leather>,<tinkersforging:sword_blade/iron>],
	[<ore:stickWood>,<ore:leather>]]);

recipes.remove(<zawa:machete>);
recipes.addShaped("machete", <zawa:machete>, [
	[null,null,<tinkersforging:sword_blade/iron>],
	[null,<ore:ingotIron>,null],
	[<ore:stickWood>,null,null]]);
	
recipes.remove(<zawa:hunting_rifle>);
recipes.addShaped("hunting_rifle", <zawa:hunting_rifle>, [
	[<ore:plateSteel>,<ore:plateBronze>,<railcraft:rail:4>], // reinforced rail
	[<minecraft:gunpowder>,<ore:plateSteel>,<minecraft:lever>],
	[<minecraft:flint>,null,null]]);
	
recipes.remove(<zawa:tranquilizer_gun>);
recipes.addShaped("tranquilizer_gun", <zawa:tranquilizer_gun>, [
	[<ore:plateSteel>,<ore:plateBronze>,<railcraft:rail:4>], // reinforced rail
	[<minecraft:gunpowder>,<ore:plankWood>,<minecraft:lever>],
	[<ore:logWood>,null,null]]);