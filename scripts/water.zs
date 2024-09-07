// replace all instances of water buckets in recipes with bottles. 

val waterBottle = <minecraft:potion>.withTag({Potion: "minecraft:water"}).giveBack(<minecraft:glass_bottle>);

recipes.replaceAllOccurences(<minecraft:water_bucket>, waterBottle);
recipes.replaceAllOccurences(<ore:listAllwater>, waterBottle);

// exception: cryotheum and water to ice should need a whole bucket

recipes.replaceAllOccurences(waterBottle, <minecraft:water_bucket>, <minecraft:ice>);


// Water in clay buckets should also be purifiable

furnace.addRecipe(
	<ceramics:clay_bucket>.withTag({fluids: {FluidName: "purified_water", Amount: 1000}}), 
	<ceramics:clay_bucket>.withTag({fluids: {FluidName: "water", Amount: 1000}}));


// convert distilled water to purified water
// there're also some water-purifying recipes using the alloy crucible in alloys.zs

recipes.addShapeless(
	"distilled_water_to_purified__iron", 
	<forge:bucketfilled>.withTag({FluidName: "purified_water", Amount: 1000}),
	[<forge:bucketfilled>.withTag({FluidName: "distilledwater", Amount: 1000}).noReturn()]);
recipes.addShapeless(
	"distilled_water_to_purified__clay", 
	<ceramics:clay_bucket>.withTag({fluids: {FluidName: "purified_water", Amount: 1000}}),
	[<ceramics:clay_bucket>.withTag({fluids: {FluidName: "distilledwater", Amount: 1000}}).noReturn()]);