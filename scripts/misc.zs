// remove rain collectors (they're mostly worse than barrels or basins)
mods.jei.JEI.removeAndHide(<toughasnails:rain_collector>);


// recipe for sponges

val cellulose = <thermalfoundation:material:801>;
val yellowool = <minecraft:wool:4>;
val sulfurdst = <ore:dustSulfur>;

recipes.addShaped("sponge", <minecraft:sponge>, [
	[cellulose,yellowool,cellulose],
	[yellowool,sulfurdst,yellowool],
	[cellulose,yellowool,cellulose]]);


// change wrench recipe

recipes.remove(<base:wrench>, false);
recipes.addShaped("wrench", <base:wrench>, [
	[<ore:ingotIron>,null,<ore:ingotIron>],
	[     null, <ore:ingotIron>, null    ],
	[     null, <ore:ingotIron>, null    ]]);


// erase written books

recipes.addShapeless("erase_book_sponge", <minecraft:book>, [<minecraft:written_book>, <minecraft:sponge>.reuse()]);
recipes.addShapeless("erase_book_bread", <minecraft:book>, [<minecraft:written_book>, <minecraft:bread>]);


// melt down excess death compasses

furnace.addRecipe(<minecraft:glass>, <death_compass:death_compass>);


// easier slag-to-clay recipe

val waterBottle = <minecraft:potion>.withTag({Potion: "minecraft:water"}).giveBack(<minecraft:glass_bottle>);

recipes.removeByRecipeName("thermalfoundation:clay_ball");
recipes.addShapeless(<minecraft:clay_ball> * 4, [<ore:itemSlag>, <ore:itemSlag>, <ore:dirt>, waterBottle]);


// replace redundant gunpowder recipes

recipes.removeByRecipeName("valoegheses_be:gunpowder_vbe");
recipes.removeByRecipeName("thermalfoundation:gunpowder");
recipes.removeByRecipeName("thermalfoundation:gunpowder_1");
recipes.addShapeless(<minecraft:gunpowder>, [<ore:dustCoal> | <ore:dustCharcoal>, <ore:dustSulfur>, <ore:dustSaltpeter>, <ore:dustSaltpeter>]);


// replace redundant nametag recipes

recipes.removeByRecipeName("animania:name_tag");
recipes.removeByRecipeName("essentials:name_tag");
recipes.addShapeless(<minecraft:name_tag>, [<ore:string>, <ore:paper>, <ore:nuggetGold>]);


// remove redundant lead recipe

recipes.removeByRecipeName("animania:lead");


// cobwebs and cloth to string

recipes.addShapeless("webs_to_string", <minecraft:string>, [<minecraft:web>]);
recipes.addShapeless("cobwebs_spindle", <minecraft:string> * 2, [<minecraft:web>, <mysticalworld:spindle:*>.transformDamage()]);
recipes.addShapeless("cloth_spindle", <minecraft:string> * 4, [<minecraft:wool:*>, <mysticalworld:spindle:*>.transformDamage()]);


// ice to packed ice recipe

recipes.addShaped("packed_ice", <minecraft:packed_ice>, [
	[<minecraft:ice>, <minecraft:ice>, <minecraft:ice>],
	[<minecraft:ice>, <minecraft:ice>, <minecraft:ice>],
	[<minecraft:ice>, <minecraft:ice>, <minecraft:ice>]]);


// snow to snowballs recipe

recipes.addShapeless("snowball", <minecraft:snowball> * 4, [<minecraft:snow>]);


// rename Cart to Cargo Cart for clarity

<astikorcarts:cargocart>.displayName = "Cargo Cart";