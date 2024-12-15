// remove Tough As Nails juices

for i in 0 to 10 {
	val juice = <toughasnails:fruit_juice>.withDamage(i);
	mods.jei.JEI.removeAndHide(juice);
}


// prevent Cuisine juice bottles from stacking

<cuisine:glass_bottle>.maxStackSize = 1;


// Recipe, tooltip, and JEI entry for cactus juice

val tinyCactus = <biomesoplenty:plant_1:6>;
val cactusJuice = <cuisine:glass_bottle>.withTag({Fluid: {FluidName: "cuisine_juice", Amount: 250, Tag: {material: "cactus"}}});
cactusJuice.addTooltip("Refreshing, but mildly toxic");

recipes.addShapeless("cactus_juice", cactusJuice, [tinyCactus,tinyCactus,tinyCactus,<minecraft:glass_bottle>]);

mods.jei.JEI.addItem(cactusJuice);