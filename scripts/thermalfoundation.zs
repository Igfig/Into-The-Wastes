import crafttweaker.item.IItemStack;

val toRemove = [<thermalfoundation:coin:*>,<thermalfoundation:upgrade:*>,<thermalfoundation:dye:*>,<thermalfoundation:bait:*>,<thermalfoundation:security>,<thermalfoundation:diagram_redprint>,<thermalfoundation:geode>] as IItemStack[];

val oresToRemove = [0,1,4,5,7] as int[];
val storageToRemove = [4,5,7] as int[];
val storageAlloysToRemove = [2,4,5,6,7] as int[];

val materialsToRemove = [
	22,23,24,25,26,27, // vanilla gears
	58,802, // coke
	68,69,71,98,100,101,102,103, // unwanted dusts
	132,133,135,162,163,164,165,166,167, // unwanted ingots
	196,197,199,226,227,228,229,230,231, // unwanted nuggets
	256,257,258,259,260,261,262,263,264,288,289,290,291,292,293,294,295, // gears
	324,325,327,328,354,356,357,358,359, // plates
	512,513,514,515,640,656,657, // misc parts
	816,817,818,819, // biomass
	832, // rosin
	865,866 // richer slags
] as int[];

val oreDef = <thermalfoundation:ore>.definition;
val storageDef = <thermalfoundation:storage>.definition;
val glassDef = <thermalfoundation:glass>.definition;
val storageAlloyDef = <thermalfoundation:storage_alloy>.definition;
val glassAlloyDef = <thermalfoundation:glass_alloy>.definition;
val materialDef = <thermalfoundation:material>.definition;

for tr in toRemove {
	mods.jei.JEI.removeAndHide(tr);
}	
for otr in oresToRemove {
	mods.jei.JEI.removeAndHide(oreDef.makeStack(otr));
}	
for str in storageToRemove {
	mods.jei.JEI.removeAndHide(storageDef.makeStack(str));
	mods.jei.JEI.removeAndHide(glassDef.makeStack(str));
}	
for satr in storageAlloysToRemove {
	mods.jei.JEI.removeAndHide(storageAlloyDef.makeStack(satr));
	mods.jei.JEI.removeAndHide(glassAlloyDef.makeStack(satr));
}	
for mtr in materialsToRemove {
	mods.jei.JEI.removeAndHide(materialDef.makeStack(mtr));
	recipes.removeByInput(materialDef.makeStack(mtr));
}	
	

// remove a few more recipes manually

mods.jei.JEI.removeAndHide(<thermalfoundation:ore_fluid:1>); // oil shale

recipes.removeByRecipeName("thermalfoundation:fertilizer_2");
recipes.removeByRecipeName("thermalfoundation:fertilizer_3");

mods.jei.JEI.removeAndHide(<thermalfoundation:meter>);


// add new recipes

furnace.addRecipe(<thermalfoundation:material:892>, <ore:oreClathrateOilSand>); // bitumen
furnace.addRecipe(<thermalfoundation:material:833>, <thermalfoundation:material:892>); // tar

recipes.addShapeless("mana_dust", <thermalfoundation:material:1028>, [<thermalfoundation:material:1024>, <thermalfoundation:material:1025>, <thermalfoundation:material:1026>, <thermalfoundation:material:1027>]); // elemental dusts to mana dust


// notes

mods.jei.JEI.addDescription(<ore:blockMithril>, "Produced by allowing a block of silver to come into contact with flowing Primal Mana.");

<thermalfoundation:fertilizer:0>.addTooltip("Fertilizes like bone meal in a 3x3 area");
<thermalfoundation:fertilizer:1>.addTooltip("Fertilizes like bone meal in a 5x5 area");
<thermalfoundation:fertilizer:2>.addTooltip("Fertilizes like bone meal in a 7x7 area");


// replace phyto-gro recipes

recipes.remove(<thermalfoundation:fertilizer:0>);
recipes.remove(<thermalfoundation:fertilizer:1>);
recipes.remove(<thermalfoundation:fertilizer:2>);

recipes.addShapeless(<thermalfoundation:fertilizer:0>, [<minecraft:dye:15>, <ore:dustSaltpeter>, <ore:itemSlag>]); // saltpeter, bone meal, slag -> phyto-gro
recipes.addShapeless(<thermalfoundation:fertilizer:1>, [<thermalfoundation:fertilizer:0>, <ore:dustSaltpeter>,<thermalfoundation:material:800>, <thermalfoundation:material:800>]); // phyto-gro, saltpeter, sawdust -> rich phyto-gro
// and fluxed phyto-gro is in casting.zs


// pyrotheum is a bit too good of a fuel, so weaken it

furnace.setFuel(<thermalfoundation:material:1024>, 6400);


// TODO some way to turn potions into liquid potion
// I guess we'd have to make them depositable into fluid handlers... unless we can collect bucketfuls?