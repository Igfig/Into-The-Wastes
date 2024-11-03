import mods.chisel.Carving;
import crafttweaker.item.IItemStack;

// remove Chisel Plus utility items

mods.jei.JEI.removeAndHide(<chisel_plus:chisel_machine>);
mods.jei.JEI.removeAndHide(<chisel_plus:sewing_needle>);
mods.jei.JEI.removeAndHide(<chisel_plus:spool_of_string>);
mods.jei.JEI.removeAndHide(<chisel_plus:sewing_kit>);
mods.jei.JEI.removeAndHide(<chisel_plus:chisel>);
mods.jei.JEI.removeAndHide(<chisel_plus:amber_ore>);
mods.jei.JEI.removeAndHide(<chisel_plus:amber_stone>);
mods.jei.JEI.removeAndHide(<chisel_plus:amber_block>);
<chisel_plus:amber_ore>.addTooltip("DISABLED. DOES NOT DROP ANYTHING");


// remove some Chisel Plus blocks

mods.jei.JEI.removeAndHide(<chisel_plus:warning_acid>);
mods.jei.JEI.removeAndHide(<chisel_plus:warning_bio>);
mods.jei.JEI.removeAndHide(<chisel_plus:warning_cryogenic>);
mods.jei.JEI.removeAndHide(<chisel_plus:warning_death>);
mods.jei.JEI.removeAndHide(<chisel_plus:warning_explosion>);
mods.jei.JEI.removeAndHide(<chisel_plus:warning_fall>);
mods.jei.JEI.removeAndHide(<chisel_plus:warning_falling>);
mods.jei.JEI.removeAndHide(<chisel_plus:warning_generic>);
mods.jei.JEI.removeAndHide(<chisel_plus:warning_illuminati>);
mods.jei.JEI.removeAndHide(<chisel_plus:warning_no_entry>);
mods.jei.JEI.removeAndHide(<chisel_plus:warning_oxygen>);
mods.jei.JEI.removeAndHide(<chisel_plus:warning_rad>);
mods.jei.JEI.removeAndHide(<chisel_plus:warning_sound>);
mods.jei.JEI.removeAndHide(<chisel_plus:warning_underconstruction>);
mods.jei.JEI.removeAndHide(<chisel_plus:warning_voltage>);
mods.jei.JEI.removeAndHide(<chisel_plus:warning_fire>);

mods.jei.JEI.removeAndHide(<chisel_plus:carpet_black>);
mods.jei.JEI.removeAndHide(<chisel_plus:carpet_brown>);
mods.jei.JEI.removeAndHide(<chisel_plus:carpet_dark_blue>);
mods.jei.JEI.removeAndHide(<chisel_plus:carpet_dark_grey>);
mods.jei.JEI.removeAndHide(<chisel_plus:carpet_green>);
mods.jei.JEI.removeAndHide(<chisel_plus:carpet_grey>);
mods.jei.JEI.removeAndHide(<chisel_plus:carpet_light_blue>);
mods.jei.JEI.removeAndHide(<chisel_plus:carpet_light_green>);
mods.jei.JEI.removeAndHide(<chisel_plus:carpet_lily>);
mods.jei.JEI.removeAndHide(<chisel_plus:carpet_orange>);
mods.jei.JEI.removeAndHide(<chisel_plus:carpet_pink>);
mods.jei.JEI.removeAndHide(<chisel_plus:carpet_purple>);
mods.jei.JEI.removeAndHide(<chisel_plus:carpet_red>);
mods.jei.JEI.removeAndHide(<chisel_plus:carpet_teal>);
mods.jei.JEI.removeAndHide(<chisel_plus:carpet_white>);
mods.jei.JEI.removeAndHide(<chisel_plus:carpet_yellow>);

