// Automation module
<quark:chute>.addTooltip("Drops inserted items");
<minecraft:slime>.addTooltip("Sticks to green, yellow, and cyan slime, but not other colors");
<quark:color_slime:0>.addTooltip("Sticks to red, yellow, and magenta slime, but not other colors");
<quark:color_slime:1>.addTooltip("Sticks to blue, cyan, and magenta slime, but not other colors");
<quark:color_slime:2>.addTooltip("Sticks to cyan, blue, and green slime, but not other colors");
<quark:color_slime:3>.addTooltip("Sticks to magenta, red, and blue slime, but not other colors");
<quark:color_slime:4>.addTooltip("Sticks to yellow, red, and green slime, but not other colors");
<quark:ender_watcher>.addTooltip("Produces a redstone signal when a player looks directly at it");
<quark:gravisand>.addTooltip("Floats upwards when it receive a redstone signal");
<quark:gold_button>.addTooltip("Short pulse");
<quark:iron_button>.addTooltip("Long pulse");
<quark:obsidian_pressure_plate>.addTooltip("Only triggers for players");
<quark:redstone_inductor>.addTooltip("Outputs sum of other three sides");
<quark:redstone_randomizer>.addTooltip("When powered from back, randomly activates either right or left output");
<quark:sugar_block>.addTooltip("Dissolves in water");

// remove Iron Rod because it makes the Crossroaads drill obsolete
recipes.remove(<quark:iron_rod>, false);
mods.jei.JEI.removeAndHide(<quark:iron_rod>);

// Building module
<quark:sturdy_stone>.addTooltip("Can't be moved by pistons");
<quark:trowel>.addTooltip("Places random blocks from your hotbar");

//Decoration module
<quark:glass_item_frame>.addTooltip("Looks frameless when holding an item");
<quark:grate>.addTooltip("Animals refuse to walk on it.");
<quark:grate>.addTooltip("Items fall right through.");
<quark:iron_ladder>.addTooltip("Doesn't need to be against a wall, as long as the top is anchored");

recipes.replaceAllOccurences(<quark:tallow>, <ore:tallow>, <quark:candle>); // so we can use other tallow-like items

//World module
<quark:archaeologist_hat>.displayName = "Paleontolgist Hat";
<quark:archaeologist_hat>.addTooltip("Slightly increases Fortune when mining");
<quark:diamond_heart>.addTooltip("Dropped by Stonelings.");
<quark:diamond_heart>.addTooltip("Use on a stone block to create your own pet Stoneling.");
<quark:soul_bead>.addTooltip("Dropped by Wraiths.");
<quark:soul_bead>.addTooltip("Curses you when broken.");

// Misc module
<quark:enderdragon_scale>.displayName = "Ender Dragon Scale";
<quark:enderdragon_scale>.addTooltip("Craft with an elytra to duplicate it");
<quark:ancient_tome>.addTooltip("Combine in an anvil with an Enchanted Tome of the same level");
<quark:rune>.addTooltip("Apply to enchanted item in an anvil to change glint colour");
<quark:horse_whistle>.addTooltip("Summons your horses");
<quark:parrot_egg>.addTooltip("Feed a parrot some beetroot to acquire");
<quark:slime_bucket>.addTooltip("Awakens when in a slime chunk");
<quark:soul_powder>.addTooltip("Use in the Nether to show direction to the nearest nether fortress");
<quark:black_ash>.addTooltip("Place to prevent mob spawning on placed block or block above");