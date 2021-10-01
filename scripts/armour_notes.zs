import crafttweaker.item.IItemStack;

val cool2 = [
	<toughasnails:jelled_slime_helmet>,
	<toughasnails:jelled_slime_chestplate>,
	<toughasnails:jelled_slime_leggings>,
	<toughasnails:jelled_slime_boots>
] as IItemStack[];

val cool1 = [
	<quark:archaeologist_hat>,
	<contenttweaker:silk_head>,
	<contenttweaker:silk_chest>,
	<contenttweaker:silk_legs>,
	<contenttweaker:silk_feet>,
	<zawa:reptile_chest>,
	<zawa:reptile_legs>,
	<zawa:reptile_boots>,
	<zawa:reptile_hood>,
	<iceandfire:deathworm_yellow_helmet>,
	<iceandfire:deathworm_yellow_chestplate>,
	<iceandfire:deathworm_yellow_leggings>,
	<iceandfire:deathworm_yellow_boots>,
	<iceandfire:deathworm_white_helmet>,
	<iceandfire:deathworm_white_chestplate>,
	<iceandfire:deathworm_white_leggings>,
	<iceandfire:deathworm_white_boots>,
	<iceandfire:deathworm_red_helmet>,
	<iceandfire:deathworm_red_chestplate>,
	<iceandfire:deathworm_red_leggings>,
	<iceandfire:deathworm_red_boots>,
	<iceandfire:myrmex_desert_helmet>,
	<iceandfire:myrmex_desert_chestplate>,
	<iceandfire:myrmex_desert_leggings>,
	<iceandfire:myrmex_desert_boots>,
	<iceandfire:myrmex_jungle_helmet>,
	<iceandfire:myrmex_jungle_chestplate>,
	<iceandfire:myrmex_jungle_leggings>,
	<iceandfire:myrmex_jungle_boots>
] as IItemStack[];

val warm1 = [
	<iceandfire:armor_blue_helmet>,
	<iceandfire:armor_blue_chestplate>,
	<iceandfire:armor_blue_leggings>,
	<iceandfire:armor_blue_boots>,
	<iceandfire:armor_white_helmet>,
	<iceandfire:armor_white_chestplate>,
	<iceandfire:armor_white_leggings>,
	<iceandfire:armor_white_boots>,
	<iceandfire:armor_sapphire_helmet>,
	<iceandfire:armor_sapphire_chestplate>,
	<iceandfire:armor_sapphire_leggings>,
	<iceandfire:armor_sapphire_boots>,
	<iceandfire:armor_silver_helmet>,
	<iceandfire:armor_silver_chestplate>,
	<iceandfire:armor_silver_leggings>,
	<iceandfire:armor_silver_boots>,
	<iceandfire:frost_troll_leather_helmet>,
	<iceandfire:frost_troll_leather_chestplate>,
	<iceandfire:frost_troll_leather_leggings>,
	<iceandfire:frost_troll_leather_boots>,
	<iceandfire:mountain_troll_leather_helmet>,
	<iceandfire:mountain_troll_leather_chestplate>,
	<iceandfire:mountain_troll_leather_leggings>,
	<iceandfire:mountain_troll_leather_boots>,
	<toughasnails:wool_helmet>,
	<toughasnails:wool_chestplate>,
	<toughasnails:wool_leggings>,
	<toughasnails:wool_boots>,
	<zawa:fur_chest>,
	<zawa:fur_legs>,
	<zawa:fur_boots>,
	<zawa:fur_hood>
] as IItemStack[];

val warm2 = [
	<zawa:polar_chest>,
	<zawa:polar_legs>,
	<zawa:polar_boots>,
	<zawa:polar_hood>
] as IItemStack[];

for c2 in cool2 {
	c2.addTooltip("Very cooling");
}
for c1 in cool1 {
	c1.addTooltip("Moderately cooling");
}
for w1 in warm1 {
	w1.addTooltip("Moderately warming");
}
for w2 in warm2 {
	w2.addTooltip("Very warming");
}