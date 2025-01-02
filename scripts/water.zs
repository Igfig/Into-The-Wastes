val waterBottle = <minecraft:potion>.withTag({Potion: "minecraft:water"});
val clayWaterBucket = <ceramics:clay_bucket>.withTag({fluids: {FluidName: "water", Amount: 1000}});

val ironBucketPurified = <forge:bucketfilled>.withTag({FluidName: "purified_water", Amount: 1000});
val clayBucketPurified = <ceramics:clay_bucket>.withTag({fluids: {FluidName: "purified_water", Amount: 1000}});

val waterBottleIngredient = waterBottle.transformReplace(<minecraft:glass_bottle>);
val purifiedBottleIngredient = <toughasnails:purified_water_bottle>.transformReplace(<minecraft:glass_bottle>);

val waterBucketIngredient = <minecraft:water_bucket>.transformReplace(<minecraft:bucket>) | clayWaterBucket.transformReplace(<ceramics:clay_bucket>);
val purifiedBucketIngredient = ironBucketPurified.transformReplace(<minecraft:bucket>) | clayBucketPurified.transformReplace(<ceramics:clay_bucket>);


// replace all instances of water buckets in recipes with bottles. 

recipes.replaceAllOccurences(<minecraft:water_bucket>, waterBottleIngredient);
recipes.replaceAllOccurences(clayWaterBucket, waterBottleIngredient);
recipes.replaceAllOccurences(<ore:listAllwater>, waterBottleIngredient);

// exception: cryotheum and water to ice should need a whole bucket

recipes.replaceAllOccurences(waterBottleIngredient, <minecraft:water_bucket> | clayWaterBucket, <minecraft:ice>);


// Water in clay buckets should also be purifiable

furnace.addRecipe(clayBucketPurified, clayWaterBucket);


// convert distilled water to purified water
// there're also some water-purifying recipes using the alloy crucible in alloys.zs

recipes.addShapeless(
	"distilled_water_to_purified__iron", 
	ironBucketPurified,
	[<forge:bucketfilled>.withTag({FluidName: "distilledwater", Amount: 1000}).noReturn()]);
recipes.addShapeless(
	"distilled_water_to_purified__clay", 
	clayBucketPurified,
	[<ceramics:clay_bucket>.withTag({fluids: {FluidName: "distilledwater", Amount: 1000}}).noReturn()]);
	

// recipes to move water from buckets to bottles
// they have to do some tricky stuff, because we don't want you to get a stack of four water bottles

recipes.addShapeless("water_bottles", waterBottle * 4, [waterBucketIngredient, <minecraft:glass_bottle>, <minecraft:glass_bottle>, <minecraft:glass_bottle>, <minecraft:glass_bottle>], function(out, ins, cInfo){
	return waterBottle;
}, function(out,cInfo,player){
	player.give(waterBottle);
	player.give(waterBottle);
	player.give(waterBottle);
});
recipes.addShapeless("purified_bottles", <toughasnails:purified_water_bottle> * 4, [purifiedBucketIngredient, <minecraft:glass_bottle>, <minecraft:glass_bottle>, <minecraft:glass_bottle>, <minecraft:glass_bottle>], function(out, ins, cInfo){
	return <toughasnails:purified_water_bottle>;
}, function(out,cInfo,player){
	player.give(<toughasnails:purified_water_bottle>);
	player.give(<toughasnails:purified_water_bottle>);
	player.give(<toughasnails:purified_water_bottle>);
});


// recipes to move water from buckets to a canteen
// TODO update Purified Water Fix to make canteens hold one full bucket, i.e. four swigs

recipes.addShapeless("water_bucket_canteen", <toughasnails:canteen:1>, [<toughasnails:canteen:0>, waterBucketIngredient]);
recipes.addShapeless("purified_bucket_canteen", <toughasnails:canteen:2>, [<toughasnails:canteen:0>, purifiedBucketIngredient]);

recipes.addShapeless("water_bucket_canteen_plus_bottle", <toughasnails:canteen:1>, [<toughasnails:canteen:0>, waterBucketIngredient, <minecraft:glass_bottle>], function(out, ins, cInfo){
	return <toughasnails:canteen:1>;
}, function(out,cInfo,player){
	player.give(waterBottle); // the bottle receives the extra 250mB
});
recipes.addShapeless("purified_bucket_canteen_plus_bottle", <toughasnails:canteen:2>, [<toughasnails:canteen:0>, purifiedBucketIngredient, <minecraft:glass_bottle>], function(out, ins, cInfo){
	return <toughasnails:canteen:2>;
}, function(out,cInfo,player){
	player.give(<toughasnails:purified_water_bottle>); // the bottle receives the extra 250mB
});


// recipes to put water from bottles into a bucket or canteen

recipes.addShapeless("water_bucket_iron", <minecraft:water_bucket>, [<minecraft:bucket>, waterBottleIngredient, waterBottleIngredient, waterBottleIngredient, waterBottleIngredient]);
recipes.addShapeless("water_bucket_clay", clayWaterBucket, [<ceramics:clay_bucket>, waterBottleIngredient, waterBottleIngredient, waterBottleIngredient, waterBottleIngredient]);
recipes.addShapeless("water_canteen", <toughasnails:canteen:1>, [<toughasnails:canteen:0>, waterBottleIngredient, waterBottleIngredient, waterBottleIngredient]);

recipes.addShapeless("purified_bucket_iron", ironBucketPurified, [<minecraft:bucket>, purifiedBottleIngredient, purifiedBottleIngredient, purifiedBottleIngredient, purifiedBottleIngredient]);
recipes.addShapeless("purified_bucket_clay", clayBucketPurified, [<ceramics:clay_bucket>, purifiedBottleIngredient, purifiedBottleIngredient, purifiedBottleIngredient, purifiedBottleIngredient]);
recipes.addShapeless("purified_bottles_canteen", <toughasnails:canteen:2>, [<toughasnails:canteen:0>, purifiedBottleIngredient, purifiedBottleIngredient, purifiedBottleIngredient]);


