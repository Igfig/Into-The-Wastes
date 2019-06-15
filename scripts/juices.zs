// remove Tough As Nails juices

for i in 0 to 10 {
	val juice = <toughasnails:fruit_juice>.withDamage(i);
	mods.jei.JEI.removeAndHide(juice);
}


// prevent Cuisine juice bottles from stacking
// TODO also prevent foods from stacking past 8

<cuisine:glass_bottle>.maxStackSize = 1;


// Recipe, tooltip, and JEI entry for cactus juice

val cactusJuice = <cuisine:glass_bottle>.withTag({Fluid: {FluidName: "cuisine_juice", Amount: 250, Tag: {material: "cactus"}}});
cactusJuice.addTooltip("Refreshing, but mildly toxic");

recipes.addShapeless(cactusJuice, [<minecraft:cactus>,<minecraft:cactus>,<minecraft:cactus>,<minecraft:glass_bottle>]);

mods.jei.JEI.addItem(cactusJuice);