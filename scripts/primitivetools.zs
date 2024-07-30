val twine = <primitivetools:cordage_fiber>;
val vine = <primitivetools:cordage_vine>;
val strip = <primitivetools:leather_strip>;


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

<ore:toolMalletStone>.addItems([
	<primitivetools:primitive_hammer_swf>,
	<primitivetools:primitive_hammer_swv>,
	<primitivetools:primitive_hammer_swl>,
	<primitivetools:primitive_hammer_sbf>,
	<primitivetools:primitive_hammer_sbv>,
	<primitivetools:primitive_hammer_sbl>,
	<primitivetools:primitive_hammer_dwf>,
	<primitivetools:primitive_hammer_dwv>,
	<primitivetools:primitive_hammer_dwl>,
	<primitivetools:primitive_hammer_dbf>,
	<primitivetools:primitive_hammer_dbv>,
	<primitivetools:primitive_hammer_dbl>,
	<primitivetools:primitive_hammer_gwf>,
	<primitivetools:primitive_hammer_gwv>,
	<primitivetools:primitive_hammer_gwl>,
	<primitivetools:primitive_hammer_gbf>,
	<primitivetools:primitive_hammer_gbv>,
	<primitivetools:primitive_hammer_gbl>
]);


// add recipes for some missing materials

recipes.addShapeless(<minecraft:stick>, [<ore:treeSapling>]);
recipes.addShapeless(vine, [<ore:vine>,<ore:vine>,<ore:vine>]);
recipes.addShapeless(<primitivetools:leather_strip> * 3, [<ore:leather>,<ore:toolWorkBlade>.reuse()]);


// add a missing tool recipe

recipes.addShaped(<primitivetools:primitive_pick_cbl>, [
	[<primitivetools:flint_shard>,<primitivetools:leather_strip>],
	[<minecraft:bone>,<primitivetools:flint_flake>]]);


// usage hints

<ore:toolPrimitiveAxe>.addTooltip("Works just like an axe");
<ore:toolPrimitiveShovel>.addTooltip("Works just like a shovel");
<ore:toolMalletStone>.addTooltip("Works just like a pickaxe");
<primitivetools:plant_fiber>.addTooltip("Drops from tall grass");

	
// rename vine ropes because they aren't climbable like other ropes

vine.displayName = "Vine Twine";

// and replace the recipe for Inspirations vine ropes
recipes.remove(<inspirations:rope:2>); // I prefer the recipe below


// additional uses for primitive materials

recipes.addShaped("twine_rope", <inspirations:rope> * 2, [
	[twine], 
	[twine], 
	[twine]]);
recipes.addShaped("strip_rope", <inspirations:rope> * 3, [
	[strip], 
	[strip], 
	[strip]]);
recipes.addShaped("vine_rope", <inspirations:rope:2> * 3, [
	[vine], 
	[vine], 
	[vine]]);


// worse arrow recipe, using leftover flint flakes and shards

recipes.addShaped("shard_arrow", <minecraft:arrow> * 2, [
	[<ore:shardFlint> | <ore:flakeFlint>], 
	[<ore:stickWood>], 
	[<ore:feather>]]);
	
	
// bring back original arrow recipe

recipes.removeByRecipeName("primitivetools:arrow");
recipes.addShaped("arrow", <minecraft:arrow> * 4, [
	[<minecraft:flint> | <ore:pointFlint>], 
	[<ore:stickWood>], 
	[<ore:feather>]]);
	
	
// hide unused bone needle

mods.jei.JEI.removeAndHide(<primitivetools:bone_needle>);