import crafttweaker.item.IItemStack;

<charm:rotten_flesh_block>.addTooltip("Turns to dirt when next to water");
<charm:rotten_flesh_block>.addTooltip("Converts soil above it to podzol");
<charm:gunpowder_block>.addTooltip("Dissolves in lava");
<charm:ender_pearl_block>.addTooltip("Short-range teleport anchor for chorus fruit");
<charm:bat_bucket>.addTooltip("Right-click to release bat, making nearby entities glow briefly");
<charm:charged_emerald>.addTooltip("Throw to create a lightning strike");
<charm:endermite_powder>.addTooltip("Helps locate End cities");
<charm:moonstone>.addTooltip("Crouch-right-click to bind to current location.");
<charm:moonstone>.addTooltip("Lights up when at same X or Z co-ordinate.");

mods.jei.JEI.addDescription([<minecraft:compass>, <charm:bound_compass>], "Crouch-right-click a banner, bed, or beacon to bind a compass to that location.");

val potionCakes = [
	<charm:cake_swiftness>,
	<charm:cake_strength>,
	<charm:cake_leaping>,
	<charm:cake_regeneration>,
	<charm:cake_fire_resistance>,
	<charm:cake_water_breathing>,
	<charm:cake_invisibility>,
	<charm:cake_night_vision>,
	<charm:cake_danger_sight>,
	<charm:cake_haste>,
	<charm:cake_resistance>,
	<charm:cake_resilience>
] as IItemStack[];
mods.jei.JEI.addDescription(potionCakes, "Right-click on a cake with an extended potion to apply the effects when a slice of the cake is eaten.");
