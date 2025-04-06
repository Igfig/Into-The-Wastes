import crafttweaker.item.IItemStack;
import crafttweaker.liquid.ILiquidStack;
import mods.foundry.CastingTable;
import mods.foundry.Casting;

// cast rails with the rail mold

// standard rails, iron
CastingTable.addRodRecipe(<railcraft:rail:0>, <liquid:iron> * 108);
Casting.addRecipe(<railcraft:rail:0>, <liquid:iron> * 108, <foundry:mold:3>); 

// standard rails, steel
CastingTable.addRodRecipe(<railcraft:rail:0> * 2, <liquid:steel> * 108);
Casting.addRecipe(<railcraft:rail:0> * 2, <liquid:steel> * 108, <foundry:mold:3>);

// advanced rails
Casting.addRecipe(<railcraft:rail:1> * 4, <liquid:gold> * 216, <foundry:mold:3>, <ore:dustRedstone>);

// HS rails
Casting.addRecipe(<railcraft:rail:3> * 4, <liquid:steel> * 216, <foundry:mold:3>, <ore:dustPyrotheum>);

// reinforced rails
Casting.addRecipe(<railcraft:rail:4> * 4, <liquid:steel> * 216, <foundry:mold:3>, <ore:dustObsidian>);


// cast rebar

Casting.addRecipe(<railcraft:rebar>, <liquid:iron> * 108, <foundry:mold:3>, <ore:stickWood>); // iron
Casting.addRecipe(<railcraft:rebar> * 2, <liquid:steel> * 108, <foundry:mold:3>, <ore:stickWood>); // steel


// cast elemental fluids to their rods

CastingTable.addRodRecipe(<minecraft:blaze_rod>, <liquid:pyrotheum> * 500);
CastingTable.addRodRecipe(<thermalfoundation:material:2048>, <liquid:cryotheum> * 500);
CastingTable.addRodRecipe(<thermalfoundation:material:2050>, <liquid:aerotheum> * 500);
CastingTable.addRodRecipe(<thermalfoundation:material:2052>, <liquid:petrotheum> * 500);

Casting.addRecipe(<minecraft:blaze_rod>, <liquid:pyrotheum> * 500, <foundry:mold:3>);
Casting.addRecipe(<thermalfoundation:material:2048>, <liquid:cryotheum> * 500, <foundry:mold:3>);
Casting.addRecipe(<thermalfoundation:material:2050>, <liquid:aerotheum> * 500, <foundry:mold:3>);
Casting.addRecipe(<thermalfoundation:material:2052>, <liquid:petrotheum> * 500, <foundry:mold:3>);


// and mana gem

Casting.addRecipe(<contenttweaker:mana_gem>, <liquid:mana> * 250, <foundry:mold:21>);


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

Casting.addRecipe(<iceandfire:dragonbone_sword_fire>, <liquid:pyrotheum> * 1000, <iceandfire:dragonbone_sword>, <iceandfire:fire_dragon_blood>, 0, true);
Casting.addRecipe(<iceandfire:dragonbone_sword_ice>, <liquid:cryotheum> * 1000, <iceandfire:dragonbone_sword>, <iceandfire:ice_dragon_blood>, 0, true);


// glowstone

CastingTable.addBlockRecipe(<minecraft:glowstone>, <liquid:glowstone> * 1000);
Casting.addRecipe(<minecraft:glowstone>, <liquid:glowstone> * 1000, <foundry:mold:4>);


// liquid ender

Casting.addRecipe(<minecraft:ender_pearl>, <liquid:ender> * 250, <foundry:mold:21>);
Casting.addRecipe(<charm:ender_pearl_block>, <liquid:ender> * 2250, <foundry:mold:4>);
CastingTable.addBlockRecipe(<charm:ender_pearl_block>, <liquid:ender> * 2250);


// tar. We use the ingot mold because there's no orb casting table, but we want it to be available before the metal caster.

Casting.addRecipe(<thermalfoundation:material:833>, <liquid:crude_oil> * 250, <foundry:mold:0>); // tar
Casting.addRecipe(<thermalfoundation:material:833>, <liquid:crude_oil_2> * 250, <foundry:mold:0>); // tar
CastingTable.addIngotRecipe(<thermalfoundation:material:833>, <liquid:crude_oil> * 250); // tar in casting table
CastingTable.addIngotRecipe(<thermalfoundation:material:833>, <liquid:crude_oil_2> * 250); // tar in casting table


// some more casting recipes

CastingTable.addBlockRecipe(<minecraft:stone>, <liquid:lava> * 200);
Casting.addRecipe(<minecraft:stone>, <liquid:lava> * 200, <foundry:mold:4>);
Casting.addRecipe(<arcaneworld:ethereal_sword>, <liquid:mana> * 1000, <wildnature:amber_sword>, <minecraft:glowstone>, 0, true);
Casting.addRecipe(<minecraft:golden_apple:1>, <liquid:mana> * 1000, <minecraft:golden_apple>, null, 0, true);
Casting.addRecipe(<railcraft:tie:1> * 2, <liquid:water> * 100, <minecraft:concrete_powder:*>, <railcraft:rebar>, 0, true); // stone rail ties
Casting.addRecipe(<thermalfoundation:fertilizer:2>, <liquid:redstone> * 500, <thermalfoundation:fertilizer:1>, <ore:dustCharcoal>, 0, true); // fluxed phyto-gro
Casting.addRecipe(<thermalfoundation:material:160>, <liquid:iron> * 144, <foundry:mold:0>, <crossroads:vanadium_5_oxide>, 0, false); // vanadium steel
Casting.addRecipe(<minecraft:experience_bottle>, <liquid:experience> * 200, <minecraft:glass_bottle>, null, 0, true);


// cast gears more cheaply than making them by hand, just one ingot each

val liquids = [<liquid:iron>, <liquid:gold>, <liquid:copper>, <liquid:tin>, <liquid:bronze>, <liquid:lead>, <liquid:silver>, <liquid:platinum>, <liquid:electrum>] as ILiquidStack[];
val gears = [<crossroads:gear_iron>, <crossroads:gear_gold>, <crossroads:gear_copper>, <crossroads:gear_tin>, <crossroads:gear_bronze>, <crossroads:gear_lead>, <crossroads:gear_silver>, <crossroads:gear_platinum>, <crossroads:gear_electrum>] as IItemStack[];

for i, liquid in liquids {
	Casting.removeRecipe(liquid, <foundry:mold:2>);
	Casting.addRecipe(gears[i], liquid * 144, <foundry:mold:2>);
}