import crafttweaker.item.IItemStack;


val tools = {
	<minecraft:wooden_sword> : "Primitive Knife",
	<minecraft:wooden_shovel> : "Primitive Spade",
	<minecraft:wooden_pickaxe> : "Primitive Pickaxe",
	<minecraft:wooden_axe> : "Primitive Hatchet",
	<minecraft:wooden_hoe> : "Primitive Hoe",
	<minecraft:stone_sword> : "Primitive Knife",
	<minecraft:stone_shovel> : "Primitive Spade",
	<minecraft:stone_pickaxe> : "Primitive Pickaxe",
	<minecraft:stone_axe> : "Primitive Hatchet",
	<minecraft:stone_hoe> : "Primitive Hoe"
} as string[IItemStack];

for tool, replacement in tools {
	tool.maxDamage = 1;
	tool.addTooltip(format.red("For crafting only"));
	tool.addTooltip("This item breaks on use;");
	tool.addTooltip("use " ~ replacement ~ " instead.");
}