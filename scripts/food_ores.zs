#priority 10

import crafttweaker.item.IItemStack;
import foodtweaker.FoodInfo;
import mods.foodtweaker.Tweaker;

// add missing food oredicts


// fruits and veggies

<ore:cropRice>.add(<cuisine:crops:3>);
<ore:foodRice>.add(<cuisine:food:4>);

<ore:cropCorn>.add(<wildnature:corn>, <cuisine:crops:13>);
<ore:listAllgrain>.add(<minecraft:wheat>, <wildnature:corn>, <cuisine:crops:1>, <cuisine:crops:2>, <cuisine:crops:3>, <cuisine:crops:13>, <cuisine:food:4>); // sesame, soybean, rice, corn, rice

<ore:cropAcorn>.add(<wildnature:acorn>, <lilcritters:acorn>);
<ore:listAllnut>.add(<wildnature:acorn>, <lilcritters:acorn>, <lilcritters:pine_cone>, <cuisine:crops:0>); // peanut

<ore:cropApple>.add(<minecraft:apple>, <wildnature:green_apple>);
<ore:cropPear>.add(<wildnature:pear>);
<ore:cropCherry>.add(<wildnature:cherry>);
<ore:cropCherry>.add(<wildnature:cherry>);
<ore:cropPeach>.add(<valoegheses_be:fruit_peach>, <valoegheses_be:fruit_nectarine>);
<ore:cropPlum>.add(<valoegheses_be:fruit_plum>);
<ore:cropDate>.add(<valoegheses_be:fruit_date>);
<ore:cropCoconut>.add(<valoegheses_be:island_coconut_0>, <valoegheses_be:island_coconut_1>);
<ore:cropBerry>.add(<valoegheses_be:berry_bush>, <futuremc:sweet_berries>);

<ore:listAllfruit>.add(<biomesoplenty:peach>, <biomesoplenty:persimmon>, <biomesoplenty:pear>, <wildnature:green_apple>, <wildnature:pear>, <wildnature:cherry>, <futuremc:sweet_berries>, <valoegheses_be:berry_bush>, <valoegheses_be:island_coconut_0>, <valoegheses_be:island_coconut_1>, <valoegheses_be:fruit_peach>, <valoegheses_be:fruit_nectarine>, <valoegheses_be:fruit_plum>, <valoegheses_be:fruit_date>, <minecraft:apple>, <minecraft:melon>, <minecraft:chorus_fruit>, <cuisine:food:9>, <cuisine:food:10>, <cuisine:food:11>, <cuisine:food:12>, <cuisine:food:13>, <cuisine:food:14>, <cuisine:food:15>, <cuisine:food:16>);

<ore:listAllveggie>.add(<minecraft:beetroot>, <minecraft:carrot>, <minecraft:potato>, <minecraft:pumpkin>, <cuisine:crops:4>, <cuisine:crops:5>, <cuisine:crops:6>, <cuisine:crops:7>, <cuisine:crops:9>, <cuisine:crops:10>, <cuisine:crops:11>, <cuisine:crops:12>, <cuisine:crops:14>, <cuisine:crops:15>, <cuisine:crops:16>, <cuisine:crops:17>, <cuisine:crops:18>, <cuisine:crops:19>, <cuisine:crops:20>, <mysticalworld:aubergine>);
<ore:foodVegetable>.addAll(<ore:listAllveggie>);

<ore:blockHay>.add(<minecraft:hay_block>);
<ore:blockTofu>.add(<cuisine:tofu_block>);

<ore:foodFlour>.add(<cuisine:food:1>, <cuisine:food:3>, <roots:flour>); // wheat flour, rice powder, potato flour
<ore:foodDough>.add(<cuisine:food:2>, <contenttweaker:wildewheet_dough>);
<ore:foodBread>.add(<minecraft:bread>, <roots:wildewheet_bread>);

<ore:rootVegetable>.add(<minecraft:carrot>, <minecraft:beetroot>, <cuisine:crops:10>); // turnip

<ore:seed>.add(<minecraft:wheat_seeds>, <minecraft:pumpkin_seeds>, <minecraft:melon_seeds>,<minecraft:beetroot_seeds>, <mysticalworld:assorted_seeds>, <mysticalworld:aubergine_seed>, <mysticalworld:cooked_seeds>, <roots:moonglow_seed>, <roots:spirit_herb_seed>, <roots:wildewheet_seed>, <cuisine:crops:1>); // sesame seeds

