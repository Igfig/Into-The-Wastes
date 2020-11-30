import crafttweaker.item.IItemStack;

val items = itemUtils.getItemsByRegexRegistryName(".*") as IItemStack[];

for item in items {
    if (item.isFood) {
		item.maxStackSize = 8;
    }
}