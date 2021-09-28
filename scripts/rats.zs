import crafttweaker.item.IIngredient;
import crafttweaker.formatting.IFormattedText;
import mods.roots.Fey;
import mods.naturesaura.TreeRitual;

// remove unwanted items

val toRemove = [
	<rats:cauldron_milk>,
	<rats:cauldron_cheese>,
	<rats:cheese>
] as IIngredient[];

for tr in toRemove {
	mods.jei.JEI.removeAndHide(tr);
}


// mark other cheeses as uesful for rats
// oddly enough, can't use <ore:foodCheese> because it hasn't been populated with these cheeses at this point
mods.jei.JEI.addDescription([<animania:friesian_cheese_wedge>, <animania:holstein_cheese_wedge>, <animania:jersey_cheese_wedge>, <animania:goat_cheese_wedge>, <animania:sheep_cheese_wedge>], "Used to tame rats. Drop up to 16 cheese near a wild rat to tame one.");


// new stats and recipe for Chunky Cheese Tokens

val token = <rats:chunky_cheese_token>;
val tokenName = "Token of the Unspoiled Lands";
token.displayName = tokenName;
//token.displayName = format.gold(tokenName); // this should work but does not

token.removeTooltip("drop rate from rat");
token.addTooltip(format.gold("Your ticket out of here"));

recipes.remove(token);

Fey.addRecipe("chunky_cheese_token", token, [
	<biomesoplenty:sapling_1:7>, // Sacred Oak
	<naturesaura:sky_ingot>,
	<biomesoplenty:terrestrial_artifact>,
	<ore:blockMithril>,
	<minecraft:dragon_egg>]);
	
	
// and do something with the token pieces

val tokenPiece = <rats:token_piece>;
recipes.addShapeless(<animania:sheep_cheese_wheel> * 8, [tokenPiece * 9]);