<ore:mushroom>.add(<biomesoplenty:mushroom:1>, <environs:cyan_mushroom>, <environs:purple_mushroom>, <quark:glowshroom>, <wildnature:mushroom_1>, <wildnature:mushroom_2>, <wildnature:mushroom_3>, <wildnature:mushroom_6>, <wildnature:mushroom_7>, <wildnature:mushroom_8>, <wildnature:mushroom_9>);
<ore:mushroomAny>.addAll(<ore:mushroom>);
<ore:foodMushroom>.addAll(<ore:mushroom>); // different mods use different mushroom oredicts

<ore:toadstool>.add(<biomesoplenty:mushroom:0>, <biomesoplenty:mushroom:5>, <wildnature:mushroom_4>, <wildnature:mushroom_5>);

<ore:listAllspice>.remove(<cuisine:crops:8>); // peppercorns. only ground pepper should be a spice
<ore:listAllspice>.add(<cuisine:material:4>,<cuisine:material:5>);


// meats

<ore:listAllfishraw>.add(<minecraft:fish:0>, <minecraft:fish:1>, <zawa:raw_cichlid>);
<ore:listAllfishcooked>.add(<minecraft:cooked_fish:*>, <zawa:cooked_cichlid>);
<ore:listAllfishraw>.remove(<mysticalworld:raw_squid>);
<ore:listAllfishcooked>.remove(<mysticalworld:cooked_squid>);

<ore:listAllshellfishraw>.add(<mysticalworld:raw_squid>, <zawa:raw_crab_leg>);
<ore:listAllshellfishcooked>.add(<mysticalworld:cooked_squid>, <zawa:cooked_crab_leg>);

<ore:listAllseafoodraw>.addAll(<ore:listAllfishraw>);
<ore:listAllseafoodraw>.addAll(<ore:listAllshellfishraw>);
<ore:listAllseafoodraw>.add(<zawa:cetacean_meat_raw>);
<ore:listAllseafoodcooked>.addAll(<ore:listAllfishcooked>);
<ore:listAllseafoodcooked>.addAll(<ore:listAllshellfishcooked>);
<ore:listAllseafoodcooked>.add(<zawa:cetacean_meat_cooked>);

<ore:listAllbeefraw>.add(<minecraft:beef>, <animania:raw_prime_beef>, <animania:raw_prime_steak>);
<ore:listAllbeefcooked>.add(<minecraft:cooked_beef>, <animania:cooked_prime_beef>, <animania:cooked_prime_steak>);

<ore:listAllporkraw>.add(<minecraft:porkchop>, <animania:raw_prime_pork>, <animania:raw_prime_bacon>, <wildnature:raw_boar>);
<ore:listAllporkcooked>.add(<minecraft:cooked_porkchop>, <animania:cooked_prime_pork>, <animania:cooked_prime_bacon>, <wildnature:cooked_boar>);

<ore:listAllrabbitraw>.add(<minecraft:rabbit>, <animania:raw_prime_rabbit>);
<ore:listAllrabbitcooked>.add(<minecraft:cooked_rabbit>, <animania:cooked_prime_rabbit>);

<ore:listAllmuttonraw>.add(<minecraft:mutton>, <animania:raw_prime_mutton>);
<ore:listAllmuttoncooked>.add(<minecraft:cooked_mutton>, <animania:cooked_prime_mutton>);

<ore:listAllchevonraw>.add(<animania:raw_chevon>, <animania:raw_prime_chevon>, <wildnature:raw_goat>);
<ore:listAllchevoncooked>.add(<animania:cooked_chevon>, <animania:cooked_prime_chevon>, <wildnature:cooked_goat>);

<ore:listAllpoultryraw>.add(<minecraft:chicken>, <animania:raw_prime_chicken>, <animania:raw_peacock>, <animania:raw_prime_peacock>, <zawa:bird_meat>, <primitivemobs:dodo>);
<ore:listAllpoultrycooked>.add(<minecraft:cooked_chicken>, <animania:cooked_prime_chicken>, <animania:cooked_peacock>, <animania:cooked_prime_peacock>, <zawa:bird_meat_cooked>, <primitivemobs:cooked_dodo>);

<ore:listAllreptilemeatraw>.add(<zawa:reptile_meat_raw>, <zawa:raw_frog_leg>, <animania:raw_frog_legs>);
<ore:listAllreptilemeatcooked>.add(<zawa:reptile_meat_cooked>, <zawa:cooked_frog_leg>, <animania:cooked_frog_legs>);

