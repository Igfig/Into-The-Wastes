// add new work knives

<ore:toolWorkBlade>.addItems([
	<mysticalworld:amethyst_knife>,
	<mysticalworld:copper_knife>,
	<mysticalworld:silver_knife>,
	<roots:iron_knife>,
	<roots:gold_knife>
]);


// add recipes for some missing materials

recipes.addShapeless(<minecraft:stick>, [<ore:treeSapling>]);
recipes.addShapeless(<primitivetools:cordage_vine>, [<ore:vine>,<ore:vine>,<ore:vine>]);
recipes.addShapeless(<primitivetools:leather_strip> * 3, [<ore:leather>,<ore:toolWorkBlade>.reuse()]);


// remove wood and stone tools

mods.jei.JEI.removeAndHide(<minecraft:wooden_sword>);
mods.jei.JEI.removeAndHide(<minecraft:wooden_shovel>);
mods.jei.JEI.removeAndHide(<minecraft:wooden_pickaxe>);
mods.jei.JEI.removeAndHide(<minecraft:wooden_axe>);
mods.jei.JEI.removeAndHide(<minecraft:wooden_hoe>);
mods.jei.JEI.removeAndHide(<minecraft:stone_sword>);
mods.jei.JEI.removeAndHide(<minecraft:stone_shovel>);
mods.jei.JEI.removeAndHide(<minecraft:stone_pickaxe>);
mods.jei.JEI.removeAndHide(<minecraft:stone_axe>);
mods.jei.JEI.removeAndHide(<minecraft:stone_hoe>);