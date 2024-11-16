// replace all instances of water buckets in recipes with bottles. 

val waterBottle = <minecraft:potion>.withTag({Potion: "minecraft:water"});
val waterBottleIngredient = <minecraft:potion>.withTag({Potion: "minecraft:water"}).giveBack(<minecraft:glass_bottle>);
val purifiedBottleIngredient = <toughasnails:purified_water_bottle>.giveBack(<minecraft:glass_bottle>);
val clayWaterBucket = <ceramics:clay_bucket>.withTag({fluids: {FluidName: "water", Amount: 1000}});

val ironBucketPurified = <forge:bucketfilled>.withTag({FluidName: "purified_water", Amount: 1000});
val clayBucketPurified = <ceramics:clay_bucket>.withTag({fluids: {FluidName: "purified_water", Amount: 1000}});

recipes.replaceAllOccurences(<minecraft:water_bucket>, waterBottleIngredient);
recipes.replaceAllOccurences(clayWaterBucket, waterBottleIngredient);
recipes.replaceAllOccurences(<ore:listAllwater>, waterBottleIngredient);

// exception: cryotheum and water to ice should need a whole bucket

recipes.replaceAllOccurences(waterBottleIngredient, <minecraft:water_bucket> | clayWaterBucket, <minecraft:ice>);


// Water in clay buckets should also be purifiable

furnace.addRecipe(
	<ceramics:clay_bucket>.withTag({fluids: {FluidName: "purified_water", Amount: 1000}}), 
	<ceramics:clay_bucket>.withTag({fluids: {FluidName: "water", Amount: 1000}}));


// convert distilled water to purified water
// there're also some water-purifying recipes using the alloy crucible in alloys.zs

recipes.addShapeless(
	"distilled_water_to_purified__iron", 
	ironBucketPurified,
	[<forge:bucketfilled>.withTag({FluidName: "distilledwater", Amount: 1000}).noReturn()]);
recipes.addShapeless(
	"distilled_water_to_purified__clay", 
	<ceramics:clay_bucket>.withTag({fluids: {FluidName: "purified_water", Amount: 1000}}),
	[<ceramics:clay_bucket>.withTag({fluids: {FluidName: "distilledwater", Amount: 1000}}).noReturn()]);
	

// recipes to move water from buckets to bottles
// they have to do some tricky stuff, because we don't want you to get a stack of four water bottles
recipes.addShapeless("water_bottles", waterBottle * 4, [<minecraft:water_bucket> | clayWaterBucket, <minecraft:glass_bottle>, <minecraft:glass_bottle>, <minecraft:glass_bottle>, <minecraft:glass_bottle>], function(out, ins, cInfo){
	return waterBottle;
}, function(out,cInfo,player){
	player.give(waterBottle);
	player.give(waterBottle);
	player.give(waterBottle);
});
recipes.addShapeless("purified_bottles", <toughasnails:purified_water_bottle> * 4, [ironBucketPurified | clayBucketPurified, <minecraft:glass_bottle>, <minecraft:glass_bottle>, <minecraft:glass_bottle>, <minecraft:glass_bottle>], function(out, ins, cInfo){
	return <toughasnails:purified_water_bottle>;
}, function(out,cInfo,player){
	player.give(<toughasnails:purified_water_bottle>);
	player.give(<toughasnails:purified_water_bottle>);
	player.give(<toughasnails:purified_water_bottle>);
});


// recipes to put water from bottles into a bucket or canteen

recipes.addShapeless("water_bucket_iron", <minecraft:water_bucket>, [<minecraft:bucket>, waterBottleIngredient, waterBottleIngredient, waterBottleIngredient, waterBottleIngredient]);
recipes.addShapeless("water_bucket_clay", clayWaterBucket, [<ceramics:clay_bucket>, waterBottleIngredient, waterBottleIngredient, waterBottleIngredient, waterBottleIngredient]);
recipes.addShapeless("water_canteen", <toughasnails:canteen:1>, [<toughasnails:canteen:0>, waterBottleIngredient, waterBottleIngredient, waterBottleIngredient]);

recipes.addShapeless("purified_bucket_iron", ironBucketPurified, [<minecraft:bucket>, purifiedBottleIngredient, purifiedBottleIngredient, purifiedBottleIngredient, purifiedBottleIngredient]);
recipes.addShapeless("purified_bucket_clay", clayBucketPurified, [<ceramics:clay_bucket>, purifiedBottleIngredient, purifiedBottleIngredient, purifiedBottleIngredient, purifiedBottleIngredient]);
recipes.addShapeless("purified_canteen", <toughasnails:canteen:2>, [<toughasnails:canteen:0>, purifiedBottleIngredient, purifiedBottleIngredient, purifiedBottleIngredient]);


