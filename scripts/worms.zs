#loader contenttweaker
#priority 2

import mods.contenttweaker.ItemFood;

val worm = mods.contenttweaker.VanillaFactory.createItemFood("worm_cooked", 2);
worm.maxStackSize = 8; 
worm.saturation = 1.0;
worm.register();