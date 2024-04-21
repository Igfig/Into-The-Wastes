import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

val bows = [<thermalfoundation:tool.bow_iron>, <thermalfoundation:tool.bow_gold>, <thermalfoundation:tool.bow_copper>, <thermalfoundation:tool.bow_tin>, <thermalfoundation:tool.bow_bronze>, <thermalfoundation:tool.bow_silver>, <thermalfoundation:tool.bow_lead>, <thermalfoundation:tool.bow_steel>] as IItemStack[];
val sickles = [<thermalfoundation:tool.sickle_iron>, <thermalfoundation:tool.sickle_gold>, <thermalfoundation:tool.sickle_copper>, <thermalfoundation:tool.sickle_tin>, <thermalfoundation:tool.sickle_bronze>, <thermalfoundation:tool.sickle_silver>, <thermalfoundation:tool.sickle_lead>, <thermalfoundation:tool.sickle_steel>] as IItemStack[];
val hammers = [<thermalfoundation:tool.hammer_iron>, <thermalfoundation:tool.hammer_gold>, <thermalfoundation:tool.hammer_copper>, <thermalfoundation:tool.hammer_tin>, <thermalfoundation:tool.hammer_bronze>, <thermalfoundation:tool.hammer_silver>, <thermalfoundation:tool.hammer_lead>, <thermalfoundation:tool.hammer_steel>] as IItemStack[];
val excavators = [<thermalfoundation:tool.excavator_iron>, <thermalfoundation:tool.excavator_gold>, <thermalfoundation:tool.excavator_copper>, <thermalfoundation:tool.excavator_tin>, <thermalfoundation:tool.excavator_bronze>, <thermalfoundation:tool.excavator_silver>, <thermalfoundation:tool.excavator_lead>, <thermalfoundation:tool.excavator_steel>] as IItemStack[];

val pickaxeHeads = [<tinkersforging:pickaxe_head/iron>, <tinkersforging:pickaxe_head/gold>, <tinkersforging:pickaxe_head/copper>, <tinkersforging:pickaxe_head/tin>, <tinkersforging:pickaxe_head/bronze>, <tinkersforging:pickaxe_head/silver>, <tinkersforging:pickaxe_head/lead>, <tinkersforging:pickaxe_head/steel>] as IIngredient[];
val hoeHeads = [<tinkersforging:hoe_head/iron>, <tinkersforging:hoe_head/gold>, <tinkersforging:hoe_head/copper>, <tinkersforging:hoe_head/tin>, <tinkersforging:hoe_head/bronze>, <tinkersforging:hoe_head/silver>, <tinkersforging:hoe_head/lead>, <tinkersforging:hoe_head/steel>] as IIngredient[];
val hammerHeads = [<tinkersforging:hammer_head/iron>, <tinkersforging:hammer_head/gold>, <tinkersforging:hammer_head/copper>, <tinkersforging:hammer_head/tin>, <tinkersforging:hammer_head/bronze>, <tinkersforging:hammer_head/silver>, <tinkersforging:hammer_head/lead>, <tinkersforging:hammer_head/steel>] as IIngredient[];
val shovelHeads = [<tinkersforging:shovel_head/iron>, <tinkersforging:shovel_head/gold>, <tinkersforging:shovel_head/copper>, <tinkersforging:shovel_head/tin>, <tinkersforging:shovel_head/bronze>, <tinkersforging:shovel_head/silver>, <tinkersforging:shovel_head/lead>, <tinkersforging:shovel_head/steel>] as IIngredient[];

val castTools = [<thermalfoundation:armor.helmet_electrum>, <thermalfoundation:armor.plate_electrum>, <thermalfoundation:armor.legs_electrum>, <thermalfoundation:armor.boots_electrum>, <thermalfoundation:tool.sword_electrum>, <thermalfoundation:tool.pickaxe_electrum>, <thermalfoundation:tool.axe_electrum>, <thermalfoundation:tool.hoe_electrum>, <thermalfoundation:tool.shovel_electrum>, <thermalfoundation:tool.sickle_electrum>, <thermalfoundation:tool.hammer_electrum>,  <thermalfoundation:tool.excavator_electrum>, <thermalfoundation:armor.helmet_platinum>, <thermalfoundation:armor.plate_platinum>, <thermalfoundation:armor.legs_platinum>, <thermalfoundation:armor.boots_platinum>, <thermalfoundation:tool.sword_platinum>, <thermalfoundation:tool.pickaxe_platinum>, <thermalfoundation:tool.axe_platinum>, <thermalfoundation:tool.hoe_platinum>, <thermalfoundation:tool.shovel_platinum>, <thermalfoundation:tool.sickle_platinum>, <thermalfoundation:tool.hammer_platinum>, <thermalfoundation:tool.excavator_platinum>] as IItemStack[];

val metals = [<ore:ingotIron>, <ore:ingotGold>, <ore:ingotCopper>, <ore:ingotTin>, <ore:ingotBronze>, <ore:ingotSilver>, <ore:ingotLead>, <ore:ingotSteel>] as IIngredient[];

val blocks = [<ore:blockIron>, <ore:blockGold>, <ore:blockCopper>, <ore:blockTin>, <ore:blockBronze>, <ore:blockSilver>, <ore:blockLead>, <ore:blockSteel>] as IIngredient[];

val stick = <ore:stickWood>;
val strng = <ore:string>;


// add new recipes

for i, bow in bows {
	recipes.remove(bow);
	recipes.addShapedMirrored(bow.name, bow, [
	[null,stick,strng],
	[pickaxeHeads[i],null,strng],
	[null,stick,strng]]);
}
for i, sickle in sickles {
	recipes.remove(sickle);
	recipes.addShapedMirrored(sickle.name, sickle, [
	[hoeHeads[i],null],
	[null,metals[i]],
	[stick,null]]);
}
for i, hammer in hammers {
	recipes.remove(hammer);
	recipes.addShaped(hammer.name, hammer, [
	[blocks[i], hammerHeads[i], blocks[i]],
	[null,stick,null],
	[null,stick,null]]);
}
for i, excavator in excavators {
	recipes.remove(excavator);
	recipes.addShaped(excavator.name, excavator, [
	[null,shovelHeads[i],null],
	[blocks[i],stick,blocks[i]],
	[null,stick,null]]);
}


// tooltips on cast-only tools

for castTool in castTools {
	recipes.remove(castTool);
	castTool.addTooltip("This item can only be cast, not forged.");
}


// special case for casting bows

val electrumBow = <thermalfoundation:tool.bow_electrum>;
val platinumBow = <thermalfoundation:tool.bow_platinum>;

recipes.remove(electrumBow);
recipes.remove(platinumBow);

electrumBow.addTooltip("This item can only be cast, not forged.");
platinumBow.addTooltip("This item can only be cast, not forged.");

mods.foundry.Casting.addRecipe(electrumBow, <liquid:electrum> *432, <minecraft:bow>);
mods.foundry.Casting.addRecipe(platinumBow, <liquid:platinum> *432, <minecraft:bow>);


// remove crescent hammer; it's redundant with the B.A.S.E. wrench
recipes.remove(<thermalfoundation:wrench>);
mods.jei.JEI.removeAndHide(<thermalfoundation:wrench>);