mods.jei.JEI.removeAndHide(<chisel_plus:carpet_wool_black>);
mods.jei.JEI.removeAndHide(<chisel_plus:carpet_wool_brown>);
mods.jei.JEI.removeAndHide(<chisel_plus:carpet_wool_dark_blue>);
mods.jei.JEI.removeAndHide(<chisel_plus:carpet_wool_dark_grey>);
mods.jei.JEI.removeAndHide(<chisel_plus:carpet_wool_green>);
mods.jei.JEI.removeAndHide(<chisel_plus:carpet_wool_grey>);
mods.jei.JEI.removeAndHide(<chisel_plus:carpet_wool_light_blue>);
mods.jei.JEI.removeAndHide(<chisel_plus:carpet_wool_light_green>);
mods.jei.JEI.removeAndHide(<chisel_plus:carpet_wool_lily>);
mods.jei.JEI.removeAndHide(<chisel_plus:carpet_wool_orange>);
mods.jei.JEI.removeAndHide(<chisel_plus:carpet_wool_pink>);
mods.jei.JEI.removeAndHide(<chisel_plus:carpet_wool_purple>);
mods.jei.JEI.removeAndHide(<chisel_plus:carpet_wool_red>);
mods.jei.JEI.removeAndHide(<chisel_plus:carpet_wool_teal>);
mods.jei.JEI.removeAndHide(<chisel_plus:carpet_wool_white>);
mods.jei.JEI.removeAndHide(<chisel_plus:carpet_wool_yellow>);


// functions

function addVariations(groupName as string, blocks as IItemStack[]) {
	for block in blocks {	
		Carving.addVariation(groupName, block);
	}
}
function addIdVariations(groupName as string, blocks as int[IItemStack]) {
	for block, idCount in blocks {
		for i in 0 to idCount {
			Carving.addVariation(groupName, block.definition.makeStack(i));
		}
	}
}


// put all Chisel Plus recipes in appropriate chisel groups

Carving.addGroup("birdstone");
addVariations("birdstone", [
	<chisel_plus:bird_stone_dark_panel>,
	<chisel_plus:bird_stone_french_creeper>,
	<chisel_plus:bird_stone_smooth_creeper>,
	<chisel_plus:bird_stone_french>,
	<chisel_plus:bird_stone_french_alt>,
	<chisel_plus:bird_stone_marker>,
	<chisel_plus:bird_stone_dent>,
	<chisel_plus:bird_stone_ornate>,
	<chisel_plus:bird_stone_ornate_alt>,
	<chisel_plus:bird_stone_emboss>,
	<chisel_plus:bird_stone_fourtile>,
	<chisel_plus:bird_stone_small_brick>,
	<chisel_plus:bird_stone_small_tile>,
	<chisel_plus:bird_stone_small_broken>,
	<chisel_plus:bird_stone_rough>,
	<chisel_plus:bird_stone_smooth>]);
	
addVariations("purpur", [
	<chisel_plus:purpur_arcane>,
	<chisel_plus:purpur_bricks>,
	<chisel_plus:purpur_cobble_stone>,
	<chisel_plus:purpur_large_tile>,
	<chisel_plus:purpur_ornate>,
	<chisel_plus:purpur_prismatic>,
	<chisel_plus:purpur_tile>,
	<chisel_plus:purpur_tile_broken>]);
	
addVariations("lavastone", [
	<chisel_plus:lavastone_black_brick_1>,
	<chisel_plus:lavastone_black_brick_2>,
	<chisel_plus:lavastone_cobble_brick>,
	<chisel_plus:lavastone_tiles>,
	<chisel_plus:lavastone_chaotic>,
	<chisel_plus:lavastone_creeper>,
	<chisel_plus:lavastone_dark>,
	<chisel_plus:lavastone_panel>,
	<chisel_plus:lavastone_panel_ornate>,
	<chisel_plus:lavastone_nether>]);

recipes.addShaped("grimstone", <chisel_plus:grimstone> * 8, [
	[<ore:pestleStone>,<ore:pestleStone>,<ore:pestleStone>],
	[<ore:pestleStone>,<ore:coal>,       <ore:pestleStone>],
	[<ore:pestleStone>,<ore:pestleStone>,<ore:pestleStone>]]);
	
