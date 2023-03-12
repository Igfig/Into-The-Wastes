// Make various Grappling Hook Mod recipes harder

recipes.remove(<grapplemod:grapplinghook>);
recipes.addShapeless("grappling_hook", <grapplemod:grapplinghook>, 
	[<thermalfoundation:tool.pickaxe_bronze>, <inspirations:rope:1>]);

recipes.remove(<grapplemod:baseupgradeitem>);
recipes.addShaped("grapple_upgrade", <grapplemod:baseupgradeitem>, [
	[      null,       <ore:blockLead>,          null     ],
	[<ore:blockLead>,<inspirations:rope:1>,<ore:blockLead>],
	[      null,     <inspirations:rope:1>,      null     ]]);


recipes.remove(<grapplemod:launcheritem>);
recipes.addShaped("ender_staff", <grapplemod:launcheritem>, 
	[[<ore:enderpearl>], [<ore:ingotSilver>], [<minecraft:piston>]]);

recipes.replaceAllOccurences(<ore:ingotIron>, <ore:ingotPlatinum>, <grapplemod:repeller>);