import crafttweaker.item.IItemStack;

val stick = <ore:stickWood>;

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
	recipes.remove(tool);
	mods.jei.JEI.removeAndHide(tool);
	tool.addTooltip(format.red("UNCRAFTABLE"));
	tool.addTooltip("Use " ~ replacement ~ " instead.");
}