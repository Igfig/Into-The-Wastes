// add new work knives

<ore:toolWorkBlade>.addItems([
	<mysticalworld:amethyst_knife>,
	<mysticalworld:copper_knife>,
	<mysticalworld:silver_knife>,
	<roots:iron_knife>,
	<roots:gold_knife>,
	<roots:runed_dagger>
]);


// oredicts for the primitive tools

<ore:toolPrimitiveAxe>.addItems([
	<primitivetools:primitive_hatchet_cbf>,
	<primitivetools:primitive_hatchet_cbl>,
	<primitivetools:primitive_hatchet_cbv>,
	<primitivetools:primitive_hatchet_cwf>,
	<primitivetools:primitive_hatchet_cwl>,
	<primitivetools:primitive_hatchet_cwv>
]);

<ore:toolPrimitiveBlade>.addItems([
	<primitivetools:primitive_knife_cbf>,
	<primitivetools:primitive_knife_cbl>,
	<primitivetools:primitive_knife_cbv>,
	<primitivetools:primitive_knife_cwf>,
	<primitivetools:primitive_knife_cwl>,
	<primitivetools:primitive_knife_cwv>
]); // note that all of these are already in <ore:toolWorkBlade>

<ore:toolPrimitiveHoe>.addItems([
	<primitivetools:primitive_hoe_cbf>,
	<primitivetools:primitive_hoe_cbl>,
	<primitivetools:primitive_hoe_cbv>,
	<primitivetools:primitive_hoe_cwf>,
	<primitivetools:primitive_hoe_cwl>,
	<primitivetools:primitive_hoe_cwv>
]);

<ore:toolPrimitivePick>.addItems([
	<primitivetools:primitive_pick_cbf>,
	<primitivetools:primitive_pick_cbl>,
	<primitivetools:primitive_pick_cbv>,
	<primitivetools:primitive_pick_cwf>,
	<primitivetools:primitive_pick_cwl>,
	<primitivetools:primitive_pick_cwv>
]);

<ore:toolPrimitiveShovel>.addItems([
	<primitivetools:primitive_spade_cbf>,
	<primitivetools:primitive_spade_cbl>,
	<primitivetools:primitive_spade_cbv>,
	<primitivetools:primitive_spade_cwf>,
	<primitivetools:primitive_spade_cwl>,
	<primitivetools:primitive_spade_cwv>
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


// and replace any recipes that use them

recipes.replaceAllOccurences(<minecraft:wooden_axe>, <ore:toolPrimitiveAxe>);
recipes.replaceAllOccurences(<minecraft:stone_axe>, <ore:toolPrimitiveAxe>);
recipes.replaceAllOccurences(<minecraft:wooden_sword>, <ore:toolPrimitiveBlade>);
recipes.replaceAllOccurences(<minecraft:stone_sword>, <ore:toolPrimitiveBlade>);
recipes.replaceAllOccurences(<minecraft:wooden_hoe>, <ore:toolPrimitiveHoe>);
recipes.replaceAllOccurences(<minecraft:stone_hoe>, <ore:toolPrimitiveHoe>);
recipes.replaceAllOccurences(<minecraft:wooden_pickaxe>, <ore:toolPrimitivePick>);
recipes.replaceAllOccurences(<minecraft:stone_pickaxe>, <ore:toolPrimitivePick>);
recipes.replaceAllOccurences(<minecraft:wooden_shovel>, <ore:toolPrimitiveShovel>);
recipes.replaceAllOccurences(<minecraft:stone_shovel>, <ore:toolPrimitiveShovel>);


// add a missing recipe

recipes.addShaped(<primitivetools:primitive_pick_cbl>, [
	[<primitivetools:flint_shard>,<primitivetools:leather_strip>],
	[<minecraft:bone>,<primitivetools:flint_flake>]]);
	
	
// rename vine ropes because why not

<primitivetools:cordage_vine>.displayName = "Vine Twine";