import crafttweaker.item.IItemStack;
import crafttweaker.liquid.ILiquidStack;
import mods.foundry.CastingTable;
import mods.foundry.Casting;

// cast rails with the rail mold

// standard rails, iron
CastingTable.addRodRecipe(<railcraft:rail:0> * 8, <liquid:iron> * 864);
Casting.addRecipe(<railcraft:rail:0> * 8, <liquid:iron> * 864, <foundry:mold:3>); 

// standard rails, bronze
CastingTable.addRodRecipe(<railcraft:rail:0> * 8, <liquid:bronze> * 864);
Casting.addRecipe(<railcraft:rail:0> * 8, <liquid:bronze> * 864, <foundry:mold:3>); 

// standard rails, steel
CastingTable.addRodRecipe(<railcraft:rail:0> * 12, <liquid:steel> * 864);
Casting.addRecipe(<railcraft:rail:0> * 12, <liquid:steel> * 864, <foundry:mold:3>);

// advanced rails
Casting.addRecipe(<railcraft:rail:1> * 8, <liquid:gold> * 432, <foundry:mold:3>, <ore:dustRedstone> * 3);

// HS rails
Casting.addRecipe(<railcraft:rail:3> * 8, <liquid:steel> * 432, <foundry:mold:3>, <ore:dustPyrotheum> * 3);

// reinforced rails
Casting.addRecipe(<railcraft:rail:4> * 8, <liquid:steel> * 864, <foundry:mold:3>, <ore:dustObsidian> * 3);


// cast rebar
Casting.addRecipe(<railcraft:rebar> * 4, <liquid:iron> * 432, <foundry:mold:3>, <ore:stickWood>); // iron
Casting.addRecipe(<railcraft:rebar> * 4, <liquid:bronze> * 432, <foundry:mold:3>, <ore:stickWood>); // bronze
Casting.addRecipe(<railcraft:rebar> * 6, <liquid:steel> * 432, <foundry:mold:3>, <ore:stickWood>); // steel


// cast elemental fluids to their dusts.
Casting.addRecipe(<thermalfoundation:material:1024>, <liquid:pyrotheum> * 250, <foundry:mold:21>);
Casting.addRecipe(<thermalfoundation:material:1025>, <liquid:cryotheum> * 250, <foundry:mold:21>);
Casting.addRecipe(<thermalfoundation:material:1026>, <liquid:aerotheum> * 250, <foundry:mold:21>);
Casting.addRecipe(<thermalfoundation:material:1027>, <liquid:petrotheum> * 250, <foundry:mold:21>);
Casting.addRecipe(<thermalfoundation:material:1028>, <liquid:mana> * 250, <foundry:mold:21>);


// cast Mystical World armour
Casting.addRecipe(<mysticalworld:copper_helmet>, <liquid:copper> * 720, <foundry:mold:14>);
Casting.addRecipe(<mysticalworld:copper_chestplate>, <liquid:copper> * 1152, <foundry:mold:15>);
Casting.addRecipe(<mysticalworld:copper_leggings>, <liquid:copper> * 1008, <foundry:mold:16>);
Casting.addRecipe(<mysticalworld:copper_boots>, <liquid:copper> * 576, <foundry:mold:17>);
Casting.addRecipe(<mysticalworld:silver_helmet>, <liquid:silver> * 720, <foundry:mold:14>);
Casting.addRecipe(<mysticalworld:silver_chestplate>, <liquid:silver> * 1152, <foundry:mold:15>);
Casting.addRecipe(<mysticalworld:silver_leggings>, <liquid:silver> * 1008, <foundry:mold:16>);
Casting.addRecipe(<mysticalworld:silver_boots>, <liquid:silver> * 576, <foundry:mold:17>);


// some more casting recipes
Casting.addRecipe(<minecraft:ender_pearl>, <liquid:ender> * 250, <foundry:mold:21>); // ender pearl
Casting.addRecipe(<thermalfoundation:material:833>, <liquid:crude_oil> * 250, <foundry:mold:21>); // tar
Casting.addRecipe(<arcaneworld:ethereal_sword>, <liquid:glowstone> * 1000, <wildnature:amber_sword>, <ore:ingotMithril>);


// make gears and plates cheaper than making them by hand, just one ingot each
val liquids = [<liquid:iron>, <liquid:gold>, <liquid:copper>, <liquid:tin>, <liquid:bronze>, <liquid:lead>, <liquid:silver>, <liquid:platinum>, <liquid:electrum>] as ILiquidStack[];
val gears = [<crossroads:gear_iron>, <crossroads:gear_gold>, <crossroads:gear_copper>, <crossroads:gear_tin>, <crossroads:gear_bronze>, <crossroads:gear_lead>, <crossroads:gear_silver>, <crossroads:gear_platinum>, <crossroads:gear_electrum>] as IItemStack[];
val plates = [
	<thermalfoundation:material:32>, // iron 
	<thermalfoundation:material:33>, // gold
	<thermalfoundation:material:320>, // copper
	<thermalfoundation:material:321>, // tin
	<thermalfoundation:material:355>, // bronze
	<thermalfoundation:material:323>, // lead
	<thermalfoundation:material:322>, // silver
	<thermalfoundation:material:326>, // platinum
	<thermalfoundation:material:353> // electrum
] as IItemStack[];

for i, liquid in liquids {
	Casting.removeRecipe(liquid, <foundry:mold:1>);
	Casting.removeRecipe(liquid, <foundry:mold:2>);
	CastingTable.removePlateRecipe(liquid);
	Casting.addRecipe(gears[i], liquid * 144, <foundry:mold:2>);
	Casting.addRecipe(plates[i], liquid * 144, <foundry:mold:1>);
}