Carving.addGroup("grimstone");
addVariations("grimstone", [
	<chisel_plus:grimstone_large_bricks>,
	<chisel_plus:grimstone_blocks>,
	<chisel_plus:grimstone_blocks_rough>,
	<chisel_plus:grimstone_blocks_rough_alt>,
	<chisel_plus:grimstone_brick>,
	<chisel_plus:grimstone_chunks>,
	<chisel_plus:grimstone_construction>,
	<chisel_plus:grimstone_fancy_tiles>,
	<chisel_plus:grimstone_flaky>,
	<chisel_plus:grimstone_chiseled>,
	<chisel_plus:grimstone_platform>,
	<chisel_plus:grimstone_platform_tiles>,
	<chisel_plus:grimstone_tiles>,
	<chisel_plus:grimstone_plate>,
	<chisel_plus:grimstone_plate_rough>,
	<chisel_plus:grimstone_smooth>,
	<chisel_plus:grimstone>,
	<chisel_plus:grimstone_hate>]);
	
addVariations("glowstone", [
	<chisel_plus:lightstone_cobblestone>,
	<chisel_plus:lightstone_growth>,
	<chisel_plus:lightstone_layers>,
	<chisel_plus:lightstone_bismuth>,
	<chisel_plus:lightstone_bismuth_panel>,
	<chisel_plus:lightstone_sulphur_cobble>,
	<chisel_plus:lightstone_sulphur_rocky>,
	<chisel_plus:lightstone_sulphur_shale>,
	<chisel_plus:lightstone_sulphur_glass>,
	<chisel_plus:lightstone_sulphur_ornate>,
	<chisel_plus:lightstone_sulphur_corroded>,
	<chisel_plus:lightstone_tile_corroded>,
	<chisel_plus:lightstone_sulphur_tile>,
	<chisel_plus:lightstone_sulphur_weave_lantern_light>,
	<chisel_plus:lightstone_sulphur_neon>]);

recipes.replaceAllOccurences(<minecraft:dye>, <ore:dyePurple>, <chisel_plus:arcane_thaumcraft>);

Carving.addGroup("arcane_brick");
addVariations("arcane_brick", [
	<chisel_plus:arcane_big_brick>,
	<chisel_plus:arcane_border>,
	<chisel_plus:arcane_border_brain>,
	<chisel_plus:arcane_conduit_glow>,
	<chisel_plus:arcane_crack>,
	<chisel_plus:arcane_moon_engrave>,
	<chisel_plus:arcane_moon_glow>,
	<chisel_plus:arcane_tile>,
	<chisel_plus:arcane_matrix>,
	<chisel_plus:arcane_runes>,
	<chisel_plus:arcane_runes_glow>,
	<chisel_plus:arcane_thaumcraft>]);

addVariations("bricks", [
	<chisel_plus:brick_aged>,
	<chisel_plus:brick_large>,
	<chisel_plus:brick_mortar_less>,
	<chisel_plus:brick_varied>,
	<chisel_plus:brick_yellow>]);

recipes.addShaped("holystone", <chisel_plus:holystone> * 8, [
	[<ore:pestleStone>,<ore:pestleStone>,<ore:pestleStone>],
	[<ore:pestleStone>,<ore:gemQuartz>,  <ore:pestleStone>],
	[<ore:pestleStone>,<ore:pestleStone>,<ore:pestleStone>]]);

Carving.addGroup("holystone");
addVariations("holystone", [
	<chisel_plus:holystone>,
	<chisel_plus:holystone_blocks>,
	<chisel_plus:holystone_blocks_rough>,
	<chisel_plus:holystone_brick>,
	<chisel_plus:holystone_chiseled>,
	<chisel_plus:holystone_construction>,
	<chisel_plus:holystone_fancy_tiles>,
	<chisel_plus:holystone_large_bricks>,
	<chisel_plus:holystone_love>,
	<chisel_plus:holystone_plate>,
	<chisel_plus:holystone_plate_rough>,
	<chisel_plus:holystone_platform>,
	<chisel_plus:holystone_platform_tiles>,
	<chisel_plus:holystone_smooth>]);

Carving.addGroup("mechanical");
addVariations("mechanical", [
	<chisel_plus:mechanical_gear>,
	<chisel_plus:mechanical_hex>,
	<chisel_plus:mechanical_vent>,
	<chisel_plus:mechanical_vent_glow>]);

recipes.remove(<chisel_plus:waterstone_black_brick>);

