// TODO gear recipes are more expensive in caster. Either make them cheaper here or more expensive to make by hand.

// cast rails with the rail mold

// standard rails, iron
mods.foundry.CastingTable.addRodRecipe(<railcraft:rail:0> * 8, <liquid:iron> * 864);
mods.foundry.Casting.addRecipe(<railcraft:rail:0> * 8, <liquid:iron> * 864, <foundry:mold:3>); 

// standard rails, bronze
mods.foundry.CastingTable.addRodRecipe(<railcraft:rail:0> * 8, <liquid:bronze> * 864);
mods.foundry.Casting.addRecipe(<railcraft:rail:0> * 8, <liquid:bronze> * 864, <foundry:mold:3>); 

// standard rails, steel
mods.foundry.CastingTable.addRodRecipe(<railcraft:rail:0> * 12, <liquid:steel> * 864);
mods.foundry.Casting.addRecipe(<railcraft:rail:0> * 12, <liquid:steel> * 864, <foundry:mold:3>);

// advanced rails
mods.foundry.Casting.addRecipe(<railcraft:rail:1> * 8, <liquid:gold> * 432, <foundry:mold:3>, <ore:dustRedstone> * 3);

// HS rails
mods.foundry.Casting.addRecipe(<railcraft:rail:3> * 8, <liquid:steel> * 432, <foundry:mold:3>, <ore:dustPyrotheum> * 3);

// reinforced rails
mods.foundry.Casting.addRecipe(<railcraft:rail:4> * 8, <liquid:steel> * 864, <foundry:mold:3>, <ore:dustObsidian> * 3);


// cast rebar
mods.foundry.Casting.addRecipe(<railcraft:rebar> * 4, <liquid:iron> * 432, <foundry:mold:3>, <ore:stickWood>); // iron
mods.foundry.Casting.addRecipe(<railcraft:rebar> * 4, <liquid:bronze> * 432, <foundry:mold:3>, <ore:stickWood>); // bronze
mods.foundry.Casting.addRecipe(<railcraft:rebar> * 6, <liquid:steel> * 432, <foundry:mold:3>, <ore:stickWood>); // steel


// cast elemental fluids to their dusts.
mods.foundry.Casting.addRecipe(<thermalfoundation:material:1024>, <liquid:pyrotheum> * 250, <foundry:mold:21>);
mods.foundry.Casting.addRecipe(<thermalfoundation:material:1025>, <liquid:cryotheum> * 250, <foundry:mold:21>);
mods.foundry.Casting.addRecipe(<thermalfoundation:material:1026>, <liquid:aerotheum> * 250, <foundry:mold:21>);
mods.foundry.Casting.addRecipe(<thermalfoundation:material:1027>, <liquid:petrotheum> * 250, <foundry:mold:21>);
mods.foundry.Casting.addRecipe(<thermalfoundation:material:1028>, <liquid:mana> * 250, <foundry:mold:21>);


// cast Mystical World armour
mods.foundry.Casting.addRecipe(<mysticalworld:copper_helmet>, <liquid:copper> * 720, <foundry:mold:14>);
mods.foundry.Casting.addRecipe(<mysticalworld:copper_chestplate>, <liquid:copper> * 1152, <foundry:mold:15>);
mods.foundry.Casting.addRecipe(<mysticalworld:copper_leggings>, <liquid:copper> * 1008, <foundry:mold:16>);
mods.foundry.Casting.addRecipe(<mysticalworld:copper_boots>, <liquid:copper> * 576, <foundry:mold:17>);
mods.foundry.Casting.addRecipe(<mysticalworld:silver_helmet>, <liquid:silver> * 720, <foundry:mold:14>);
mods.foundry.Casting.addRecipe(<mysticalworld:silver_chestplate>, <liquid:silver> * 1152, <foundry:mold:15>);
mods.foundry.Casting.addRecipe(<mysticalworld:silver_leggings>, <liquid:silver> * 1008, <foundry:mold:16>);
mods.foundry.Casting.addRecipe(<mysticalworld:silver_boots>, <liquid:silver> * 576, <foundry:mold:17>);


// some more casting recipes
mods.foundry.Casting.addRecipe(<minecraft:ender_pearl>, <liquid:ender> * 250, <foundry:mold:21>); // ender pearl
mods.foundry.Casting.addRecipe(<thermalfoundation:material:833>, <liquid:crude_oil> * 250, <foundry:mold:21>); // tar
