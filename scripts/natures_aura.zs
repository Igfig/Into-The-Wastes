// remove long-distance transport

mods.jei.JEI.removeAndHide(<naturesaura:ender_crate>);
mods.jei.JEI.removeAndHide(<naturesaura:ender_access>);


// remove altar of birthing and all animal creation recipes

mods.jei.JEI.removeAndHide(<naturesaura:animal_spawner>);
mods.jei.JEI.hideCategory("naturesaura.animal_spawner");


// alternate use for Spirits of Birthing
// TODO find a way to prevent them spawning entirely
recipes.addShapeless(<minecraft:experience_bottle>, [<naturesaura:birth_spirit>]);


// remove Botanist's Hoe
mods.jei.JEI.removeAndHide(<naturesaura:infused_iron_hoe>);


// remove water bottle altar recipe
mods.naturesaura.Altar.removeRecipe(<minecraft:potion>);
mods.naturesaura.Altar.removeRecipe(<cofh:potion>);