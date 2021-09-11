#priority 10

// add missing food oredicts

// fruits and veggies

<ore:cropAcorn>.add(<wildnature:acorn>);
<ore:listAllnut>.add(<wildnature:acorn>);

<ore:cropApple>.add(<wildnature:green_apple>);
<ore:listAllfruit>.add(<wildnature:green_apple>);

<ore:cropPear>.add(<wildnature:pear>);
<ore:listAllfruit>.add(<wildnature:pear>);

<ore:cropCherry>.add(<wildnature:cherry>);
<ore:listAllfruit>.add(<wildnature:cherry>);

<ore:cropCorn>.add(<wildnature:corn>);
<ore:listAllgrain>.add(<wildnature:corn>);

<ore:listAllfruit>.add(<futuremc:sweet_berries>);
<ore:listAllfruit>.add(<valoegheses_be:berry_bush>);
<ore:listAllfruit>.add(<valoegheses_be:island_coconut_0>);
<ore:listAllfruit>.add(<valoegheses_be:island_coconut_1>);
<ore:listAllfruit>.add(<valoegheses_be:fruit_peach>);
<ore:listAllfruit>.add(<valoegheses_be:fruit_nectarine>);
<ore:listAllfruit>.add(<valoegheses_be:fruit_plum>);
<ore:listAllfruit>.add(<valoegheses_be:fruit_date>);

<ore:listAllveggie>.add(<cuisine:crops:9>); // scallions
<ore:listAllgrain>.add(<cuisine:crops:3>); // raw rice

// meats

<ore:foodMeat>.add(
	<minecraft:fish:0>, <minecraft:fish:1>, <minecraft:cooked_fish:*>,
	<wildnature:raw_boar>, <wildnature:raw_goat>, <wildnature:raw_bison>, <wildnature:raw_camel>, <zawa:carnivore_meat_raw>, <zawa:large_meat_raw>, <zawa:cetacean_meat_raw>, <zawa:bush_meat_raw>, <zawa:bird_meat>, <zawa:reptile_meat_raw>, <zawa:raw_frog_leg>, <zawa:raw_cichlid>, <zawa:raw_crab_leg>,
	<wildnature:cooked_boar>, <wildnature:cooked_goat>, <wildnature:cooked_bison>, <wildnature:cooked_camel>, <zawa:carnivore_meat_cooked>, <zawa:large_meat_cooked>, <zawa:cetacean_meat_cooked>, <zawa:bush_meat_cooked>, <zawa:bird_meat_cooked>, <zawa:reptile_meat_cooked>, <zawa:cooked_frog_leg>, <zawa:cooked_cichlid>, <zawa:cooked_crab_leg>, 
	<animania:raw_frog_legs>, <animania:raw_peacock>, <animania:raw_prime_peacock>, <animania:raw_prime_beef>,<animania:raw_prime_steak>, <animania:raw_prime_pork>, <animania:raw_prime_bacon>, <animania:raw_prime_chicken>, <animania:raw_prime_rabbit>, <animania:raw_prime_mutton>, <animania:raw_horse>, <animania:raw_chevon>, <animania:raw_prime_chevon>, 
	<animania:cooked_frog_legs>, <animania:cooked_peacock>, <animania:cooked_prime_peacock>, <animania:cooked_prime_steak>, <animania:cooked_prime_pork>, <animania:cooked_prime_bacon>, <animania:cooked_prime_chicken>, <animania:cooked_prime_rabbit>, <animania:cooked_prime_mutton>, <animania:cooked_chevon>, <animania:cooked_prime_chevon>, 
	<mysticalworld:venison>, <mysticalworld:cooked_venison>,  <mysticalworld:raw_squid>,<mysticalworld:cooked_squid>, 
	<rats:raw_rat>, <rats:cooked_rat>
);

<ore:listAllmeatraw>.add(
	<wildnature:raw_boar>, <wildnature:raw_goat>, <wildnature:raw_bison>, <wildnature:raw_camel>, <zawa:carnivore_meat_raw>, <zawa:large_meat_raw>, <zawa:cetacean_meat_raw>, <zawa:bush_meat_raw>, <zawa:bird_meat>, <zawa:reptile_meat_raw>);

<ore:listAllmeatcooked>.add(
	<minecraft:cooked_porkchop>, <minecraft:cooked_beef>, <minecraft:cooked_chicken>,<minecraft:cooked_rabbit>, <minecraft:cooked_mutton>,
	<wildnature:cooked_boar>, <wildnature:cooked_goat>, <wildnature:cooked_bison>, <wildnature:cooked_camel>, <zawa:carnivore_meat_cooked>, <zawa:large_meat_cooked>, <zawa:cetacean_meat_cooked>, <zawa:bush_meat_cooked>, <zawa:bird_meat_cooked>, <zawa:reptile_meat_cooked>);

<ore:listAllfishraw>.add(<minecraft:fish:0>, <minecraft:fish:1>, <zawa:raw_cichlid>, <zawa:raw_crab_leg>);
<ore:listAllfishcooked>.add(<minecraft:cooked_fish:*>, <zawa:cooked_cichlid>, <zawa:cooked_crab_leg>);

<ore:listAllporkraw>.add(<wildnature:raw_boar>);
<ore:listAllporkcooked>.add(<wildnature:cooked_boar>);

<ore:listAllrabbitraw>.add(<minecraft:rabbit>, <animania:raw_prime_rabbit>);
<ore:listAllrabbitcooked>.add(<minecraft:cooked_rabbit>, <animania:cooked_prime_rabbit>);

<ore:listAllmuttonraw>.add(<minecraft:mutton>, <animania:raw_prime_mutton>);
<ore:listAllmuttoncooked>.add(<minecraft:cooked_mutton>, <animania:cooked_prime_mutton>);

<ore:listAllchevonraw>.add(<animania:raw_chevon>, <animania:raw_prime_chevon>,  <wildnature:raw_goat>);
<ore:listAllchevoncooked>.add(<animania:cooked_chevon>, <animania:cooked_prime_chevon>, <wildnature:cooked_goat>);