addVariations("waterstone", [
	<chisel_plus:waterstone_black_brick>,
	<chisel_plus:waterstone_chaotic>,
	<chisel_plus:waterstone_cobble>,
	<chisel_plus:waterstone_creeper>,
	<chisel_plus:waterstone_panel>,
	<chisel_plus:waterstone_panel_ornate>,
	<chisel_plus:waterstone_tiles>]);

Carving.addGroup("torch");
Carving.addVariation("torch", <minecraft:torch>);
Carving.addVariation("torch", <iceandfire:burnt_torch>);
addVariations("torch", [
	<chisel_plus:torch_candle>,
	<chisel_plus:torch_candel_2>,
	<chisel_plus:torch_lantern_1>,
	<chisel_plus:torch_lantern_2>,
	<chisel_plus:torch_lantern_3>,
	<chisel_plus:torch_lantern_4>,
	<chisel_plus:torch_lamp_1>,
	<chisel_plus:torch_lamp_2>,
	<chisel_plus:torch_bulb_1>,
	<chisel_plus:torch_bulb_2>]);

Carving.addGroup("leaves");
addVariations("leaves", [
	<minecraft:leaves:0>,
	<chisel_plus:leaves_chirstmas_balls>,
	<chisel_plus:leaves_christmas_balls_opaque>,
	<chisel_plus:leaves_christmas_lights>,
	<chisel_plus:leaves_christmas_lights_opaque>,
	<chisel_plus:leaves_dead>,
	<chisel_plus:leaves_dead_opaque>,
	<chisel_plus:leaves_fancy>,
	<chisel_plus:leaves_fancy_opaque>,
	<chisel_plus:leaves_pink_pedals>,
	<chisel_plus:leaves_pink_pedals_opaque>,
	<chisel_plus:leaves_red_roses>,
	<chisel_plus:leaves_red_roses_opaque>,
	<chisel_plus:leaves_white_roses>,
	<chisel_plus:leaves_white_roses_opaque>]);

addVariations("stonebrick", [
	<chisel_plus:stone_brick_chaotic>,
	<chisel_plus:stone_brick_chaotic_brick>,
	<chisel_plus:stone_brick_fancy>,
	<chisel_plus:stone_brick_full_smooth>,
	<chisel_plus:stone_brick_large_brick>,
	<chisel_plus:stone_brick_large_ornate>,
	<chisel_plus:stone_brick_ornate>,
	<chisel_plus:stone_brick_ornate_panel>,
	<chisel_plus:stone_brick_panel_hard>,
	<chisel_plus:stone_brick_posion>,
	<chisel_plus:stone_brick_rough_brick>,
	<chisel_plus:stone_brick_small_brick>,
	<chisel_plus:stone_brick_chaotic_small>,
	<chisel_plus:stone_brick_sunken>]);

Carving.addGroup("fantasy_block");
addVariations("fantasy_block", [
	<chisel_plus:fantasy_block>,
	<chisel_plus:fantasy_bricks>,
	<chisel_plus:fantasy_brick_faded>,
	<chisel_plus:fantasy_bricks_chaotic>,
	<chisel_plus:fantasy_bricks_wear>,
	<chisel_plus:fantasy_brick>,
	<chisel_plus:fantasy_brick_wear>,
	<chisel_plus:fantasy_decor_block>,
	<chisel_plus:fantasy_decor>,
	<chisel_plus:fantasy_gold_decor_1>,
	<chisel_plus:fantasy_gold_decor_2>,
	<chisel_plus:fantasy_gold_decor_3>,
	<chisel_plus:fantasy_gold_decor_4>,
	<chisel_plus:fantasy_pillar_decorated>,
	<chisel_plus:fantasy_pillar>,
	<chisel_plus:fantasy_plate>]);

recipes.remove(<chisel:laboratory>); // normal recipe conflicts with holystone
recipes.addShaped("laboratory", <chisel:laboratory> * 4, [
	[<minecraft:concrete:0>,<minecraft:concrete:0>], // white concrete
	[<minecraft:concrete:0>,<minecraft:concrete:0>]]);


// add all pumpkin faces to appropriate groups

