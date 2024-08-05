// flour cooks directly to bread, and crafts to two dough

recipes.removeByRecipeName("cuisine:dough");
recipes.addShapeless(<cuisine:food:2> * 2, [<ore:foodFlour>, <ore:waterBottle>]); // dough
furnace.addRecipe(<minecraft:bread>, <cuisine:food:1>); // flour

<ore:foodFlour>.addTooltip("Bakes into one bread");
<ore:foodFlour>.addTooltip("Crafts with water into two dough");


// notes about soybeans

<cuisine:crops:2>.addTooltip("Grind with water in a mill to make soy milk");
<cuisine:crops:2>.addTooltip("Soy milk can be made into tofu blocks");