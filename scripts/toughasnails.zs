for i in 0 to 10 {
	if (i != 2) { // 2 is cactus juice, which is handled separately
		val juice = <toughasnails:fruit_juice>.definition.makeStack(i);
		juice.displayName = "Sweetened " + juice.displayName;
	}
}

// cactus juice

recipes.remove(<toughasnails:fruit_juice:2>, false);

recipes.addShapeless(<toughasnails:fruit_juice:2>,[<minecraft:cactus>,<minecraft:cactus>,<minecraft:cactus>,<minecraft:glass_bottle>]);
<toughasnails:fruit_juice:2>.addTooltip("Tastes good, but mildly toxic");