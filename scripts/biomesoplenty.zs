recipes.remove(<biomesoplenty:terrestrial_artifact>);
recipes.addShapeless("terrestrial_artifact", <biomesoplenty:terrestrial_artifact>, 
	[<ore:gemRuby>,<ore:gemTopaz>,<ore:gemAmber>,<ore:gemPeridot>,<ore:gemEmerald>,<ore:gemMalachite>,<ore:gemSapphire>,<ore:gemTanzanite>,<ore:gemAmethyst>]);

recipes.remove(<biomesoplenty:biome_finder>);
recipes.addShapedMirrored("biome_finder", <biomesoplenty:biome_finder>, [
	[null, <ore:gemAmethyst>, null],
	[<ore:ingotMithril>, <biomesoplenty:terrestrial_artifact>, <ore:gemPeridot>],
	[null, <ore:gemAmethyst>, null]]);