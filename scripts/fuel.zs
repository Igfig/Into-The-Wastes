// recipes for oil and fuel

mods.foundry.AlloyingCrucible.addRecipe(<liquid:refined_oil> * 3, <liquid:crude_oil> * 3, <liquid:steam> * 12);
mods.foundry.AlloyingCrucible.addRecipe(<liquid:refined_fuel> * 3, <liquid:refined_oil> * 3, <liquid:aerotheum> * 3);


// mark them as fuels

furnace.setFuel(<forge:bucketfilled>.onlyWithTag({FluidName:"crude_oil",Amount:1000}), 12800);
furnace.setFuel(<forge:bucketfilled>.onlyWithTag({FluidName:"refined_oil",Amount:1000}), 25600);
furnace.setFuel(<forge:bucketfilled>.onlyWithTag({FluidName:"refined_fuel",Amount:1000}), 64000);

// XXX do we need to specify that the bucket is returned?