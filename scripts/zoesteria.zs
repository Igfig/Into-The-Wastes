import crafttweaker.item.IItemStack;

var fullyRemove = [<valoegheses_be:ingot_vanadium>,<valoegheses_be:nugget_vanadium>,<valoegheses_be:sulphurrock>,<valoegheses_be:saltpeter>,<valoegheses_be:chain_vanadium>,<valoegheses_be:toluene>,<valoegheses_be:acid_nitric>,<valoegheses_be:bottle_trinitrotoluene>,<valoegheses_be:filtered_coal>,<valoegheses_be:products_coal>,<valoegheses_be:fuel_coke>,<valoegheses_be:armour_chestplate_vanadium>,<valoegheses_be:vanadium_block>,<valoegheses_be:ore_vanadium>,<valoegheses_be:ore_sulphur>,<valoegheses_be:ore_saltpeter>] as IItemStack[];
var removeRecipes = [<valoegheses_be:tnt_true>] as IItemStack[];

for fr in fullyRemove {
	mods.jei.JEI.removeAndHide(fr);
}
for rr in removeRecipes {
	recipes.remove(rr);
	furnace.remove(rr);
}

var sand = <minecraft:sand>;
var gunpowder = <minecraft:gunpowder>;
recipes.addShaped(<valoegheses_be:tnt_true>,[
	[sand, gunpowder, sand],
	[gunpowder, <minecraft:tnt>, gunpowder],
	[sand, gunpowder, sand]]);
	
// if you find nitric acid in a chest, here's something you can do with it at least	
recipes.addShapeless("nitric", <crossroads:solid_fortis>, [<valoegheses_be:acid_nitric>]);