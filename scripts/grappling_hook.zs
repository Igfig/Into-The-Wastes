// Make various Grappling Hook Mod recipes harder

recipes.remove(<grapplemod:grapplinghook>);
recipes.addShapeless("grappling_hook", <grapplemod:grapplinghook>, 
	[<thermalfoundation:tool.pickaxe_bronze>, <ore:rope>]);

recipes.remove(<grapplemod:baseupgradeitem>);
recipes.addShaped("grapple_upgrade", <grapplemod:baseupgradeitem>, [
	[      null,   <ore:blockLead>,   null     ],
	[<ore:blockLead>,<ore:rope>,<ore:blockLead>],
	[      null,     <ore:rope>,      null     ]]);
	
recipes.remove(<grapplemod:block_grapple_modifier>);
recipes.addShaped("grapple_block", <grapplemod:block_grapple_modifier>, [
	[    null,   <grapplemod:baseupgradeitem>,   null   ],
	[<ore:plateSteel>,<minecraft:anvil>,<ore:plateSteel>],
	[    null,   <grapplemod:baseupgradeitem>,   null   ]]);

recipes.remove(<grapplemod:launcheritem>);
recipes.addShaped("ender_staff", <grapplemod:launcheritem>, 
	[[<ore:enderpearl>], [<ore:ingotSilver>], [<minecraft:piston>]]);

recipes.remove(<grapplemod:throwupgradeitem>);
recipes.addShapeless("throw_upgrade", <grapplemod:throwupgradeitem>, 
	[<grapplemod:baseupgradeitem>, <thermalfoundation:tool.bow_silver>]);

recipes.remove(<grapplemod:doubleupgradeitem>);
recipes.addShapeless("double_hook_upgrade", <grapplemod:doubleupgradeitem>, 
	[<grapplemod:grapplinghook>, <grapplemod:grapplinghook>, <grapplemod:baseupgradeitem>, <ore:plateSteel>]);

recipes.remove(<grapplemod:doublemotorhook>);
recipes.addShapeless("double_motor_hook", <grapplemod:doublemotorhook>, 
	[<grapplemod:grapplinghook>, <grapplemod:grapplinghook>, <grapplemod:motorupgradeitem>, <ore:plateSteel>]);

recipes.remove(<grapplemod:rocketdoublemotorhook>);
recipes.addShapeless("rocket_double_motor_hook", <grapplemod:rocketdoublemotorhook>, 
	[<grapplemod:grapplinghook>, <grapplemod:grapplinghook>, <grapplemod:motorupgradeitem>, <grapplemod:rocketupgradeitem>, <ore:plateSteel>]);

recipes.replaceAllOccurences(<minecraft:lead>, <ore:rope>, <grapplemod:ropeupgradeitem>);

recipes.replaceAllOccurences(<ore:ingotIron>, <ore:ingotPlatinum>, <grapplemod:repeller>); // the repeller is kinda OP


// add some notes to upgrades
<grapplemod:ropeupgradeitem>.addTooltip("Increases rope length to up to 60m");
<grapplemod:limitsupgradeitem>.addTooltip("With Rope Upgrade, increases rope length to up to 200m");
<grapplemod:throwupgradeitem>.addTooltip("Allows customization of throw speed, angle, and gravity");
<grapplemod:motorupgradeitem>.addTooltip("Reels you in automatically");
<grapplemod:swingupgradeitem>.addTooltip("Allows customization of swing speed");
<grapplemod:staffupgradeitem>.addTooltip("Left-click to launch yourself");
<grapplemod:rocketupgradeitem>.addTooltip("Hold left-click to propel yourself");
<grapplemod:magnetupgradeitem>.addTooltip("Hook is attracted to nearby blocks");
<grapplemod:doubleupgradeitem>.addTooltip("Throw two hooks at a time");
<grapplemod:doubleupgradeitem>.addShiftTooltip("You may want to change your");
<grapplemod:doubleupgradeitem>.addShiftTooltip("controls to throw only the left");
<grapplemod:doubleupgradeitem>.addShiftTooltip("hook on left click and right");
<grapplemod:doubleupgradeitem>.addShiftTooltip("hook on right click.");
<grapplemod:forcefieldupgradeitem>.addTooltip("Repels you from nearby blocks when swinging");