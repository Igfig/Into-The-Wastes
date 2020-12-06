#priority 10

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.liquid.ILiquidStack;


// remove unwanted blocks

val toRemove = [
	<foundry:componentblock:1>,<foundry:componentblock:2>,
	<foundry:machine:0>,<foundry:machine:2>,<foundry:machine:3>,<foundry:machine:4>,<foundry:machine:5>,<foundry:machine:6>,<foundry:machine:7>,<foundry:machine:9>,
	<foundry:casting_table:1>,<foundry:casting_table:2>,<foundry:mold_station>,<foundry:burner_heater>,
	<foundry:mold:1>,<foundry:mold:2>,<foundry:mold:3>,<foundry:mold:5>,<foundry:mold:6>,<foundry:mold:21>
] as IItemStack[];


for tr in toRemove {
	mods.jei.JEI.removeAndHide(tr);
}


//remove recipes from removed blocks

mods.foundry.AlloyMixer.clear();
mods.foundry.BurnerHeater.clear();
mods.foundry.FluidHeater.clear();
mods.foundry.Infuser.clear();
mods.foundry.Melting.clear();
mods.foundry.MoldStation.clear();


// new recipes for the blocks we do keep

val porcelainBrick = <ceramics:unfired_clay:5>;
val iron = <ore:ingotIron>;

recipes.remove(<foundry:componentblock>);
recipes.addShaped("foundry_component", <foundry:componentblock>, [
	[iron, porcelainBrick, iron],
	[porcelainBrick, null, porcelainBrick],
	[iron, porcelainBrick, iron]]);

recipes.remove(<foundry:machine:1>);
recipes.addShaped("metal_caster", <foundry:machine:1>, [
	[null, <minecraft:bucket>, null],
	[<minecraft:piston>, <foundry:componentblock>, <minecraft:piston>],
	[<crossroads:gear_bronze>,<ore:dustRedstone>,<crossroads:gear_bronze>]]);


// steel molder recipes
// XXX may in the future remove the coke recipe and just require 2 dusts instead

val steel = <thermalfoundation:material:160>;
mods.foundry.Casting.addRecipe(steel, <liquid:iron> * 144, <foundry:mold:0>, <ore:dustCoal> * 4);
mods.foundry.Casting.addRecipe(steel, <liquid:iron> * 144, <foundry:mold:0>, <ore:dustCharcoal> * 4);
mods.foundry.Casting.addRecipe(steel, <liquid:iron> * 144, <foundry:mold:0>, <ore:fuelCoke>);

val steelBlock = <thermalfoundation:storage_alloy:0>;
mods.foundry.Casting.addRecipe(steelBlock, <liquid:iron> * 1296, <foundry:mold:4>, <ore:dustCoal> * 36);
mods.foundry.Casting.addRecipe(steelBlock, <liquid:iron> * 1296, <foundry:mold:4>, <ore:dustCharcoal> * 36);
mods.foundry.Casting.addRecipe(steelBlock, <liquid:iron> * 1296, <foundry:mold:4>, <ore:fuelCoke> * 9);