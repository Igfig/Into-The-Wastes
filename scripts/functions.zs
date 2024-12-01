#priority 30

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;


function join(arr as IItemStack[]) as string {
	var str = "[";
	for a in arr {
		str = str ~ a.commandString ~ ", ";
	}	
	str ~= "]";
	return str;
}


function unfunk(item as IItemStack) as IItemStack {
		return item.getCapNBT() has "foodfunk:rot"
			? item.updateTag({Rot:{}}) 
			: item;
}


function unfunkIngredient(ingredient as IIngredient) as IIngredient {
	if (ingredient.items.length == 0) {
		return null;
	}
	
	var newIngredient = unfunk(ingredient.items[0]);
	
	if (ingredient.items.length == 1) {
		return newIngredient;
	}
	
	for i in 1 to ingredient.items.length {
		val item = unfunk(ingredient.items[i]);
		newIngredient = newIngredient.or(item);
	}

	return newIngredient;
}


function unfunkAll(ingredients as IIngredient[]) as IIngredient[] {
	var newIngredients = [] as IIngredient[];
	for item in ingredients {
		newIngredients += unfunkIngredient(item);
	}
	return newIngredients;
}