import crafttweaker.item.IItemStack;
import mods.roots.Fey;

// Fey Crafting recipe for Sacred Oak Sapling

val greatSaplings = [
	<wildnature:hornbeam_sapling>,
	<wildnature:redwood_sapling>,
	<wildnature:baobab_sapling>
] as IItemStack[];
val sublimeSaplings = [	
	<wildnature:jacaranda_sapling>,
	<wildnature:cherry_pink_sapling>,
	<wildnature:cherry_white_sapling>,
	<biomesoplenty:sapling_1:1>, // pink cherry
	<biomesoplenty:sapling_1:2>, // white cherry
	<biomesoplenty:sapling_1:6> // jacaranda
] as IItemStack[];
val magicalSaplings = [
	<roots:wildwood_sapling>,
	<naturesaura:ancient_sapling>,
	<biomesoplenty:sapling_0:3> // magic tree
] as IItemStack[];
val fundamentalSaplings = [
	<minecraft:sapling:*>,
	<biomesoplenty:sapling_1:0> // origin tree
] as IItemStack[];
val fruitSaplings = [
	<cuisine:sapling:*>,
	<wildnature:pear_sapling>,
	<wildnature:apple_sapling>,
	<valoegheses_be:sapling_date_palm>
] as IItemStack[];

<ore:treeSaplingGreat>.addItems(greatSaplings);
<ore:treeSaplingSublime>.addItems(sublimeSaplings);
<ore:treeSaplingMagical>.addItems(magicalSaplings);
<ore:treeSaplingFundamental>.addItems(fundamentalSaplings);
<ore:treeSaplingFruit>.addItems(fruitSaplings);

<ore:treeSaplingGreat>.addTooltip("A sapling of one of the three Great Trees");
<ore:treeSaplingSublime>.addTooltip("A sapling of one of the three Sublime Trees");
<ore:treeSaplingMagical>.addTooltip("A sapling of one of the three Magical Trees");
<ore:treeSaplingFundamental>.addTooltip("A sapling of one of the six Fundamental Trees");

val sacredSapling = <biomesoplenty:sapling_1:7>;
// sacredSapling.displayName = format.gold("Sacred Oak Sapling"); // This should work but does not
sacredSapling.addTooltip("A sapling of the Sacred Tree");
mods.jei.JEI.addDescription(sacredSapling, "Five saplings must be brought together in a Fey Crafter:", "One of the three Great Trees", "One of the three Sublime Trees", "One of the three Magical Trees", "One of the six Fundamental Trees", "And also any fruit tree, in case you get hungry");

// TODO maybe also add Sacred Springs as a very rare biome to cold areas, so these can potentially be found naturally without jumping through hoops

Fey.addRecipe("sacred_sapling", sacredSapling, [
	<ore:treeSaplingGreat>,
	<ore:treeSaplingSublime>,
	<ore:treeSaplingMagical>,
	<ore:treeSaplingFundamental>,
	<ore:treeSaplingFruit>
]);
