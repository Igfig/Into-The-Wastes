val foods = <ore:itemFood>;

if (foods.empty) {
	print("goddamnit Peckish doesn't load until after CraftTweaker");
} else {
	print(foods.firstItem.displayName);
	foods.firstItem.maxStackSize = 8;
}

for food in foods.items {
	print(food.displayName);
	food.maxStackSize = 8;
}