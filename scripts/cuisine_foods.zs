import mods.cuisine.BasinThrowing;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.oredict.IOreDictEntry;
import scripts.functions.unfunk;


val waterBottle = <minecraft:potion>.withTag({Potion: "minecraft:water"}).giveBack(<minecraft:glass_bottle>);
val flour = unfunk(<ore:foodFlour>);
val spices = unfunk(<ore:listAllSpice>);


// flour cooks directly to bread, and crafts to two dough

recipes.remove(<cuisine:food:2>);

recipes.addShapeless("dough", <cuisine:food:2> * 2, [flour, waterBottle]); // dough
BasinThrowing.add(flour, <liquid:water> * 250, <cuisine:food:2> * 2); // alternate dough recipe

furnace.addRecipe(<minecraft:bread>, <cuisine:food:1>); // flour


// flour tooltip

for item in flour.items {
	item.addTooltip("Bakes into one bread");
	item.addTooltip("Crafts with water into two dough");
}

// another way to craft tofu

BasinThrowing.add(<ore:dustCrudesalt>, <liquid:soy_milk> * 1000, <cuisine:tofu_block>);


// various notes

<cuisine:crops:2>.withEmptyTag().addTooltip("Can be made into soy milk, tofu, or soy sauce");
<ore:listAllSpice>.addTooltip("Put in a spice bottle to use as a seasoning");
