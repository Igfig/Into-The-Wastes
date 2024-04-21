val potion = <minecraft:potion>;
val splash = <minecraft:splash_potion>;
val linger = <minecraft:lingering_potion>;

val shulker = <minecraft:shulker_shell>;
val obsidianDust = <thermalfoundation:material:770>;
val blitzPowder = <thermalfoundation:material:2051>;
val redstone = <minecraft:redstone>;
val glowstone = <minecraft:glowstone>;
val gunpowder = <minecraft:gunpowder>;
val dragonBreath = <minecraft:dragon_breath>;


// remove COFH and Inspirations Resistance potions
// we already have one from Quark

brewing.removeRecipe(potion.withTag({Potion: "minecraft:awkward"}), shulker);
brewing.removeRecipe(splash.withTag({Potion: "minecraft:awkward"}), shulker);
brewing.removeRecipe(linger.withTag({Potion: "minecraft:awkward"}), shulker);
brewing.removeRecipe(potion.withTag({Potion: "minecraft:awkward"}), obsidianDust);
brewing.removeRecipe(splash.withTag({Potion: "minecraft:awkward"}), obsidianDust);
brewing.removeRecipe(linger.withTag({Potion: "minecraft:awkward"}), obsidianDust);

brewing.removeRecipe(potion.withTag({Potion: "cofhcore:resistance"}), redstone);
brewing.removeRecipe(splash.withTag({Potion: "cofhcore:resistance"}), redstone);
brewing.removeRecipe(linger.withTag({Potion: "cofhcore:resistance"}), redstone);
brewing.removeRecipe(potion.withTag({Potion: "cofhcore:resistance"}), glowstone);
brewing.removeRecipe(splash.withTag({Potion: "cofhcore:resistance"}), glowstone);
brewing.removeRecipe(linger.withTag({Potion: "cofhcore:resistance"}), glowstone);
brewing.removeRecipe(potion.withTag({Potion: "cofhcore:resistance"}), gunpowder);
brewing.removeRecipe(splash.withTag({Potion: "cofhcore:resistance"}), dragonBreath);
brewing.removeRecipe(potion.withTag({Potion: "cofhcore:resistance+"}), gunpowder);
brewing.removeRecipe(splash.withTag({Potion: "cofhcore:resistance+"}), dragonBreath);
brewing.removeRecipe(potion.withTag({Potion: "cofhcore:resistance2"}), gunpowder);
brewing.removeRecipe(splash.withTag({Potion: "cofhcore:resistance2"}), dragonBreath);

brewing.removeRecipe(potion.withTag({Potion: "inspirations:resistance"}), redstone);
brewing.removeRecipe(splash.withTag({Potion: "inspirations:resistance"}), redstone);
brewing.removeRecipe(linger.withTag({Potion: "inspirations:resistance"}), redstone);
brewing.removeRecipe(potion.withTag({Potion: "inspirations:resistance"}), gunpowder);
brewing.removeRecipe(splash.withTag({Potion: "inspirations:resistance"}), dragonBreath);
brewing.removeRecipe(potion.withTag({Potion: "inspirations:long_resistance"}), gunpowder);
brewing.removeRecipe(splash.withTag({Potion: "inspirations:long_resistance"}), dragonBreath);

mods.jei.JEI.removeAndHide(potion.withTag({Potion: "inspirations:resistance"}));
mods.jei.JEI.removeAndHide(splash.withTag({Potion: "inspirations:resistance"}));
mods.jei.JEI.removeAndHide(linger.withTag({Potion: "inspirations:resistance"}));
mods.jei.JEI.removeAndHide(potion.withTag({Potion: "inspirations:long_resistance"}));
mods.jei.JEI.removeAndHide(splash.withTag({Potion: "inspirations:long_resistance"}));
mods.jei.JEI.removeAndHide(linger.withTag({Potion: "inspirations:long_resistance"}));

mods.jei.JEI.removeAndHide(potion.withTag({Potion: "cofhcore:resistance2+"}));
mods.jei.JEI.removeAndHide(splash.withTag({Potion: "cofhcore:resistance2+"}));
mods.jei.JEI.removeAndHide(linger.withTag({Potion: "cofhcore:resistance2+"}));
mods.jei.JEI.removeAndHide(potion.withTag({Potion: "cofhcore:resistance3+"}));
mods.jei.JEI.removeAndHide(splash.withTag({Potion: "cofhcore:resistance3+"}));
mods.jei.JEI.removeAndHide(linger.withTag({Potion: "cofhcore:resistance3+"}));

