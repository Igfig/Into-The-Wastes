#loader contenttweaker
#priority 20

import mods.contenttweaker.ItemFood;

val worm = mods.contenttweaker.VanillaFactory.createItemFood("worm_cooked", 2);
worm.maxStackSize = 64; // will be overwritten in stacksize.zs
worm.saturation = 1.2;
worm.register();

val dough = mods.contenttweaker.VanillaFactory.createItemFood("wildewheet_dough", 1);
dough.maxStackSize = 64; // will be overwritten in stacksize.zs
dough.saturation = 0.6;
dough.register();