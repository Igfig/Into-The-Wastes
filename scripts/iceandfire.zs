#priority 2

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.TinkersForging.Anvil;


// remove silver armor

val removeFromAnvil = [
	<iceandfire:armor_silver_metal_helmet>,
	<iceandfire:armor_silver_metal_chestplate>,
	<iceandfire:armor_silver_metal_leggings>,
	<iceandfire:armor_silver_metal_boots>
] as IItemStack[];

for rfa in removeFromAnvil {
	Anvil.removeRecipe(rfa);
	mods.jei.JEI.removeAndHide(rfa);
}


// new recipes for monster-part gear

val materials = [
	<iceandfire:deathworm_chitin:0>,
	<iceandfire:deathworm_chitin:1>,
	<iceandfire:deathworm_chitin:2>,
	<iceandfire:myrmex_desert_chitin>,
	<iceandfire:myrmex_jungle_chitin>,
	<iceandfire:dragonsteel_fire_ingot>,
	<iceandfire:dragonsteel_ice_ingot>,
	<iceandfire:dragonscales_red>,
	<iceandfire:dragonscales_bronze>,
	<iceandfire:dragonscales_blue>,
	<iceandfire:dragonscales_white>,
	<iceandfire:dragonscales_sapphire>,
	<iceandfire:dragonscales_silver>,
	<iceandfire:troll_leather_forest>,
	<iceandfire:troll_leather_frost>,
	<iceandfire:troll_leather_mountain>
] as IIngredient[];

val helmets = [
	<iceandfire:deathworm_yellow_helmet>,
	<iceandfire:deathworm_white_helmet>,
	<iceandfire:deathworm_red_helmet>,
	<iceandfire:myrmex_desert_helmet>,
	<iceandfire:myrmex_jungle_helmet>,
	<iceandfire:dragonsteel_fire_helmet>,
	<iceandfire:dragonsteel_ice_helmet>,
	<iceandfire:armor_red_helmet>,
	<iceandfire:armor_bronze_helmet>,
	<iceandfire:armor_blue_helmet>,
	<iceandfire:armor_white_helmet>,
	<iceandfire:armor_sapphire_helmet>,
	<iceandfire:armor_silver_helmet>,
	<iceandfire:forest_troll_leather_helmet>,
	<iceandfire:frost_troll_leather_helmet>,
	<iceandfire:mountain_troll_leather_helmet>
] as IItemStack[];

val chestplates = [
	<iceandfire:deathworm_yellow_chestplate>,
	<iceandfire:deathworm_white_chestplate>,
	<iceandfire:deathworm_red_chestplate>,
	<iceandfire:myrmex_desert_chestplate>,
	<iceandfire:myrmex_jungle_chestplate>,
	<iceandfire:dragonsteel_fire_chestplate>,
	<iceandfire:dragonsteel_ice_chestplate>,
	<iceandfire:armor_red_chestplate>,
	<iceandfire:armor_bronze_chestplate>,
	<iceandfire:armor_blue_chestplate>,
	<iceandfire:armor_white_chestplate>,
	<iceandfire:armor_sapphire_chestplate>,
	<iceandfire:armor_silver_chestplate>,
	<iceandfire:forest_troll_leather_chestplate>,
	<iceandfire:frost_troll_leather_chestplate>,
	<iceandfire:mountain_troll_leather_chestplate>
] as IItemStack[];

val leggings = [
	<iceandfire:deathworm_yellow_leggings>,
	<iceandfire:deathworm_white_leggings>,
	<iceandfire:deathworm_red_leggings>,
	<iceandfire:myrmex_desert_leggings>,
	<iceandfire:myrmex_jungle_leggings>,
	<iceandfire:dragonsteel_fire_leggings>,
	<iceandfire:dragonsteel_ice_leggings>,
	<iceandfire:armor_red_leggings>,
	<iceandfire:armor_bronze_leggings>,
	<iceandfire:armor_blue_leggings>,
	<iceandfire:armor_white_leggings>,
	<iceandfire:armor_sapphire_leggings>,
	<iceandfire:armor_silver_leggings>,
	<iceandfire:forest_troll_leather_leggings>,
	<iceandfire:frost_troll_leather_leggings>,
	<iceandfire:mountain_troll_leather_leggings>
] as IItemStack[];

