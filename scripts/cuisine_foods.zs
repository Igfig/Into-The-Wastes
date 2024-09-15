import mods.cuisine.BasinThrowing;

val waterBottle = <minecraft:potion>.withTag({Potion: "minecraft:water"}).giveBack(<minecraft:glass_bottle>);

// flour cooks directly to bread, and crafts to two dough

recipes.removeByRecipeName("cuisine:dough");
recipes.addShapeless("dough", <cuisine:food:2> * 2, [<ore:foodFlour>, waterBottle]); // dough
BasinThrowing.add(<ore:foodFlour>, <liquid:water> * 250, <cuisine:food:2> * 2); // alternate dough recipe

furnace.addRecipe(<minecraft:bread>, <cuisine:food:1>); // flour

<ore:foodFlour>.addTooltip("Bakes into one bread");
<ore:foodFlour>.addTooltip("Crafts with water into two dough");


// another way to craft tofu
BasinThrowing.add(<ore:dustCrudesalt>, <liquid:soy_milk> * 1000, <cuisine:tofu_block>);


// various notes

<cuisine:crops:2>.addTooltip("Can be made into soy milk, tofu, or soy sauce");
<ore:listAllSpice>.addTooltip("Put in a spice bottle to use as a seasoning");
