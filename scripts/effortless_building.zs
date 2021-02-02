recipes.remove(<effortlessbuilding:reach_upgrade1>);
recipes.remove(<effortlessbuilding:reach_upgrade2>);
recipes.remove(<effortlessbuilding:reach_upgrade3>);

val tin = <oredict:blockTin>;
val silver = <oredict:blockSilver>;
val platinum = <oredict:blockPlatinum>;

recipes.addShapeless("reach upgrade 1", <effortlessbuilding:reach_upgrade1>, [
	[tin,tin, tin],
	[tin,null,tin],
	[tin,tin, tin]]);
recipes.addShapeless("reach upgrade 2", <effortlessbuilding:reach_upgrade2>, [
	[silver,silver,silver],
	[silver, null, silver],
	[silver,silver,silver]]);
recipes.addShapeless("reach upgr ade 3", <effortlessbuilding:reach_upgrade3>, [
	[platinum,platinum,platinum],
	[platinum,  null,  platinum],
	[platinum,platinum,platinum]]);
// might add something else in the middle of each, idk