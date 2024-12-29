val gold = <ore:nuggetGold>;
val silver = <ore:nuggetSilver>;
val quartz = <ore:gemQuartz>;
val ruby = <ore:gemRuby>;
val log = <ore:logWood>;
val coal = <ore:coal>|<ore:charcoal>;


// new recipes for pet items

recipes.addShaped("totem_of_retreat_normal", <petsretreat:totem_of_retreat_normal>, [
	[null,  gold,  null],
	[gold, quartz, gold],
	[null,  gold,  null]]);
recipes.addShaped("totem_of_retreat_hard", 
	<petsretreat:totem_of_retreat_hard>.withTag({
		ench: [{lvl: 1, id: 28}], // Holding I, as a placeholder
		HideFlags: 1
	}), [
	[null,  silver,  null],
	[silver, ruby, silver],
	[null,  silver,  null]]);
recipes.addShaped("totem_of_revoke", <petsretreat:totem_of_revoke>, [
	[null, log, null],
	[log,  coal, log],
	[null, log, null]]);

recipes.replaceAllOccurences(<ore:enderpearl>, <ore:gemRuby>, <petsretreat:pet_command_rod>);
recipes.replaceAllOccurences(<minecraft:ender_eye>, <ore:gemRuby>, <petsretreat:pet_transfer_rod>);
recipes.replaceAllOccurences(<minecraft:ender_eye>, <ore:gemRuby>, <petsretreat:pet_retreat_rod>);


// color the display names

<petsretreat:totem_of_retreat_normal>.displayName = "§eTotem of Retreat";
<petsretreat:totem_of_retreat_hard>.displayName = "§bElaborate Totem of Retreat";
<petsretreat:totem_of_revoke>.displayName = "§eTotem of Revoke";

<petsretreat:pet_command_rod>.displayName = "§ePet Command Rod";
<petsretreat:pet_transfer_rod>.displayName = "§ePet Transfer Rod";
<petsretreat:pet_retreat_rod>.displayName = "§ePet Retreat Rod";