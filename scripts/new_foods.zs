#loader contenttweaker
#priority 20

import mods.contenttweaker.ItemFood;

val worm = mods.contenttweaker.VanillaFactory.createItemFood("worm_cooked", 2);
worm.maxStackSize = 64; // will be overwritten in stacksize.zs
worm.saturation = 1;
worm.register();

val shrimp = mods.contenttweaker.VanillaFactory.createItemFood("shrimp_cooked", 2);
shrimp.maxStackSize = 64; // will be overwritten in stacksize.zs
shrimp.saturation = 1;
shrimp.register();

val mussels = mods.contenttweaker.VanillaFactory.createItemFood("mussels_cooked", 2);
mussels.maxStackSize = 64; // will be overwritten in stacksize.zs
mussels.saturation = 1;
mussels.register();

val dough = mods.contenttweaker.VanillaFactory.createItemFood("wildewheet_dough", 1);
dough.maxStackSize = 64; // will be overwritten in stacksize.zs
dough.saturation = 0.6;
dough.register();