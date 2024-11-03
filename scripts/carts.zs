val plank = <ore:plankWood>;
val chest = <ore:chestWood>;
val wheel = <astikorcarts:wheel>;
val copper = <ore:ingotCopper>;
val iron = <ore:ingotIron>;
val ironPlate = <ore:plateIron>;


// replace cart recipes

recipes.remove(<astikorcarts:cargocart>);
recipes.remove(<astikorcarts:mobcart>);
recipes.remove(<astikorcarts:plowcart>);

recipes.addShaped(<astikorcarts:cargocart>, [
	[plank,  chest,  plank],
	[plank,ironPlate,plank],
	[wheel,  null,   wheel]]);
	
recipes.addShaped(<astikorcarts:mobcart>, [
	[plank,null,plank],
	[plank,iron,plank],
	[wheel,null,wheel]]);
recipes.addShaped(<astikorcarts:plowcart>, [
	[copper,copper,copper],
	[plank, copper,plank],
	[wheel,  null, wheel]]);


// add cart tooltips

<astikorcarts:cargocart>.addTooltip("Transports items and players");
<astikorcarts:cargocart>.addTooltip("Shift-right-click to open inventory");
<astikorcarts:cargocart>.addTooltip("Right-click to climb on");
<astikorcarts:cargocart>.addTooltip("Press X while riding a mount nearby to hitch them to the cart");
<astikorcarts:cargocart>.addTooltip("Press X while on foot nearby to pull it yourself");

<astikorcarts:mobcart>.addTooltip("Transports mobs and players");
<astikorcarts:mobcart>.addTooltip("Push mobs into it to load them on");
<astikorcarts:mobcart>.addTooltip("Right-click to remove mobs or climb on");
<astikorcarts:mobcart>.addTooltip("Press X while riding a mount nearby to hitch them to the cart");
<astikorcarts:mobcart>.addTooltip("Press X while on foot nearby to pull it yourself");

<astikorcarts:plowcart>.addTooltip("Shift-right-click to open inventory");
<astikorcarts:plowcart>.addTooltip("Right-click to start plowing");
<astikorcarts:plowcart>.addTooltip("Fill with hoes to plow grass and dirt to farmland");
<astikorcarts:plowcart>.addTooltip("Fill with shovels to plow grass, dirt, and sand to paths");
<astikorcarts:plowcart>.addTooltip("Press X while riding a mount nearby to hitch them to the plow");
<astikorcarts:plowcart>.addTooltip("Press X while on foot nearby to pull it yourself");