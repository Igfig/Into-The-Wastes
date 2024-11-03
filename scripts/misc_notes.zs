// water warnings
val waterBottle = <minecraft:potion>.withTag({Potion: "minecraft:water"});
waterBottle.addTooltip("Not safe to drink");
waterBottle.addTooltip("Boil in a furnace, or craft with a charcoal filter");

<minecraft:cauldron>.addTooltip("Can't pipe fluids in and out, but bottle dispensers work");
<minecraft:cauldron>.addTooltip("Zoo animals can only drink from this or water bowls");

// rationale for why potions make you thirsty
<minecraft:nether_wart>.addTooltip("Unexpectedly salty");

// undocumented item sources
<toughasnails:ice_cube>.addTooltip("Drops from ice blocks");
<toughasnails:magma_shard>.addTooltip("Drops from magma blocks");

// cheese blocks
<rats:block_of_cheese>.addTooltip("Aged to inedibility");

// prospects tool usage notes
<prospects:pan>.addTooltip("Right-click on any underwater block to search for nuggets");
<prospects:pan>.addTooltip("Results indicate larger deposits below");
<prospects:pick>.addTooltip("Right-click on stone blocks to search for nuggets");
<prospects:pick>.addTooltip("Results indicate larger deposits below");
<prospects:sifter>.addTooltip("Right-click on dirt blocks to search for nuggets");
<prospects:sifter>.addTooltip("Results indicate larger deposits below");

// functionality added by Quark
<minecraft:poisonous_potato>.addTooltip("Feed to a baby animal to prevent it growing up");

<base:wrench>.addTooltip("Rotates blocks.");

// Structured Crafting is a little too complicated to describe in text.
mods.jei.JEI.addDescription(<structuredcrafting:structured_crafter>, "Automated in-world crafting. See https://www.curseforge.com/minecraft/mc-mods/structured-crafting for a quick tutorial.");
// TODO I should make a Patchouli book for this instead.

// Soup cans
<contenttweaker:soup_can>.addTooltip("Protected from both rot and rats");
<contenttweaker:soup_can>.addTooltip("Right-click to get a random soup or stew");

// Barakoa spear
<mowziesmobs:spear:*>.addTooltip("Only made by Barakoa");
<mowziesmobs:blowgun:*>.addTooltip("Only made by Barakoa");
<mowziesmobs:dart>.addTooltip("Only made by Barakoa");

// Bronze
<ore:ingotBronze>.addTooltip("Made by mixing copper and tin in an Alloying Crucible");