mods.jei.JEI.removeAndHide(<minecraft:tipped_arrow>.withTag({Potion: "inspirations:resistance"}));
mods.jei.JEI.removeAndHide(<minecraft:tipped_arrow>.withTag({Potion: "inspirations:long_resistance"}));
mods.jei.JEI.removeAndHide(<minecraft:tipped_arrow>.withTag({Potion: "cofhcore:resistance2+"}));
mods.jei.JEI.removeAndHide(<minecraft:tipped_arrow>.withTag({Potion: "cofhcore:resistance3+"}));

mods.inspirations.Cauldron.removeBrewingRecipe("inspirations:resistance");
mods.inspirations.Cauldron.removeBrewingRecipe("inspirations:long_resistance");
mods.inspirations.Cauldron.removeBrewingRecipe("cofhcore:resistance");
mods.inspirations.Cauldron.removeBrewingRecipe("cofhcore:resistance+");
mods.inspirations.Cauldron.removeBrewingRecipe("cofhcore:resistance2");
mods.inspirations.Cauldron.removeBrewingRecipe("cofhcore:resistance2+");


// add shulker shell as an ingredient for the Quark version

brewing.addBrew(potion.withTag({Potion: "minecraft:awkward"}), blitzPowder, potion.withTag({Potion: "quark:resistance"}));
brewing.addBrew(splash.withTag({Potion: "minecraft:awkward"}), blitzPowder, splash.withTag({Potion: "quark:resistance"}));
brewing.addBrew(linger.withTag({Potion: "minecraft:awkward"}), blitzPowder, linger.withTag({Potion: "quark:resistance"}));

mods.inspirations.Cauldron.addBrewingRecipe("quark:resistance", "minecraft:awkward", shulker);


// remove COFH levitation potion
// we already have one from Inspirations

brewing.removeRecipe(potion.withTag({Potion: "minecraft:awkward"}), blitzPowder);
brewing.removeRecipe(splash.withTag({Potion: "minecraft:awkward"}), blitzPowder);
brewing.removeRecipe(linger.withTag({Potion: "minecraft:awkward"}), blitzPowder);
brewing.removeRecipe(potion.withTag({Potion: "cofhcore:levitation"}), redstone);
brewing.removeRecipe(splash.withTag({Potion: "cofhcore:levitation"}), redstone);
brewing.removeRecipe(linger.withTag({Potion: "cofhcore:levitation"}), redstone);
brewing.removeRecipe(potion.withTag({Potion: "cofhcore:levitation"}), gunpowder);
brewing.removeRecipe(splash.withTag({Potion: "cofhcore:levitation"}), dragonBreath);
brewing.removeRecipe(potion.withTag({Potion: "cofhcore:levitation+"}), gunpowder);
brewing.removeRecipe(splash.withTag({Potion: "cofhcore:levitation+"}), dragonBreath);

mods.jei.JEI.removeAndHide(potion.withTag({Potion: "cofhcore:levitation"}));
mods.jei.JEI.removeAndHide(splash.withTag({Potion: "cofhcore:levitation"}));
mods.jei.JEI.removeAndHide(linger.withTag({Potion: "cofhcore:levitation"}));
mods.jei.JEI.removeAndHide(potion.withTag({Potion: "cofhcore:levitation+"}));
mods.jei.JEI.removeAndHide(splash.withTag({Potion: "cofhcore:levitation+"}));
mods.jei.JEI.removeAndHide(linger.withTag({Potion: "cofhcore:levitation+"}));

mods.inspirations.Cauldron.removeBrewingRecipe("cofhcore:levitation");
mods.inspirations.Cauldron.removeBrewingRecipe("cofhcore:levitation+");


// add blitz powder as an ingredient for the Inspirations version

brewing.addBrew(potion.withTag({Potion: "minecraft:awkward"}), blitzPowder, potion.withTag({Potion: "inspirations:levitation"}));
brewing.addBrew(splash.withTag({Potion: "minecraft:awkward"}), blitzPowder, splash.withTag({Potion: "inspirations:levitation"}));
brewing.addBrew(linger.withTag({Potion: "minecraft:awkward"}), blitzPowder, linger.withTag({Potion: "inspirations:levitation"}));

mods.inspirations.Cauldron.addBrewingRecipe("inspirations:levitation", "minecraft:awkward", blitzPowder);