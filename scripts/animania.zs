// wagons are broken: you can't hitch anything to them or pull them.
recipes.remove(<animania:item_wagon>);
mods.jei.JEI.removeAndHide(<animania:item_wagon>);
<animania:item_wagon>.addTooltip("BROKEN, DO NOT USE");

recipes.replaceAllOccurences(<minecraft:iron_ingot>, <ore:ingotBronze>, <animania:item_cart>);
<animania:item_cart>.addTooltip("Right-click to start pulling.");
<animania:item_cart>.addTooltip("Shift-right-click to get on.");
<animania:item_cart>.addTooltip("While pulling, right-click a horse or pig to make them pull it.");
<animania:item_cart>.addTooltip("Lead a leashed animal onto it and they'll stay on until led off.");
<animania:item_cart>.addTooltip("Right-click with a chest to put the chest on.");

recipes.replaceAllOccurences(<minecraft:iron_ingot>, <ore:ingotBronze>, <animania:item_tiller>);
<animania:item_tiller>.addTooltip("Tills and seeds grass blocks to farmland when pulled by a horse or cow.");
<animania:item_tiller>.addTooltip("Right-click to start pulling.");
<animania:item_tiller>.addTooltip("Shift-right-click to add seeds.");
<animania:item_tiller>.addTooltip("While pulling, right-click a horse or cow to make them pull it.");

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