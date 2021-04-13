#priority 10

<ore:allFlowers>.add(<biomesoplenty:flower_0:*>,<biomesoplenty:flower_1:*>,
					 <futuremc:cornflower>,<futuremc:lily_of_the_valley>,<futuremc:wither_rose>,
					 <inspirations:flower:3>);

<ore:allTallflowers>.add(<biomesoplenty:double_plant:0>, <biomesoplenty:double_plant:1>, <biomesoplenty:double_plant:2>, <biomesoplenty:double_plant:3>);
// <biomesoplenty:double_plant:*> doesn't work for some reason. We get "java.lang.ArrayIndexOutOfBoundsException: 4095", suggesting that there's a secret double plant with index 4095 out there