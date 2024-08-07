import crafttweaker.item.IIngredient;

// remove shulker boxes

val boxes = [
	<minecraft:white_shulker_box>,
	<minecraft:orange_shulker_box>,
	<minecraft:magenta_shulker_box>,
	<minecraft:light_blue_shulker_box>,
	<minecraft:yellow_shulker_box>,
	<minecraft:lime_shulker_box>,
	<minecraft:pink_shulker_box>,
	<minecraft:gray_shulker_box>,
	<minecraft:silver_shulker_box>,
	<minecraft:cyan_shulker_box>,
	<minecraft:purple_shulker_box>,
	<minecraft:blue_shulker_box>,
	<minecraft:brown_shulker_box>,
	<minecraft:green_shulker_box>,
	<minecraft:red_shulker_box>,
	<minecraft:black_shulker_box>
] as IIngredient[];


for box in boxes {
	recipes.remove(box, false);
	mods.jei.JEI.removeAndHide(box);
}