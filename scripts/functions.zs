#priority 11

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

function unfunk(ore as IIngredient) as IIngredient {
	var ingredient = <minecraft:bedrock>; // just a placeholder
	for item in ore.items {
		if (ingredient.matches(<minecraft:bedrock>)) {
			ingredient = item.updateTag({Rot:{}});
		} else {
			ingredient = ingredient.or(item.updateTag({Rot:{}}));
		}
	}
	return ingredient;
}

function unfunkAll(ingredients as IIngredient[]) as IIngredient[] {
	var newIngredients = [] as IIngredient[];
	for ingredient in ingredients {
		newIngredients += unfunk(ingredient);
	}
	return newIngredients;
}