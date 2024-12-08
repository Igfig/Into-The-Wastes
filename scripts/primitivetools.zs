import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;


val flint = <minecraft:flint>;
val twine = <primitivetools:cordage_fiber>;
val vine = <primitivetools:cordage_vine>;
val strip = <primitivetools:leather_strip>;

<ore:cordage>.addItems([twine, vine, strip, <minecraft:string>]);


// hide unused bone needle and flint pieces, and remove recipes using them

mods.jei.JEI.removeAndHide(<primitivetools:bone_needle>);
mods.jei.JEI.removeAndHide(<primitivetools:flint_shard>);
mods.jei.JEI.removeAndHide(<primitivetools:flint_flake>);
mods.jei.JEI.removeAndHide(<primitivetools:flint_point>);

recipes.removeByInput(<primitivetools:flint_shard>);
recipes.removeByInput(<primitivetools:flint_flake>);
recipes.removeByInput(<primitivetools:flint_point>);



// add new work knives

<ore:toolWorkBlade>.addItems([
	<mysticalworld:amethyst_knife>,
	<mysticalworld:copper_knife>,
	<mysticalworld:silver_knife>,
	<roots:iron_knife>,
	<roots:gold_knife>,
	<roots:runed_dagger>
]);


// new recipes for all primitive tools

val axes = {
	<primitivetools:primitive_hatchet_cbf>: [<minecraft:bone>, twine],
	<primitivetools:primitive_hatchet_cbl>: [<minecraft:bone>, strip],
	<primitivetools:primitive_hatchet_cbv>: [<minecraft:bone>, vine],
	<primitivetools:primitive_hatchet_cwf>: [<ore:stickWood>, twine],
	<primitivetools:primitive_hatchet_cwl>: [<ore:stickWood>, strip],
	<primitivetools:primitive_hatchet_cwv>: [<ore:stickWood>, vine]
} as IIngredient[][IItemStack];

val knives = {
	<primitivetools:primitive_knife_cbf>: [<minecraft:bone>, twine],
	<primitivetools:primitive_knife_cbl>: [<minecraft:bone>, strip],
	<primitivetools:primitive_knife_cbv>: [<minecraft:bone>, vine],
	<primitivetools:primitive_knife_cwf>: [<ore:stickWood>, twine],
	<primitivetools:primitive_knife_cwl>: [<ore:stickWood>, strip],
	<primitivetools:primitive_knife_cwv>: [<ore:stickWood>, vine]
} as IIngredient[][IItemStack];

val hoes = {
	<primitivetools:primitive_hoe_cbf>: [<minecraft:bone>, twine],
	<primitivetools:primitive_hoe_cbl>: [<minecraft:bone>, strip],
	<primitivetools:primitive_hoe_cbv>: [<minecraft:bone>, vine],
	<primitivetools:primitive_hoe_cwf>: [<ore:stickWood>, twine],
	<primitivetools:primitive_hoe_cwl>: [<ore:stickWood>, strip],
	<primitivetools:primitive_hoe_cwv>: [<ore:stickWood>, vine]
} as IIngredient[][IItemStack];

val picks = {
	<primitivetools:primitive_pick_cbf>: [<minecraft:bone>, twine],
	<primitivetools:primitive_pick_cbl>: [<minecraft:bone>, strip],
	<primitivetools:primitive_pick_cbv>: [<minecraft:bone>, vine],
	<primitivetools:primitive_pick_cwf>: [<ore:stickWood>, twine],
	<primitivetools:primitive_pick_cwl>: [<ore:stickWood>, strip],
	<primitivetools:primitive_pick_cwv>: [<ore:stickWood>, vine]
} as IIngredient[][IItemStack];

val shovels = {
	<primitivetools:primitive_spade_cbf>: [<minecraft:bone>, twine],
	<primitivetools:primitive_spade_cbl>: [<minecraft:bone>, strip],
	<primitivetools:primitive_spade_cbv>: [<minecraft:bone>, vine],
	<primitivetools:primitive_spade_cwf>: [<ore:stickWood>, twine],
	<primitivetools:primitive_spade_cwl>: [<ore:stickWood>, strip],
	<primitivetools:primitive_spade_cwv>: [<ore:stickWood>, vine]
} as IIngredient[][IItemStack];

