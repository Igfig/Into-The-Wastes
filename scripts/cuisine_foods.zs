import mods.cuisine.BasinThrowing;
import mods.cuisine.Mill;
import mods.cuisine.Vessel;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.oredict.IOreDictEntry;
import scripts.functions.unfunk;
import scripts.functions.unfunkIngredient;


val waterBottle = <minecraft:potion>.withTag({Potion: "minecraft:water"}).giveBack(<minecraft:glass_bottle>);
val flour = unfunkIngredient(<ore:foodFlour>);
val waterBucketIngredient = <minecraft:water_bucket>.transformReplace(<minecraft:bucket>) | <ceramics:clay_bucket>.withTag({fluids: {FluidName: "purified_water", Amount: 1000}}).transformReplace(<ceramics:clay_bucket>);
val soyBucketIngredient = <forge:bucketfilled>.withTag({FluidName: "soy_milk", Amount: 1000}).transformReplace(<minecraft:bucket>) | <ceramics:clay_bucket>.withTag({fluids: {FluidName: "soy_milk", Amount: 1000}}).transformReplace(<ceramics:clay_bucket>);


// flour cooks directly to bread, and crafts to two dough

recipes.remove(<cuisine:food:2>);

recipes.addShapeless("dough", <cuisine:food:2> * 2, [waterBottle, flour]); // dough
recipes.addShapeless("dough_bucket", <cuisine:food:2> * 8, [waterBucketIngredient, flour, flour, flour, flour]); // dough from bucket
BasinThrowing.add(flour, <liquid:water> * 250, <cuisine:food:2> * 2); // alternate dough recipe

furnace.addRecipe(<minecraft:bread>, flour, 0.1); // flour


// flour tooltip

for item in flour.items {
	item.withEmptyTag().addTooltip("Bakes into one bread");
	item.withEmptyTag().addTooltip("Crafts with water into two dough");
}


// another way to craft tofu

BasinThrowing.add(<ore:dustCrudesalt>, <liquid:soy_milk> * 1000, <cuisine:tofu_block>);
BasinThrowing.add(<ore:dustSalt>, <liquid:soy_milk> * 250, <cuisine:food:0>);


// craft soy milk into milk bottles

recipes.addShapeless("soy_milk_bottle", <animania:milk_bottle> * 4, [soyBucketIngredient, <minecraft:glass_bottle>, <minecraft:glass_bottle>, <minecraft:glass_bottle>, <minecraft:glass_bottle>]);


// change mill liquid recipe quantities so we don't need food to stack to 10

Mill.remove("cuisine:sesame_oil");
Mill.remove("cuisine:oil_from_peanut");
Mill.remove("cuisine:oil_from_rice");
Mill.remove("cuisine:oil_from_rice_seed");
Mill.remove("cuisine:oil_from_corn");
Mill.remove("cuisine:oil_from_beet_seed");
Mill.remove("cuisine:oil_from_melon_seed");
Mill.remove("cuisine:oil_from_pumpkin_seed");
Mill.remove("cuisine:oil_from_wheat_seed");
Mill.remove("cuisine:soybean_milk");

Mill.add(unfunk(<cuisine:crops:1>), null, null, <liquid:sesame_oil> * 25); // sesame
Mill.add(unfunk(<cuisine:crops:0>), null, null, <liquid:edible_oil> * 125); // peanuts
Mill.add(unfunk(<cuisine:crops:3>), null, null, <liquid:edible_oil> * 25); // rice
Mill.add(unfunkIngredient(<ore:cropCorn>), null, null, <liquid:edible_oil> * 125);
Mill.add(<minecraft:beetroot_seeds>, null, null, <liquid:edible_oil> * 25);
Mill.add(<minecraft:melon_seeds>, null, null, <liquid:edible_oil> * 50);
Mill.add(<minecraft:pumpkin_seeds>, null, null, <liquid:edible_oil> * 50);
Mill.add(<minecraft:wheat_seeds>, null, null, <liquid:edible_oil> * 25);
Mill.add(unfunk(<cuisine:crops:2>), <liquid:water> * 125, null, <liquid:soy_milk> * 125); // soybeans


