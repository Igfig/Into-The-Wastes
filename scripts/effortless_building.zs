recipes.remove(<effortlessbuilding:reach_upgrade1>);
recipes.remove(<effortlessbuilding:reach_upgrade2>);
recipes.remove(<effortlessbuilding:reach_upgrade3>);

val tin = <ore:blockTin>;
val silver = <ore:blockSilver>;
val platinum = <ore:blockPlatinum>;

recipes.addShaped("reach upgrade 1", <effortlessbuilding:reach_upgrade1>, [
	[tin,tin, tin],
	[tin,<minecraft:apple>,tin],
	[tin,tin, tin]]);
recipes.addShaped("reach upgrade 2", <effortlessbuilding:reach_upgrade2>, [
	[silver,silver,silver],
	[silver,<minecraft:golden_apple>,silver],
	[silver,silver,silver]]);
recipes.addShaped("reach upgrade 3", <effortlessbuilding:reach_upgrade3>, [
	[platinum,platinum,platinum],
	[platinum,<minecraft:golden_apple:1>,platinum],
	[platinum,platinum,platinum]]);
