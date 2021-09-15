// remove Earthworks hammers (they're redundant and clash with existing recipes)

mods.jei.JEI.removeAndHide(<earthworks:tool_wood_hammer>);
mods.jei.JEI.removeAndHide(<earthworks:tool_stone_hammer>);
mods.jei.JEI.removeAndHide(<earthworks:tool_iron_hammer>);
mods.jei.JEI.removeAndHide(<earthworks:tool_gold_hammer>);
mods.jei.JEI.removeAndHide(<earthworks:tool_diamond_hammer>);


// cheaper recipes for mud stuff
val waterBottle = <minecraft:potion>.withTag({Potion: "minecraft:water"}).giveBack(<minecraft:glass_bottle>);

recipes.replaceAllOccurences(<minecraft:water_bucket>, waterBottle, <earthworks:block_mud>);
recipes.replaceAllOccurences(<minecraft:water_bucket>, waterBottle, <earthworks:item_mud>);