// and ditto for vessel recipes

Vessel.remove("cuisine:vinegar_from_rice");
Vessel.remove("cuisine:vinegar_from_rice_powder");
Vessel.remove("cuisine:vinegar_from_rice_seed");
Vessel.remove("cuisine:vinegar_from_apple");
Vessel.remove("cuisine:vinegar_from_golden_apple");
Vessel.remove("cuisine:vinegar_from_enchanted_apple");
Vessel.remove("cuisine:vinegar_from_melon");
Vessel.remove("cuisine:vinegar_from_melon_block");
Vessel.remove("cuisine:soy_sauce");
Vessel.remove("cuisine:pickled_pepper");
Vessel.remove("cuisine:pickled_cucumber");
Vessel.remove("cuisine:pickled_cabbage");
Vessel.remove("cuisine:pickled_turnip");

Vessel.add(unfunk(<cuisine:crops:2>), <liquid:water> * 125, null, <liquid:soy_sauce> * 25); // 5 buckets of water and 40 items to make one bucket of sauce
Vessel.add(unfunk(<cuisine:food:3>), <liquid:water> * 125, null, <liquid:rice_vinegar> * 25);
Vessel.add(unfunk(<cuisine:food:4>), <liquid:water> * 125, null, <liquid:rice_vinegar> * 25);
Vessel.add(unfunk(<cuisine:crops:3>), <liquid:water> * 125, null, <liquid:rice_vinegar> * 25); // originally it produced 50% more, but that's tricky to do with these numbers
Vessel.add(unfunk(<minecraft:golden_apple:0>), <liquid:water> * 125, null, <liquid:fruit_vinegar> * 25);
Vessel.add(unfunk(<minecraft:golden_apple:1>), <liquid:water> * 125, null, <liquid:fruit_vinegar> * 125);
Vessel.add(unfunk(<minecraft:melon>), <liquid:water> * 50, null, <liquid:fruit_vinegar> * 5);
Vessel.add(unfunk(<minecraft:melon_block>), <liquid:water> * 250, null, <liquid:fruit_vinegar> * 50);

Vessel.add(unfunk(<cuisine:crops:5>),  <liquid:water> * 125, <cuisine:food:7>, null, <ore:dustSalt>); // chilis
Vessel.add(unfunk(<cuisine:crops:10>), <liquid:water> * 125, <cuisine:food:8>, null, <ore:dustSalt>); // cucumbers
Vessel.add(unfunk(<cuisine:crops:11>), <liquid:water> * 125, <cuisine:food:5>, null, <ore:dustSalt>); // cabbage
Vessel.add(unfunk(<cuisine:crops:14>), <liquid:water> * 125, <cuisine:food:6>, null, <ore:dustSalt>); // turnips


// new, more versatile fruit vinegar recipe

val vinegarFruits = <ore:vinegarFruit>;
vinegarFruits.addAll(<ore:listAllfruit>);
vinegarFruits.remove(<minecraft:melon>, <minecraft:chorus_fruit>, <valoegheses_be:island_coconut_0>, <valoegheses_be:island_coconut_1>); // melons use a different recipe, I don't know what chorus fruit vinegar would be like, and coconut vinegar isn't actually made from coconuts.

Vessel.add(vinegarFruits, <liquid:water> * 25, null, <liquid:fruit_vinegar> * 5);



// various notes

<cuisine:crops:2>.withEmptyTag().addTooltip("Can be made into soy milk, tofu, or soy sauce");
<ore:listAllSpice>.addTooltip("Put in a spice bottle to use as a seasoning");
<cuisine:food:5>.addShiftTooltip("Sauerkraut by any other name would smell as sweet");
<cuisine:food:6>.addShiftTooltip("Goes great with spironolactone");
<cuisine:food:7>.addShiftTooltip("Peter Piper picked a peck of these");
<cuisine:food:8>.addShiftTooltip("There's nothing funny about pickled turnips");