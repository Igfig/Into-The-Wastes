import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

val fullyRemove = [
<wildnature:amethyst>,<wildnature:amethyst_shard>,<wildnature:amethyst_ore>,<wildnature:amethyst_block>,
<wildnature:sapphire>,<wildnature:sapphire_shard>,<wildnature:sapphire_ore>,<wildnature:sapphire_block>,
<wildnature:ruby>,<wildnature:ruby_shard>,<wildnature:ruby_ore>,<wildnature:ruby_block>,
<wildnature:amber>,<wildnature:amber_ore>,<wildnature:amber_block>,
<wildnature:malachite>,<wildnature:malachite_shard>,<wildnature:malachite_ore>,<wildnature:malachite_block>,
<wildnature:silver_ingot>,<wildnature:silver_ore>,<wildnature:silver_block>,<wildnature:silver_rod>,<wildnature:silver_sword>,<wildnature:silver_hoe>,<wildnature:silver_axe>,<wildnature:silver_pickaxe>,<wildnature:silver_shovel>,
<wildnature:steel_ingot>,<wildnature:steel_block>,<wildnature:steel_rod>,<wildnature:steel_sword>,<wildnature:steel_hoe>,<wildnature:steel_axe>,<wildnature:steel_pickaxe>,<wildnature:steel_shovel>,
<wildnature:diamond_rod>,
<wildnature:ironworks>] as IItemStack[];

val swords = [<wildnature:amethyst_sword>.withTag({display:{LocName: "Tanzanite Sword"}}),<wildnature:sapphire_sword>,<wildnature:ruby_sword>,<wildnature:amber_sword>,<wildnature:malachite_sword>] as IItemStack[];
val hoes = [<wildnature:amethyst_hoe>.withTag({display:{LocName: "Tanzanite Hoe"}}),<wildnature:sapphire_hoe>,<wildnature:ruby_hoe>,<wildnature:amber_hoe>,<wildnature:malachite_hoe>] as IItemStack[];
val axes = [<wildnature:amethyst_axe>.withTag({display:{LocName: "Tanzanite Axe"}}),<wildnature:sapphire_axe>,<wildnature:ruby_axe>,<wildnature:amber_axe>,<wildnature:malachite_axe>] as IItemStack[];
val picks = [<wildnature:amethyst_pickaxe>.withTag({display:{LocName: "Tanzanite Pickaxe"}}),<wildnature:sapphire_pickaxe>,<wildnature:ruby_pickaxe>,<wildnature:amber_pickaxe>,<wildnature:malachite_pickaxe>] as IItemStack[];
val shovels = [<wildnature:amethyst_shovel>.withTag({display:{LocName: "Tanzanite Shovel"}}),<wildnature:sapphire_shovel>,<wildnature:ruby_shovel>,<wildnature:amber_shovel>,<wildnature:malachite_shovel>] as IItemStack[];

val tools = [swords, hoes, axes, picks, shovels] as IItemStack[][];


// remove unwanted items

for fr in fullyRemove {
	mods.jei.JEI.removeAndHide(fr);
}


// remove recipes for gem tools

for tool in tools {
	for tr in tool {
		recipes.remove(tr);
	}
}


// add new recipes for gem tools

val gems = [<ore:gemTanzanite>,<ore:gemSapphire>,<ore:gemRuby>,<ore:gemAmber>,<ore:gemMalachite>] as IIngredient[];
val stick = <minecraft:stick>;

for i, gem in gems {
	recipes.addShaped(swords[i], [[gem],[gem],[stick]]);
	recipes.addShapedMirrored(hoes[i], [
		[gem,gem],
		[null,stick],
		[null,stick]]);
	recipes.addShapedMirrored(axes[i], [
		[gem,gem],
		[gem,stick],
		[null,stick]]);
	recipes.addShaped(picks[i], [
		[gem,gem,gem],
		[null,stick,null],
		[null,stick,null]]);
	recipes.addShaped(shovels[i], [[gem],[stick],[stick]]);
}


// rename tools

val gemNames = ["Amethyst","Sapphire","Ruby","Amber","Malachite"] as string[];
val toolNames = ["Sword","Hoe","Axe","Pickaxe","Shovel"] as string[];

for i, toolType in tools {
	for j, tool in toolType {
		tool.displayName = gemNames[j] + " " + toolNames[i];
		
		if (j == 0) {
			mods.jei.JEI.addItem(tool);
		}
	}
}


// add missing food oredicts

<ore:cropAcorn>.add(<wildnature:acorn>);
<ore:listAllnut>.add(<wildnature:acorn>);

<ore:cropApple>.add(<wildnature:green_apple>);
<ore:listAllfruit>.add(<wildnature:green_apple>);

<ore:cropPear>.add(<wildnature:pear>);
<ore:listAllfruit>.add(<wildnature:pear>);

<ore:cropCherry>.add(<wildnature:cherry>);
<ore:listAllfruit>.add(<wildnature:cherry>);

<ore:cropCorn>.add(<wildnature:corn>);
<ore:listAllgrain>.add(<wildnature:corn>);

<ore:foodMeat>.add(<wildnature:raw_boar>);
<ore:listAllmeatraw>.add(<wildnature:raw_boar>);
<ore:foodMeat>.add(<wildnature:cooked_boar>);
<ore:listAllmeatcooked>.add(<wildnature:cooked_boar>);

<ore:foodMeat>.add(<wildnature:raw_goat>);
<ore:listAllmeatraw>.add(<wildnature:raw_goat>);
<ore:foodMeat>.add(<wildnature:cooked_goat>);
<ore:listAllmeatcooked>.add(<wildnature:cooked_goat>);

<ore:foodMeat>.add(<wildnature:raw_bison>);
<ore:listAllmeatraw>.add(<wildnature:raw_bison>);
<ore:foodMeat>.add(<wildnature:cooked_bison>);
<ore:listAllmeatcooked>.add(<wildnature:cooked_bison>);

<ore:foodMeat>.add(<wildnature:raw_camel>);
<ore:listAllmeatraw>.add(<wildnature:raw_camel>);
<ore:foodMeat>.add(<wildnature:cooked_camel>);
<ore:listAllmeatcooked>.add(<wildnature:cooked_camel>);
