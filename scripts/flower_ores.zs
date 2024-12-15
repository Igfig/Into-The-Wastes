#priority 10

<ore:allFlowers>.add(<biomesoplenty:flower_0:*>, <biomesoplenty:flower_1:*>,
					 <futuremc:cornflower>, <futuremc:lily_of_the_valley>, <futuremc:wither_rose>,
					 <inspirations:flower:*>, 
					 <wildnature:jacaranda_flower>, <wildnature:cherry_flower>, <wildnature:daisy>, <wildnature:bluebell>, <wildnature:pulsatilla>, <wildnature:heather_purple>, <wildnature:heather_pink>, <wildnature:heather_white>, <wildnature:lupine_violet>, <wildnature:lupine_blue>, <wildnature:lupine_red>, <wildnature:lupine_pink>, <wildnature:lupine_yellow>, <wildnature:iris_violet>, <wildnature:iris_purple>, <wildnature:forget_me_not_blue>, <wildnature:forget_me_not_pink>, 
					 <zawa:beeplant>, <zawa:bellflowers>, <zawa:peach_flower>, <zawa:temple_bells>, <zawa:golden_sparks>, <zawa:violet>, <zawa:onion_grass>, <zawa:mimosa_pudica>);

<ore:flower>.addAll(<ore:allFlowers>);

<ore:allTallflowers>.add(<biomesoplenty:double_plant:0>, <biomesoplenty:double_plant:1>, <biomesoplenty:double_plant:2>, <biomesoplenty:double_plant:3>);
// <biomesoplenty:double_plant:*> doesn't work for some reason. We get "java.lang.ArrayIndexOutOfBoundsException: 4095", suggesting that there's a secret double plant with index 4095 out there

