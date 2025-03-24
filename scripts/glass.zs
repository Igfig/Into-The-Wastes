import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.liquid.ILiquidStack;

val liquidGlasses = [<liquid:glass_white>,<liquid:glass_orange>,<liquid:glass_magenta>,<liquid:glass_light_blue>,<liquid:glass_yellow>,<liquid:glass_lime>,<liquid:glass_pink>,<liquid:glass_gray>,<liquid:glass_silver>,<liquid:glass_cyan>,<liquid:glass_purple>,<liquid:glass_blue>,<liquid:glass_brown>,<liquid:glass_green>,<liquid:glass_red>,<liquid:glass_black>] as ILiquidStack[];

val glassDyes = [<ore:dyeWhite>, <ore:dyeOrange>, <ore:dyeMagenta>, <ore:dyeLightBlue>, <ore:dyeYellow>, <ore:dyeLime>, <ore:dyePink>, <ore:dyeGray>, <ore:dyeLightGray>, <ore:dyeCyan>, <ore:dyePurple>, <ore:dyeBlue>, <ore:dyeBrown>, <ore:dyeGreen>, <ore:dyeRed>, <ore:dyeBlack>] as IOreDictEntry[];

val glassTextures = ["minecraft:blocks/glass_white", "minecraft:blocks/glass_orange", "minecraft:blocks/glass_magenta", "minecraft:blocks/glass_light_blue", "minecraft:blocks/glass_yellow", "minecraft:blocks/glass_lime", "minecraft:blocks/glass_pink", "minecraft:blocks/glass_gray", "minecraft:blocks/glass_silver", "minecraft:blocks/glass_cyan", "minecraft:blocks/glass_purple", "minecraft:blocks/glass_blue", "minecraft:blocks/glass_brown", "minecraft:blocks/glass_green", "minecraft:blocks/glass_red", "minecraft:blocks/glass_black"] as string[];

val stainedGlass = <minecraft:stained_glass>.definition;
val stainedGlassPane = <minecraft:stained_glass_pane>.definition;
val glassShards = <quark:glass_shards>.definition;

mods.crossroads.HeatingCrucible.addRecipe(<minecraft:sand>, <liquid:glass> * 1000, "minecraft:blocks/sand");
mods.crossroads.HeatingCrucible.addRecipe(<minecraft:glass>, <liquid:glass> * 1000, "minecraft:blocks/" ~ <minecraft:glass>.name);
mods.crossroads.HeatingCrucible.addRecipe(<minecraft:glass_pane>, <liquid:glass> * 375, "minecraft:blocks/" ~ <minecraft:glass>.name);
mods.crossroads.HeatingCrucible.addRecipe(<quark:glass_shards>, <liquid:glass> * 250, "minecraft:blocks/" ~ <minecraft:glass>.name);

for i, liquidGlass in liquidGlasses {
	val glassBlock = stainedGlass.makeStack(i);
	val glassPane = stainedGlassPane.makeStack(i);
	val glassShard = glassShards.makeStack(i+1); // id is offset by 1 because 0 is plain glass
	
	// melt glass down
	mods.crossroads.HeatingCrucible.addRecipe(glassBlock, liquidGlass * 1000, glassTextures[i]);
	mods.crossroads.HeatingCrucible.addRecipe(glassPane, liquidGlass * 375, glassTextures[i]);
	mods.crossroads.HeatingCrucible.addRecipe(glassShard, liquidGlass * 250, glassTextures[i]);
	
	// dye in metal caster
	mods.foundry.Casting.addRecipe(glassBlock * 10, <liquid:glass> * 10000, <foundry:mold:4>, glassDyes[i]);
	mods.foundry.Casting.addRecipe(glassPane * 25, <liquid:glass> * 10000, <foundry:mold:1>, glassDyes[i]);
}


// thermal expansion hardened glass

val metalGlasses = [
	<thermalfoundation:glass:0>, // copper
	<thermalfoundation:glass:1>, // tin
	<thermalfoundation:glass:2>, // silver
	<thermalfoundation:glass:3>, // default (lead)
	<thermalfoundation:glass:6>, // platinum
	<thermalfoundation:glass_alloy:0>, // steel
	<thermalfoundation:glass_alloy:1>, // electrum
	<thermalfoundation:glass_alloy:3> // bronze
] as IItemStack[];

val liquidMetals = [
	<liquid:copper>,
	<liquid:tin>,
	<liquid:silver>,
	<liquid:lead>,
	<liquid:platinum>,
	<liquid:steel>,
	<liquid:electrum>,
	<liquid:bronze>
] as ILiquidStack[];

for i, glass in metalGlasses {
	mods.foundry.Casting.addRecipe(glass, liquidMetals[i] * 144, <foundry:mold:4>, <ore:dustObsidian>);
	mods.foundry.Casting.addRecipe(glass, liquidMetals[i] * 144, <foundry:mold:4>, <ore:blockGlassHardened>);
}