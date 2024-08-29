#loader contenttweaker
#priority 2

import mods.contenttweaker.ItemFood;

val worm = mods.contenttweaker.VanillaFactory.createItemFood("worm_cooked", 4);
worm.maxStackSize = 8; 
worm.saturation = 0.75;
worm.register();