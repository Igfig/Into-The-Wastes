import crafttweaker.item.IItemStack;
import crafttweaker.liquid.ILiquidStack;
import mods.foundry.CastingTable;
import mods.foundry.Casting;

// cast rails with the rail mold

// standard rails, iron
CastingTable.addRodRecipe(<railcraft:rail:0>, <liquid:iron> * 108);
Casting.addRecipe(<railcraft:rail:0>, <liquid:iron> * 108, <foundry:mold:3>); 

// standard rails, bronze
CastingTable.addRodRecipe(<railcraft:rail:0>, <liquid:bronze> * 108);
Casting.addRecipe(<railcraft:rail:0>, <liquid:bronze> * 108, <foundry:mold:3>); 

// standard rails, steel
CastingTable.addRodRecipe(<railcraft:rail:0> * 2, <liquid:steel> * 108);
Casting.addRecipe(<railcraft:rail:0> * 2, <liquid:steel> * 108, <foundry:mold:3>);

// advanced rails
Casting.addRecipe(<railcraft:rail:1> * 8, <liquid:gold> * 432, <foundry:mold:3>, <ore:dustRedstone> * 3);

// HS rails
Casting.addRecipe(<railcraft:rail:3> * 8, <liquid:steel> * 432, <foundry:mold:3>, <ore:dustPyrotheum> * 3);

// reinforced rails
Casting.addRecipe(<railcraft:rail:4> * 8, <liquid:steel> * 864, <foundry:mold:3>, <ore:dustObsidian> * 3);


// cast rebar
Casting.addRecipe(<railcraft:rebar>, <liquid:iron> * 108, <foundry:mold:3>, <ore:stickWood>); // iron
Casting.addRecipe(<railcraft:rebar>, <liquid:bronze> * 108, <foundry:mold:3>, <ore:stickWood>); // bronze
Casting.addRecipe(<railcraft:rebar> * 2, <liquid:steel> * 108, <foundry:mold:3>, <ore:stickWood>); // steel


// cast elemental fluids to their dusts.
Casting.addRecipe(<thermalfoundation:material:1024>, <liquid:pyrotheum> * 250, <foundry:mold:21>);
Casting.addRecipe(<thermalfoundation:material:1025>, <liquid:cryotheum> * 250, <foundry:mold:21>);
Casting.addRecipe(<thermalfoundation:material:1026>, <liquid:aerotheum> * 250, <foundry:mold:21>);
Casting.addRecipe(<thermalfoundation:material:1027>, <liquid:petrotheum> * 250, <foundry:mold:21>);
Casting.addRecipe(<thermalfoundation:material:1028>, <liquid:mana> * 250, <foundry:mold:21>);


// cast Mystical World armour
Casting.addRecipe(<mysticalworld:copper_helmet>, <liquid:copper> * 720, <foundry:mold:14>);
Casting.addRecipe(<mysticalworld:copper_chestplate>, <liquid:copper> * 1152, <foundry:mold:15>);
Casting.addRecipe(<mysticalworld:copper_leggings>, <liquid:copper> * 1008, <foundry:mold:16>);
Casting.addRecipe(<mysticalworld:copper_boots>, <liquid:copper> * 576, <foundry:mold:17>);
Casting.addRecipe(<mysticalworld:silver_helmet>, <liquid:silver> * 720, <foundry:mold:14>);
Casting.addRecipe(<mysticalworld:silver_chestplate>, <liquid:silver> * 1152, <foundry:mold:15>);
Casting.addRecipe(<mysticalworld:silver_leggings>, <liquid:silver> * 1008, <foundry:mold:16>);
Casting.addRecipe(<mysticalworld:silver_boots>, <liquid:silver> * 576, <foundry:mold:17>);


// cast elemental dragonbone weapons

Casting.addRecipe(<iceandfire:dragonbone_sword_fire>, <liquid:pyrotheum> * 250, <iceandfire:dragonbone_sword>, <iceandfire:fire_dragon_blood>);
Casting.addRecipe(<iceandfire:dragonbone_sword_ice>, <liquid:cryotheum> * 250, <iceandfire:dragonbone_sword>, <iceandfire:ice_dragon_blood>);


// glowstone

CastingTable.addBlockRecipe(<minecraft:glowstone>, <liquid:glowstone> * 1000);
Casting.addRecipe(<minecraft:glowstone>, <liquid:glowstone> * 1000, <foundry:mold:4>);


// liquid ender

Casting.addRecipe(<minecraft:ender_pearl>, <liquid:ender> * 250, <foundry:mold:21>);
Casting.addRecipe(<charm:ender_pearl_block>, <liquid:ender> * 2250, <foundry:mold:4>);
CastingTable.addBlockRecipe(<charm:ender_pearl_block>, <liquid:ender> * 2250);


// some more casting recipes
Casting.addRecipe(<thermalfoundation:material:833>, <liquid:crude_oil> * 250, <foundry:mold:21>); // tar
Casting.addRecipe(<thermalfoundation:material:833>, <liquid:crude_oil> * 250, <foundry:mold:0>); // tar in ingot mold
CastingTable.addIngotRecipe(<thermalfoundation:material:833>, <liquid:crude_oil> * 250); // tar in casting table
Casting.addRecipe(<arcaneworld:ethereal_sword>, <liquid:glowstone> * 1000, <wildnature:amber_sword>, <ore:ingotMithril>);
Casting.addRecipe(<minecraft:golden_apple:1>, <liquid:mana> * 1000, <minecraft:golden_apple>);
Casting.addRecipe(<railcraft:tie:1> * 2, <liquid:water> * 100, <railcraft:concrete>, <railcraft:rebar>); // stone rail ties
Casting.addRecipe(<thermalfoundation:fertilizer:2>, <liquid:redstone> * 500, <thermalfoundation:fertilizer:1>, <ore:dustCharcoal>); // fluxed phyto-gro


// make gears cheaper than making them by hand, just one ingot each
val liquids = [<liquid:iron>, <liquid:gold>, <liquid:copper>, <liquid:tin>, <liquid:bronze>, <liquid:lead>, <liquid:silver>, <liquid:platinum>, <liquid:electrum>] as ILiquidStack[];
val gears = [<crossroads:gear_iron>, <crossroads:gear_gold>, <crossroads:gear_copper>, <crossroads:gear_tin>, <crossroads:gear_bronze>, <crossroads:gear_lead>, <crossroads:gear_silver>, <crossroads:gear_platinum>, <crossroads:gear_electrum>] as IItemStack[];

for i, liquid in liquids {
	Casting.removeRecipe(liquid, <foundry:mold:2>);
	Casting.addRecipe(gears[i], liquid * 144, <foundry:mold:2>);
}