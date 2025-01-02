import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;

var items = itemUtils.getItemsByRegexRegistryName(".*") as IItemStack[];

items += <roots:pereskia_bulb>;

for item in items {
    if (item.isFood) {
		if (<ore:rotten> has item) {
			// leave it at 64; we're hardly going to be eating it anyway
			return;
		} else if (<ore:foodSoup> has item) {
			item.maxStackSize = 1;
		} else if (item.maxStackSize > 16) {
			item.maxStackSize = 16;
		}
		item.withEmptyTag().anyDamage().addTooltip("Max stack size: " ~ item.maxStackSize);
	}
}

val oresToShrink = {
	<ore:blockHay>: 8,
	<ore:cropMelon>: 8, 
	<ore:cropPumpkin>: 16,
	<ore:cropWheat>: 16,
	<ore:foodFlour>: 16,
	<ore:foodMushroom>: 16
} as int[IOreDictEntry];

for entry, size in oresToShrink {
	for item in entry.items {
		item.maxStackSize = size;
		item.withEmptyTag().anyDamage().addTooltip("Max stack size: " ~ size);
	}
}