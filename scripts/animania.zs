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

<ore:itemFoodCutter>.add(<animania:carving_knife>);
recipes.replaceAllOccurences(<animania:carving_knife>, <ore:itemFoodCutter>);