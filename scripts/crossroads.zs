// make the Technician's Manual the default guide book

recipes.remove(<guideapi:crossroads-crossroadsmainguide>); // FIXME the recipe doesn't actually seem to remove... but the other one overwrites it, at least
recipes.removeByRecipeName("guideapi:guide_journal"); // and this doesn't work either

recipes.addShapeless("guide_journal", <guideapi:crossroads-info_guide>, [<minecraft:book>, <ore:ingotIron>]);


// remove unwanted ore

mods.jei.JEI.removeAndHide(<crossroads:ore_native_copper>);


// remove ugly vanadium recipe, and integrate with Zoesteria vanadium

mods.crossroads.DetailedCrafter.removeAlcRecipe(<crossroads:vanadium>);
<crossroads:vanadium>.displayName = "Vanadium Dust";


// remove some gears we don't want

mods.jei.JEI.removeAndHide(<crossroads:gear_nickel>);
mods.jei.JEI.removeAndHide(<crossroads:gear_invar>);
mods.jei.JEI.removeAndHide(<crossroads:large_gear_nickel>);
mods.jei.JEI.removeAndHide(<crossroads:large_gear_invar>);
mods.jei.JEI.removeAndHide(<crossroads:toggle_gear_nickel>);
mods.jei.JEI.removeAndHide(<crossroads:toggle_gear_invar>);


//remove unused meters

mods.jei.JEI.removeAndHide(<crossroads:thermometer>);
mods.jei.JEI.removeAndHide(<crossroads:speedometer>);
mods.jei.JEI.removeAndHide(<crossroads:fluid_gauge>);


// cheaper omnimeter

recipes.remove(<crossroads:omnimeter>);
recipes.addShaped(<crossroads:omnimeter>, [
	[<ore:ingotIron>,<ore:ingotGold>,<ore:ingotIron>],
	[<ore:ingotGold>,<ore:dustRedstone>,<ore:ingotGold>],
	[<ore:ingotIron>,<ore:ingotGold>,<ore:ingotIron>]]);


// remove wrenches, because B.A.S.E. has a better one

recipes.remove(<essentials:wrench>);
recipes.remove(<crossroads:liech_wrench>);
mods.jei.JEI.removeAndHide(<crossroads:liech_wrench>);


// except we do need a crossroads wrench for very specific crossroads tasks

recipes.addShaped("precision_wrench", <essentials:wrench>, [
	[<ore:ingotCopper>,null,<ore:ingotCopper>],
	[      null, <ore:ingotCopper>, null     ],
	[      null, <ore:ingotCopper>, null     ]]);


// make slotted chest recipe harder

recipes.replaceAllOccurences(<minecraft:trapdoor>, <ore:plateTin>, <essentials:slotted_chest>);


// and make fuel heater easier (needing copper to bootstrap it is annoying)

recipes.replaceAllOccurences(<ore:ingotCopper>, <ore:ingotIron>, <crossroads:coal_heater>);


// make fluid tank recipe harder

recipes.replaceAllOccurences(<ore:ingotBronze>, <ore:ingotCopshowium>, <crossroads:fluid_tank>);
recipes.replaceAllOccurences(<ore:gold>, <ore:plateSteel>, <crossroads:fluid_tank>);


// change lens holder recipe to not conflict with holystone

recipes.replaceAllOccurences(<ore:stone>, <minecraft:stone_slab>, <crossroads:lens_holder>);


// it should take 9 rubies to make a block, not 4

val ruby = <ore:gemRuby>;

recipes.addShaped("crossroads_block_ruby", <crossroads:block_ruby>, [
	[ruby, ruby, ruby],
	[ruby, ruby, ruby],
	[ruby, ruby, ruby]]);
recipes.addShapeless("crossroads_gem_ruby", <crossroads:gem_ruby> * 9, [<crossroads:block_ruby>]);


// change Pure Quartz recipe to include a silver nugget, and not accept other Pure Quartz

recipes.removeShapeless(<crossroads:pure_quartz>, [<ore:dustSalt>], true);
recipes.addShapeless("crossroads_pure_quartz", <crossroads:pure_quartz>, [<ore:dustSalt>, <ore:dustSalt>, <minecraft:quartz>, <ore:nuggetSilver>]);


// change Void Crystal recipe

val voidstone =  <chisel:voidstone:*> | <chisel:energizedvoidstone:*> |  <chisel:voidstonerunic:*>;
val lumquartz = <crossroads:luminescent_quartz>;
val drgbreath = <minecraft:dragon_breath>;
val biotite = <quark:biotite_block>;

recipes.removeShaped(<crossroads:void_crystal>);
recipes.addShaped("void_crystal", <crossroads:void_crystal>, [
	[lumquartz, biotite, lumquartz],
	[drgbreath,voidstone,drgbreath],
	[lumquartz, biotite, lumquartz]]);


// missing recipe for fluid void

recipes.addShaped("fluid_void", <crossroads:fluid_void>, 
	[[<ore:ingotCopper>], [<minecraft:sponge:0>]]);