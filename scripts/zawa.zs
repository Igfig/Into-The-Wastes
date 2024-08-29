// remove unwanted items

mods.jei.JEI.removeAndHide(<zawa:atv>);
mods.jei.JEI.removeAndHide(<zawa:off_road_car>);
mods.jei.JEI.removeAndHide(<zawa:zoo_cart>);
mods.jei.JEI.removeAndHide(<zawa:tire>);
mods.jei.JEI.removeAndHide(<zawa:animal_net>);

// replace some more recipes

recipes.remove(<zawa:swing_wheel>);
recipes.addShaped("tire_swing", <zawa:swing_wheel>, [
	[<zawa:thin_rope>,<ore:woolBlack>,<zawa:thin_rope>],
	[<ore:woolBlack>,null,<ore:woolBlack>],
	[null,<ore:woolBlack>,null]]);

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



// add recipes for decorative stones

recipes.addShapedMirrored("river_stone", <zawa:river_stone>*4, [
	[<ore:gravel>, <minecraft:stone:5>], // andesite
	[<minecraft:stone:5>, <ore:gravel>]]);
recipes.addShapedMirrored("mixed_stone", <zawa:mixed_stone>*4, [
	[<ore:gravel>, <ore:cobblestone>],
	[<ore:cobblestone>, <ore:gravel>]]);
recipes.addShapedMirrored("mixed_stone_mossy", <zawa:mixed_stone_mossy>*4, [
	[<ore:gravel>, <ore:mossyCobblestone>],
	[<ore:mossyCobblestone>, <ore:gravel>]]);

	
// replace wetsuit recipe to not conflict with clay armour

recipes.replaceAllOccurences(<minecraft:clay_ball>, <minecraft:sponge>, <zawa:wetsuit_chest>);
recipes.replaceAllOccurences(<minecraft:clay_ball>, <minecraft:sponge>, <zawa:wetsuit_leggings>);
recipes.replaceAllOccurences(<minecraft:clay_ball>, <minecraft:sponge>, <zawa:wetsuit_mask>);
recipes.replaceAllOccurences(<minecraft:clay_ball>, <minecraft:sponge>, <zawa:flippers>);


// replace "steel" bars recipe to avoid conflict with iron ladder

val ironBars = <minecraft:iron_bars>;

<zawa:steel_bars>.displayName = "Cage Bars";
recipes.remove(<zawa:steel_bars>);
recipes.addShaped("zawa_steel_bars", <zawa:steel_bars> * 6, [
	[ironBars,ironBars,ironBars],
	[ironBars,ironBars,ironBars]]);
	
// rename some other blocks
<zawa:steel_grate>.displayName = "Cage Bars Slab";
<zawa:steelbar_door>.displayName = "Cage Door";
// <zawa:campfire>.displayName = "Decorative Campfire"; // for some reason changing the name of this also changes the name of the Tough as Nails campfire
<zawa:campfire>.addTooltip("Produces no warmth and cannot cook");
<zawa:campfire>.addShiftTooltip("\"Sounds like my wife!\" ");


// make fur-to-leather recipe produce less, to make meerkats less OP in the early game
// ditto scales-to-leather, so that it's not way better than the others

recipes.removeByRecipeName("zawa:leather_fur");
recipes.removeByRecipeName("zawa:leather_tiger");
recipes.removeByRecipeName("zawa:leather");

recipes.addShapeless(<minecraft:leather>, [<ore:zawaFur>|<ore:zawaHide>]);


// worms
<zawa:worm>.addTooltip("Some animals like these.");
<zawa:worm>.addTooltip("Barely human-edible if cooked.");

<zawa:worm>.maxStackSize = 8;

furnace.addRecipe(<contenttweaker:worm_cooked>, <zawa:worm>);


// make kibble recipes take a wider range of ingredients

<ore:kibble>.add(<zawa:kibble>, <zawa:bear_kibble>, <zawa:pachyderm_kibble>, <zawa:big_cat_kibble>, <zawa:monkey_kibble>, <zawa:snake_kibble>, <zawa:raptor_kibble>, <zawa:crocodile_kibble>, <zawa:frog_kibble>, <zawa:unglate_kibble>, <zawa:whale_kibble>, <zawa:bird_kibble>, <zawa:tortoise_kibble>, <zawa:canine_kibble>, <zawa:ape_kibble>, <zawa:pinniped_kibble>, <zawa:shark_kibble>, <lilcritters:rodent_kibble>);

recipes.replaceAllOccurences(<minecraft:wheat>, <ore:listAllgrain>, <ore:kibble>);
recipes.replaceAllOccurences(<minecraft:apple>, <ore:cropApple> | <ore:cropPear>, <ore:kibble>);
recipes.replaceAllOccurences(<minecraft:carrot>, <ore:listAllveggie>, <ore:kibble>);
recipes.replaceAllOccurences(<minecraft:potato>, <ore:listAllveggie>, <ore:kibble>);
recipes.replaceAllOccurences(<minecraft:bread>, <ore:foodBread>, <ore:kibble>);
recipes.replaceAllOccurences(<minecraft:melon>, <ore:listAllcitrus>, <ore:kibble>);

recipes.replaceAllOccurences(<minecraft:chicken>, <ore:listAllpoultryraw>, <ore:kibble>);
recipes.replaceAllOccurences(<minecraft:porkchop>, <ore:listAllporkraw>, <ore:kibble>);
recipes.replaceAllOccurences(<minecraft:beef>, <ore:listAllbeefraw>, <ore:kibble>);
recipes.replaceAllOccurences(<minecraft:rabbit>, <ore:listAllrabbitraw>, <ore:kibble>);
recipes.replaceAllOccurences(<minecraft:fish:*>, <ore:listAllseafoodraw>, <ore:kibble>);

recipes.replaceAllOccurences(<minecraft:wheat_seeds>, <ore:listAllseed>, <ore:kibble>);
recipes.replaceAllOccurences(<minecraft:pumpkin_seeds>, <ore:listAllseed>, <ore:kibble>);
recipes.replaceAllOccurences(<minecraft:leaves>, <ore:treeLeaves>, <ore:kibble>);

recipes.replaceAllOccurences(<zawa:bird_meat>, <ore:listAllpoultryraw>, <ore:kibble>);
recipes.replaceAllOccurences(<zawa:kelp>, <zawa:kelp> | <biomesoplenty:seaweed>, <ore:kibble>);

recipes.replaceAllOccurences(<lilcritters:acorn>, <ore:listAllnut>, <ore:kibble>);
