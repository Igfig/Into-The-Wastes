// add all guidebooks to an oredict to make them easier to find

val guides = <ore:guides>;

guides.addItems([
	<patchouli:guide_book:*>,
	<guideapi:crossroads-info_guide>,
	<zawa:care_guide>,
	<zawa:exploration_guide>,
	<iceandfire:bestiary>
]);

// add a recipe for the Surviving The Wastes guide, since the recipe from Patchouli isn't working

recipes.addShapeless("itw_tips", <patchouli:guide_book>.withTag({"patchouli:book": "patchouli:itw_tips"}), [<minecraft:book>, <ore:sand>]);