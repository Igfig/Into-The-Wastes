val magicTreePlanks = 
	<biomesoplenty:planks_0:0> | // sacred oak
	<biomesoplenty:planks_0:2> | // umbran wood
	<biomesoplenty:planks_0:5> | // magic wood
	<naturesaura:ancient_planks> |
	<roots:wildwood_planks>;

recipes.replaceAllOccurences(<ore:plankWood>,magicTreePlanks,<mysticalworld:beetle_mask>);

// TODO recipes.replaceAllOccurences(<ore:blockWool>,SOME COOL ANIMAL HIDES,<mysticalworld:antler_hat>);