import crafttweaker.potions.IPotionType;
import crafttweaker.item.IIngredient;
import mods.foundry.Casting;
import mods.inspirations.Cauldron;


// Display

<mysticalworld:pearl>.displayName = "§fPearl"; // basic pearls don't need special names
<arcaneworld:potion_orb>.addTooltip("Grants potion effect while held");


// Infused pearls

val infusedPearl = <mysticalworld:pearl>.withTag({
	display: {LocName:"§eInfused Pearl"},
	"Quark:RuneAttached": true,
	"Quark:RuneColor": 7,
	ench: [{lvl: 1, id: 28}],
	HideFlags: 1
}); // Yellow name, grey glow, Holding I enchant

val infusedPearlx2 = <mysticalworld:pearl>.withTag({
	display: {LocName:"§6Twice-Infused Pearl"},
	ench: [{lvl: 2, id: 28}],
	HideFlags: 1
}); // Gold name, default (purple) glow, Holding II enchant

val infusedPearlx3 = <mysticalworld:pearl>.withTag({
	display: {LocName:"§cThrice-Infused Pearl"},
	"Quark:RuneAttached": true,
	"Quark:RuneColor": 16,
	ench: [{lvl: 3, id: 28}],
	HideFlags: 1
}); // Red name, rainbow glow, Holding III enchant


mods.jei.JEI.addItem(infusedPearl);
mods.jei.JEI.addItem(infusedPearlx2);
mods.jei.JEI.addItem(infusedPearlx3);

Casting.addRecipe(infusedPearl, <liquid:mana> * 1000, <mysticalworld:pearl>, null, 600, true);
Casting.addRecipe(infusedPearlx2, <liquid:mana> * 3000, infusedPearl, <ore:gemTanzanite>, 1200, true);
Casting.addRecipe(infusedPearlx3, <liquid:mana> * 5000, infusedPearlx2, <ore:blockTanzanite>, 2400, true);


// Craft potion catalysts

val pearlLevels = {
	1: infusedPearl,
	2: infusedPearlx2,
	3: infusedPearlx3
} as IIngredient[int];

val catalystPotions = {
	"minecraft:night_vision": 1,
	"minecraft:long_night_vision": 1,
	"minecraft:invisibility": 1,
	"minecraft:long_invisibility": 1,
	"minecraft:leaping": 1,
	"minecraft:long_leaping": 1,
	"minecraft:strong_leaping": 2,
	"minecraft:fire_resistance": 1,
	"minecraft:long_fire_resistance": 1,
	"minecraft:swiftness": 1,
	"minecraft:long_swiftness": 1,
	"minecraft:strong_swiftness": 2,
	"minecraft:slowness": 1,
	"minecraft:long_slowness": 1,
	"minecraft:water_breathing": 1,
	"minecraft:long_water_breathing": 1,
	"minecraft:poison": 1,
	"minecraft:long_poison": 1,
	"minecraft:strong_poison": 2,
	"minecraft:regeneration": 1,
	"minecraft:long_regeneration": 1,
	"minecraft:strong_regeneration": 2,
	"minecraft:strength": 1,
	"minecraft:long_strength": 1,
	"minecraft:strong_strength": 2,
	"minecraft:weakness": 1,
	"minecraft:long_weakness": 1,
	"toughasnails:cold_resistance_type": 1,
	"toughasnails:long_cold_resistance_type": 1,
	"toughasnails:heat_resistance_type": 1,
	"toughasnails:long_heat_resistance_type": 1,
	"railcraft:creosote": 1,
	"railcraft:long_creosote": 1,
	"railcraft:strong_creosote": 2,
	"quark:resilience": 1,
	"quark:long_resilience": 1,
	"quark:strong_resilience": 2,
	"quark:haste": 1,
	"quark:long_haste": 1,
	"quark:strong_haste": 2,
	"quark:mining_fatigue": 1,
	"quark:long_mining_fatigue": 1,
	"quark:strong_mining_fatigue": 2,
	"quark:resistance": 1,
	"quark:long_resistance": 1,
	"quark:strong_resistance": 2,
	"quark:danger_sight": 1,
	"quark:long_danger_sight": 1,
	"inspirations:haste": 1,
	"inspirations:strong_haste": 2,
	"inspirations:fatigue": 1,
	"inspirations:strong_fatigue": 2,
	"inspirations:hunger": 1,
	"inspirations:long_hunger": 1,
	"inspirations:strong_hunger": 2,
	"inspirations:resistance": 1,
	"inspirations:long_resistance": 1,
	"inspirations:levitation": 1,
	"inspirations:long_levitation": 1,
	"inspirations:blindness": 1,
	"inspirations:long_blindness": 1,
	"inspirations:decay": 1,
	"inspirations:long_decay": 2, // probably an error from the modmaker
	"cuisine:cuisine.toughness": 1,
	"cuisine:cuisine.hot": 1,
	"cuisine:cuisine.cold_blood": 1,
	"cuisine:cuisine.dispersal": 1,
	"charm:coffee": 1,
	"charm:ender_sight": 1,
	"cofhcore:haste": 1,
	"cofhcore:haste+": 1,
	"cofhcore:haste2": 2,
	"cofhcore:resistance": 1,
	"cofhcore:resistance+": 1,
	"cofhcore:resistance2": 2,
	"cofhcore:levitation": 1,
	"cofhcore:levitation+": 1,
	"cofhcore:luck": 1,
	"cofhcore:luck+": 1,
	"cofhcore:luck2": 2,
	"cofhcore:unluck": 1,
	"cofhcore:unluck+": 1,
	"cofhcore:unluck2": 2,
	"cofhcore:wither": 1,
	"cofhcore:wither+": 1,
	"cofhcore:wither2": 2,
	"cofhcore:leaping3": 3,
	"cofhcore:swiftness3": 3,
	"cofhcore:poison3": 3,
	"cofhcore:regeneration3": 3,
	"cofhcore:strength3": 3,
	"cofhcore:haste3": 3,
	"cofhcore:resistance3": 3,
	"cofhcore:luck3": 3,
	"cofhcore:unluck3": 3,
	"cofhcore:wither3": 3
} as int[string];


for potion, level in catalystPotions {
	Cauldron.addPotionRecipe(<arcaneworld:potion_orb>.withTag({Potion:potion}), pearlLevels[level], potion, 4);
}