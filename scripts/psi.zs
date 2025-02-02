// Replace all iron in Psi recipes with silver, and gold with electrum
// Doesn't affect the psimetal recipe, since that's kinda hardcoded

val isPsi = <*>.only(function(item) {
    return !isNull(item) && (item.definition.owner == "psi" || item.definition.owner == "rpsideas");
});

recipes.replaceAllOccurences(<ore:ingotIron>, <ore:ingotSilver>, isPsi);
recipes.replaceAllOccurences(<ore:ingotGold>, <ore:ingotElectrum>, isPsi);

<psi:cad_assembly:0>.displayName = "Silver CAD Assembly";
<psi:cad_assembly:1>.displayName = "Electrum CAD Assembly";

<psi:material:0>.addTooltip("Craft by dropping redstone dust and right-clicking");
<psi:material:0>.addTooltip("it with an empty Casting Assistant Device");