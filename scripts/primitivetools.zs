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


// add a missing tool recipe

recipes.addShaped(<primitivetools:primitive_pick_cbl>, [
	[<primitivetools:flint_shard>,<primitivetools:leather_strip>],
	[<minecraft:bone>,<primitivetools:flint_flake>]]);


// usage hint for hammers

<ore:toolMalletStone>.addTooltip("Works just like a pickaxe");

	
// rename vine ropes because they aren't climbable like other ropes

<primitivetools:cordage_vine>.displayName = "Vine Twine";