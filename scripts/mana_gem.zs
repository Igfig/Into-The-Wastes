#loader contenttweaker
#priority 20

import mods.contenttweaker.Item;

// add the Mana Gem: a solid form of mana dust
// We'll add its recipe and behaviour in other scripts

var manaGem = mods.contenttweaker.VanillaFactory.createItem("mana_gem");
manaGem.rarity = "EPIC";
manaGem.glowing = true;
manaGem.register();