Carving.addGroup("pumpkin");
Carving.addGroup("pumpkin_lit");

Carving.addVariation("pumpkin", <minecraft:pumpkin>);
Carving.addVariation("pumpkin_lit", <minecraft:lit_pumpkin>);

for i in 1 to 17 {
	Carving.addVariation("pumpkin", itemUtils.getItem("chisel_plus:pumpkin_face_" ~ i));
	Carving.addVariation("pumpkin_lit", itemUtils.getItem("chisel_plus:pumpkin_face_on_" ~ i));
}


// add all vanilla carpet variants to appropriate chisel groups

val woolColors = ["white", "orange", "magenta", "lightblue", "yellow", "lime", "pink", "gray", "lightgray", "cyan", "purple", "blue", "brown", "green", "red", "black"] as string[];

for i, color in woolColors {
	// there seems to be a null entry in each carpet chisel group, which I can't remove. (Probably the vanilla carpet but it got bugged somehow?)
	// So I destroy the group and remake it.

	Carving.removeGroup("carpet_" ~ color);
	Carving.addGroup("carpet_" ~ color);

	Carving.addVariation("carpet_" ~ color, itemUtils.getItem("minecraft:carpet", i));
	Carving.addVariation("carpet_" ~ color, itemUtils.getItem("chisel:carpet_" ~ color, 0));
	Carving.addVariation("carpet_" ~ color, itemUtils.getItem("chisel:carpet_" ~ color, 1));
	
}


// also recipes for woolen clay

val woolenClayColors = ["white", "orange", "magenta", "light_b_lue", "yellow", "lime", "pink", "grey", "light_grey", "cyan", "purple", "blue", "brown", "green", "red", "black"] as string[];

recipes.remove(<chisel_plus:woolen_clay_white>);

for i, color in woolenClayColors {
	recipes.addShaped("woolen_clay" ~ color, itemUtils.getItem("chisel_plus:woolen_clay_" ~ color) * 4, [
	[null, <ore:clayBall>, null],
	[<ore:clayBall>, itemUtils.getItem("minecraft:wool", i), <ore:clayBall>],
	[null, <ore:clayBall>, null]]);
}


// remove elemental soil chisel recipe

Carving.removeGroup("rootsRunicSoilTypes");


// add missing display names

<unlimitedchiselworks:chisel_stonebrick_railcraft_brick_nether_0>.displayName = "Nether Brick";
<unlimitedchiselworks:chisel_stonebrick1_railcraft_brick_nether_0>.displayName = "Nether Brick";
<unlimitedchiselworks:chisel_stonebrick2_railcraft_brick_nether_0>.displayName = "Nether Brick";
<unlimitedchiselworks:chisel_stonebrick_railcraft_brick_red_nether_0>.displayName = "Red Nether Brick";
<unlimitedchiselworks:chisel_stonebrick1_railcraft_brick_red_nether_0>.displayName = "Red Nether Brick";
<unlimitedchiselworks:chisel_stonebrick2_railcraft_brick_red_nether_0>.displayName = "Red Nether Brick";


// fix chisel groups for nether bricks

Carving.removeGroup("railcraft:brick_nether_0");
Carving.removeGroup("railcraft:brick_red_nether_0");
Carving.addGroup("rednetherbrick");

val netherBrickIds = {
	<unlimitedchiselworks:chisel_stonebrick_railcraft_brick_nether_0>: 16,
	<unlimitedchiselworks:chisel_stonebrick1_railcraft_brick_nether_0>: 10,
	<unlimitedchiselworks:chisel_stonebrick2_railcraft_brick_nether_0>: 10
} as int[IItemStack];

val redNetherBrickIds = {
	<minecraft:red_nether_brick>: 1,
	<unlimitedchiselworks:chisel_stonebrick_railcraft_brick_red_nether_0>: 16,
	<unlimitedchiselworks:chisel_stonebrick1_railcraft_brick_red_nether_0>: 10,
	<unlimitedchiselworks:chisel_stonebrick2_railcraft_brick_red_nether_0>: 10
} as int[IItemStack];

addIdVariations("netherbrick", netherBrickIds);
addIdVariations("rednetherbrick", redNetherBrickIds);