val boots = [
	<iceandfire:deathworm_yellow_boots>,
	<iceandfire:deathworm_white_boots>,
	<iceandfire:deathworm_red_boots>,
	<iceandfire:myrmex_desert_boots>,
	<iceandfire:myrmex_jungle_boots>,
	<iceandfire:dragonsteel_fire_boots>,
	<iceandfire:dragonsteel_ice_boots>,
	<iceandfire:armor_red_boots>,
	<iceandfire:armor_bronze_boots>,
	<iceandfire:armor_blue_boots>,
	<iceandfire:armor_white_boots>,
	<iceandfire:armor_sapphire_boots>,
	<iceandfire:armor_silver_boots>,
	<iceandfire:forest_troll_leather_boots>,
	<iceandfire:frost_troll_leather_boots>,
	<iceandfire:mountain_troll_leather_boots>
] as IItemStack[];


for i, material in materials {
	recipes.remove(helmets[i]);
	recipes.remove(chestplates[i]);
	recipes.remove(leggings[i]);
	recipes.remove(boots[i]);
	
	recipes.addShaped(helmets[i], [
		[material,material,material],
		[material,<thermalfoundation:armor.helmet_lead>,material]
	]);
	recipes.addShaped(chestplates[i], [
		[material,<thermalfoundation:armor.plate_lead>,material],
		[material,material,material],
		[material,material,material]
	]);
	recipes.addShaped(helmets[i], [
		[material,material,material],
		[material,<thermalfoundation:armor.legs_lead>,material],
		[material,null,material]
	]);
	recipes.addShaped(boots[i], [
		[material,<thermalfoundation:armor.boots_lead>,material],
		[material,null,material]
	]);
}


// sea serpent armour has a slightly different recipe

val tide_materials = [
	<iceandfire:sea_serpent_scales_blue>,
	<iceandfire:sea_serpent_scales_bronze>,
	<iceandfire:sea_serpent_scales_deepblue>,
	<iceandfire:sea_serpent_scales_green>,
	<iceandfire:sea_serpent_scales_purple>,
	<iceandfire:sea_serpent_scales_red>,
	<iceandfire:sea_serpent_scales_teal>
] as IIngredient[];

val tide_helmets = [
	<iceandfire:tide_blue_helmet>,
	<iceandfire:tide_bronze_helmet>,
	<iceandfire:tide_deepblue_helmet>,
	<iceandfire:tide_green_helmet>,
	<iceandfire:tide_purple_helmet>,
	<iceandfire:tide_red_helmet>,
	<iceandfire:tide_teal_helmet>
] as IItemStack[];

val tide_chestplates = [
	<iceandfire:tide_blue_chestplate>,
	<iceandfire:tide_bronze_chestplate>,
	<iceandfire:tide_deepblue_chestplate>,
	<iceandfire:tide_green_chestplate>,
	<iceandfire:tide_purple_chestplate>,
	<iceandfire:tide_red_chestplate>,
	<iceandfire:tide_teal_chestplate>
] as IItemStack[];

val tide_leggings = [
	<iceandfire:tide_blue_leggings>,
	<iceandfire:tide_bronze_leggings>,
	<iceandfire:tide_deepblue_leggings>,
	<iceandfire:tide_green_leggings>,
	<iceandfire:tide_purple_leggings>,
	<iceandfire:tide_red_leggings>,
	<iceandfire:tide_teal_leggings>
] as IItemStack[];

val tide_boots = [
	<iceandfire:tide_blue_boots>,
	<iceandfire:tide_bronze_boots>,
	<iceandfire:tide_deepblue_boots>,
	<iceandfire:tide_green_boots>,
	<iceandfire:tide_purple_boots>,
	<iceandfire:tide_red_boots>,
	<iceandfire:tide_teal_boots>
] as IItemStack[];

val shinyScales = <iceandfire:shiny_scales>;

for i, material in tide_materials {
	recipes.remove(tide_helmets[i]);
	recipes.remove(tide_chestplates[i]);
	recipes.remove(tide_leggings[i]);
	recipes.remove(tide_boots[i]);
	
	recipes.addShaped(tide_helmets[i], [
		[shinyScales,null,shinyScales],
		[material,material,material],
		[material,<thermalfoundation:armor.helmet_lead>,material]
	]);
	recipes.addShaped(tide_chestplates[i], [
		[material,<thermalfoundation:armor.plate_lead>,material],
		[material,material,material],
		[shinyScales,material,shinyScales]
	]);
	recipes.addShaped(tide_helmets[i], [
		[material,material,material],
		[material,<thermalfoundation:armor.legs_lead>,material],
		[shinyScales,null,shinyScales]
	]);
	recipes.addShaped(tide_boots[i], [
		[shinyScales, null, shinyScales],
		[material,<thermalfoundation:armor.boots_lead>,material],
		[material,null,material]
	]);
}

// TODO swords and other weapons too