val hammers = {
	<primitivetools:primitive_hammer_swf>: [<minecraft:stone:5>, <ore:stickWood>, twine],
	<primitivetools:primitive_hammer_swv>: [<minecraft:stone:5>, <ore:stickWood>, vine],
	<primitivetools:primitive_hammer_swl>: [<minecraft:stone:5>, <ore:stickWood>, strip],
	<primitivetools:primitive_hammer_sbf>: [<minecraft:stone:5>, <minecraft:bone>, twine],
	<primitivetools:primitive_hammer_sbv>: [<minecraft:stone:5>, <minecraft:bone>, vine],
	<primitivetools:primitive_hammer_sbl>: [<minecraft:stone:5>, <minecraft:bone>, strip],
	<primitivetools:primitive_hammer_dwf>: [<minecraft:stone:3>, <ore:stickWood>, twine],
	<primitivetools:primitive_hammer_dwv>: [<minecraft:stone:3>, <ore:stickWood>, vine],
	<primitivetools:primitive_hammer_dwl>: [<minecraft:stone:3>, <ore:stickWood>, strip],
	<primitivetools:primitive_hammer_dbf>: [<minecraft:stone:3>, <minecraft:bone>, twine],
	<primitivetools:primitive_hammer_dbv>: [<minecraft:stone:3>, <minecraft:bone>, vine],
	<primitivetools:primitive_hammer_dbl>: [<minecraft:stone:3>, <minecraft:bone>, strip],
	<primitivetools:primitive_hammer_gwf>: [<minecraft:stone:1>, <ore:stickWood>, twine],
	<primitivetools:primitive_hammer_gwv>: [<minecraft:stone:1>, <ore:stickWood>, vine],
	<primitivetools:primitive_hammer_gwl>: [<minecraft:stone:1>, <ore:stickWood>, strip],
	<primitivetools:primitive_hammer_gbf>: [<minecraft:stone:1>, <minecraft:bone>, twine],
	<primitivetools:primitive_hammer_gbv>: [<minecraft:stone:1>, <minecraft:bone>, vine],
	<primitivetools:primitive_hammer_gbl>: [<minecraft:stone:1>, <minecraft:bone>, strip]
} as IIngredient[][IItemStack];

val spears = {
	<primitivetools:primitive_spear_cwf>: twine,
	<primitivetools:primitive_spear_cwl>: strip,
	<primitivetools:primitive_spear_cwv>: vine
} as IIngredient[IItemStack];


for tool, parts in axes {
	val shaft = parts[0];
	val binding = parts[1];
	recipes.remove(tool); // although these recipes should have already been removed tbh
	recipes.addShapedMirrored(tool, [[flint, flint], [shaft, binding]]);
}
for tool, parts in knives {
	val shaft = parts[0];
	val binding = parts[1];
	recipes.remove(tool);
	recipes.addShapedMirrored(tool, [[binding, flint], [shaft, null]]);
}
for tool, parts in hoes {
	val shaft = parts[0];
	val binding = parts[1];
	recipes.remove(tool);
	recipes.addShapedMirrored(tool, [[flint, binding], [shaft, binding]]);
}
for tool, parts in picks {
	val shaft = parts[0];
	val binding = parts[1];
	recipes.remove(tool);
	recipes.addShapedMirrored(tool, [[flint, binding], [shaft, flint]]);
}
for tool, parts in shovels {
	val shaft = parts[0];
	val binding = parts[1];
	recipes.remove(tool);
	recipes.addShapedMirrored(tool, [[binding, flint], [shaft, binding]]);
}
for tool, parts in hammers {
	val head = parts[0];
	val shaft = parts[1];
	val binding = parts[2];
	recipes.remove(tool);
	recipes.addShapedMirrored(tool, [[head, binding], [shaft, head]]);
}
for tool, binding in spears {
	recipes.remove(tool);
	recipes.addShapedMirrored(tool, [[binding, flint], [<ore:stickWood>, <ore:stickWood>]]);
	tool.addTooltip("Not a melee weapon");
}


// oredicts for the primitive tools

<ore:toolPrimitiveAxe>.addItems(axes.keys);
<ore:toolPrimitiveBlade>.addItems(knives.keys); // note that all of these are already in <ore:toolWorkBlade>
<ore:toolPrimitiveHoe>.addItems(hoes.keys);
<ore:toolPrimitivePick>.addItems(picks.keys);
<ore:toolPrimitiveShovel>.addItems(shovels.keys);
<ore:toolMalletStone>.addItems(hammers.keys);


// add recipes for some missing materials

recipes.addShapeless(<minecraft:stick>, [<ore:treeSapling>]);
recipes.addShapeless(vine, [<ore:vine>,<ore:vine>,<ore:vine>]);
recipes.addShapeless(<primitivetools:leather_strip> * 3, [<ore:leather>,<ore:toolWorkBlade>.reuse()]);


// usage hints

<ore:toolPrimitiveAxe>.addTooltip("Works just like an axe");
<ore:toolPrimitiveShovel>.addTooltip("Works just like a shovel");
<ore:toolMalletStone>.addTooltip("Works just like a pickaxe");
<primitivetools:plant_fiber>.addTooltip("Drops from tall grass and tumbleweeds");

	
// rename vine "ropes" because they aren't climbable like other ropes

vine.displayName = "Vine Twine";


// additional uses for primitive materials

recipes.replaceAllOccurences(<minecraft:string>, <ore:string> | twine | strip, <inspirations:rope>);
recipes.replaceAllOccurences(<minecraft:string>, <ore:cordage>, <minecraft:book>);
recipes.replaceAllOccurences(<minecraft:string>, <ore:cordage>, <futuremc:scaffolding>);


// bring back original arrow recipe

recipes.addShaped("arrow", <minecraft:arrow> * 4, [
	[<minecraft:flint>], 
	[<ore:stickWood>], 
	[<ore:feather>]]);