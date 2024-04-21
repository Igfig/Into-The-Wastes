val bopBamboo = <biomesoplenty:bamboo>;

val cuisineBamboo = <cuisine:bamboo>;
val cuisineBambooPlant = <cuisine:bamboo_plant>;
val bambooCharcoal = <cuisine:material:6>;

val futuremcBamboo = <futuremc:bamboo>;

val zawaBamboo = <zawa:bamboo>;
val zawaDryBamboo = <zawa:dried_bamboo>;
val bambooDecoration = <zawa:bamboo_decortation>;
val driedBambooDecoration = <zawa:dried_bamboo_decortation>;


// oredicts

<ore:stickBamboo>.add(bopBamboo, cuisineBamboo, futuremcBamboo, zawaBamboo, zawaDryBamboo);
<ore:stickWood>.addAll(<ore:stickBamboo>);


// names and tooltips

bopBamboo.displayName = "Bamboo Log";

cuisineBamboo.displayName = "Construction Bamboo";
cuisineBamboo.addTooltip("Forms beams and platforms when placed horizontally.");

futuremcBamboo.addTooltip("Pandas only eat this kind of bamboo.");

mods.jei.JEI.removeAndHide(zawaBamboo);
mods.jei.JEI.removeAndHide(zawaDryBamboo);


// recipes

recipes.removeByRecipeName("futuremc:else/stick_from_bamboo"); // we already have bamboo in the stickWood oredict

recipes.remove(bambooDecoration);
recipes.remove(driedBambooDecoration);

recipes.addShaped("bamboo_decoration", bambooDecoration * 2, [
	[<ore:stickBamboo>,<ore:stickBamboo>,<ore:stickBamboo>],
	[<ore:stickBamboo>,<ore:stickBamboo>,<ore:stickBamboo>],
	[<ore:stickBamboo>,<ore:stickBamboo>,<ore:stickBamboo>]]);
recipes.addShaped("dried_bamboo_decoration", driedBambooDecoration * 2, [
	[<ore:stickBamboo>,<ore:stickBamboo>,<ore:stickBamboo>],
	[<ore:stickBamboo>,       null,      <ore:stickBamboo>],
	[<ore:stickBamboo>,<ore:stickBamboo>,<ore:stickBamboo>]]);

recipes.replaceAllOccurences(futuremcBamboo, <ore:stickBamboo>, <futuremc:scaffolding>);
recipes.replaceAllOccurences(zawaDryBamboo, <ore:stickBamboo>, <zawa:bamboo_fence>);

furnace.remove(bambooCharcoal);
furnace.addRecipe(bambooCharcoal, <ore:stickBamboo>, 0.1);