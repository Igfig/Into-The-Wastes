import mods.cuisine.BasinThrowing;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.oredict.IOreDictEntry;
import scripts.functions.unfunkIngredient;


val waterBottle = <minecraft:potion>.withTag({Potion: "minecraft:water"}).giveBack(<minecraft:glass_bottle>);
val flour = unfunkIngredient(<ore:foodFlour>);


// flour cooks directly to bread, and crafts to two dough

recipes.remove(<cuisine:food:2>);

recipes.addShapeless("dough", <cuisine:food:2> * 2, [waterBottle, flour]); // dough
recipes.addShapeless("dough_bucket", <cuisine:food:2> * 8, [<liquid:water> * 1000, flour, flour, flour, flour]); // dough from bucket
BasinThrowing.add(flour, <liquid:water> * 250, <cuisine:food:2> * 2); // alternate dough recipe

furnace.addRecipe(<minecraft:bread>, flour, 0.1); // flour


// flour tooltip

for item in flour.items {
	item.withEmptyTag().addTooltip("Bakes into one bread");
	item.withEmptyTag().addTooltip("Crafts with water into two dough");
}

// another way to craft tofu

BasinThrowing.add(<ore:dustCrudesalt>, <liquid:soy_milk> * 1000, <cuisine:tofu_block>);


// various notes

<cuisine:crops:2>.withEmptyTag().addTooltip("Can be made into soy milk, tofu, or soy sauce");
<ore:listAllSpice>.addTooltip("Put in a spice bottle to use as a seasoning");
