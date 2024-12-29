import mods.roots.Mortar;

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


// and add a recipe to grind chalk to dust. There's also one in grindstone.zs

Mortar.addRecipe("grind_chalk", <earthworks:item_chalk> * 4, [<earthworks:block_chalk>]);


// notes on tools

<ore:earthworksTools>.add(<earthworks:tool_square>, <earthworks:tool_hand_axe>, <earthworks:tool_adz>, <earthworks:tool_compass>, <earthworks:tool_froe>, <earthworks:tool_hand_planer>, <earthworks:tool_level>, <earthworks:tool_saw>);

<ore:earthworksTools>.addTooltip("Sneak-right-click to rotate timber-framed blocks");