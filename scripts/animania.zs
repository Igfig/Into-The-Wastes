import scripts.functions.unfunk;

<animania:block_trough>.addTooltip("Can hold water, slop, or any animal feed.");
<animania:block_trough>.addTooltip("See the Animania Manual for what each animal eats.");
<animania:block_trough>.addTooltip("Refillable via hopper or fluid channel.");

<animania:block_straw>.addTooltip("Animals prefer to sleep on this.");

<animania:block_mud>.displayName = "Wallowing Mud";
<animania:block_mud>.addTooltip("Pigs love it!");

<animania:block_hamster_wheel>.addTooltip("Hamsters love it!");

<animania:block_nest>.addTooltip("Chickens and peafowl lay eggs in these.");

<animania:salt_lick>.addTooltip("Cows, goats, sheep, pigs, and horses heal from licking it.");
<animania:salt_lick>.addTooltip("Lasts 200 licks.");
<animania:salt_lick>.addShiftTooltip("About as many as a Tootsie Pop.");

<animania:cheese_mold>.addTooltip("Fill this with milk and wait for it to become cheese.");
<animania:cheese_mold>.addTooltip("Or fill with water and wait for it to become salt.");


// allow either kitchen knife to be used in knife recipes
// unfortunately we need to manually replace some of them, because we need to unfunk the ingredients

<ore:itemFoodCutter>.add(<animania:carving_knife>);

recipes.removeByRecipeName("animania:straw_cutting");
recipes.removeByRecipeName("animania:pork_cutting_1");
recipes.removeByRecipeName("animania:beef_cutting_1");

recipes.replaceAllOccurences(<animania:carving_knife>, <ore:itemFoodCutter>);

recipes.addShapeless("pork_cutting", <animania:raw_prime_bacon> * 4, [<ore:itemFoodCutter>, unfunk(<animania:raw_prime_pork>)]);
recipes.addShapeless("beef_cutting", <animania:raw_prime_steak> * 4, [<ore:itemFoodCutter>, unfunk(<animania:raw_prime_beef>)]);


// because zawa animals can't eat non-vanilla meats (mostly), add recipes to convert animania meats back to vanilla ones

recipes.addShapeless(<minecraft:beef> * 2, [unfunk(<animania:raw_prime_beef>)]);
recipes.addShapeless(<minecraft:porkchop> * 2, [unfunk(<animania:raw_prime_pork>)]);
recipes.addShapeless(<minecraft:chicken> * 2, [unfunk(<animania:raw_prime_chicken>)]);
recipes.addShapeless(<minecraft:chicken> * 2, [unfunk(<animania:raw_prime_peacock>)]);
recipes.addShapeless(<minecraft:mutton> * 2, [unfunk(<animania:raw_prime_mutton>)]);
recipes.addShapeless(<minecraft:mutton> * 2, [unfunk(<animania:raw_prime_chevon>)]);
recipes.addShapeless(<minecraft:rabbit> * 2, [unfunk(<animania:raw_prime_rabbit>)]);

recipes.addShapeless(<minecraft:mutton>, [unfunk(<animania:raw_chevon>)]);
recipes.addShapeless(<minecraft:beef>, [unfunk(<animania:raw_horse>)]);
recipes.addShapeless(<minecraft:chicken>, [unfunk(<animania:raw_peacock>)]);