<ore:smallMeatraw>.addAll(<ore:listAllrabbitraw>);
<ore:smallMeatraw>.addAll(<ore:listAllreptilemeatraw>);
<ore:smallMeatraw>.addAll(<ore:foodRatraw>);
<ore:smallMeatraw>.add(<rats:raw_rat>, <zawa:bush_meat_raw>);
<ore:smallMeatcooked>.addAll(<ore:listAllrabbitcooked>);
<ore:smallMeatcooked>.addAll(<ore:listAllreptilemeatcooked>);
<ore:smallMeatcooked>.addAll(<ore:foodRatcooked>);
<ore:smallMeatcooked>.add(<rats:cooked_rat>, <zawa:bush_meat_cooked>);

<ore:listAllmeatraw>.addAll(<ore:listAllbeefraw>);
<ore:listAllmeatraw>.addAll(<ore:listAllporkraw>);
<ore:listAllmeatraw>.addAll(<ore:listAllrabbitraw>);
<ore:listAllmeatraw>.addAll(<ore:listAllmuttonraw>);
<ore:listAllmeatraw>.addAll(<ore:listAllchevonraw>);
<ore:listAllmeatraw>.addAll(<ore:listAllpoultryraw>);
<ore:listAllmeatraw>.addAll(<ore:listAllvenisonraw>);
<ore:listAllmeatraw>.addAll(<ore:listAllreptilemeatraw>);
<ore:listAllmeatraw>.addAll(<ore:foodRatraw>);
<ore:listAllmeatraw>.add(<rats:raw_rat>, <animania:raw_horse>, <wildnature:raw_bison>, <wildnature:raw_camel>, <zawa:carnivore_meat_raw>, <zawa:large_meat_raw>, <zawa:bush_meat_raw>);

<ore:listAllmeatcooked>.addAll(<ore:listAllbeefcooked>);
<ore:listAllmeatcooked>.addAll(<ore:listAllporkcooked>);
<ore:listAllmeatcooked>.addAll(<ore:listAllrabbitcooked>);
<ore:listAllmeatcooked>.addAll(<ore:listAllmuttoncooked>);
<ore:listAllmeatcooked>.addAll(<ore:listAllchevoncooked>);
<ore:listAllmeatcooked>.addAll(<ore:listAllpoultrycooked>);
<ore:listAllmeatcooked>.addAll(<ore:listAllvenisoncooked>);
<ore:listAllmeatcooked>.addAll(<ore:listAllreptilemeatcooked>);
<ore:listAllmeatcooked>.addAll(<ore:foodRatcooked>);
<ore:listAllmeatcooked>.add(<rats:cooked_rat>, <animania:cooked_horse>, <wildnature:cooked_bison>, <wildnature:cooked_camel>, <zawa:carnivore_meat_cooked>, <zawa:large_meat_cooked>, <zawa:bush_meat_cooked>);

<ore:foodMeat>.addAll(<ore:listAllmeatraw>);
<ore:foodMeat>.addAll(<ore:listAllmeatcooked>);
<ore:foodMeat>.addAll(<ore:listAllseafoodraw>);
<ore:foodMeat>.addAll(<ore:listAllseafoodcooked>);
<ore:foodMeat>.add(<iceandfire:fire_dragon_flesh>, <iceandfire:ice_dragon_flesh>);

// also rotten flesh should count as rotten
<ore:rotten>.add(<minecraft:rotten_flesh>);

// a few more misc oredicts
<ore:egg>.add(<minecraft:egg>, <iceandfire:hippogryph_egg:*>, <iceandfire:iceandfire.deathworm_egg:*>, <iceandfire:myrmex_jungle_egg:*>, <iceandfire:myrmex_desert_egg:*>, <animania:brown_egg>, <animania:peacock_egg_blue>, <animania:peacock_egg_white>, <primitivemobs:dodo_egg>);

<ore:foodSoup>.add(<animania:truffle_soup>, <futuremc:suspicious_stew>, <inspirations:potato_soup>, <minecraft:beetroot_soup>, <minecraft:mushroom_stew>, <minecraft:rabbit_stew>, <mysticalworld:stewed_eggplant>, <rats:plague_stew>, <roots:wildroot_stew>);


// animania animal foods

