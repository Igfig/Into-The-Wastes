import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import scripts.functions.unfunkIngredient;
import scripts.functions.unfunkAll;


// remove unwanted items

mods.jei.JEI.removeAndHide(<zawa:atv>);
mods.jei.JEI.removeAndHide(<zawa:off_road_car>);
mods.jei.JEI.removeAndHide(<zawa:zoo_cart>);
mods.jei.JEI.removeAndHide(<zawa:tire>);
mods.jei.JEI.removeAndHide(<zawa:animal_net>); // might re-add if I can limit its abilities properly
mods.jei.JEI.removeAndHide(<zawa:binoculars>);
mods.jei.JEI.removeAndHide(<zawa:electric_fence>); // maybe re-add as an expensive / late-game thing?


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

recipes.remove(<zawa:bullet_rifle>);
recipes.addShapeless(<zawa:bullet_rifle> * 8,[<minecraft:gunpowder>, <ore:nuggetIron>, <ore:nuggetIron>, <ore:nuggetIron>, <ore:nuggetIron>, <ore:nuggetIron>, <ore:nuggetIron>, <ore:nuggetIron>, <ore:nuggetIron>]);

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


// various tooltips

<zawa:campfire>.addTooltip("Produces no warmth and cannot cook");
<zawa:campfire>.addShiftTooltip("\"Sounds like my wife!\" ");

<zawa:flashlight>.addTooltip("Its battery seems a bit faulty");
<zawa:flashlight>.addShiftTooltip("Phasmophobia, eat your heart out");

<zawa:waste_bin>.addTooltip("Right-click with an item to permanently destroy the item.");
<zawa:recycle_bin>.addTooltip("Right-click with an item to permanently destroy the item.");

<zawa:exhibit_glass_pane>.addTooltip("Hides block entities on the other side");

<zawa:seine_net>.addTooltip("Catches small seafood for aquatic animal feed.");
<zawa:seine_net>.addTooltip("Point at water, hold right-click, and wiggle back and forth.");

<zawa:coin>.addTooltip("Some ZAWA NPCs like these.");

<zawa:hunting_rifle>.addTooltip("Fires rifle bullets.");
<zawa:tranquilizer_gun>.addTooltip("Fires tranquilizer or poison darts.");


// worms and other small foods

<zawa:worm>.addTooltip("Some animals like these.");
<zawa:worm>.addTooltip("Barely human-edible if cooked.");
<zawa:worm>.addTooltip("Occasionally dropped while digging dirt.");

<zawa:shrimp>.addTooltip("Some animals like these.");
<zawa:shrimp>.addTooltip("Barely human-edible if cooked.");
<zawa:shrimp>.addTooltip("Catch with a seine net.");

<zawa:mussels>.addTooltip("Some animals like these.");
<zawa:mussels>.addTooltip("Barely human-edible if cooked.");
<zawa:mussels>.addTooltip("Catch with a seine net.");

<zawa:worm>.maxStackSize = 16;
<zawa:shrimp>.maxStackSize = 16;
<zawa:mussels>.maxStackSize = 16;

furnace.addRecipe(<contenttweaker:worm_cooked>, <zawa:worm>);
furnace.addRecipe(<contenttweaker:shrimp_cooked>, <zawa:shrimp>);
furnace.addRecipe(<contenttweaker:mussels_cooked>, <zawa:mussels>);


// make fur-to-leather recipe produce less, to make meerkats less OP in the early game
// ditto scales-to-leather, so that it's not way better than the others

recipes.removeByRecipeName("zawa:leather_fur");
recipes.removeByRecipeName("zawa:leather_tiger");
recipes.removeByRecipeName("zawa:leather");

recipes.addShapeless(<minecraft:leather>, [<ore:zawaFur>|<ore:zawaHide>]);


// some items have no real use of their own. Add some

furnace.addRecipe(<minecraft:gold_nugget> * 3, <zawa:coin>);
<ore:tallow>.add(<zawa:blubber>);
recipes.addShapeless(<minecraft:dye:15> * 4, [<zawa:crocodile_tooth>]); // bone meal


// simplify kibble recipes and make them take a wider range of ingredients

recipes.remove(<zawa:kibble>);
recipes.addShapeless("kibble", <zawa:kibble>, [unfunkIngredient(<ore:listAllgrain>), unfunkIngredient(<ore:foodVegetable>)]);

val kibbleRecipes = {
	<zawa:bear_kibble>: [<zawa:kibble>, <ore:listAllseafoodraw>, <ore:listAllfruit>],
	<zawa:pachyderm_kibble>: [<zawa:kibble>, <ore:treeLeaves>, <ore:listAllveggie>],
	<zawa:big_cat_kibble>: [<zawa:kibble>, <ore:listAllpoultryraw>, <ore:listAllporkraw>],
	<zawa:monkey_kibble>: [<zawa:kibble>, <ore:treeLeaves>, <ore:listAllfruit>],
	<zawa:snake_kibble>: [<zawa:kibble>, <ore:smallMeatraw>, <ore:egg>],
	<zawa:raptor_kibble>: [<zawa:kibble>, <ore:smallMeatraw>, <ore:listAllseafoodraw>],
	<zawa:crocodile_kibble>: [<zawa:kibble>, <ore:listAllpoultryraw>, <ore:listAllseafoodraw>],
	<zawa:frog_kibble>: [<zawa:kibble>, <ore:listAllseed>, <minecraft:sugar>],
	<zawa:unglate_kibble>: [<zawa:kibble>, <ore:listAllgrain>, <ore:listAllveggie>],
	<zawa:whale_kibble>: [<zawa:kibble>, <ore:listAllseafoodraw>, <minecraft:sugar>],
	<zawa:bird_kibble>: [<zawa:kibble>, <ore:listAllseed>, <ore:listAllfruit>],
	<zawa:tortoise_kibble>: [<zawa:kibble>, <ore:listAllveggie>, <ore:listAllfruit>],
	<zawa:canine_kibble>: [<zawa:kibble>, <ore:smallMeatraw>, <ore:listAllpoultryraw>],
	<zawa:ape_kibble>: [<zawa:kibble>, <minecraft:sugar>, <ore:listAllfruit>],
	<zawa:pinniped_kibble>: [<zawa:kibble>, <ore:listAllseafoodraw>, <ore:listAllseafoodraw>],
	<lilcritters:rodent_kibble>: [<zawa:kibble>, <ore:listAllseed>, <ore:listAllnut>]
} as IIngredient[][IItemStack];

<ore:kibble>.add(kibbleRecipes.keys);
<ore:kibble>.add(<zawa:shark_kibble>); // shark ingredients don't need to be changed


for kibble, ingredients in kibbleRecipes {
	recipes.remove(kibble);	
	recipes.addShapeless(kibble.name, kibble, unfunkAll(ingredients));
}