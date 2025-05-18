import crafttweaker.item.IIngredient;
import crafttweaker.formatting.IFormattedText;
import foodtweaker.FoodInfo;
import mods.foodtweaker.Tweaker;

// remove unwanted items

val toRemove = [
	<rats:cauldron_milk>,
	<rats:cauldron_cheese>,
	<rats:cheese>,
	<rats:string_cheese>,
	<rats:rat_upgrade_aristocrat>
] as IIngredient[];

for tr in toRemove {
	mods.jei.JEI.removeAndHide(tr);
}


// mark other cheeses as uesful for rats
// oddly enough, can't use <ore:foodCheese> because it hasn't been populated with these cheeses at this point

mods.jei.JEI.addDescription([<animania:friesian_cheese_wedge>, <animania:holstein_cheese_wedge>, <animania:jersey_cheese_wedge>, <animania:goat_cheese_wedge>, <animania:sheep_cheese_wedge>], "Used to tame rats. Drop up to 16 cheese near a wild rat to tame one.");


// change rat crafting upgrade recipe

recipes.replaceAllOccurences(<minecraft:stone_pickaxe>, <minecraft:golden_pickaxe>, <rats:rat_upgrade_crafting>);
recipes.replaceAllOccurences(<minecraft:stone_axe>, <minecraft:golden_axe>, <rats:rat_upgrade_crafting>);


// reduce Confit Byaldi's food values to something less absurd

var confit = FoodInfo(<rats:confit_byaldi>).setHeal(10).setSaturation(0.5F);
Tweaker.changeFoodStats(<rats:confit_byaldi>, confit); 


// new name and display for Chunky Cheese Tokens
// token recipe can be found in arcaneworld.zs

val token = <rats:chunky_cheese_token>;
token.displayName = "§6Token of the Unspoiled Lands";

token.removeTooltip("drop rate from rat");
token.addTooltip(format.gold("Your ticket out of here"));
	
	
// and do something with the token pieces

val tokenPiece = <rats:token_piece>;
recipes.addShapeless(<animania:sheep_cheese_wheel> * 8, [tokenPiece,tokenPiece,tokenPiece,tokenPiece,tokenPiece,tokenPiece,tokenPiece,tokenPiece,tokenPiece]);

recipes.addShapeless(<rats:rat_upgrade_fragment>, [<rats:token_fragment>, <ore:nuggetDiamond>]);


// add a missing display name

<rats:rat_cage_breeding_lantern>.displayName = "Rat Cage";