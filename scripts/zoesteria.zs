import crafttweaker.item.IItemStack;

var fullyRemove = [
<valoegheses_be:sulphurrock>,<valoegheses_be:saltpeter>,<valoegheses_be:toluene>,<valoegheses_be:acid_nitric>,<valoegheses_be:bottle_trinitrotoluene>,<valoegheses_be:filtered_coal>,<valoegheses_be:products_coal>,<valoegheses_be:fuel_coke>,<valoegheses_be:ore_sulphur>,<valoegheses_be:ore_saltpeter>] as IItemStack[];
var removeRecipes = [<valoegheses_be:tnt_true>] as IItemStack[];

for fr in fullyRemove {
	mods.jei.JEI.removeAndHide(fr);
}
for rr in removeRecipes {
	recipes.remove(rr);
	furnace.remove(rr);
}

furnace.remove(<valoegheses_be:products_coal>);


var sand = <minecraft:sand>;
var gunpowder = <minecraft:gunpowder>;
recipes.addShaped(<valoegheses_be:tnt_true>,[
	[sand, gunpowder, sand],
	[gunpowder, <minecraft:tnt>, gunpowder],
	[sand, gunpowder, sand]]);
	
// if you find nitric acid in a chest, here's something you can do with it at least	
recipes.addShapeless("nitric", <crossroads:solid_fortis>, [<valoegheses_be:acid_nitric>]);

// dates are missing their display name
<valoegheses_be:fruit_date>.displayName = "Date";

// notes
<valoegheses_be:ore_vanadium>.addTooltip("Generates rarely in silver and lead deposits");