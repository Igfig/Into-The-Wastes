import mods.cuisine.BasinThrowing;

val waterBottle = <minecraft:potion>.withTag({Potion: "minecraft:water"}).giveBack(<minecraft:glass_bottle>);

// flour cooks directly to bread, and crafts to two dough

recipes.removeByRecipeName("cuisine:dough");
recipes.addShapeless(<cuisine:food:2> * 2, [<ore:foodFlour>, waterBottle]); // dough
furnace.addRecipe(<minecraft:bread>, <cuisine:food:1>); // flour

<ore:foodFlour>.addTooltip("Bakes into one bread");
<ore:foodFlour>.addTooltip("Crafts with water into two dough");


// another way to craft tofu
BasinThrowing.add(<ore:dustCrudesalt>, <liquid:soy_milk> * 1000, <cuisine:tofu_block>);


// various notes

<cuisine:crops:2>.addTooltip("Can be made into soy milk, tofu, or soy sauce");
<ore:listAllSpice>.addTooltip("Put in a spice bottle to use as a seasoning");
