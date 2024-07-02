import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

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
	tool.maxDamage = 1;
	tool.addTooltip(format.red("For crafting only"));
	tool.addTooltip("This item breaks on use;");
	tool.addTooltip("use " ~ replacement ~ " instead.");
}

# re-add the wood and stone tool recipes since Primitive Tools removed them
# since they're still needed for crafting certain items

val toolMaterials = {
	<ore:plankWood>: [
		<minecraft:wooden_sword>,
		<minecraft:wooden_shovel>,
		<minecraft:wooden_pickaxe>,
		<minecraft:wooden_axe>,
		<minecraft:wooden_hoe>
	],
	<ore:cobblestone>: [
		<minecraft:stone_sword>,
		<minecraft:stone_shovel>,
		<minecraft:stone_pickaxe>,
		<minecraft:stone_axe>,
		<minecraft:stone_hoe>
	]
} as IItemStack[][IIngredient];

for material, tools in toolMaterials {
	recipes.addShapedMirrored(tools[0], [
		[material],
		[material],
		[stick]]);
	recipes.addShaped(tools[1], [
		[material],
		[stick],
		[stick]]);
	recipes.addShaped(tools[2], [
		[material, material, material],
		[null, stick, null],
		[null, stick, null]]);
	recipes.addShapedMirrored(tools[3], [
		[material, material],
		[material, stick],
		[null, stick]]);
	recipes.addShapedMirrored(tools[4], [
		[material, material],
		[null, stick],
		[null, stick]]);
}