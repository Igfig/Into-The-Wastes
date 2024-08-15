// water warnings
val waterBottle = <minecraft:potion>.withTag({Potion: "minecraft:water"});
waterBottle.addTooltip("Not safe to drink");
waterBottle.addTooltip("Boil in a furnace, or craft with a charcoal filter");

// rationale for why potions make you thirsty
<minecraft:nether_wart>.addTooltip("Unexpectedly salty.");

// undocumented item sources
<toughasnails:ice_cube>.addTooltip("Drops from ice blocks.");
<toughasnails:magma_shard>.addTooltip("Drops from magma blocks.");

// cheese blocks
<rats:block_of_cheese>.addTooltip("Aged to inedibility.");

// prospects tool usage notes
<prospects:pan>.addTooltip("Right-click on any underwater block to search for nuggets.");
<prospects:pan>.addTooltip("Results indicate larger deposits below.");
<prospects:pick>.addTooltip("Right-click on stone blocks to search for nuggets.");
<prospects:pick>.addTooltip("Results indicate larger deposits below.");
<prospects:sifter>.addTooltip("Right-click on dirt blocks to search for nuggets.");
<prospects:sifter>.addTooltip("Results indicate larger deposits below.");

// functionality added by Quark
<minecraft:poisonous_potato>.addTooltip("Feed to a baby animal to prevent it growing up.");

<base:wrench>.addTooltip("Rotates blocks.");

// Structured Crafting is a little too complicated to describe in text.
mods.jei.JEI.addDescription(<structuredcrafting:structured_crafter>, "Automated in-world crafting. See https://www.curseforge.com/minecraft/mc-mods/structured-crafting for a quick tutorial.");
// TODO I should make a Patchouli book for this instead.

// Soup cans
<contenttweaker:soup_can>.addTooltip("Protected from both rot and rats.");
<contenttweaker:soup_can>.addTooltip("Right-click to get a random soup or stew.");

// Barrel extensions
<ceramics:clay_barrel:0>.addTooltip("Holds 4 buckets of any fluid");
<ceramics:clay_barrel:1>.addTooltip("Place on top of a clay barrel to increase its capacity");
<ceramics:clay_barrel_stained:*>.addTooltip("Holds 4 buckets of any fluid");
<ceramics:clay_barrel_stained_extension:*>.addTooltip("Place on top of a clay barrel to increase its capacity");
<ceramics:porcelain_barrel:*>.addTooltip("Holds 6 buckets of any fluid");
<ceramics:porcelain_barrel_extension:*>.addTooltip("Place on top of a porcelain barrel to increase its capacity");

// Clay barrel
<ceramics:clay_bucket>.addTooltip("Breaks after placing hot fluids");
// I'd put a different message on the ones holding hot fluids, but there are a lot of those. TODO

// Barakoa spear
<mowziesmobs:spear>.addTooltip("Only made by Barakoa");
<mowziesmobs:blowgun>.addTooltip("Only made by Barakoa");
<mowziesmobs:dart>.addTooltip("Only made by Barakoa");

