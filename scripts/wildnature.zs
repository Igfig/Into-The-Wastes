import crafttweaker.item.IItemStack;

var fullyRemove = [
<wildnature:amethyst>,<wildnature:amethyst_shard>,<wildnature:amethyst_ore>,<wildnature:amethyst_block>,
<wildnature:sapphire>,<wildnature:sapphire_shard>,<wildnature:sapphire_ore>,<wildnature:sapphire_block>,
<wildnature:ruby>,<wildnature:ruby_shard>,<wildnature:ruby_ore>,<wildnature:ruby_block>,
<wildnature:amber>,<wildnature:amber_ore>,<wildnature:amber_block>,
<wildnature:malachite>,<wildnature:malachite_shard>,<wildnature:malachite_ore>,<wildnature:malachite_block>,
<wildnature:silver_ingot>,<wildnature:silver_ore>,<wildnature:silver_block>,<wildnature:silver_rod>,<wildnature:silver_sword>,<wildnature:silver_hoe>,<wildnature:silver_axe>,<wildnature:silver_pickaxe>,<wildnature:silver_shovel>,
<wildnature:steel_ingot>,<wildnature:steel_block>,<wildnature:steel_rod>,<wildnature:steel_sword>,<wildnature:steel_hoe>,<wildnature:steel_axe>,<wildnature:steel_pickaxe>,<wildnature:steel_shovel>,
<wildnature:diamond_rod>,
<wildnature:ironworks>] as IItemStack[];
var removeRecipes = [
<wildnature:amethyst_sword>,<wildnature:amethyst_hoe>,<wildnature:amethyst_axe>,<wildnature:amethyst_pickaxe>,<wildnature:amethyst_shovel>,
<wildnature:sapphire_sword>,<wildnature:sapphire_hoe>,<wildnature:sapphire_axe>,<wildnature:sapphire_pickaxe>,<wildnature:sapphire_shovel>,
<wildnature:ruby_sword>,<wildnature:ruby_hoe>,<wildnature:ruby_axe>,<wildnature:ruby_pickaxe>,<wildnature:ruby_shovel>,
<wildnature:amber_sword>,<wildnature:amber_hoe>,<wildnature:amber_axe>,<wildnature:amber_pickaxe>,<wildnature:amber_shovel>,
<wildnature:malachite_sword>,<wildnature:malachite_hoe>,<wildnature:malachite_axe>,<wildnature:malachite_pickaxe>,<wildnature:malachite_shovel>
] as IItemStack[];

for fr in fullyRemove {
	mods.jei.JEI.removeAndHide(fr);
}
for rr in removeRecipes {
	recipes.remove(rr);
}