<ore:chickenFood>.addAll(<ore:seed>);
<ore:chickenFood>.addAll(<ore:cropCorn>);
<ore:chickenFood>.add(<animania:hamster_food>, <cuisine:crops:3>, <cuisine:food:4>, <cuisine:crops:0>, <cuisine:crops:2>); // rice, rice, peanuts, soybeans

<ore:cowFood>.addAll(<ore:listAllgrain>);
<ore:cowFood>.addAll(<ore:rootVegetable>);
<ore:cowFood>.add(<minecraft:potato>, <minecraft:pumpkin>);

<ore:ferretFood>.addAll(<ore:listAllmeatraw>);
<ore:ferretFood>.addAll(<ore:listAllmeatcooked>);
<ore:ferretFood>.addAll(<ore:egg>);

<ore:goatFood>.addAll(<ore:cowFood>);
<ore:goatFood>.addAll(<ore:cropApple>);
<ore:goatFood>.addAll(<ore:cropPear>);
<ore:goatFood>.addAll(<ore:cropBerry>);
<ore:goatFood>.addAll(<ore:listAllnut>);

<ore:hamsterFood>.addAll(<ore:chickenFood>);
<ore:hamsterFood>.addAll(<ore:cropApple>);
<ore:hamsterFood>.addAll(<ore:cropPear>);

// really hedgehogs are mainly insectivorous, but we don't have any of those available
// seeing a lot of contradictory info out there about what hedgehogs eat, tbh
<ore:hedgehogFood>.addAll(<ore:poultryCooked>);
<ore:hedgehogFood>.addAll(<ore:smallMeatcooked>);
<ore:hedgehogFood>.addAll(<ore:egg>);
<ore:hedgehogFood>.addAll(<ore:listAllnut>);
<ore:hedgehogFood>.addAll(<ore:cropApple>);
<ore:hedgehogFood>.addAll(<ore:cropPear>);
<ore:hedgehogFood>.add(<minecraft:melon>, <mysticalworld:cooked_carrot>, <cuisine:crops:4>, <cuisine:crops:15>, <cuisine:crops:16>, <cuisine:crops:20>); // tomato, bellpepper (red and green), spinach

<ore:horseFood>.addAll(<ore:listAllgrain>);
<ore:horseFood>.addAll(<ore:rootVegetable>);
<ore:horseFood>.addAll(<ore:cropApple>);
<ore:horseFood>.addAll(<ore:cropPear>);

<ore:peacockFood>.addAll(<ore:chickenFood>);
<ore:peacockFood>.addAll(<ore:poultryRaw>);
<ore:peacockFood>.addAll(<ore:smallMeatraw>);
<ore:peacockFood>.addAll(<ore:listAllgrain>);
<ore:peacockFood>.addAll(<ore:egg>);
<ore:peacockFood>.addAll(<ore:cropBerry>);
<ore:peacockFood>.add(<cuisine:crops:11>, <cuisine:crops:12>, <cuisine:crops:20>); // cabbage, lettuce, spinach

<ore:pigFood>.addAll(<ore:listAllgrain>);
<ore:pigFood>.addAll(<ore:listAllnut>);
<ore:pigFood>.addAll(<ore:egg>);
<ore:pigFood>.addAll(<ore:listAllfruit>);
<ore:pigFood>.addAll(<ore:foodBread>);
<ore:pigFood>.add(<minecraft:carrot>, <minecraft:beetroot>, <minecraft:potato>, <minecraft:pumpkin>, <cuisine:crops:4>, <cuisine:crops:12>, <cuisine:crops:14>, <cuisine:crops:15>, <cuisine:crops:16>, <cuisine:crops:20>); // tomato, lettuce, cucumber, bellpeppers, spinach

<ore:rabbitFood>.addAll(<ore:listAllgrain>);
<ore:rabbitFood>.addAll(<ore:cropApple>);
<ore:rabbitFood>.addAll(<ore:cropPear>);
<ore:rabbitFood>.addAll(<ore:rootVegetable>);
<ore:rabbitFood>.add(
	<cuisine:crops:12>, // lettuce
	<cuisine:crops:20>  // spinach
	// not cabbage though
);

<ore:sheepFood>.addAll(<ore:cowFood>);


// make sure all meat is considered meat internally

function makeMeat(items as IItemStack[]) {
	for item in items {
		val meatInfo = FoodInfo(item).setMeat(true);
		Tweaker.changeFoodStats(item, meatInfo);
	}
}

makeMeat(<ore:foodMeat>.items);
makeMeat([<minecraft:rotten_flesh>]);