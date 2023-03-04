// Make various Grappling Hook Mod recipes harder

recipes.replaceAllOccurences(<minecraft:iron_pickaxe>, <thermalfoundation:tool.pickaxe_bronze>, <grapplemod:grapplinghook>);
recipes.replaceAllOccurences(<ore:ingotGold>, <ore:blockLead>, <grapplemod:baseupgradeitem>);
recipes.replaceAllOccurences(<ore:ingotIron>, <ore:ingotPlatinum>, <grapplemod:repeller>);

recipes.remove(<grapplemod:launcheritem>);
recipes.addShaped("ender_staff", <grapplemod:launcheritem>, [[<ore:enderpearl>], [<ore:ingotSilver>], [<minecraft:piston>]]);