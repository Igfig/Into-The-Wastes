import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;


// Make various Grappling Hook Mod recipes harder

recipes.remove(<grapplemod:baseupgradeitem>);
recipes.addShapeless("grapple_upgrade", <grapplemod:baseupgradeitem>, [<ore:blockBronze>, <ore:rope>]);
	
recipes.remove(<grapplemod:block_grapple_modifier>);
recipes.addShaped("grapple_block", <grapplemod:block_grapple_modifier>, [
	[    null,   <grapplemod:baseupgradeitem>,   null   ],
	[<ore:plateLead>,<railcraft:anvil>.anyDamage(),<ore:plateLead>],
	[    null,   <grapplemod:baseupgradeitem>,   null   ]]);

recipes.remove(<grapplemod:launcheritem>);
recipes.addShaped("ender_staff", <grapplemod:launcheritem>, [
	[null, <ore:ingotSilver>, <ore:enderpearl>], 
	[null, <minecraft:piston>, <ore:ingotSilver>], 
	[<minecraft:end_rod>, null, null]]);

recipes.replaceAllOccurences(<ore:ingotIron>, <ore:ingotPlatinum>, <grapplemod:repeller>); // the repeller is kinda OP

val itemRecipes = {
	<grapplemod:grapplinghook>: [<tinkersforging:pickaxe_head/copper>, <tinkersforging:pickaxe_head/copper>, <ore:rope>],
	<grapplemod:doublemotorhook>: [<grapplemod:grapplinghook>, <grapplemod:doubleupgradeitem>, <grapplemod:motorupgradeitem>],
	<grapplemod:rocketdoublemotorhook>: [<grapplemod:grapplinghook>, <grapplemod:doubleupgradeitem>, <grapplemod:motorupgradeitem>, <grapplemod:rocketupgradeitem>],
	<grapplemod:ropeupgradeitem>: [<grapplemod:baseupgradeitem>, <ore:rope>],
	<grapplemod:motorupgradeitem>: [<grapplemod:baseupgradeitem>, <ore:gearLead>, <minecraft:piston>],
	<grapplemod:magnetupgradeitem>: [<grapplemod:baseupgradeitem>, <ore:gearLead>, <minecraft:compass>],
	<grapplemod:doubleupgradeitem>: [<grapplemod:baseupgradeitem>, <ore:gearLead>, <grapplemod:grapplinghook>, <ore:plateSteel>],
	<grapplemod:rocketupgradeitem>: [<grapplemod:baseupgradeitem>, <ore:gearLead>, <minecraft:fireworks>]
} as IIngredient[][IItemStack];

for item, ingredients in itemRecipes {
	recipes.remove(item);
	recipes.addShapeless(item, ingredients);
}


// apply low-level upgrades directly to hooks

val longHook = <grapplemod:grapplinghook>.withTag({
	display:{LocName: "Long Grappling Hook"},
	maxlen: 60.0,
	hookgravity: 0.5,
});
val fastHook = <grapplemod:grapplinghook>.withTag({
	display:{LocName: "Fast Grappling Hook"},
	throwspeed: 4.0
});
val swingHook = <grapplemod:grapplinghook>.withTag({
	display:{LocName: "Acrobatic Grappling Hook"},
	playermovementmult: 1.5,
	phaserope: true,
});


function getName(item as IItemStack) as string {
	val display = item.tag.display;
	if isNull(display) {
		return item.displayName;
	}

	var locName = display.LocName;
	if isNull(locName) {
		return item.displayName;
	}
	
	return locName.asString();
}


recipes.addShapeless("long_hook", longHook,
	[<grapplemod:grapplinghook>.withTag({maxlen: 30.0d}).marked("mark"), <grapplemod:ropeupgradeitem>], 
	function(out,ins,cInfo){
		return ins.mark.removeTag("crc32").updateTag({
			display:{LocName: "Long " ~ getName(ins.mark)},
			maxlen: 60.0d, hookgravity:0.5d});
	}, null);

recipes.addShapeless("fast_hook", fastHook,
	[<grapplemod:grapplinghook>.withTag({throwspeed: 2.0d}).marked("mark"), <grapplemod:throwupgradeitem>], 
	function(out,ins,cInfo){
		return ins.mark.removeTag("crc32").updateTag({
			display:{LocName: "Fast " ~ getName(ins.mark)},
			throwspeed: 4.0d});
	}, null);


recipes.addShapeless("swing_hook", swingHook,
	[<grapplemod:grapplinghook>.withTag({playermovementmult: 1.0d}).marked("mark"), <grapplemod:swingupgradeitem>], 
	function(out,ins,cInfo){
		return ins.mark.removeTag("crc32").updateTag({
			display:{LocName: "Acrobatic " ~ getName(ins.mark)},
			playermovementmult: 1.5d, phaserope: true});
	}, null);


// add upgraded forms to JEI

mods.jei.JEI.addItem(longHook);
mods.jei.JEI.addItem(fastHook);
mods.jei.JEI.addItem(swingHook);


// add some notes to upgrades

<grapplemod:ropeupgradeitem>.addTooltip("Increases rope length to up to 60m");
<grapplemod:limitsupgradeitem>.addTooltip("With Rope Upgrade, increases rope length to up to 200m");
<grapplemod:throwupgradeitem>.addTooltip("Allows customization of throw speed, angle, and gravity");
<grapplemod:motorupgradeitem>.addTooltip("Reels you in automatically");
<grapplemod:swingupgradeitem>.addTooltip("Allows customization of swing speed");
<grapplemod:staffupgradeitem>.addTooltip("Left-click to launch yourself");
<grapplemod:rocketupgradeitem>.addTooltip("Hold left-click to launch yourself");
<grapplemod:rocketupgradeitem>.addTooltip("Needs some time to recharge afterwards");
<grapplemod:magnetupgradeitem>.addTooltip("Hook is attracted to nearby blocks");
<grapplemod:doubleupgradeitem>.addTooltip("Throws two hooks at a time");
<grapplemod:doubleupgradeitem>.addShiftTooltip("You may want to change your", "Hold Shift for important advice");
<grapplemod:doubleupgradeitem>.addShiftTooltip("controls to throw only the left");
<grapplemod:doubleupgradeitem>.addShiftTooltip("hook on left click and right");
<grapplemod:doubleupgradeitem>.addShiftTooltip("hook on right click.");
<grapplemod:forcefieldupgradeitem>.addTooltip("Repels you from nearby blocks when swinging");